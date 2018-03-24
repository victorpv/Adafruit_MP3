################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_UPPER_SRCS += \
C:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/cores/maple/libmaple/exc.S 

C_SRCS += \
C:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/cores/maple/libmaple/adc.c \
C:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/cores/maple/libmaple/adc_f1.c \
C:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/cores/maple/libmaple/bkp_f1.c \
C:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/cores/maple/libmaple/dac.c \
C:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/cores/maple/libmaple/dma.c \
C:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/cores/maple/libmaple/dma_f1.c \
C:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/cores/maple/libmaple/exti.c \
C:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/cores/maple/libmaple/exti_f1.c \
C:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/cores/maple/libmaple/flash.c \
C:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/cores/maple/libmaple/fsmc_f1.c \
C:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/cores/maple/libmaple/gpio.c \
C:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/cores/maple/libmaple/gpio_f1.c \
C:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/cores/maple/libmaple/i2c.c \
C:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/cores/maple/libmaple/i2c_f1.c \
C:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/cores/maple/libmaple/iwdg.c \
C:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/cores/maple/libmaple/nvic.c \
C:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/cores/maple/libmaple/pwr.c \
C:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/cores/maple/libmaple/rcc.c \
C:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/cores/maple/libmaple/rcc_f1.c \
C:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/cores/maple/libmaple/spi.c \
C:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/cores/maple/libmaple/spi_f1.c \
C:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/cores/maple/libmaple/systick.c \
C:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/cores/maple/libmaple/timer.c \
C:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/cores/maple/libmaple/timer_f1.c \
C:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/cores/maple/libmaple/usart.c \
C:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/cores/maple/libmaple/usart_f1.c \
C:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/cores/maple/libmaple/usart_private.c \
C:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/cores/maple/libmaple/util.c 

C_DEPS += \
.\core\adc.c.d \
.\core\adc_f1.c.d \
.\core\bkp_f1.c.d \
.\core\dac.c.d \
.\core\dma.c.d \
.\core\dma_f1.c.d \
.\core\exti.c.d \
.\core\exti_f1.c.d \
.\core\flash.c.d \
.\core\fsmc_f1.c.d \
.\core\gpio.c.d \
.\core\gpio_f1.c.d \
.\core\i2c.c.d \
.\core\i2c_f1.c.d \
.\core\iwdg.c.d \
.\core\nvic.c.d \
.\core\pwr.c.d \
.\core\rcc.c.d \
.\core\rcc_f1.c.d \
.\core\spi.c.d \
.\core\spi_f1.c.d \
.\core\systick.c.d \
.\core\timer.c.d \
.\core\timer_f1.c.d \
.\core\usart.c.d \
.\core\usart_f1.c.d \
.\core\usart_private.c.d \
.\core\util.c.d 

AR_OBJ += \
./core/adc.c.o \
./core/adc_f1.c.o \
./core/bkp_f1.c.o \
./core/dac.c.o \
./core/dma.c.o \
./core/dma_f1.c.o \
./core/exc.S.o \
./core/exti.c.o \
./core/exti_f1.c.o \
./core/flash.c.o \
./core/fsmc_f1.c.o \
./core/gpio.c.o \
./core/gpio_f1.c.o \
./core/i2c.c.o \
./core/i2c_f1.c.o \
./core/iwdg.c.o \
./core/nvic.c.o \
./core/pwr.c.o \
./core/rcc.c.o \
./core/rcc_f1.c.o \
./core/spi.c.o \
./core/spi_f1.c.o \
./core/systick.c.o \
./core/timer.c.o \
./core/timer_f1.c.o \
./core/usart.c.o \
./core/usart_f1.c.o \
./core/usart_private.c.o \
./core/util.c.o 

S_UPPER_DEPS += \
.\core\exc.S.d 


# Each subdirectory must supply rules for building sources it contributes
core/adc.c.o: C:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/cores/maple/libmaple/adc.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"D:\linked_to_c\sloeber\/arduinoPlugin/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/bin/arm-none-eabi-gcc" -c -g -O2 -Wall -Wextra -DDEBUG_LEVEL=DEBUG_ALL -std=gnu11 -ffunction-sections -fdata-sections -nostdlib --param max-inline-insns-single=500 -DBOARD_generic_stm32f103r -DVECT_TAB_ADDR=0x8002000 -DERROR_LED_PORT=GPIOB -DERROR_LED_PIN=1 -mcpu=cortex-m3 -DF_CPU=72000000L -DARDUINO=10609 -DARDUINO_GENERIC_STM32F103R -DARDUINO_ARCH_STM32F1  -DSERIAL_USB -DGENERIC_BOOTLOADER -DMCU_STM32F103RE -DHSE_16M -mthumb -march=armv7-m -D__STM32F1__ "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/include" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/stm32f1/include"                              "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/usb/stm32f1" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/usb/usb_lib"   -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\cores\maple" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\variants\generic_stm32f103r" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SdFat" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SdFat\src" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SDIO" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SPI" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SPI\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

core/adc_f1.c.o: C:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/cores/maple/libmaple/adc_f1.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"D:\linked_to_c\sloeber\/arduinoPlugin/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/bin/arm-none-eabi-gcc" -c -g -O2 -Wall -Wextra -DDEBUG_LEVEL=DEBUG_ALL -std=gnu11 -ffunction-sections -fdata-sections -nostdlib --param max-inline-insns-single=500 -DBOARD_generic_stm32f103r -DVECT_TAB_ADDR=0x8002000 -DERROR_LED_PORT=GPIOB -DERROR_LED_PIN=1 -mcpu=cortex-m3 -DF_CPU=72000000L -DARDUINO=10609 -DARDUINO_GENERIC_STM32F103R -DARDUINO_ARCH_STM32F1  -DSERIAL_USB -DGENERIC_BOOTLOADER -DMCU_STM32F103RE -DHSE_16M -mthumb -march=armv7-m -D__STM32F1__ "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/include" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/stm32f1/include"                              "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/usb/stm32f1" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/usb/usb_lib"   -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\cores\maple" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\variants\generic_stm32f103r" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SdFat" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SdFat\src" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SDIO" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SPI" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SPI\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

core/bkp_f1.c.o: C:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/cores/maple/libmaple/bkp_f1.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"D:\linked_to_c\sloeber\/arduinoPlugin/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/bin/arm-none-eabi-gcc" -c -g -O2 -Wall -Wextra -DDEBUG_LEVEL=DEBUG_ALL -std=gnu11 -ffunction-sections -fdata-sections -nostdlib --param max-inline-insns-single=500 -DBOARD_generic_stm32f103r -DVECT_TAB_ADDR=0x8002000 -DERROR_LED_PORT=GPIOB -DERROR_LED_PIN=1 -mcpu=cortex-m3 -DF_CPU=72000000L -DARDUINO=10609 -DARDUINO_GENERIC_STM32F103R -DARDUINO_ARCH_STM32F1  -DSERIAL_USB -DGENERIC_BOOTLOADER -DMCU_STM32F103RE -DHSE_16M -mthumb -march=armv7-m -D__STM32F1__ "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/include" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/stm32f1/include"                              "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/usb/stm32f1" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/usb/usb_lib"   -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\cores\maple" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\variants\generic_stm32f103r" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SdFat" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SdFat\src" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SDIO" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SPI" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SPI\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

core/dac.c.o: C:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/cores/maple/libmaple/dac.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"D:\linked_to_c\sloeber\/arduinoPlugin/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/bin/arm-none-eabi-gcc" -c -g -O2 -Wall -Wextra -DDEBUG_LEVEL=DEBUG_ALL -std=gnu11 -ffunction-sections -fdata-sections -nostdlib --param max-inline-insns-single=500 -DBOARD_generic_stm32f103r -DVECT_TAB_ADDR=0x8002000 -DERROR_LED_PORT=GPIOB -DERROR_LED_PIN=1 -mcpu=cortex-m3 -DF_CPU=72000000L -DARDUINO=10609 -DARDUINO_GENERIC_STM32F103R -DARDUINO_ARCH_STM32F1  -DSERIAL_USB -DGENERIC_BOOTLOADER -DMCU_STM32F103RE -DHSE_16M -mthumb -march=armv7-m -D__STM32F1__ "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/include" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/stm32f1/include"                              "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/usb/stm32f1" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/usb/usb_lib"   -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\cores\maple" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\variants\generic_stm32f103r" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SdFat" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SdFat\src" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SDIO" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SPI" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SPI\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

core/dma.c.o: C:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/cores/maple/libmaple/dma.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"D:\linked_to_c\sloeber\/arduinoPlugin/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/bin/arm-none-eabi-gcc" -c -g -O2 -Wall -Wextra -DDEBUG_LEVEL=DEBUG_ALL -std=gnu11 -ffunction-sections -fdata-sections -nostdlib --param max-inline-insns-single=500 -DBOARD_generic_stm32f103r -DVECT_TAB_ADDR=0x8002000 -DERROR_LED_PORT=GPIOB -DERROR_LED_PIN=1 -mcpu=cortex-m3 -DF_CPU=72000000L -DARDUINO=10609 -DARDUINO_GENERIC_STM32F103R -DARDUINO_ARCH_STM32F1  -DSERIAL_USB -DGENERIC_BOOTLOADER -DMCU_STM32F103RE -DHSE_16M -mthumb -march=armv7-m -D__STM32F1__ "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/include" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/stm32f1/include"                              "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/usb/stm32f1" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/usb/usb_lib"   -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\cores\maple" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\variants\generic_stm32f103r" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SdFat" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SdFat\src" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SDIO" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SPI" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SPI\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

core/dma_f1.c.o: C:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/cores/maple/libmaple/dma_f1.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"D:\linked_to_c\sloeber\/arduinoPlugin/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/bin/arm-none-eabi-gcc" -c -g -O2 -Wall -Wextra -DDEBUG_LEVEL=DEBUG_ALL -std=gnu11 -ffunction-sections -fdata-sections -nostdlib --param max-inline-insns-single=500 -DBOARD_generic_stm32f103r -DVECT_TAB_ADDR=0x8002000 -DERROR_LED_PORT=GPIOB -DERROR_LED_PIN=1 -mcpu=cortex-m3 -DF_CPU=72000000L -DARDUINO=10609 -DARDUINO_GENERIC_STM32F103R -DARDUINO_ARCH_STM32F1  -DSERIAL_USB -DGENERIC_BOOTLOADER -DMCU_STM32F103RE -DHSE_16M -mthumb -march=armv7-m -D__STM32F1__ "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/include" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/stm32f1/include"                              "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/usb/stm32f1" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/usb/usb_lib"   -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\cores\maple" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\variants\generic_stm32f103r" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SdFat" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SdFat\src" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SDIO" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SPI" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SPI\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

core/exc.S.o: C:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/cores/maple/libmaple/exc.S
	@echo 'Building file: $<'
	@echo 'Starting S compile'
	"D:\linked_to_c\sloeber\/arduinoPlugin/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/bin/arm-none-eabi-gcc" -c -g -x assembler-with-cpp -mcpu=cortex-m3 -DF_CPU=72000000L -DARDUINO=10609 -DARDUINO_GENERIC_STM32F103R -DARDUINO_ARCH_STM32F1  -DSERIAL_USB -DGENERIC_BOOTLOADER -DMCU_STM32F103RE -DHSE_16M -mthumb -march=armv7-m -D__STM32F1__ -DMCU_STM32F103RE -DHSE_16M -mthumb -march=armv7-m -D__STM32F1__ "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/include" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/stm32f1/include"                              "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/usb/stm32f1" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/usb/usb_lib"   -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\cores\maple" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\variants\generic_stm32f103r" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SdFat" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SdFat\src" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SDIO" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SPI" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SPI\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@"  "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

core/exti.c.o: C:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/cores/maple/libmaple/exti.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"D:\linked_to_c\sloeber\/arduinoPlugin/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/bin/arm-none-eabi-gcc" -c -g -O2 -Wall -Wextra -DDEBUG_LEVEL=DEBUG_ALL -std=gnu11 -ffunction-sections -fdata-sections -nostdlib --param max-inline-insns-single=500 -DBOARD_generic_stm32f103r -DVECT_TAB_ADDR=0x8002000 -DERROR_LED_PORT=GPIOB -DERROR_LED_PIN=1 -mcpu=cortex-m3 -DF_CPU=72000000L -DARDUINO=10609 -DARDUINO_GENERIC_STM32F103R -DARDUINO_ARCH_STM32F1  -DSERIAL_USB -DGENERIC_BOOTLOADER -DMCU_STM32F103RE -DHSE_16M -mthumb -march=armv7-m -D__STM32F1__ "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/include" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/stm32f1/include"                              "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/usb/stm32f1" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/usb/usb_lib"   -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\cores\maple" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\variants\generic_stm32f103r" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SdFat" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SdFat\src" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SDIO" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SPI" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SPI\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

core/exti_f1.c.o: C:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/cores/maple/libmaple/exti_f1.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"D:\linked_to_c\sloeber\/arduinoPlugin/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/bin/arm-none-eabi-gcc" -c -g -O2 -Wall -Wextra -DDEBUG_LEVEL=DEBUG_ALL -std=gnu11 -ffunction-sections -fdata-sections -nostdlib --param max-inline-insns-single=500 -DBOARD_generic_stm32f103r -DVECT_TAB_ADDR=0x8002000 -DERROR_LED_PORT=GPIOB -DERROR_LED_PIN=1 -mcpu=cortex-m3 -DF_CPU=72000000L -DARDUINO=10609 -DARDUINO_GENERIC_STM32F103R -DARDUINO_ARCH_STM32F1  -DSERIAL_USB -DGENERIC_BOOTLOADER -DMCU_STM32F103RE -DHSE_16M -mthumb -march=armv7-m -D__STM32F1__ "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/include" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/stm32f1/include"                              "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/usb/stm32f1" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/usb/usb_lib"   -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\cores\maple" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\variants\generic_stm32f103r" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SdFat" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SdFat\src" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SDIO" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SPI" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SPI\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

core/flash.c.o: C:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/cores/maple/libmaple/flash.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"D:\linked_to_c\sloeber\/arduinoPlugin/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/bin/arm-none-eabi-gcc" -c -g -O2 -Wall -Wextra -DDEBUG_LEVEL=DEBUG_ALL -std=gnu11 -ffunction-sections -fdata-sections -nostdlib --param max-inline-insns-single=500 -DBOARD_generic_stm32f103r -DVECT_TAB_ADDR=0x8002000 -DERROR_LED_PORT=GPIOB -DERROR_LED_PIN=1 -mcpu=cortex-m3 -DF_CPU=72000000L -DARDUINO=10609 -DARDUINO_GENERIC_STM32F103R -DARDUINO_ARCH_STM32F1  -DSERIAL_USB -DGENERIC_BOOTLOADER -DMCU_STM32F103RE -DHSE_16M -mthumb -march=armv7-m -D__STM32F1__ "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/include" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/stm32f1/include"                              "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/usb/stm32f1" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/usb/usb_lib"   -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\cores\maple" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\variants\generic_stm32f103r" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SdFat" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SdFat\src" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SDIO" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SPI" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SPI\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

core/fsmc_f1.c.o: C:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/cores/maple/libmaple/fsmc_f1.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"D:\linked_to_c\sloeber\/arduinoPlugin/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/bin/arm-none-eabi-gcc" -c -g -O2 -Wall -Wextra -DDEBUG_LEVEL=DEBUG_ALL -std=gnu11 -ffunction-sections -fdata-sections -nostdlib --param max-inline-insns-single=500 -DBOARD_generic_stm32f103r -DVECT_TAB_ADDR=0x8002000 -DERROR_LED_PORT=GPIOB -DERROR_LED_PIN=1 -mcpu=cortex-m3 -DF_CPU=72000000L -DARDUINO=10609 -DARDUINO_GENERIC_STM32F103R -DARDUINO_ARCH_STM32F1  -DSERIAL_USB -DGENERIC_BOOTLOADER -DMCU_STM32F103RE -DHSE_16M -mthumb -march=armv7-m -D__STM32F1__ "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/include" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/stm32f1/include"                              "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/usb/stm32f1" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/usb/usb_lib"   -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\cores\maple" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\variants\generic_stm32f103r" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SdFat" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SdFat\src" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SDIO" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SPI" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SPI\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

core/gpio.c.o: C:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/cores/maple/libmaple/gpio.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"D:\linked_to_c\sloeber\/arduinoPlugin/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/bin/arm-none-eabi-gcc" -c -g -O2 -Wall -Wextra -DDEBUG_LEVEL=DEBUG_ALL -std=gnu11 -ffunction-sections -fdata-sections -nostdlib --param max-inline-insns-single=500 -DBOARD_generic_stm32f103r -DVECT_TAB_ADDR=0x8002000 -DERROR_LED_PORT=GPIOB -DERROR_LED_PIN=1 -mcpu=cortex-m3 -DF_CPU=72000000L -DARDUINO=10609 -DARDUINO_GENERIC_STM32F103R -DARDUINO_ARCH_STM32F1  -DSERIAL_USB -DGENERIC_BOOTLOADER -DMCU_STM32F103RE -DHSE_16M -mthumb -march=armv7-m -D__STM32F1__ "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/include" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/stm32f1/include"                              "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/usb/stm32f1" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/usb/usb_lib"   -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\cores\maple" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\variants\generic_stm32f103r" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SdFat" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SdFat\src" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SDIO" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SPI" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SPI\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

core/gpio_f1.c.o: C:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/cores/maple/libmaple/gpio_f1.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"D:\linked_to_c\sloeber\/arduinoPlugin/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/bin/arm-none-eabi-gcc" -c -g -O2 -Wall -Wextra -DDEBUG_LEVEL=DEBUG_ALL -std=gnu11 -ffunction-sections -fdata-sections -nostdlib --param max-inline-insns-single=500 -DBOARD_generic_stm32f103r -DVECT_TAB_ADDR=0x8002000 -DERROR_LED_PORT=GPIOB -DERROR_LED_PIN=1 -mcpu=cortex-m3 -DF_CPU=72000000L -DARDUINO=10609 -DARDUINO_GENERIC_STM32F103R -DARDUINO_ARCH_STM32F1  -DSERIAL_USB -DGENERIC_BOOTLOADER -DMCU_STM32F103RE -DHSE_16M -mthumb -march=armv7-m -D__STM32F1__ "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/include" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/stm32f1/include"                              "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/usb/stm32f1" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/usb/usb_lib"   -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\cores\maple" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\variants\generic_stm32f103r" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SdFat" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SdFat\src" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SDIO" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SPI" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SPI\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

core/i2c.c.o: C:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/cores/maple/libmaple/i2c.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"D:\linked_to_c\sloeber\/arduinoPlugin/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/bin/arm-none-eabi-gcc" -c -g -O2 -Wall -Wextra -DDEBUG_LEVEL=DEBUG_ALL -std=gnu11 -ffunction-sections -fdata-sections -nostdlib --param max-inline-insns-single=500 -DBOARD_generic_stm32f103r -DVECT_TAB_ADDR=0x8002000 -DERROR_LED_PORT=GPIOB -DERROR_LED_PIN=1 -mcpu=cortex-m3 -DF_CPU=72000000L -DARDUINO=10609 -DARDUINO_GENERIC_STM32F103R -DARDUINO_ARCH_STM32F1  -DSERIAL_USB -DGENERIC_BOOTLOADER -DMCU_STM32F103RE -DHSE_16M -mthumb -march=armv7-m -D__STM32F1__ "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/include" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/stm32f1/include"                              "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/usb/stm32f1" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/usb/usb_lib"   -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\cores\maple" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\variants\generic_stm32f103r" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SdFat" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SdFat\src" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SDIO" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SPI" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SPI\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

core/i2c_f1.c.o: C:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/cores/maple/libmaple/i2c_f1.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"D:\linked_to_c\sloeber\/arduinoPlugin/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/bin/arm-none-eabi-gcc" -c -g -O2 -Wall -Wextra -DDEBUG_LEVEL=DEBUG_ALL -std=gnu11 -ffunction-sections -fdata-sections -nostdlib --param max-inline-insns-single=500 -DBOARD_generic_stm32f103r -DVECT_TAB_ADDR=0x8002000 -DERROR_LED_PORT=GPIOB -DERROR_LED_PIN=1 -mcpu=cortex-m3 -DF_CPU=72000000L -DARDUINO=10609 -DARDUINO_GENERIC_STM32F103R -DARDUINO_ARCH_STM32F1  -DSERIAL_USB -DGENERIC_BOOTLOADER -DMCU_STM32F103RE -DHSE_16M -mthumb -march=armv7-m -D__STM32F1__ "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/include" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/stm32f1/include"                              "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/usb/stm32f1" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/usb/usb_lib"   -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\cores\maple" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\variants\generic_stm32f103r" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SdFat" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SdFat\src" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SDIO" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SPI" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SPI\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

core/iwdg.c.o: C:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/cores/maple/libmaple/iwdg.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"D:\linked_to_c\sloeber\/arduinoPlugin/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/bin/arm-none-eabi-gcc" -c -g -O2 -Wall -Wextra -DDEBUG_LEVEL=DEBUG_ALL -std=gnu11 -ffunction-sections -fdata-sections -nostdlib --param max-inline-insns-single=500 -DBOARD_generic_stm32f103r -DVECT_TAB_ADDR=0x8002000 -DERROR_LED_PORT=GPIOB -DERROR_LED_PIN=1 -mcpu=cortex-m3 -DF_CPU=72000000L -DARDUINO=10609 -DARDUINO_GENERIC_STM32F103R -DARDUINO_ARCH_STM32F1  -DSERIAL_USB -DGENERIC_BOOTLOADER -DMCU_STM32F103RE -DHSE_16M -mthumb -march=armv7-m -D__STM32F1__ "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/include" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/stm32f1/include"                              "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/usb/stm32f1" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/usb/usb_lib"   -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\cores\maple" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\variants\generic_stm32f103r" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SdFat" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SdFat\src" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SDIO" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SPI" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SPI\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

core/nvic.c.o: C:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/cores/maple/libmaple/nvic.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"D:\linked_to_c\sloeber\/arduinoPlugin/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/bin/arm-none-eabi-gcc" -c -g -O2 -Wall -Wextra -DDEBUG_LEVEL=DEBUG_ALL -std=gnu11 -ffunction-sections -fdata-sections -nostdlib --param max-inline-insns-single=500 -DBOARD_generic_stm32f103r -DVECT_TAB_ADDR=0x8002000 -DERROR_LED_PORT=GPIOB -DERROR_LED_PIN=1 -mcpu=cortex-m3 -DF_CPU=72000000L -DARDUINO=10609 -DARDUINO_GENERIC_STM32F103R -DARDUINO_ARCH_STM32F1  -DSERIAL_USB -DGENERIC_BOOTLOADER -DMCU_STM32F103RE -DHSE_16M -mthumb -march=armv7-m -D__STM32F1__ "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/include" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/stm32f1/include"                              "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/usb/stm32f1" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/usb/usb_lib"   -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\cores\maple" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\variants\generic_stm32f103r" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SdFat" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SdFat\src" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SDIO" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SPI" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SPI\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

core/pwr.c.o: C:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/cores/maple/libmaple/pwr.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"D:\linked_to_c\sloeber\/arduinoPlugin/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/bin/arm-none-eabi-gcc" -c -g -O2 -Wall -Wextra -DDEBUG_LEVEL=DEBUG_ALL -std=gnu11 -ffunction-sections -fdata-sections -nostdlib --param max-inline-insns-single=500 -DBOARD_generic_stm32f103r -DVECT_TAB_ADDR=0x8002000 -DERROR_LED_PORT=GPIOB -DERROR_LED_PIN=1 -mcpu=cortex-m3 -DF_CPU=72000000L -DARDUINO=10609 -DARDUINO_GENERIC_STM32F103R -DARDUINO_ARCH_STM32F1  -DSERIAL_USB -DGENERIC_BOOTLOADER -DMCU_STM32F103RE -DHSE_16M -mthumb -march=armv7-m -D__STM32F1__ "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/include" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/stm32f1/include"                              "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/usb/stm32f1" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/usb/usb_lib"   -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\cores\maple" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\variants\generic_stm32f103r" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SdFat" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SdFat\src" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SDIO" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SPI" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SPI\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

core/rcc.c.o: C:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/cores/maple/libmaple/rcc.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"D:\linked_to_c\sloeber\/arduinoPlugin/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/bin/arm-none-eabi-gcc" -c -g -O2 -Wall -Wextra -DDEBUG_LEVEL=DEBUG_ALL -std=gnu11 -ffunction-sections -fdata-sections -nostdlib --param max-inline-insns-single=500 -DBOARD_generic_stm32f103r -DVECT_TAB_ADDR=0x8002000 -DERROR_LED_PORT=GPIOB -DERROR_LED_PIN=1 -mcpu=cortex-m3 -DF_CPU=72000000L -DARDUINO=10609 -DARDUINO_GENERIC_STM32F103R -DARDUINO_ARCH_STM32F1  -DSERIAL_USB -DGENERIC_BOOTLOADER -DMCU_STM32F103RE -DHSE_16M -mthumb -march=armv7-m -D__STM32F1__ "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/include" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/stm32f1/include"                              "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/usb/stm32f1" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/usb/usb_lib"   -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\cores\maple" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\variants\generic_stm32f103r" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SdFat" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SdFat\src" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SDIO" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SPI" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SPI\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

core/rcc_f1.c.o: C:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/cores/maple/libmaple/rcc_f1.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"D:\linked_to_c\sloeber\/arduinoPlugin/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/bin/arm-none-eabi-gcc" -c -g -O2 -Wall -Wextra -DDEBUG_LEVEL=DEBUG_ALL -std=gnu11 -ffunction-sections -fdata-sections -nostdlib --param max-inline-insns-single=500 -DBOARD_generic_stm32f103r -DVECT_TAB_ADDR=0x8002000 -DERROR_LED_PORT=GPIOB -DERROR_LED_PIN=1 -mcpu=cortex-m3 -DF_CPU=72000000L -DARDUINO=10609 -DARDUINO_GENERIC_STM32F103R -DARDUINO_ARCH_STM32F1  -DSERIAL_USB -DGENERIC_BOOTLOADER -DMCU_STM32F103RE -DHSE_16M -mthumb -march=armv7-m -D__STM32F1__ "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/include" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/stm32f1/include"                              "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/usb/stm32f1" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/usb/usb_lib"   -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\cores\maple" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\variants\generic_stm32f103r" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SdFat" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SdFat\src" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SDIO" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SPI" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SPI\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

core/spi.c.o: C:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/cores/maple/libmaple/spi.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"D:\linked_to_c\sloeber\/arduinoPlugin/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/bin/arm-none-eabi-gcc" -c -g -O2 -Wall -Wextra -DDEBUG_LEVEL=DEBUG_ALL -std=gnu11 -ffunction-sections -fdata-sections -nostdlib --param max-inline-insns-single=500 -DBOARD_generic_stm32f103r -DVECT_TAB_ADDR=0x8002000 -DERROR_LED_PORT=GPIOB -DERROR_LED_PIN=1 -mcpu=cortex-m3 -DF_CPU=72000000L -DARDUINO=10609 -DARDUINO_GENERIC_STM32F103R -DARDUINO_ARCH_STM32F1  -DSERIAL_USB -DGENERIC_BOOTLOADER -DMCU_STM32F103RE -DHSE_16M -mthumb -march=armv7-m -D__STM32F1__ "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/include" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/stm32f1/include"                              "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/usb/stm32f1" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/usb/usb_lib"   -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\cores\maple" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\variants\generic_stm32f103r" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SdFat" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SdFat\src" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SDIO" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SPI" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SPI\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

core/spi_f1.c.o: C:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/cores/maple/libmaple/spi_f1.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"D:\linked_to_c\sloeber\/arduinoPlugin/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/bin/arm-none-eabi-gcc" -c -g -O2 -Wall -Wextra -DDEBUG_LEVEL=DEBUG_ALL -std=gnu11 -ffunction-sections -fdata-sections -nostdlib --param max-inline-insns-single=500 -DBOARD_generic_stm32f103r -DVECT_TAB_ADDR=0x8002000 -DERROR_LED_PORT=GPIOB -DERROR_LED_PIN=1 -mcpu=cortex-m3 -DF_CPU=72000000L -DARDUINO=10609 -DARDUINO_GENERIC_STM32F103R -DARDUINO_ARCH_STM32F1  -DSERIAL_USB -DGENERIC_BOOTLOADER -DMCU_STM32F103RE -DHSE_16M -mthumb -march=armv7-m -D__STM32F1__ "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/include" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/stm32f1/include"                              "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/usb/stm32f1" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/usb/usb_lib"   -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\cores\maple" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\variants\generic_stm32f103r" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SdFat" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SdFat\src" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SDIO" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SPI" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SPI\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

core/systick.c.o: C:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/cores/maple/libmaple/systick.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"D:\linked_to_c\sloeber\/arduinoPlugin/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/bin/arm-none-eabi-gcc" -c -g -O2 -Wall -Wextra -DDEBUG_LEVEL=DEBUG_ALL -std=gnu11 -ffunction-sections -fdata-sections -nostdlib --param max-inline-insns-single=500 -DBOARD_generic_stm32f103r -DVECT_TAB_ADDR=0x8002000 -DERROR_LED_PORT=GPIOB -DERROR_LED_PIN=1 -mcpu=cortex-m3 -DF_CPU=72000000L -DARDUINO=10609 -DARDUINO_GENERIC_STM32F103R -DARDUINO_ARCH_STM32F1  -DSERIAL_USB -DGENERIC_BOOTLOADER -DMCU_STM32F103RE -DHSE_16M -mthumb -march=armv7-m -D__STM32F1__ "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/include" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/stm32f1/include"                              "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/usb/stm32f1" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/usb/usb_lib"   -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\cores\maple" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\variants\generic_stm32f103r" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SdFat" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SdFat\src" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SDIO" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SPI" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SPI\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

core/timer.c.o: C:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/cores/maple/libmaple/timer.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"D:\linked_to_c\sloeber\/arduinoPlugin/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/bin/arm-none-eabi-gcc" -c -g -O2 -Wall -Wextra -DDEBUG_LEVEL=DEBUG_ALL -std=gnu11 -ffunction-sections -fdata-sections -nostdlib --param max-inline-insns-single=500 -DBOARD_generic_stm32f103r -DVECT_TAB_ADDR=0x8002000 -DERROR_LED_PORT=GPIOB -DERROR_LED_PIN=1 -mcpu=cortex-m3 -DF_CPU=72000000L -DARDUINO=10609 -DARDUINO_GENERIC_STM32F103R -DARDUINO_ARCH_STM32F1  -DSERIAL_USB -DGENERIC_BOOTLOADER -DMCU_STM32F103RE -DHSE_16M -mthumb -march=armv7-m -D__STM32F1__ "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/include" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/stm32f1/include"                              "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/usb/stm32f1" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/usb/usb_lib"   -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\cores\maple" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\variants\generic_stm32f103r" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SdFat" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SdFat\src" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SDIO" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SPI" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SPI\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

core/timer_f1.c.o: C:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/cores/maple/libmaple/timer_f1.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"D:\linked_to_c\sloeber\/arduinoPlugin/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/bin/arm-none-eabi-gcc" -c -g -O2 -Wall -Wextra -DDEBUG_LEVEL=DEBUG_ALL -std=gnu11 -ffunction-sections -fdata-sections -nostdlib --param max-inline-insns-single=500 -DBOARD_generic_stm32f103r -DVECT_TAB_ADDR=0x8002000 -DERROR_LED_PORT=GPIOB -DERROR_LED_PIN=1 -mcpu=cortex-m3 -DF_CPU=72000000L -DARDUINO=10609 -DARDUINO_GENERIC_STM32F103R -DARDUINO_ARCH_STM32F1  -DSERIAL_USB -DGENERIC_BOOTLOADER -DMCU_STM32F103RE -DHSE_16M -mthumb -march=armv7-m -D__STM32F1__ "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/include" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/stm32f1/include"                              "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/usb/stm32f1" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/usb/usb_lib"   -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\cores\maple" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\variants\generic_stm32f103r" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SdFat" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SdFat\src" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SDIO" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SPI" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SPI\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

core/usart.c.o: C:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/cores/maple/libmaple/usart.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"D:\linked_to_c\sloeber\/arduinoPlugin/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/bin/arm-none-eabi-gcc" -c -g -O2 -Wall -Wextra -DDEBUG_LEVEL=DEBUG_ALL -std=gnu11 -ffunction-sections -fdata-sections -nostdlib --param max-inline-insns-single=500 -DBOARD_generic_stm32f103r -DVECT_TAB_ADDR=0x8002000 -DERROR_LED_PORT=GPIOB -DERROR_LED_PIN=1 -mcpu=cortex-m3 -DF_CPU=72000000L -DARDUINO=10609 -DARDUINO_GENERIC_STM32F103R -DARDUINO_ARCH_STM32F1  -DSERIAL_USB -DGENERIC_BOOTLOADER -DMCU_STM32F103RE -DHSE_16M -mthumb -march=armv7-m -D__STM32F1__ "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/include" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/stm32f1/include"                              "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/usb/stm32f1" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/usb/usb_lib"   -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\cores\maple" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\variants\generic_stm32f103r" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SdFat" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SdFat\src" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SDIO" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SPI" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SPI\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

core/usart_f1.c.o: C:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/cores/maple/libmaple/usart_f1.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"D:\linked_to_c\sloeber\/arduinoPlugin/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/bin/arm-none-eabi-gcc" -c -g -O2 -Wall -Wextra -DDEBUG_LEVEL=DEBUG_ALL -std=gnu11 -ffunction-sections -fdata-sections -nostdlib --param max-inline-insns-single=500 -DBOARD_generic_stm32f103r -DVECT_TAB_ADDR=0x8002000 -DERROR_LED_PORT=GPIOB -DERROR_LED_PIN=1 -mcpu=cortex-m3 -DF_CPU=72000000L -DARDUINO=10609 -DARDUINO_GENERIC_STM32F103R -DARDUINO_ARCH_STM32F1  -DSERIAL_USB -DGENERIC_BOOTLOADER -DMCU_STM32F103RE -DHSE_16M -mthumb -march=armv7-m -D__STM32F1__ "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/include" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/stm32f1/include"                              "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/usb/stm32f1" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/usb/usb_lib"   -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\cores\maple" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\variants\generic_stm32f103r" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SdFat" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SdFat\src" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SDIO" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SPI" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SPI\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

core/usart_private.c.o: C:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/cores/maple/libmaple/usart_private.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"D:\linked_to_c\sloeber\/arduinoPlugin/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/bin/arm-none-eabi-gcc" -c -g -O2 -Wall -Wextra -DDEBUG_LEVEL=DEBUG_ALL -std=gnu11 -ffunction-sections -fdata-sections -nostdlib --param max-inline-insns-single=500 -DBOARD_generic_stm32f103r -DVECT_TAB_ADDR=0x8002000 -DERROR_LED_PORT=GPIOB -DERROR_LED_PIN=1 -mcpu=cortex-m3 -DF_CPU=72000000L -DARDUINO=10609 -DARDUINO_GENERIC_STM32F103R -DARDUINO_ARCH_STM32F1  -DSERIAL_USB -DGENERIC_BOOTLOADER -DMCU_STM32F103RE -DHSE_16M -mthumb -march=armv7-m -D__STM32F1__ "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/include" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/stm32f1/include"                              "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/usb/stm32f1" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/usb/usb_lib"   -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\cores\maple" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\variants\generic_stm32f103r" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SdFat" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SdFat\src" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SDIO" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SPI" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SPI\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

core/util.c.o: C:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/cores/maple/libmaple/util.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"D:\linked_to_c\sloeber\/arduinoPlugin/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/bin/arm-none-eabi-gcc" -c -g -O2 -Wall -Wextra -DDEBUG_LEVEL=DEBUG_ALL -std=gnu11 -ffunction-sections -fdata-sections -nostdlib --param max-inline-insns-single=500 -DBOARD_generic_stm32f103r -DVECT_TAB_ADDR=0x8002000 -DERROR_LED_PORT=GPIOB -DERROR_LED_PIN=1 -mcpu=cortex-m3 -DF_CPU=72000000L -DARDUINO=10609 -DARDUINO_GENERIC_STM32F103R -DARDUINO_ARCH_STM32F1  -DSERIAL_USB -DGENERIC_BOOTLOADER -DMCU_STM32F103RE -DHSE_16M -mthumb -march=armv7-m -D__STM32F1__ "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/include" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/stm32f1/include"                              "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/usb/stm32f1" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/usb/usb_lib"   -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\cores\maple" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\variants\generic_stm32f103r" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SdFat" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SdFat\src" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SDIO" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SPI" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SPI\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '


