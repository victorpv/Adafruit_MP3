#ifndef LIB_ADAFRUIT_MP3_H
#define LIB_ADAFRUIT_MP3_H

#include "Arduino.h"

#if defined(__SAMD51__) || defined(__MK66FX1M0__) || defined(__MK20DX256__)|| defined(NRF52)
#define ARM_MATH_CM4
#endif

#include "math.h"
#include "mp3dec.h"

//TODO: decide on a reasonable buffer size
#if defined(NRF52)
#define OUTBUF_SIZE (2500)
#define INBUF_SIZE (768)

#define IN_BUFFER_LOWER_THRESH (1 * 1024)
#define OUT_BUFFER_LOWER_THRESH (1 * 1024)
#else
#define OUTBUF_SIZE (2 * 1152)
#define INBUF_SIZE (6 * 512)

#define IN_BUFFER_LOWER_THRESH (1 * 1024)
#define OUT_BUFFER_LOWER_THRESH (4 * 1152)
#endif

#define MP3_SAMPLE_RATE_DEFAULT 44100

#if defined(__SAMD51__) // feather/metro m4

#define MP3_TC TC2
#define MP3_IRQn TC2_IRQn
#define MP3_Handler TC2_Handler
#define MP3_GCLK_ID TC2_GCLK_ID

#elif defined(NRF52)

#define MP3_TIMER NRF_TIMER1
#define MP3_IRQn TIMER1_IRQn
#define MP3_Handler TIMER1_IRQHandler

#endif

struct Adafruit_MP3_outbuf {
	volatile int count;
	int16_t buffer[OUTBUF_SIZE];	
};

class Adafruit_MP3 {
public:
	Adafruit_MP3() : hMP3Decoder() { inbufend = (inBuf + INBUF_SIZE); }
	~Adafruit_MP3() { MP3FreeDecoder(hMP3Decoder); };
	bool begin();
	void setBufferCallback(int (*fun_ptr)(uint8_t *, int));
#if defined (__STM32F1__)
	void getSamples(volatile int16_t * ,volatile uint16_t);
	void setChangeRateCallback(void (*fun_ptr)(uint32_t));
#endif
	void setSampleReadyCallback(void (*fun_ptr)(int16_t, int16_t));
	void play();
	void stop();
	void resume();
	
	int tick();

#if defined(__MK66FX1M0__) || defined(__MK20DX256__) // teensy 3.6
	static IntervalTimer _MP3Timer;
	static uint32_t currentPeriod;
#endif
	
private:
#if defined(__SAMD51__) // feather/metro m4
	Tc *_tc;
#endif
	HMP3Decoder hMP3Decoder;
	
	volatile int bytesLeft;
	int32_t sampRate = MP3_SAMPLE_RATE_DEFAULT;
	uint8_t *readPtr;
	uint8_t *writePtr;
	uint8_t inBuf[INBUF_SIZE];
	uint8_t *inbufend;
	bool playing = false;
	
	int (*bufferCallback)(uint8_t *, int);
	int findID3Offset(uint8_t *readPtr);
	
};

#endif
