################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := del 

# All of the sources participating in the build are defined here
-include sources.mk
-include subdir.mk
-include libraries\SdFat\src\SpiDriver/subdir.mk
-include libraries\SdFat\src\SdCard/subdir.mk
-include libraries\SdFat\src\FatLib/subdir.mk
-include libraries\SdFat\src/subdir.mk
-include libraries\SPI\src/subdir.mk
-include libraries\SDIO/subdir.mk
-include core\variant\wirish/subdir.mk
-include core\variant/subdir.mk
-include core\core\stm32f1/subdir.mk
-include core\core\libmaple\usb\usb_lib/subdir.mk
-include core\core\libmaple\usb\stm32f1/subdir.mk
-include core\core\libmaple\stm32f1\performance/subdir.mk
-include core\core\libmaple/subdir.mk
-include core\core\avr/subdir.mk
-include core\core/subdir.mk
-include Adafruit_MP3\src/subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(INO_DEPS)),)
-include $(INO_DEPS)
endif
ifneq ($(strip $(PDE_DEPS)),)
-include $(PDE_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
AR += \
C:/Users/Victor/git/mp3-player-F1/mp3-player/Release/arduino.ar \

ELF += \
mp3-player.elf \

HEX += \
mp3-player.hex \


# All Target
all: mp3-player

# Tool invocations
mp3-player: $(HEX)
	@echo 'Building target: $@'
	@echo 'Printing size:'
	"D:\linked_to_c\sloeber\/arduinoPlugin/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/bin/arm-none-eabi-size" -A "C:/Users/Victor/git/mp3-player-F1/mp3-player/Release/mp3-player.elf"
	@echo 'Finished building target: $@'
	@echo ' '

C:/Users/Victor/git/mp3-player-F1/mp3-player/Release/arduino.ar: $(AR_OBJ)
	@echo 'Starting archiver'
	"D:\linked_to_c\sloeber\/arduinoPlugin/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/bin/arm-none-eabi-ar" rcs    C:/Users/Victor/git/mp3-player-F1/mp3-player/Release/arduino.ar $(AR_OBJ)
	@echo 'Finished building: $@'
	@echo ' '

mp3-player.elf: $(LINK_OBJ) $(AR)
	@echo 'Starting combiner'
	"D:\linked_to_c\sloeber\/arduinoPlugin/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/bin/arm-none-eabi-g++" -O2 -Wl,--gc-sections -mcpu=cortex-m3 "-TC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/variants/generic_stm32f103r/ld/bootloader.ld" "-Wl,-Map,C:\Users\Victor\git\mp3-player-F1\mp3-player/Release/mp3-player.map" "-LC:/Users/Victor/Documents/Arduino/Hardware/Arduino_STM32/STM32F1/variants/generic_stm32f103r/ld" -o "C:\Users\Victor\git\mp3-player-F1\mp3-player/Release/mp3-player.elf" "-LC:\Users\Victor\git\mp3-player-F1\mp3-player/Release" -lm -lgcc -mthumb -Wl,--cref -Wl,--check-sections -Wl,--gc-sections -Wl,--unresolved-symbols=report-all -Wl,--warn-common -Wl,--warn-section-align -Wl,--warn-unresolved-symbols -Wl,--start-group   $(LINK_OBJ) $(AR)   C:/Users/Victor/git/mp3-player-F1/mp3-player/Release/arduino.ar  -Wl,--end-group
	@echo 'Finished building: $@'
	@echo ' '

mp3-player.hex: $(ELF)
	@echo 'Create eeprom image'
	"D:\linked_to_c\sloeber\/arduinoPlugin/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/bin/arm-none-eabi-objcopy" -O binary  "C:/Users/Victor/git/mp3-player-F1/mp3-player/Release/mp3-player.elf" "C:/Users/Victor/git/mp3-player-F1/mp3-player/Release/mp3-player.bin"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(C_UPPER_DEPS)$(PDE_DEPS)$(C_DEPS)$(AR)$(CC_DEPS)$(AR_OBJ)$(C++_DEPS)$(LINK_OBJ)$(CXX_DEPS)$(ASM_DEPS)$(HEX)$(INO_DEPS)$(SIZEDUMMY)$(S_UPPER_DEPS)$(ELF)$(CPP_DEPS)
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
