################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/cores/maple/libmaple/usb/stm32f1/usb.c \
C:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/cores/maple/libmaple/usb/stm32f1/usb_cdcacm.c \
C:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/cores/maple/libmaple/usb/stm32f1/usb_reg_map.c 

C_DEPS += \
.\core\usb.c.d \
.\core\usb_cdcacm.c.d \
.\core\usb_reg_map.c.d 

AR_OBJ += \
./core/usb.c.o \
./core/usb_cdcacm.c.o \
./core/usb_reg_map.c.o 


# Each subdirectory must supply rules for building sources it contributes
core/usb.c.o: C:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/cores/maple/libmaple/usb/stm32f1/usb.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"D:\linked_to_c\sloeber\/arduinoPlugin/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/bin/arm-none-eabi-gcc" -c -g -O2 -Wall -Wextra -DDEBUG_LEVEL=DEBUG_ALL -std=gnu11 -ffunction-sections -fdata-sections -nostdlib --param max-inline-insns-single=500 -DBOARD_generic_stm32f103r -DVECT_TAB_ADDR=0x8002000 -DERROR_LED_PORT=GPIOB -DERROR_LED_PIN=1 -mcpu=cortex-m3 -DF_CPU=72000000L -DARDUINO=10609 -DARDUINO_GENERIC_STM32F103R -DARDUINO_ARCH_STM32F1  -DSERIAL_USB -DGENERIC_BOOTLOADER -DMCU_STM32F103RE -DHSE_16M -mthumb -march=armv7-m -D__STM32F1__ "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/include" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/stm32f1/include"                              "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/usb/stm32f1" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/usb/usb_lib"   -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\cores\maple" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\variants\generic_stm32f103r" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SdFat" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SdFat\src" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SDIO" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SPI" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SPI\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

core/usb_cdcacm.c.o: C:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/cores/maple/libmaple/usb/stm32f1/usb_cdcacm.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"D:\linked_to_c\sloeber\/arduinoPlugin/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/bin/arm-none-eabi-gcc" -c -g -O2 -Wall -Wextra -DDEBUG_LEVEL=DEBUG_ALL -std=gnu11 -ffunction-sections -fdata-sections -nostdlib --param max-inline-insns-single=500 -DBOARD_generic_stm32f103r -DVECT_TAB_ADDR=0x8002000 -DERROR_LED_PORT=GPIOB -DERROR_LED_PIN=1 -mcpu=cortex-m3 -DF_CPU=72000000L -DARDUINO=10609 -DARDUINO_GENERIC_STM32F103R -DARDUINO_ARCH_STM32F1  -DSERIAL_USB -DGENERIC_BOOTLOADER -DMCU_STM32F103RE -DHSE_16M -mthumb -march=armv7-m -D__STM32F1__ "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/include" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/stm32f1/include"                              "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/usb/stm32f1" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/usb/usb_lib"   -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\cores\maple" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\variants\generic_stm32f103r" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SdFat" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SdFat\src" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SDIO" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SPI" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SPI\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

core/usb_reg_map.c.o: C:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/cores/maple/libmaple/usb/stm32f1/usb_reg_map.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"D:\linked_to_c\sloeber\/arduinoPlugin/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/bin/arm-none-eabi-gcc" -c -g -O2 -Wall -Wextra -DDEBUG_LEVEL=DEBUG_ALL -std=gnu11 -ffunction-sections -fdata-sections -nostdlib --param max-inline-insns-single=500 -DBOARD_generic_stm32f103r -DVECT_TAB_ADDR=0x8002000 -DERROR_LED_PORT=GPIOB -DERROR_LED_PIN=1 -mcpu=cortex-m3 -DF_CPU=72000000L -DARDUINO=10609 -DARDUINO_GENERIC_STM32F103R -DARDUINO_ARCH_STM32F1  -DSERIAL_USB -DGENERIC_BOOTLOADER -DMCU_STM32F103RE -DHSE_16M -mthumb -march=armv7-m -D__STM32F1__ "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/include" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/stm32f1/include"                              "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/usb/stm32f1" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/usb/usb_lib"   -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\cores\maple" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\variants\generic_stm32f103r" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SdFat" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SdFat\src" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SDIO" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SPI" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SPI\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '


