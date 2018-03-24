/******************************************************************************
 * The MIT License
 *
 * Copyright (c) 2017 Victor Perez.
 *
 * Permission is hereby granted, free of charge, to any person
 * obtaining a copy of this software and associated documentation
 * files (the "Software"), to deal in the Software without
 * restriction, including without limitation the rights to use, copy,
 * modify, merge, publish, distribute, sublicense, and/or sell copies
 * of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be
 * included in all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
 * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
 * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
 * NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS
 * BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN
 * ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
 * CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 *****************************************************************************/
/**
 *  \file I2S.h
 *  \brief Header file for an i2s port library for stm32duino libmaple based core
 *  	Probably works on the original libmaple, but has not been tested.
 */
 
 /*
* Todo: should confirm if the board has 3 SPI ports, since those are the only that
	 support i2s in ports 2 and 3.
 */

#ifndef _I2S_H_INCLUDED
	#define _I2S_H_INCLUDED
	
	#include <libmaple/spi.h>
	#include <libmaple/dma.h>
	#include <wirish.h>
	
    //size of each buffer (there are 2)
	#define I2S_BUFFER_SIZE 1152
	
	typedef enum {
		I2S_PHILIPS_MODE = SPI_I2SCFGR_I2SSTD_PHILLIPS,
		I2S_RIGHT_JUSTIFIED_MODE = SPI_I2SCFGR_I2SSTD_LSB,
		I2S_LEFT_JUSTIFIED_MODE = SPI_I2SCFGR_I2SSTD_MSB,
		I2S_PCM_MODE = SPI_I2SCFGR_I2SSTD_PCM
	} i2s_mode_t;
	
    static void (*_i2s2_this);
    static void (*_i2s3_this);

	
	class I2SClass : public Stream
	{
		public:
		I2SClass(spi_dev *dev);
		virtual ~I2SClass();
	    volatile dma_irq_cause event;
		
		int begin(int mode, long sampleRate, int bitsPerSample, bool masterClock = false);
		// Slave mode
		int begin(int mode, int bitsPerSample);
		/*
		 *  This block of functions is extra
		 *  to allow the user code to write directly to the i2s buffer,
		 *  and start/stop/pause tx/rx at any time.
		 */
		const void * bufferPtr(){return _xf_data;}; //returns the pointer to the buffer.
		uint16_t bufferSize(){return I2S_BUFFER_SIZE*2;}; // returns the size in bytes of the buffer.
		inline void circularMode(const bool &circular){_circular = circular;};
		bool start(bool isTX);
		bool stop();
		bool pause(bool pause);
		bool setSampleRate(long sampleRate, bool masterClock = false);

		void end();
		
		// from Stream
		virtual int available();
		virtual int read();
		virtual int peek();
		virtual void flush();
		
		// from Print

		virtual size_t write(uint8_t);
		virtual size_t write(const uint8_t *buffer, size_t size);
		
		virtual size_t availableForWrite();
		
		int read(void* buffer, size_t size);
		
		size_t write(int16_t);
		size_t write(int32_t);
		size_t write(const void *buffer, size_t size);
		
		void onReceive(void(*)(void));
		void onTransmit(void(*)(void));
		
		private:
		long _sampleRate;
		dma_channel _i2sRxDmaChannel, _i2sTxDmaChannel;
		dma_dev *_i2sDmaDev;
		spi_dev *_i2s_d;
		uint8_t _state;
		bool _circular;
		
		uint8_t _width;
		
		volatile uint8_t _xf_active;
		volatile uint8_t _xf_pending;
		volatile uint32_t _xf_offset;
		uint32_t _xf_data[2][I2S_BUFFER_SIZE / sizeof(uint32_t)];
		
		void (*_receiveCallback)(void) = NULL;
		void (*_transmitCallback)(void) = NULL;
		void (*_eventCallback)(void) = NULL;
		
		static void _i2s2EventCallback(void);
		static void _i2s3EventCallback(void);
		void EventCallback(void);
	};
	
	
	#if I2S_INTERFACES_COUNT > 0
		//Nothing here since we are not creating any object by default. extern I2SClass I2S;
	#endif
	
#endif
