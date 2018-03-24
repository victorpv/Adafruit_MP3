################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
C:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/variants/generic_stm32f103r/wirish/boards.cpp \
C:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/variants/generic_stm32f103r/wirish/boards_setup.cpp 

S_UPPER_SRCS += \
C:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/variants/generic_stm32f103r/wirish/start.S 

C_SRCS += \
C:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/variants/generic_stm32f103r/wirish/start_c.c \
C:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/variants/generic_stm32f103r/wirish/syscalls.c 

C_DEPS += \
.\core\start_c.c.d \
.\core\syscalls.c.d 

AR_OBJ += \
./core/boards.cpp.o \
./core/boards_setup.cpp.o \
./core/start.S.o \
./core/start_c.c.o \
./core/syscalls.c.o 

S_UPPER_DEPS += \
.\core\start.S.d 

CPP_DEPS += \
.\core\boards.cpp.d \
.\core\boards_setup.cpp.d 


# Each subdirectory must supply rules for building sources it contributes
core/boards.cpp.o: C:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/variants/generic_stm32f103r/wirish/boards.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"D:\linked_to_c\sloeber\/arduinoPlugin/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/bin/arm-none-eabi-g++" -c -g -O2 -Wall -Wextra -DDEBUG_LEVEL=DEBUG_ALL -std=gnu++11 -ffunction-sections -fdata-sections -nostdlib --param max-inline-insns-single=500 -fno-rtti -fno-exceptions -DBOARD_generic_stm32f103r -DVECT_TAB_ADDR=0x8002000 -DERROR_LED_PORT=GPIOB -DERROR_LED_PIN=1 -mcpu=cortex-m3 -DF_CPU=72000000L -DARDUINO=10609 -DARDUINO_GENERIC_STM32F103R -DARDUINO_ARCH_STM32F1  -DSERIAL_USB -DGENERIC_BOOTLOADER -DMCU_STM32F103RE -DHSE_16M -mthumb -march=armv7-m -D__STM32F1__ -DMCU_STM32F103RE -DHSE_16M -mthumb -march=armv7-m -D__STM32F1__ "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/include" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/stm32f1/include"                              "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/usb/stm32f1" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/usb/usb_lib"   -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\cores\maple" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\variants\generic_stm32f103r" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SdFat" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SdFat\src" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SDIO" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SPI" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SPI\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

core/boards_setup.cpp.o: C:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/variants/generic_stm32f103r/wirish/boards_setup.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"D:\linked_to_c\sloeber\/arduinoPlugin/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/bin/arm-none-eabi-g++" -c -g -O2 -Wall -Wextra -DDEBUG_LEVEL=DEBUG_ALL -std=gnu++11 -ffunction-sections -fdata-sections -nostdlib --param max-inline-insns-single=500 -fno-rtti -fno-exceptions -DBOARD_generic_stm32f103r -DVECT_TAB_ADDR=0x8002000 -DERROR_LED_PORT=GPIOB -DERROR_LED_PIN=1 -mcpu=cortex-m3 -DF_CPU=72000000L -DARDUINO=10609 -DARDUINO_GENERIC_STM32F103R -DARDUINO_ARCH_STM32F1  -DSERIAL_USB -DGENERIC_BOOTLOADER -DMCU_STM32F103RE -DHSE_16M -mthumb -march=armv7-m -D__STM32F1__ -DMCU_STM32F103RE -DHSE_16M -mthumb -march=armv7-m -D__STM32F1__ "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/include" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/stm32f1/include"                              "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/usb/stm32f1" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/usb/usb_lib"   -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\cores\maple" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\variants\generic_stm32f103r" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SdFat" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SdFat\src" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SDIO" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SPI" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SPI\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

core/start.S.o: C:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/variants/generic_stm32f103r/wirish/start.S
	@echo 'Building file: $<'
	@echo 'Starting S compile'
	"D:\linked_to_c\sloeber\/arduinoPlugin/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/bin/arm-none-eabi-gcc" -c -g -x assembler-with-cpp -mcpu=cortex-m3 -DF_CPU=72000000L -DARDUINO=10609 -DARDUINO_GENERIC_STM32F103R -DARDUINO_ARCH_STM32F1  -DSERIAL_USB -DGENERIC_BOOTLOADER -DMCU_STM32F103RE -DHSE_16M -mthumb -march=armv7-m -D__STM32F1__ -DMCU_STM32F103RE -DHSE_16M -mthumb -march=armv7-m -D__STM32F1__ "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/include" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/stm32f1/include"                              "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/usb/stm32f1" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/usb/usb_lib"   -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\cores\maple" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\variants\generic_stm32f103r" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SdFat" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SdFat\src" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SDIO" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SPI" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SPI\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@"  "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

core/start_c.c.o: C:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/variants/generic_stm32f103r/wirish/start_c.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"D:\linked_to_c\sloeber\/arduinoPlugin/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/bin/arm-none-eabi-gcc" -c -g -O2 -Wall -Wextra -DDEBUG_LEVEL=DEBUG_ALL -std=gnu11 -ffunction-sections -fdata-sections -nostdlib --param max-inline-insns-single=500 -DBOARD_generic_stm32f103r -DVECT_TAB_ADDR=0x8002000 -DERROR_LED_PORT=GPIOB -DERROR_LED_PIN=1 -mcpu=cortex-m3 -DF_CPU=72000000L -DARDUINO=10609 -DARDUINO_GENERIC_STM32F103R -DARDUINO_ARCH_STM32F1  -DSERIAL_USB -DGENERIC_BOOTLOADER -DMCU_STM32F103RE -DHSE_16M -mthumb -march=armv7-m -D__STM32F1__ "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/include" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/stm32f1/include"                              "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/usb/stm32f1" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/usb/usb_lib"   -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\cores\maple" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\variants\generic_stm32f103r" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SdFat" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SdFat\src" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SDIO" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SPI" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SPI\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

core/syscalls.c.o: C:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/variants/generic_stm32f103r/wirish/syscalls.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"D:\linked_to_c\sloeber\/arduinoPlugin/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/bin/arm-none-eabi-gcc" -c -g -O2 -Wall -Wextra -DDEBUG_LEVEL=DEBUG_ALL -std=gnu11 -ffunction-sections -fdata-sections -nostdlib --param max-inline-insns-single=500 -DBOARD_generic_stm32f103r -DVECT_TAB_ADDR=0x8002000 -DERROR_LED_PORT=GPIOB -DERROR_LED_PIN=1 -mcpu=cortex-m3 -DF_CPU=72000000L -DARDUINO=10609 -DARDUINO_GENERIC_STM32F103R -DARDUINO_ARCH_STM32F1  -DSERIAL_USB -DGENERIC_BOOTLOADER -DMCU_STM32F103RE -DHSE_16M -mthumb -march=armv7-m -D__STM32F1__ "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/include" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/stm32f1/include"                              "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/usb/stm32f1" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/usb/usb_lib"   -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\cores\maple" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\variants\generic_stm32f103r" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SdFat" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SdFat\src" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SDIO" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SPI" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SPI\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '


