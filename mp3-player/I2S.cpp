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

#include "I2S.h"

#define I2S_STATE_IDLE     0
#define I2S_STATE_READY    1
#define I2S_STATE_RECEIVE  2
#define I2S_STATE_TRANSMIT 3

#define SPI_I2SCFGR_DIR_BIT 8

#define i2s_dev_disable(dev) bb_peri_set_bit(&dev->regs->I2SCFGR, SPI_I2SCFGR_I2SE_BIT, 0);
#define i2s_dev_enable(dev) bb_peri_set_bit(&dev->regs->I2SCFGR, SPI_I2SCFGR_I2SE_BIT, 1);
#define i2s_is_enabled(dev) bb_peri_get_bit(&dev->regs->I2SCFGR, SPI_I2SCFGR_I2SE_BIT);

#define i2s_dev_transmit(dev) bb_peri_set_bit(&dev->regs->I2SCFGR, SPI_I2SCFGR_DIR_BIT, 0);
#define i2s_dev_receive(dev) bb_peri_set_bit(&dev->regs->I2SCFGR, SPI_I2SCFGR_DIR_BIT, 1);
#define armv7m_core_yield() __asm__ volatile ("wfe; sev; wfe");

#if CYCLES_PER_MICROSECOND != 72
/* TODO [0.2.0?] something smarter than this */
#warning "Unexpected clock speed; I2S frequency calculation will be incorrect"
#endif

struct i2s_pins {
    uint8 i2s_ws; //nss;
    uint8 i2s_ck; //sck;
    uint8 i2s_mck;
    uint8 i2s_sd; //mosi;
};
/* TODO Clean this up, should only run in board with 3SPIs anyway
 * Perhaps add definitions for the I2S pins in /variants/xxx/board/board.h
 * rather than using the SPI definitions.
 */

static const i2s_pins board_i2s_pins[] __FLASH__ = {
        {BOARD_SPI2_NSS_PIN,
         BOARD_SPI2_SCK_PIN,
         PC6, //MCK pin,
         BOARD_SPI2_MOSI_PIN},
        {BOARD_SPI3_NSS_PIN,
         BOARD_SPI3_SCK_PIN,
         PC7, //MCK pin,
         BOARD_SPI3_MOSI_PIN},
};


/*
 * Auxiliary functions, may want to move to separate file.
 */

static const i2s_pins* dev_to_i2s_pins(spi_dev *dev);
static void i2s_disable_pwm(const stm32_pin_info *i) ;
static void configure_i2s_gpio(spi_dev *dev, bool masterclk);
static uint16_t compute_i2sspr(long sampleRate, int bitsPerSample, bool masterClock);


I2SClass::I2SClass(spi_dev *dev)
{
    _i2s_d = dev;
    switch (_i2s_d->clk_id) {
    case RCC_SPI2:
        _i2sDmaDev = DMA1;
        _i2sTxDmaChannel = DMA_CH5;
        _i2sRxDmaChannel = DMA_CH4;
        _i2s2_this = (void*) this;
        _eventCallback = &I2SClass::_i2s2EventCallback;
        break;
    case RCC_SPI3:
        _i2sDmaDev = DMA2;
        _i2sTxDmaChannel = DMA_CH2;
        _i2sRxDmaChannel = DMA_CH1;
        _i2s3_this = (void*) this;
        _eventCallback = &I2SClass::_i2s3EventCallback;
        break;
    default:
        ASSERT(0);
    }

    _xf_active = 0;
    _xf_pending = 0;
    _xf_offset = 0;
    _width = 0;
    _circular = false;

    //_receiveCallback;
    //_transmitCallback;

    _state = I2S_STATE_IDLE;

}

I2SClass::~I2SClass() {

}

int I2SClass::begin(int mode, long sampleRate, int bitsPerSample, bool masterClock)
{

    if (_state != I2S_STATE_IDLE) {
        return 0;
    }
    _sampleRate = sampleRate;
    uint16_t _i2scfgr = SPI_I2SCFGR_I2SMOD_I2S | SPI_I2SCFGR_I2SCFG_MASTER_TX | SPI_I2SCFGR_CKPOL_HIGH;
    uint16_t _i2spr = 0;

    switch (mode) {
    case I2S_PHILIPS_MODE:
    case I2S_RIGHT_JUSTIFIED_MODE:
    case I2S_LEFT_JUSTIFIED_MODE:
    case I2S_PCM_MODE: //  has some errata and doesn't work in all conditions.
        _i2scfgr |= (uint16_t)mode&0xFFFF;;
        break;
    default:
        return 0;
    }


    switch (bitsPerSample) {
    case 16:
        _i2scfgr |= SPI_I2SCFGR_DATLEN_16_BIT | SPI_I2SCFGR_CHLEN_16_BIT;
        break;
    case 24:
        _i2scfgr |= SPI_I2SCFGR_DATLEN_24_BIT | SPI_I2SCFGR_CHLEN_32_BIT;
        break;
    case 32:
        _i2scfgr |= SPI_I2SCFGR_DATLEN_32_BIT | SPI_I2SCFGR_CHLEN_32_BIT;
        break;
    default:
        return 0;
    }
    _width = bitsPerSample;


    // Check to confirm the sampleRate is within range
    if (sampleRate < 8000 || sampleRate > 96000) {
        return 0;
    }

    // Compute ideal _i2spr value
    _i2spr = compute_i2sspr(sampleRate, bitsPerSample, masterClock);

    // Disable SPI peripheral in case it was enabled (SPI and I2S are the same peripheral, but disable bits are different)
    spi_peripheral_disable(_i2s_d);

    if (masterClock) {
        _i2spr |= SPI_I2SPR_MCKOE; // enable Masterclock signal
        configure_i2s_gpio(_i2s_d, true);
    } else {
        configure_i2s_gpio(_i2s_d, false);
    }


    i2s_dev_disable (_i2s_d);
    rcc_clk_enable(_i2s_d->clk_id); // clock setup

    _i2s_d->regs->I2SCFGR = _i2scfgr; // apply configuration, default is TX mode, but is idle.
    _i2s_d->regs->I2SPR = _i2spr; // set prescaler for sample rate
    i2s_dev_enable (_i2s_d);

    /*
     * Todo, possibly setup most of DMA stuff here, without enabling it.
     * Should move the interrupts out of here to only be attached at the start of a send or reception, and detached right after.
     */
    dma_init(_i2sDmaDev);
    dma_attach_interrupt(_i2sDmaDev, _i2sTxDmaChannel, _eventCallback);

    /*
    switch (_i2s_d->clk_id) {
		case RCC_SPI2:
        dma_attach_interrupt(_i2sDmaDev, _i2sTxDmaChannel, &I2SClass::_i2s2EventCallback);
        break;
		case RCC_SPI3:
        dma_attach_interrupt(_i2sDmaDev, _i2sTxDmaChannel, &I2SClass::_i2s3EventCallback);
        break;
		default:
        ASSERT(0);
	}
     */

    _state = I2S_STATE_READY;

    return 1;
}



int I2SClass::begin(int mode, int bitsPerSample)
{

    if (_state != I2S_STATE_IDLE) {
        return 0;
    }
    uint16_t _i2scfgr = SPI_I2SCFGR_I2SMOD_I2S | SPI_I2SCFGR_I2SCFG_SLAVE_TX;
    uint16_t _i2spr = 2; // not sure if needed, need to recheck Datasheet

    switch (mode) {
    case I2S_PHILIPS_MODE:
    case I2S_RIGHT_JUSTIFIED_MODE:
    case I2S_LEFT_JUSTIFIED_MODE:
    case I2S_PCM_MODE: // This has some errata and doesn't work in all conditions.
        _i2scfgr |= mode;
        break;
    default:
        return 0;
    }

    switch (bitsPerSample) {
    case 16:
        _i2scfgr |= SPI_I2SCFGR_DATLEN_16_BIT | SPI_I2SCFGR_CHLEN_16_BIT;
        break;
    case 24:
        _i2scfgr |= SPI_I2SCFGR_DATLEN_24_BIT | SPI_I2SCFGR_CHLEN_32_BIT;
        break;
    case 32:
        _i2scfgr |= SPI_I2SCFGR_DATLEN_32_BIT | SPI_I2SCFGR_CHLEN_32_BIT;
        break;
    default:
        return 0;
    }
    _width = bitsPerSample;

    spi_peripheral_disable(_i2s_d);
    configure_i2s_gpio(_i2s_d, 0);

    i2s_dev_disable (_i2s_d);
    rcc_clk_enable(_i2s_d->clk_id); // clock setup
    _i2s_d->regs->I2SCFGR = _i2scfgr; // set configuration, direction is RX, but is idle until enabled
    _i2s_d->regs->I2SPR = _i2spr; // set prescaler
    i2s_dev_enable (_i2s_d);

    dma_init(_i2sDmaDev);

    /*
     * Todo: check about moving this somewhere else, so we attach TX or RX as needed.
     */

    dma_attach_interrupt(_i2sDmaDev, _i2sTxDmaChannel, _eventCallback);
    /*
    switch (_i2s_d->clk_id) {
		case RCC_SPI2:
        dma_attach_interrupt(_i2sDmaDev, _i2sTxDmaChannel, &I2SClass::_i2s2EventCallback);
        break;
		case RCC_SPI3:
        dma_attach_interrupt(_i2sDmaDev, _i2sTxDmaChannel, &I2SClass::_i2s3EventCallback);
        break;
		default:
        ASSERT(0);
	}
     */

    _state = I2S_STATE_READY;

    return 1;

}

void I2SClass::end()
{
    /*
     * Need to finish this up.
     * Check the datasheet for all to check before disabling then disable device.
     * Then set pins to input mode
     */
    while (_xf_active) {
        armv7m_core_yield();
    }
    stop();
    _state = I2S_STATE_IDLE;
}

/**
 * Changes the sample rate for the i2s peripheral on the fly.
 * @param sampleRate
 * @return
 */

bool I2SClass::setSampleRate(long sampleRate, bool masterClock){
    // Check to confirm the sampleRate is within range
    if (sampleRate < 8000 || sampleRate > 96000) {
        return false;
    }
    if (_sampleRate == sampleRate) {
        return true;
    }
    _sampleRate = sampleRate;
    uint16_t _i2spr = 0;

    // Compute ideal _i2spr value
    _i2spr = compute_i2sspr(_sampleRate, _width, masterClock);

    if (masterClock) {
        _i2spr |= SPI_I2SPR_MCKOE; // enable Masterclock signal
        configure_i2s_gpio(_i2s_d, true);
    } else {
        configure_i2s_gpio(_i2s_d, false);
    }

    uint16_t _enabled = i2s_is_enabled (_i2s_d);
    if (_enabled) i2s_dev_disable (_i2s_d);
    _i2s_d->regs->I2SPR = _i2spr; // set prescaler for sample rate
    if (_enabled) i2s_dev_enable (_i2s_d);
    return true;
}


/**
 * Starts TX or RX in circular DMA mode. Will not stop until stopped with the stop or pause functions.
 * The registered callback functions will be called at half and complete buffer transfer, and DMA will continue
 * in circular mode. It's the user code responsibility to move data in or out of the i2s buffer.
 * @param isTX true for TX and false for RX
 * @return true if the i2s device was ready and could be set to TX or RX mode.
 *         false if the i2s peripheral was already in TX or RX mode. In that it does not change anything.
 */

bool I2SClass::start(bool isTX)
{
    if (isTX) {
        switch (_state) {
        case I2S_STATE_READY:
            i2s_dev_transmit(_i2s_d);
            _state = I2S_STATE_TRANSMIT;
            break;
        case I2S_STATE_TRANSMIT:
            break;
        default:
            return false;
        }
        _circular = true;
        _xf_active = true;
        _xf_offset = 0;

        dma_setup_transfer(_i2sDmaDev, _i2sTxDmaChannel, &_i2s_d->regs->DR, DMA_SIZE_16BITS,
                (volatile uint16_t*)_xf_data, DMA_SIZE_16BITS, (DMA_CIRC_MODE | DMA_MINC_MODE |  DMA_FROM_MEM | DMA_HALF_TRNS | DMA_TRNS_CMPLT));

        dma_set_num_transfers(_i2sDmaDev, _i2sTxDmaChannel, I2S_BUFFER_SIZE); //send both buffers continually in circular mode

        dma_attach_interrupt(_i2sDmaDev, _i2sTxDmaChannel, _eventCallback);

        dma_enable(_i2sDmaDev, _i2sTxDmaChannel);

        spi_tx_dma_enable(_i2s_d);
    }
    else {
        switch (_state) {
        case I2S_STATE_READY:
            i2s_dev_receive(_i2s_d);
            _state = I2S_STATE_RECEIVE;
            break;
        case I2S_STATE_RECEIVE:
            break;
        default:
            return 0;
        }
        _circular = true;
        _xf_active = true;
        _xf_offset = 0;

        dma_setup_transfer(_i2sDmaDev, _i2sRxDmaChannel, &_i2s_d->regs->DR, DMA_SIZE_16BITS,
                (uint16_t*)&_xf_data[0][0], DMA_SIZE_16BITS, (DMA_CIRC_MODE | DMA_MINC_MODE | DMA_HALF_TRNS | DMA_TRNS_CMPLT));

        dma_set_num_transfers(_i2sDmaDev, _i2sRxDmaChannel, I2S_BUFFER_SIZE);

        dma_attach_interrupt(_i2sDmaDev, _i2sRxDmaChannel, _eventCallback);

        dma_enable(_i2sDmaDev, _i2sRxDmaChannel);

        spi_rx_dma_enable(_i2s_d);
    }

    // TODO: Check if we need to enable and disable interrupts here
    return true;
}

/**
 * Stops sending or receiving data and reset all counters to 0.
 * @return true if the peripheral was in TX or RX mode and successfully stopped
 *         false if it was not in TX or RX mode.
 */

bool I2SClass::stop()
{
    if (!pause(true)) return false;
    _state = I2S_STATE_READY;
    _xf_active = 0;
    _xf_pending = 0;
    _xf_offset = 0;
    return true;
}

/**
 * Pauses the DMA transfer but stopping DMA requests from the i2s peripheral.
 * Does not change any counter value, and does not change the mode (TX or RX)
 * @param pause: true to pause the peripheral, false to unpase
 * @return true if the peripheral was in TX or RX mode and successfully paused.
 *         false if it was not in TX or RX mode.
 */

bool I2SClass::pause(bool pause)
{
    if (pause){
        switch (_state) {
        case I2S_STATE_IDLE:
        case I2S_STATE_READY:
            return false;
        case I2S_STATE_RECEIVE:
            spi_rx_dma_disable(_i2s_d);
            //dma_detach_interrupt(_i2sDmaDev, _i2sRxDmaChannel);
            break;
        case I2S_STATE_TRANSMIT:
            spi_tx_dma_disable(_i2s_d);
            //dma_detach_interrupt(_i2sDmaDev, _i2sTxDmaChannel);
            break;
        }
    }
    else{
        switch (_state) {
        case I2S_STATE_IDLE:
        case I2S_STATE_READY:
            return false;
        case I2S_STATE_RECEIVE:
            //dma_attach_interrupt(_i2sDmaDev, _i2sRxDmaChannel, _eventCallback);
            spi_rx_dma_enable(_i2s_d);
            break;
        case I2S_STATE_TRANSMIT:
            //dma_attach_interrupt(_i2sDmaDev, _i2sTxDmaChannel, _eventCallback);
            spi_tx_dma_enable(_i2s_d);
            break;
        }
    }
    return true;
}

int I2SClass::available()
{
    uint32_t xf_offset, xf_index, xf_count;

    switch (_state) {
    case I2S_STATE_READY:
        i2s_dev_receive(_i2s_d);
        _state = I2S_STATE_RECEIVE;
        break;
    case I2S_STATE_RECEIVE:
        break;
    default:
        return 0;
    }

    if (!_xf_active)
    {
        xf_offset = _xf_offset;
        xf_index  = xf_offset >> 31;
        xf_count  = xf_offset & 0x7fffffff;

        if (xf_count == 0)
        {
            if (_xf_pending)
            {
                _xf_pending = false;
                xf_count = I2S_BUFFER_SIZE;
            }

            _xf_active = true;
            _xf_offset = ((xf_index ^ 1) << 31) | xf_count;

            dma_setup_transfer(_i2sDmaDev, _i2sRxDmaChannel, &_i2s_d->regs->DR, DMA_SIZE_16BITS,
                    (uint16_t*)&_xf_data[xf_index][0], DMA_SIZE_16BITS, (DMA_MINC_MODE | DMA_TRNS_CMPLT));

            dma_set_num_transfers(_i2sDmaDev, _i2sRxDmaChannel, I2S_BUFFER_SIZE/2);
            dma_attach_interrupt(_i2sDmaDev, _i2sRxDmaChannel, _eventCallback);

            dma_enable(_i2sDmaDev, _i2sRxDmaChannel);
        }
    }

    return (_xf_offset & 0x7fffffff);
}

int I2SClass::peek()
{
    uint32_t xf_offset, xf_index, xf_count;

    switch (_state) {
    case I2S_STATE_READY:
        i2s_dev_receive(_i2s_d);
        _state = I2S_STATE_RECEIVE;
        break;
    case I2S_STATE_RECEIVE:
        break;
    default:
        return 0;
    }

    if (!_xf_active)
    {
        xf_offset = _xf_offset;
        xf_index  = xf_offset >> 31;
        xf_count  = xf_offset & 0x7fffffff;

        if (xf_count == 0)
        {

            if (_xf_pending)
            {
                _xf_pending = false;
                xf_count = I2S_BUFFER_SIZE;
            }

            _xf_active = true;
            _xf_offset = ((xf_index ^ 1) << 31) | xf_count;

            spi_rx_dma_enable(_i2s_d); // function part of the core, don't need own one.

            dma_setup_transfer(_i2sDmaDev, _i2sRxDmaChannel, &_i2s_d->regs->DR, DMA_SIZE_16BITS,
                    (uint16_t*)&_xf_data[xf_index][0], DMA_SIZE_16BITS, (DMA_MINC_MODE | DMA_TRNS_CMPLT));

            dma_set_num_transfers(_i2sDmaDev, _i2sRxDmaChannel, I2S_BUFFER_SIZE/2);

            dma_attach_interrupt(_i2sDmaDev, _i2sRxDmaChannel, _eventCallback);

            dma_enable(_i2sDmaDev, _i2sRxDmaChannel);


        }
    }

    xf_offset = _xf_offset;
    xf_index  = xf_offset >> 31;
    xf_count  = xf_offset & 0x7fffffff;

    if (_width == 32)
    {
        if (xf_count >= 4) {
            return *((int32_t*)&(((uint8_t*)&_xf_data[xf_index][0])[xf_count - 4]));
        }
    }

    else if (_width == 16)
    {
        if (xf_count >= 2) {
            return *((int16_t*)&(((uint8_t*)&_xf_data[xf_index][0])[xf_count - 2]));
        }
    }
    else
    {
        if (xf_count >= 1) {
            return *((uint8_t*)&(((uint8_t*)&_xf_data[xf_index][0])[xf_count - 1]));
        }
    }
    return 0;
}

int I2SClass::read()
{
    if (_width == 32)      { int32_t temp; if (read(&temp, 4)) { return temp; } }
    else if (_width == 16) { int16_t temp; if (read(&temp, 2)) { return temp; } }

    return 0;
}

int I2SClass::read(void* buffer, size_t size)
{
    uint32_t xf_offset, xf_index, xf_count;

    switch (_state) {
    case I2S_STATE_READY:
        i2s_dev_receive(_i2s_d);
        _state = I2S_STATE_RECEIVE;
        break;
    case I2S_STATE_RECEIVE:
        break;
    default:
        return 0;
    }

    if (!_xf_active)
    {
        xf_offset = _xf_offset;
        xf_index  = xf_offset >> 31;
        xf_count  = xf_offset & 0x7fffffff;

        if (xf_count == 0)
        {

            if (_xf_pending)
            {
                _xf_pending = false;
                xf_count = I2S_BUFFER_SIZE;
            }

            _xf_active = true;
            _xf_offset = ((xf_index ^ 1) << 31) | xf_count;

            dma_setup_transfer(_i2sDmaDev, _i2sRxDmaChannel, &_i2s_d->regs->DR, DMA_SIZE_16BITS,
                    (uint16_t*)&_xf_data[xf_index][0], DMA_SIZE_16BITS, (DMA_MINC_MODE | DMA_TRNS_CMPLT));

            dma_set_num_transfers(_i2sDmaDev, _i2sRxDmaChannel, I2S_BUFFER_SIZE/2);

            dma_attach_interrupt(_i2sDmaDev, _i2sRxDmaChannel, _eventCallback);

            dma_enable(_i2sDmaDev, _i2sRxDmaChannel);

            spi_rx_dma_enable(_i2s_d); // function part of the core, don't need own one.

        }
    }

    xf_offset = _xf_offset;
    xf_index  = xf_offset >> 31;
    xf_count  = xf_offset & 0x7fffffff;

    if (size > xf_count) {
        size = xf_count;
    }

    if (size)
    {
        xf_count -= size;

        memcpy(buffer, &(((uint8_t*)&_xf_data[xf_index][0])[xf_count]), size);
    }

    _xf_offset = (xf_index << 31) | xf_count;

    if (!_xf_active)
    {
        xf_offset = _xf_offset;
        xf_index  = xf_offset >> 31;
        xf_count  = xf_offset & 0x7fffffff;

        if (xf_count == 0)
        {

            if (_xf_pending)
            {
                _xf_pending = false;
                xf_count = I2S_BUFFER_SIZE;
            }

            _xf_active = true;
            _xf_offset = ((xf_index ^ 1) << 31) | xf_count;

            spi_rx_dma_enable(_i2s_d);

            dma_setup_transfer(_i2sDmaDev, _i2sRxDmaChannel, &_i2s_d->regs->DR, DMA_SIZE_16BITS,
                    (uint16_t*)&_xf_data[xf_index][0], DMA_SIZE_16BITS, (DMA_MINC_MODE | DMA_TRNS_CMPLT));

            dma_set_num_transfers(_i2sDmaDev, _i2sRxDmaChannel, I2S_BUFFER_SIZE/2);

            dma_attach_interrupt(_i2sDmaDev, _i2sRxDmaChannel, _eventCallback);

            dma_enable(_i2sDmaDev, _i2sRxDmaChannel);
        }
    }
    return size;
}

void I2SClass::flush()
{
}
/**
 * Returns the number of bytes available int he i2s buffer when in TX mode.
 * If in RX more, it will return 0.
 * @return the number of bytes available for write in the current i2s buffer. If both buffers are full, returns 0
 */

size_t I2SClass::availableForWrite()
{

    switch (_state) {
    case I2S_STATE_READY:
        i2s_dev_transmit(_i2s_d);
        _state = I2S_STATE_TRANSMIT;
        break;
    case I2S_STATE_TRANSMIT:
        break;
    default:
        return 0;
    }
    return I2S_BUFFER_SIZE - (_xf_offset & 0x7fffffff);
}

/**
 * Writes a byte to the i2s buffer, converting it to uint16 (smallest data type in the F1 i2s peripheral)
 * If the state was Ready it will set it to TX, and if the current buffer fills up,
 * it will initiate a DMA transfer
 * @param sample: Byte to send.
 * @return 1 if the byte could be queued successfully.
 *         0 otherwise.
 */
size_t I2SClass::write(uint8_t sample)
{
    // This is pretty much pointless since the smaller size the F1 can send is 16 bits. 8bits wouldn't do much
    return write((int16_t)sample);
}

/*
 * Is this function below needed at all?
 */

size_t I2SClass::write(const uint8_t *buffer, size_t size)
{
    return write((const void*)buffer, size);
}


/**
 * Writes a int16 to the i2s buffer. If the state was Ready it will set it to TX, and if the current buffer fills up,
 * it will initiate a DMA transfer
 * @param sample: uint16 to send.
 * @return 1 if the byte could be queued successfully.
 *         0 otherwise.
 */

size_t I2SClass::write(int16_t sample)
{
    size_t sent = 0;
    while (sent < _width / 8)
        sent += write((const void*)(&sample + sent), (_width / 8));
    return sent;
}

/**
 * Writes a int32 to the i2s buffer. If the state was Ready it will set it to TX, and if the current buffer fills up,
 * it will initiate a DMA transfer
 * @param int32 to be queue.
 * @return 1 if the byte could be queued successfully.
 *         0 otherwise.
 */

size_t I2SClass::write(int32_t sample)
{
    size_t sent = 0;
    while (sent < _width / 8)
        sent += write((const void*)(&sample + sent), (_width / 8));
    return sent;
}

size_t I2SClass::write(const void *buffer, size_t size)
{
    uint32_t xf_offset, xf_index, xf_count;
    switch (_state) {
    case I2S_STATE_READY:
        i2s_dev_transmit(_i2s_d);
        _state = I2S_STATE_TRANSMIT;
        break;
    case I2S_STATE_TRANSMIT:
        break;
    default:
        return 0;
    }

    if      (_width == 32) { size &= ~3; }
    else if (_width == 16) { size &= ~1; }

    xf_offset = _xf_offset;
    xf_index  = xf_offset >> 31;
    xf_count  = xf_offset & 0x7fffffff;

    if ((xf_count + size) > I2S_BUFFER_SIZE) {
        size = I2S_BUFFER_SIZE - xf_count;
    }

    if (size)
    {
        memcpy(&(((uint8_t*)&_xf_data[xf_index][0])[xf_count]), buffer, size);

        xf_count += size;
        _xf_offset = (xf_index << 31) | xf_count;
    }

    if (!_xf_active)
    {
        xf_offset = _xf_offset;
        xf_index  = xf_offset >> 31;
        xf_count  = xf_offset & 0x7fffffff;

        if (xf_count == I2S_BUFFER_SIZE)
        {
            _xf_active = true;
            _xf_offset = (xf_index ^ 1) << 31;

            dma_setup_transfer(_i2sDmaDev, _i2sTxDmaChannel, &_i2s_d->regs->DR, DMA_SIZE_16BITS,
                    (volatile uint16_t*)&_xf_data[xf_index][0], DMA_SIZE_16BITS, (DMA_MINC_MODE |  DMA_FROM_MEM | DMA_TRNS_CMPLT));

            dma_set_num_transfers(_i2sDmaDev, _i2sTxDmaChannel, I2S_BUFFER_SIZE/2);

            dma_attach_interrupt(_i2sDmaDev, _i2sTxDmaChannel, _eventCallback);

            dma_enable(_i2sDmaDev, _i2sTxDmaChannel);

            spi_tx_dma_enable(_i2s_d);
        }
    }
    return size;
}

void I2SClass::onReceive(void(*callback)(void))
{
    _receiveCallback = callback;
}

void I2SClass::onTransmit(void(*callback)(void))
{
    _transmitCallback = callback;
}

/* Todo: Rewrite this
 * Better use the _state variable to decide if it's in xmit or receive mode, similar to SAMD
 */
void I2SClass::EventCallback()
{
    if (_circular == true){
        switch (_state) {
        case I2S_STATE_TRANSMIT:
            // dma_get_irq_cause will clear the ISR flags for us
            noInterrupts();
            event = dma_get_irq_cause(_i2sDmaDev, _i2sTxDmaChannel);
            interrupts();
            if (_transmitCallback)
            {
                _transmitCallback();
            }
            break;
        case I2S_STATE_RECEIVE:
            noInterrupts();
            event = dma_get_irq_cause(_i2sDmaDev, _i2sTxDmaChannel);
            interrupts();
            if (_receiveCallback)
            {
                _receiveCallback();
            }
            break;
        default:
            return;
        }
        return;
    }

    uint32_t xf_offset, xf_index, xf_count;

    xf_offset = _xf_offset;
    xf_index  = xf_offset >> 31;
    xf_count  = xf_offset & 0x7fffffff;

    if (_state == I2S_STATE_RECEIVE)
    {
        if (xf_count == 0)
        {
            _xf_offset = ((xf_index ^ 1) << 31) | I2S_BUFFER_SIZE;

            dma_setup_transfer(_i2sDmaDev, _i2sRxDmaChannel, &_i2s_d->regs->DR, DMA_SIZE_16BITS,
                    (uint16_t*)&_xf_data[xf_index][0], DMA_SIZE_16BITS, (DMA_MINC_MODE | DMA_TRNS_CMPLT));

            dma_set_num_transfers(_i2sDmaDev, _i2sRxDmaChannel, I2S_BUFFER_SIZE/2);

            dma_enable(_i2sDmaDev, _i2sRxDmaChannel);
        }
        else
        {
            // TODO: Perhaps disable interrutps if we are done, right now we disable dma only
            _xf_pending = true;
            _xf_active = false;

            dma_detach_interrupt(_i2sDmaDev, _i2sRxDmaChannel);

            spi_rx_dma_disable(_i2s_d);
            _state = I2S_STATE_READY;
        }

        if (_receiveCallback)
        {
            _receiveCallback();
        }
    }

    if (_state == I2S_STATE_TRANSMIT)
    {
        if (xf_count == I2S_BUFFER_SIZE)
        {
            _xf_offset = (xf_index ^ 1) << 31;

            dma_setup_transfer(_i2sDmaDev, _i2sTxDmaChannel, &_i2s_d->regs->DR, DMA_SIZE_16BITS,
                    (volatile uint16_t*)&_xf_data[xf_index][0], DMA_SIZE_16BITS, (DMA_MINC_MODE |  DMA_FROM_MEM | DMA_TRNS_CMPLT));

            dma_set_num_transfers(_i2sDmaDev, _i2sTxDmaChannel, I2S_BUFFER_SIZE/2);

            dma_enable(_i2sDmaDev, _i2sTxDmaChannel);
        }
        else
        {
            // TODO: disable interrutps if we are done, or at least disable DMA requests from SPI
            // so other devices can use the DMA channel.
            _xf_active = false;

            dma_detach_interrupt(_i2sDmaDev, _i2sTxDmaChannel);

            spi_tx_dma_disable(_i2s_d);

            _state = I2S_STATE_READY;
        }

        if (_transmitCallback)
        {
            _transmitCallback();
        }
    }
}

/* This is the static ISR, need to discern who called it to then call a different 
 * At the moment just set 2 of them, they are short anyway
 */

void I2SClass::_i2s2EventCallback()
{
    reinterpret_cast<class I2SClass*>(_i2s2_this)->EventCallback();
}

void I2SClass::_i2s3EventCallback()
{
    reinterpret_cast<class I2SClass*>(_i2s3_this)->EventCallback();
}


#if I2S_INTERFACES_COUNT > 0
/*
 * Nothing here at the moment, we don't even have that define in the core.
 * Would be better to check whether there are 3 SPI ports or not.
 */
#endif

/*
 * Auxiliary functions, similar to libmaple spi.
 * May want to move them to a separate file.
 */

static const i2s_pins* dev_to_i2s_pins(spi_dev *dev) {
    switch (dev->clk_id) {
    case RCC_SPI2: return board_i2s_pins;
    case RCC_SPI3: return &board_i2s_pins[1];
    default:       return NULL;
    }
}

/* This function also exists in the spi library, may need to rename it, 
 * or check if it's defined already, since otherwise including SPI in the same sketch may clash
 * Could make it part of the class, but would be a waste of program space
 */
static void i2s_disable_pwm(const stm32_pin_info *i) {
    if (i->timer_device) {
        timer_set_mode(i->timer_device, i->timer_channel, TIMER_DISABLED);
    }
}

/**
 *  \brief Similar to libmaple for spi. It configures the i2s pins as Alternate Function
 *  
 *  \param [in] dev Pointer to an spi device struct.
 *  \param [in] masterclk Indicates if the MCLK pin will be used.
 *  \return Nothing.
 *  
 *  \details Details
 */
static void configure_i2s_gpio(spi_dev *dev, bool masterclk) {
    const i2s_pins *pins = dev_to_i2s_pins(dev);

    if (!pins) {
        return;
    }


    const stm32_pin_info *i2s_ws = &PIN_MAP[pins->i2s_ws];
    const stm32_pin_info *i2s_ck = &PIN_MAP[pins->i2s_ck];
    const stm32_pin_info *i2s_mck = &PIN_MAP[pins->i2s_mck];
    const stm32_pin_info *i2s_sd = &PIN_MAP[pins->i2s_sd];

    i2s_disable_pwm(i2s_ws);
    i2s_disable_pwm(i2s_ck);
    i2s_disable_pwm(i2s_sd);
    gpio_set_mode(i2s_ws->gpio_device, i2s_ws->gpio_bit, GPIO_AF_OUTPUT_PP);
    gpio_set_mode(i2s_ck->gpio_device, i2s_ck->gpio_bit, GPIO_AF_OUTPUT_PP);
    gpio_set_mode(i2s_sd->gpio_device, i2s_sd->gpio_bit, GPIO_AF_OUTPUT_PP);

    if (masterclk) {	
        i2s_disable_pwm(i2s_mck);
        gpio_set_mode(i2s_mck->gpio_device, i2s_mck->gpio_bit, GPIO_AF_OUTPUT_PP);
    }


}
/**
 *  \brief Calculates the optimal value for the i2s pre-scaler
 *  	   This function is almost copied from the HAL one.
 *  
 *  \param [in] sampleRate Sample rate in Hz
 *  \param [in] bitsPerSample Bit per sample per channel
 *  \param [in] masterClock Whether MCLK will need to be output
 *  \return 16bit value to be loaded in the i2s device pre-scaler register
 *  
 *  \details Details
 */

static uint16_t compute_i2sspr(long sampleRate, int bitsPerSample, bool masterClock) {
    /* Todo: Make sourceclock come from the compile options, so it can calculate correctly for other core speeds
     */
    uint16_t i2sdiv = 2, i2sodd = 0, packetlength = 1;
    uint32_t tmp = 0;
    //uint32_t sourceclock = 72000000;
    uint32_t sourceclock = F_CPU;
    /* Check the frame length (For the Prescaler computing) */
    if(bitsPerSample == 16)
    {
        /* Packet length is 16 bits */
        packetlength = 1;
    }
    else
    {
        /* Packet length is 32 bits */
        packetlength = 2;
    }
    /* Compute the Real divider depending on the MCLK output state with a floating point */
    if(masterClock)
    {
        /* MCLK output is enabled */
        tmp = (uint16_t)(((((sourceclock / 256) * 10) / sampleRate)) + 5);
    }
    else
    {
        /* MCLK output is disabled */
        tmp = (uint16_t)(((((sourceclock / (32 * packetlength)) *10 ) / sampleRate)) + 5);
    }

    /* Remove the floating point */
    tmp = tmp / 10;  

    /* Check the parity of the divider */
    i2sodd = (uint16_t)(tmp & (uint16_t)0x0001);

    /* Compute the i2sdiv prescaler */
    i2sdiv = (uint16_t)((tmp - i2sodd) / 2);

    /* Get the Mask for the Odd bit (SPI_I2SPR[8]) register */
    i2sodd = (uint16_t) (i2sodd << 8);
    return (i2sdiv | i2sodd);
}
