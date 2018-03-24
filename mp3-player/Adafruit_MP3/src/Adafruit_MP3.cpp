#include "assembly.h"
#include "Adafruit_MP3.h"
#include "mp3common.h"

#if defined(__SAMD51__) // feather/metro m4

#define WAIT_TC16_REGS_SYNC(x) while(x->COUNT16.SYNCBUSY.bit.ENABLE);

#elif defined(__MK66FX1M0__) || defined(__MK20DX256__) // teensy 3.6

IntervalTimer Adafruit_MP3::_MP3Timer;
uint32_t Adafruit_MP3::currentPeriod;
static void MP3_Handler();

#endif

volatile bool activeOutbuf;
Adafruit_MP3_outbuf outbufs[2];
volatile int16_t *outptr;
static void (*sampleReadyCallback)(int16_t, int16_t);

#if defined (__STM32F1__)
static void (*changeRateCallback)(uint32_t);
#endif

volatile uint8_t channels;

/**
 *****************************************************************************************
 *  @brief      enable the playback timer
 *
 *  @return     none
 ****************************************************************************************/
static inline void enableTimer()
{
#if defined(__SAMD51__) // feather/metro m4
	MP3_TC->COUNT16.CTRLA.reg |= TC_CTRLA_ENABLE;
	WAIT_TC16_REGS_SYNC(MP3_TC)
#elif defined(__MK66FX1M0__) || defined(__MK20DX256__) // teensy 3.6
	Adafruit_MP3::_MP3Timer.begin(MP3_Handler, Adafruit_MP3::currentPeriod);

#elif defined(NRF52)
	MP3_TIMER->TASKS_START = 1;
#endif
}

/**
 *****************************************************************************************
 *  @brief      disable the playback timer
 *
 *  @return     none
 ****************************************************************************************/
static inline void disableTimer()
{
#if defined(__SAMD51__) // feather/metro m4
	MP3_TC->COUNT16.CTRLA.bit.ENABLE = 0;
	WAIT_TC16_REGS_SYNC(MP3_TC)
#elif defined(__MK66FX1M0__) || defined(__MK20DX256__) // teensy 3.6
	Adafruit_MP3::_MP3Timer.end();
#elif defined(NRF52)
	MP3_TIMER->TASKS_STOP = 1;
#endif
}

/**
 *****************************************************************************************
 *  @brief      reset the playback timer
 *
 *  @return     none
 ****************************************************************************************/
#if defined(__SAMD51__) // feather/metro m4
static inline void resetTC (Tc* TCx)
{

	// Disable TCx
	TCx->COUNT16.CTRLA.reg &= ~TC_CTRLA_ENABLE;
	WAIT_TC16_REGS_SYNC(TCx)

	// Reset TCx
	TCx->COUNT16.CTRLA.reg = TC_CTRLA_SWRST;
	WAIT_TC16_REGS_SYNC(TCx)
	while (TCx->COUNT16.CTRLA.bit.SWRST);

}
#endif

static inline void configureTimer()
{
#if defined(__SAMD51__) // feather/metro m4

	NVIC_DisableIRQ(MP3_IRQn);
	NVIC_ClearPendingIRQ(MP3_IRQn);
	NVIC_SetPriority(MP3_IRQn, 0);

	GCLK->PCHCTRL[MP3_GCLK_ID].reg = GCLK_PCHCTRL_GEN_GCLK0_Val | (1 << GCLK_PCHCTRL_CHEN_Pos);
	
	resetTC(MP3_TC);
	
	//configure timer for 44.1khz
	MP3_TC->COUNT16.WAVE.reg = TC_WAVE_WAVEGEN_MFRQ;  // Set TONE_TC mode as match frequency

	MP3_TC->COUNT16.CTRLA.reg |= TC_CTRLA_MODE_COUNT16 | TC_CTRLA_PRESCALER_DIV4;
	WAIT_TC16_REGS_SYNC(MP3_TC)

	MP3_TC->COUNT16.CC[0].reg = (uint16_t)( (SystemCoreClock >> 2) / MP3_SAMPLE_RATE_DEFAULT);
	WAIT_TC16_REGS_SYNC(MP3_TC)

	// Enable the TONE_TC interrupt request
	MP3_TC->COUNT16.INTENSET.bit.MC0 = 1;

#elif defined(NRF52)

	NVIC_DisableIRQ(MP3_IRQn);
	NVIC_ClearPendingIRQ(MP3_IRQn);
	NVIC_SetPriority(MP3_IRQn, 15);

	disableTimer();
	MP3_TIMER->MODE = 0; //timer mode
	MP3_TIMER->BITMODE = 0; //16 bit mode
	MP3_TIMER->PRESCALER = 0; //no prescale
	MP3_TIMER->CC[0] = 16000000UL/MP3_SAMPLE_RATE_DEFAULT;
	MP3_TIMER->EVENTS_COMPARE[0] = 0;
	MP3_TIMER->TASKS_CLEAR = 1;

	MP3_TIMER->INTENSET = (1UL << 16); //enable compare 0 interrupt

#elif defined(__MK66FX1M0__) || defined(__MK20DX256__) // teensy 3.6
	float sec = 1.0 / (float)MP3_SAMPLE_RATE_DEFAULT;
	Adafruit_MP3::currentPeriod = sec * 1000000UL;
#endif
}

static inline void acknowledgeInterrupt()
{
#if defined(__SAMD51__) // feather/metro m4
	if (MP3_TC->COUNT16.INTFLAG.bit.MC0 == 1) {
		MP3_TC->COUNT16.INTFLAG.bit.MC0 = 1;
	}

#elif defined(NRF52)
	MP3_TIMER->EVENTS_COMPARE[0] = 0;
	MP3_TIMER->TASKS_CLEAR = 1;
#endif
}

static inline void updateTimerFreq(uint32_t freq)
{
#if defined(__STM32F1__)
    changeRateCallback( freq );
#endif

	disableTimer();

#if defined(__SAMD51__) // feather/metro m4
	MP3_TC->COUNT16.CC[0].reg = (uint16_t)( (SystemCoreClock >> 2) / freq);
	WAIT_TC16_REGS_SYNC(MP3_TC);
#elif defined(__MK66FX1M0__) || defined(__MK20DX256__) // teensy 3.6
	float sec = 1.0 / (float)freq;
	Adafruit_MP3::currentPeriod = sec * 1000000UL;

#elif defined(NRF52)

	MP3_TIMER->CC[0] = 16000000UL/freq;

#endif

	enableTimer();
}

/**
 *****************************************************************************************
 *  @brief      Begin the mp3 player. This initializes the playback timer and necessary interrupts.
 *
 *  @return     none
 ****************************************************************************************/
bool Adafruit_MP3::begin()
{	
	sampleReadyCallback = NULL;
	bufferCallback = NULL;

#ifdef __STM32F1__

#else
	configureTimer();
#endif

	if ((hMP3Decoder = MP3InitDecoder()) == 0)
	{
		return false;
	}
	else return true;
}

/**
 *****************************************************************************************
 *  @brief      Set the function the player will call when it's buffers need to be filled. 
 *				Care must be taken to ensure that the callback function is efficient.
 *				If the callback takes too long to fill the buffer, playback will be choppy
 *
 *	@param		fun_ptr the pointer to the callback function. This function must take a pointer
 *				to the location the bytes will be written, as well as an integer that represents
 *				the maximum possible bytes that can be written. The function should return the 
 *				actual number of bytes that were written.
 *
 *  @return     none
 ****************************************************************************************/
void Adafruit_MP3::setBufferCallback(int (*fun_ptr)(uint8_t *, int)){ bufferCallback = fun_ptr; }

/**
 *****************************************************************************************
 *  @brief      Set the function that the player will call when the playback timer fires.
 *				The callback is called inside of an ISR, so it should be short and efficient.
 *				This will usually just be writing samples to the DAC.
 *
 *	@param		fun_ptr the pointer to the callback function. The function must take two 
 *				unsigned 16 bit integers. The first argument to the callback will be the
 *				left channel sample, and the second channel will be the right channel sample.
 *				If the played file is mono, only the left channel data is used.
 *
 *  @return     none
 ****************************************************************************************/
void Adafruit_MP3::setSampleReadyCallback(void (*fun_ptr)(int16_t, int16_t)) { sampleReadyCallback = fun_ptr; }



#if defined (__STM32F1__)
void Adafruit_MP3::setChangeRateCallback(void (*fun_ptr)(uint32_t)) { changeRateCallback = fun_ptr; }
#endif

/**
 *****************************************************************************************
 *  @brief      Play an mp3 file. This function resets the buffers and should only be used
 *				when beginning playback of a new mp3 file. If playback has been stopped
 *				and you would like to resume playback at the current location, use Adafruit_MP3::resume instead.
 *
 *  @return     none
 ****************************************************************************************/
void Adafruit_MP3::play()
{
	bytesLeft = 0;
	activeOutbuf = 0;
	readPtr = inBuf;
	writePtr = inBuf;
	
	outbufs[0].count = 0;
	outbufs[1].count = 0;
	playing = false;

    if(bufferCallback != NULL){

            int bytesRead = bufferCallback(writePtr, 10);
            writePtr += bytesRead;
            bytesLeft += bytesRead;

    }
    // TODO: optimize this to read a full buffer from start.
        int id3 = 0;
        if (inBuf[0]=='I' && inBuf[1]=='D' && inBuf[2]=='3' &&
                inBuf[3]<0xff && inBuf[4]<0xff &&
                inBuf[6]<0x80 && inBuf[7]<0x80 &&
                inBuf[8]<0x80 && inBuf[9]<0x80)
        {
            // bytes 6-9:offset of maindata, with bit.7=0:
            id3 =   ((inBuf[6] & 0x7f) << 21) |
                    ((inBuf[7] & 0x7f) << 14) |
                    ((inBuf[8] & 0x7f) <<  7) |
                     (inBuf[9] & 0x7f);
        }
        else id3=0;
        // read and discard ID3 header if there is one.
        if (id3) {
            int id3_size = id3 & 0xfffffe00;
            id3_size -=10; // We already read 10 bytes, we need to read and discard the rest.
            writePtr = inBuf;
            bytesLeft = 0;

            if(bufferCallback != NULL){
                    while (id3_size){
                        int bytesToRead = min(id3_size,inbufend - writePtr);
                        id3_size -= bufferCallback(writePtr, bytesToRead);
                        writePtr = inBuf;
                        bytesLeft = 0;
                    }
            }
        }
        // No ID3, just finish filling the buffer.
        else {
            if(bufferCallback != NULL){
                        int bytesRead = bufferCallback(writePtr, inbufend - writePtr);
                        writePtr += bytesRead;
                        bytesLeft += bytesRead;
            }
        }
	//start the playback timer
	enableTimer();
#if defined(__STM32F1__)

#elif defined(__SAMD51__) || defined(NRF52) // feather/metro m4
	NVIC_EnableIRQ(MP3_IRQn);
#endif
}

/**
 *****************************************************************************************
 *  @brief      Stop playback. This function stops the playback timer.
 *
 *  @return     none
 ****************************************************************************************/
void Adafruit_MP3::stop()
{
	disableTimer();
}

/**
 *****************************************************************************************
 *  @brief      Resume playback. This function re-enables the playback timer. If you are
 *				starting playback of a new file, use Adafruit_MP3::play instead
 *
 *  @return     none
 ****************************************************************************************/
void Adafruit_MP3::resume()
{
	enableTimer();
}

/**
 *****************************************************************************************
 *  @brief      Get the number of bytes until the end of the ID3 tag.
 *
 *	@param		readPtr current read pointer
 *
 *  @return     none
 ****************************************************************************************/
int Adafruit_MP3::findID3Offset(uint8_t *readPtr)
{
	char header[10];
	memcpy(header, readPtr, 10);
	//http://id3.org/id3v2.3.0#ID3v2_header
	if(header[0] == 0x49 && header[1] == 0x44 && header[2] == 0x33 && header[3] < 0xFF){
		//this is a tag
		uint32_t sz = ((uint32_t)header[6] << 23) | ((uint32_t)header[7] << 15) | ((uint32_t)header[8] << 7) | header[9];
		return sz;
	}
	else{
		//this is not a tag
		return 0;
	}
}

/**
 *****************************************************************************************
 *  @brief      The main loop of the mp3 player. This function should be called as fast as
 *				possible in the loop() function of your sketch. This checks to see if the
 *				buffers need to be filled, and calls the buffer callback function if necessary.
 *				It also calls the functions to decode another frame of mp3 data.
 *
 *  @return     none
 ****************************************************************************************/
int Adafruit_MP3::tick(){
	noInterrupts();
	if(outbufs[activeOutbuf].count == 0 && outbufs[!activeOutbuf].count > 0){
		//time to swap the buffers
		activeOutbuf = !activeOutbuf;
		outptr = outbufs[activeOutbuf].buffer;
	}
	interrupts();
	
	//if we are running out of samples, and don't yet have another buffer ready, get busy.
	if(outbufs[activeOutbuf].count < OUT_BUFFER_LOWER_THRESH && outbufs[!activeOutbuf].count <= (OUTBUF_SIZE - 1152)){
		
		//dumb, but we need to move any bytes to the beginning of the buffer
		if(readPtr != inBuf && bytesLeft < IN_BUFFER_LOWER_THRESH){
			memmove(inBuf, readPtr, bytesLeft);
			readPtr = inBuf;
			writePtr = inBuf + bytesLeft;
		}
		
		//get more data from the user application
		/*
		 * TODO: this should set a flag and stop playing when the file runs out of data.
		 */
		if(bufferCallback != NULL){
			if(inbufend - writePtr > 0){
				int bytesRead = bufferCallback(writePtr, inbufend - writePtr);
				writePtr += bytesRead;
				bytesLeft += bytesRead;
			}
		}
		
		MP3FrameInfo frameInfo;
		int err, offset;
		
		if(!playing){
			/* Find start of next MP3 frame. Assume EOF if no sync found. */
			offset = MP3FindSyncWord((unsigned char *)readPtr, bytesLeft);
			if(offset >= 0){
				readPtr += offset;
				bytesLeft -= offset;
			}
			
			err = MP3GetNextFrameInfo(hMP3Decoder, &frameInfo, (unsigned char *)readPtr);
			if(err != ERR_MP3_INVALID_FRAMEHEADER){
				if(frameInfo.samprate != sampRate)
				{
				    sampRate = frameInfo.samprate;
					updateTimerFreq(sampRate);

				}
				playing = true;
				channels = frameInfo.nChans;
			}
			return 1;
		}
		
		offset = MP3FindSyncWord((unsigned char *)readPtr, bytesLeft);
		if(offset >= 0){
			readPtr += offset;
			bytesLeft -= offset;
				uint32_t elapsed = micros();
			//fill the inactive outbuffer
			err = MP3Decode(hMP3Decoder, &readPtr, (int*) &bytesLeft, outbufs[!activeOutbuf].buffer + outbufs[!activeOutbuf].count, 0);
			Serial.println(micros()-elapsed,DEC);
			MP3DecInfo *mp3DecInfo = (MP3DecInfo *)hMP3Decoder;
			outbufs[!activeOutbuf].count += mp3DecInfo->nGrans * mp3DecInfo->nGranSamps * mp3DecInfo->nChans;

			if (err) {
				return err;
			}
		}
		// If the buffer got empty while decoding, switch it.
	    noInterrupts();
	    if(outbufs[activeOutbuf].count == 0 && outbufs[!activeOutbuf].count > 0){
	        //time to swap the buffers
	        activeOutbuf = !activeOutbuf;
	        outptr = outbufs[activeOutbuf].buffer;
	    }
	    interrupts();
	}
	return 0;
}

/**
 *****************************************************************************************
 *  @brief      The IRQ function that gets called whenever the playback timer fires.
 *
 *  @return     none
 ****************************************************************************************/
#if defined(__STM32F1__)
void Adafruit_MP3::getSamples(volatile int16_t * pointer ,volatile uint16_t num)
{
    //rewrite this to use a single circular buffer as output from mp3 decoder.
    int32_t count = outbufs[activeOutbuf].count;
    if(count >= 2){
        if (count < num) num = count;
/*
        while (num--)
        {
            *pointer++ = *outptr++;
        }
        */
        //memcpy((void *)pointer,(const void *) outptr, num*2);

        for (uint16_t i = 0; i < num; i++) {
            pointer[i] = outptr[i];
        }

        outptr += num;
        outbufs[activeOutbuf].count -= num;
    }
}
#endif

#if defined(NRF52)
extern "C" {
#endif
void MP3_Handler()
{
	//disableTimer();
	
	if(outbufs[activeOutbuf].count >= channels){
		//it's sample time!
		if(sampleReadyCallback != NULL){
			if(channels == 1)
				sampleReadyCallback(*outptr, 0);
			else
				sampleReadyCallback(*outptr, *(outptr + 1));
			
			//increment the read position and decrement the remaining sample count
			outptr += channels;
			outbufs[activeOutbuf].count -= channels;
		}
	}
		
	//enableTimer();

	acknowledgeInterrupt();
}
#if defined(NRF52)
}
#endif
