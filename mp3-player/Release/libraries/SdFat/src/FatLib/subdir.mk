################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
C:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/libraries/SdFat/src/FatLib/FatFile.cpp \
C:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/libraries/SdFat/src/FatLib/FatFileLFN.cpp \
C:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/libraries/SdFat/src/FatLib/FatFilePrint.cpp \
C:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/libraries/SdFat/src/FatLib/FatFileSFN.cpp \
C:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/libraries/SdFat/src/FatLib/FatVolume.cpp \
C:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/libraries/SdFat/src/FatLib/FmtNumber.cpp \
C:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/libraries/SdFat/src/FatLib/StdioStream.cpp \
C:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/libraries/SdFat/src/FatLib/fstream.cpp \
C:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/libraries/SdFat/src/FatLib/istream.cpp \
C:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/libraries/SdFat/src/FatLib/ostream.cpp 

LINK_OBJ += \
./libraries/SdFat/src/FatLib/FatFile.cpp.o \
./libraries/SdFat/src/FatLib/FatFileLFN.cpp.o \
./libraries/SdFat/src/FatLib/FatFilePrint.cpp.o \
./libraries/SdFat/src/FatLib/FatFileSFN.cpp.o \
./libraries/SdFat/src/FatLib/FatVolume.cpp.o \
./libraries/SdFat/src/FatLib/FmtNumber.cpp.o \
./libraries/SdFat/src/FatLib/StdioStream.cpp.o \
./libraries/SdFat/src/FatLib/fstream.cpp.o \
./libraries/SdFat/src/FatLib/istream.cpp.o \
./libraries/SdFat/src/FatLib/ostream.cpp.o 

CPP_DEPS += \
.\libraries\SdFat\src\FatLib\FatFile.cpp.d \
.\libraries\SdFat\src\FatLib\FatFileLFN.cpp.d \
.\libraries\SdFat\src\FatLib\FatFilePrint.cpp.d \
.\libraries\SdFat\src\FatLib\FatFileSFN.cpp.d \
.\libraries\SdFat\src\FatLib\FatVolume.cpp.d \
.\libraries\SdFat\src\FatLib\FmtNumber.cpp.d \
.\libraries\SdFat\src\FatLib\StdioStream.cpp.d \
.\libraries\SdFat\src\FatLib\fstream.cpp.d \
.\libraries\SdFat\src\FatLib\istream.cpp.d \
.\libraries\SdFat\src\FatLib\ostream.cpp.d 


# Each subdirectory must supply rules for building sources it contributes
libraries/SdFat/src/FatLib/FatFile.cpp.o: C:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/libraries/SdFat/src/FatLib/FatFile.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"D:\linked_to_c\sloeber\/arduinoPlugin/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/bin/arm-none-eabi-g++" -c -g -O2 -Wall -Wextra -DDEBUG_LEVEL=DEBUG_ALL -std=gnu++11 -ffunction-sections -fdata-sections -nostdlib --param max-inline-insns-single=500 -fno-rtti -fno-exceptions -DBOARD_generic_stm32f103r -DVECT_TAB_ADDR=0x8002000 -DERROR_LED_PORT=GPIOB -DERROR_LED_PIN=1 -mcpu=cortex-m3 -DF_CPU=72000000L -DARDUINO=10609 -DARDUINO_GENERIC_STM32F103R -DARDUINO_ARCH_STM32F1  -DSERIAL_USB -DGENERIC_BOOTLOADER -DMCU_STM32F103RE -DHSE_16M -mthumb -march=armv7-m -D__STM32F1__ -DMCU_STM32F103RE -DHSE_16M -mthumb -march=armv7-m -D__STM32F1__ "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/include" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/stm32f1/include"                              "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/usb/stm32f1" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/usb/usb_lib"   -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\cores\maple" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\variants\generic_stm32f103r" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SdFat" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SdFat\src" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SDIO" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SPI" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SPI\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries/SdFat/src/FatLib/FatFileLFN.cpp.o: C:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/libraries/SdFat/src/FatLib/FatFileLFN.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"D:\linked_to_c\sloeber\/arduinoPlugin/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/bin/arm-none-eabi-g++" -c -g -O2 -Wall -Wextra -DDEBUG_LEVEL=DEBUG_ALL -std=gnu++11 -ffunction-sections -fdata-sections -nostdlib --param max-inline-insns-single=500 -fno-rtti -fno-exceptions -DBOARD_generic_stm32f103r -DVECT_TAB_ADDR=0x8002000 -DERROR_LED_PORT=GPIOB -DERROR_LED_PIN=1 -mcpu=cortex-m3 -DF_CPU=72000000L -DARDUINO=10609 -DARDUINO_GENERIC_STM32F103R -DARDUINO_ARCH_STM32F1  -DSERIAL_USB -DGENERIC_BOOTLOADER -DMCU_STM32F103RE -DHSE_16M -mthumb -march=armv7-m -D__STM32F1__ -DMCU_STM32F103RE -DHSE_16M -mthumb -march=armv7-m -D__STM32F1__ "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/include" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/stm32f1/include"                              "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/usb/stm32f1" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/usb/usb_lib"   -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\cores\maple" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\variants\generic_stm32f103r" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SdFat" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SdFat\src" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SDIO" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SPI" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SPI\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries/SdFat/src/FatLib/FatFilePrint.cpp.o: C:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/libraries/SdFat/src/FatLib/FatFilePrint.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"D:\linked_to_c\sloeber\/arduinoPlugin/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/bin/arm-none-eabi-g++" -c -g -O2 -Wall -Wextra -DDEBUG_LEVEL=DEBUG_ALL -std=gnu++11 -ffunction-sections -fdata-sections -nostdlib --param max-inline-insns-single=500 -fno-rtti -fno-exceptions -DBOARD_generic_stm32f103r -DVECT_TAB_ADDR=0x8002000 -DERROR_LED_PORT=GPIOB -DERROR_LED_PIN=1 -mcpu=cortex-m3 -DF_CPU=72000000L -DARDUINO=10609 -DARDUINO_GENERIC_STM32F103R -DARDUINO_ARCH_STM32F1  -DSERIAL_USB -DGENERIC_BOOTLOADER -DMCU_STM32F103RE -DHSE_16M -mthumb -march=armv7-m -D__STM32F1__ -DMCU_STM32F103RE -DHSE_16M -mthumb -march=armv7-m -D__STM32F1__ "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/include" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/stm32f1/include"                              "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/usb/stm32f1" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/usb/usb_lib"   -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\cores\maple" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\variants\generic_stm32f103r" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SdFat" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SdFat\src" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SDIO" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SPI" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SPI\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries/SdFat/src/FatLib/FatFileSFN.cpp.o: C:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/libraries/SdFat/src/FatLib/FatFileSFN.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"D:\linked_to_c\sloeber\/arduinoPlugin/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/bin/arm-none-eabi-g++" -c -g -O2 -Wall -Wextra -DDEBUG_LEVEL=DEBUG_ALL -std=gnu++11 -ffunction-sections -fdata-sections -nostdlib --param max-inline-insns-single=500 -fno-rtti -fno-exceptions -DBOARD_generic_stm32f103r -DVECT_TAB_ADDR=0x8002000 -DERROR_LED_PORT=GPIOB -DERROR_LED_PIN=1 -mcpu=cortex-m3 -DF_CPU=72000000L -DARDUINO=10609 -DARDUINO_GENERIC_STM32F103R -DARDUINO_ARCH_STM32F1  -DSERIAL_USB -DGENERIC_BOOTLOADER -DMCU_STM32F103RE -DHSE_16M -mthumb -march=armv7-m -D__STM32F1__ -DMCU_STM32F103RE -DHSE_16M -mthumb -march=armv7-m -D__STM32F1__ "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/include" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/stm32f1/include"                              "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/usb/stm32f1" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/usb/usb_lib"   -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\cores\maple" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\variants\generic_stm32f103r" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SdFat" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SdFat\src" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SDIO" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SPI" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SPI\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries/SdFat/src/FatLib/FatVolume.cpp.o: C:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/libraries/SdFat/src/FatLib/FatVolume.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"D:\linked_to_c\sloeber\/arduinoPlugin/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/bin/arm-none-eabi-g++" -c -g -O2 -Wall -Wextra -DDEBUG_LEVEL=DEBUG_ALL -std=gnu++11 -ffunction-sections -fdata-sections -nostdlib --param max-inline-insns-single=500 -fno-rtti -fno-exceptions -DBOARD_generic_stm32f103r -DVECT_TAB_ADDR=0x8002000 -DERROR_LED_PORT=GPIOB -DERROR_LED_PIN=1 -mcpu=cortex-m3 -DF_CPU=72000000L -DARDUINO=10609 -DARDUINO_GENERIC_STM32F103R -DARDUINO_ARCH_STM32F1  -DSERIAL_USB -DGENERIC_BOOTLOADER -DMCU_STM32F103RE -DHSE_16M -mthumb -march=armv7-m -D__STM32F1__ -DMCU_STM32F103RE -DHSE_16M -mthumb -march=armv7-m -D__STM32F1__ "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/include" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/stm32f1/include"                              "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/usb/stm32f1" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/usb/usb_lib"   -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\cores\maple" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\variants\generic_stm32f103r" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SdFat" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SdFat\src" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SDIO" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SPI" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SPI\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries/SdFat/src/FatLib/FmtNumber.cpp.o: C:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/libraries/SdFat/src/FatLib/FmtNumber.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"D:\linked_to_c\sloeber\/arduinoPlugin/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/bin/arm-none-eabi-g++" -c -g -O2 -Wall -Wextra -DDEBUG_LEVEL=DEBUG_ALL -std=gnu++11 -ffunction-sections -fdata-sections -nostdlib --param max-inline-insns-single=500 -fno-rtti -fno-exceptions -DBOARD_generic_stm32f103r -DVECT_TAB_ADDR=0x8002000 -DERROR_LED_PORT=GPIOB -DERROR_LED_PIN=1 -mcpu=cortex-m3 -DF_CPU=72000000L -DARDUINO=10609 -DARDUINO_GENERIC_STM32F103R -DARDUINO_ARCH_STM32F1  -DSERIAL_USB -DGENERIC_BOOTLOADER -DMCU_STM32F103RE -DHSE_16M -mthumb -march=armv7-m -D__STM32F1__ -DMCU_STM32F103RE -DHSE_16M -mthumb -march=armv7-m -D__STM32F1__ "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/include" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/stm32f1/include"                              "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/usb/stm32f1" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/usb/usb_lib"   -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\cores\maple" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\variants\generic_stm32f103r" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SdFat" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SdFat\src" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SDIO" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SPI" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SPI\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries/SdFat/src/FatLib/StdioStream.cpp.o: C:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/libraries/SdFat/src/FatLib/StdioStream.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"D:\linked_to_c\sloeber\/arduinoPlugin/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/bin/arm-none-eabi-g++" -c -g -O2 -Wall -Wextra -DDEBUG_LEVEL=DEBUG_ALL -std=gnu++11 -ffunction-sections -fdata-sections -nostdlib --param max-inline-insns-single=500 -fno-rtti -fno-exceptions -DBOARD_generic_stm32f103r -DVECT_TAB_ADDR=0x8002000 -DERROR_LED_PORT=GPIOB -DERROR_LED_PIN=1 -mcpu=cortex-m3 -DF_CPU=72000000L -DARDUINO=10609 -DARDUINO_GENERIC_STM32F103R -DARDUINO_ARCH_STM32F1  -DSERIAL_USB -DGENERIC_BOOTLOADER -DMCU_STM32F103RE -DHSE_16M -mthumb -march=armv7-m -D__STM32F1__ -DMCU_STM32F103RE -DHSE_16M -mthumb -march=armv7-m -D__STM32F1__ "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/include" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/stm32f1/include"                              "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/usb/stm32f1" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/usb/usb_lib"   -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\cores\maple" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\variants\generic_stm32f103r" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SdFat" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SdFat\src" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SDIO" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SPI" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SPI\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries/SdFat/src/FatLib/fstream.cpp.o: C:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/libraries/SdFat/src/FatLib/fstream.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"D:\linked_to_c\sloeber\/arduinoPlugin/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/bin/arm-none-eabi-g++" -c -g -O2 -Wall -Wextra -DDEBUG_LEVEL=DEBUG_ALL -std=gnu++11 -ffunction-sections -fdata-sections -nostdlib --param max-inline-insns-single=500 -fno-rtti -fno-exceptions -DBOARD_generic_stm32f103r -DVECT_TAB_ADDR=0x8002000 -DERROR_LED_PORT=GPIOB -DERROR_LED_PIN=1 -mcpu=cortex-m3 -DF_CPU=72000000L -DARDUINO=10609 -DARDUINO_GENERIC_STM32F103R -DARDUINO_ARCH_STM32F1  -DSERIAL_USB -DGENERIC_BOOTLOADER -DMCU_STM32F103RE -DHSE_16M -mthumb -march=armv7-m -D__STM32F1__ -DMCU_STM32F103RE -DHSE_16M -mthumb -march=armv7-m -D__STM32F1__ "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/include" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/stm32f1/include"                              "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/usb/stm32f1" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/usb/usb_lib"   -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\cores\maple" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\variants\generic_stm32f103r" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SdFat" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SdFat\src" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SDIO" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SPI" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SPI\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries/SdFat/src/FatLib/istream.cpp.o: C:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/libraries/SdFat/src/FatLib/istream.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"D:\linked_to_c\sloeber\/arduinoPlugin/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/bin/arm-none-eabi-g++" -c -g -O2 -Wall -Wextra -DDEBUG_LEVEL=DEBUG_ALL -std=gnu++11 -ffunction-sections -fdata-sections -nostdlib --param max-inline-insns-single=500 -fno-rtti -fno-exceptions -DBOARD_generic_stm32f103r -DVECT_TAB_ADDR=0x8002000 -DERROR_LED_PORT=GPIOB -DERROR_LED_PIN=1 -mcpu=cortex-m3 -DF_CPU=72000000L -DARDUINO=10609 -DARDUINO_GENERIC_STM32F103R -DARDUINO_ARCH_STM32F1  -DSERIAL_USB -DGENERIC_BOOTLOADER -DMCU_STM32F103RE -DHSE_16M -mthumb -march=armv7-m -D__STM32F1__ -DMCU_STM32F103RE -DHSE_16M -mthumb -march=armv7-m -D__STM32F1__ "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/include" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/stm32f1/include"                              "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/usb/stm32f1" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/usb/usb_lib"   -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\cores\maple" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\variants\generic_stm32f103r" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SdFat" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SdFat\src" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SDIO" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SPI" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SPI\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries/SdFat/src/FatLib/ostream.cpp.o: C:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/libraries/SdFat/src/FatLib/ostream.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"D:\linked_to_c\sloeber\/arduinoPlugin/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/bin/arm-none-eabi-g++" -c -g -O2 -Wall -Wextra -DDEBUG_LEVEL=DEBUG_ALL -std=gnu++11 -ffunction-sections -fdata-sections -nostdlib --param max-inline-insns-single=500 -fno-rtti -fno-exceptions -DBOARD_generic_stm32f103r -DVECT_TAB_ADDR=0x8002000 -DERROR_LED_PORT=GPIOB -DERROR_LED_PIN=1 -mcpu=cortex-m3 -DF_CPU=72000000L -DARDUINO=10609 -DARDUINO_GENERIC_STM32F103R -DARDUINO_ARCH_STM32F1  -DSERIAL_USB -DGENERIC_BOOTLOADER -DMCU_STM32F103RE -DHSE_16M -mthumb -march=armv7-m -D__STM32F1__ -DMCU_STM32F103RE -DHSE_16M -mthumb -march=armv7-m -D__STM32F1__ "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/include" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/stm32f1/include"                              "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/usb/stm32f1" "-IC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/system/libmaple/usb/usb_lib"   -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\cores\maple" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\variants\generic_stm32f103r" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SdFat" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SdFat\src" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SDIO" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SPI" -I"C:\Users\Victor\Documents\Arduino\Hardware\Arduino_STM32\STM32F1\libraries\SPI\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

