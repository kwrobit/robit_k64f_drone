################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include Static_Code/System/subdir.mk
-include Sources/subdir.mk
-include Project_Settings/Startup_Code/subdir.mk
-include MQXLITE/psp/cortex_m/core/M4/subdir.mk
-include MQXLITE/psp/cortex_m/subdir.mk
-include MQXLITE/kernel/subdir.mk
-include MQXLITE/config/subdir.mk
-include Generated_Code/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
SECONDARY_FLASH += \
FSFK_K64F.bin \

SECONDARY_LIST += \
FSFK_K64F.lst \

SECONDARY_SIZE += \
FSFK_K64F.siz \


# All Target
all: FSFK_K64F.elf secondary-outputs

# Tool invocations
FSFK_K64F.elf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: Cross ARM C++ Linker'
	arm-none-eabi-g++ -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O3 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -T "D:/007 Project/kinetis/FSFK_K64F/Project_Settings/Linker_Files/ProcessorExpert.ld" -Xlinker --gc-sections -L"D:/007 Project/kinetis/FSFK_K64F/Project_Settings/Linker_Files" -Wl,-Map,"FSFK_K64F.map" -specs=nano.specs -specs=nosys.specs -o "FSFK_K64F.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '
	$(MAKE) --no-print-directory post-build

FSFK_K64F.bin: FSFK_K64F.elf
	@echo 'Invoking: Cross ARM GNU Create Flash Image'
	arm-none-eabi-objcopy -O binary "FSFK_K64F.elf"  "FSFK_K64F.bin"
	@echo 'Finished building: $@'
	@echo ' '

FSFK_K64F.lst: FSFK_K64F.elf
	@echo 'Invoking: Cross ARM GNU Create Listing'
	arm-none-eabi-objdump --source --all-headers --demangle --line-numbers --wide "FSFK_K64F.elf" > "FSFK_K64F.lst"
	@echo 'Finished building: $@'
	@echo ' '

FSFK_K64F.siz: FSFK_K64F.elf
	@echo 'Invoking: Cross ARM GNU Print Size'
	arm-none-eabi-size --format=berkeley "FSFK_K64F.elf"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(SECONDARY_SIZE)$(C++_DEPS)$(OBJS)$(C_DEPS)$(ASM_DEPS)$(CC_DEPS)$(SECONDARY_FLASH)$(CPP_DEPS)$(CXX_DEPS)$(C_UPPER_DEPS)$(SECONDARY_LIST)$(S_UPPER_DEPS) FSFK_K64F.elf
	-@echo ' '

post-build:
	-/bin/arm-none-eabi-size"  --format=berkeley FSFK_K64F.elf
	-@echo ' '

secondary-outputs: $(SECONDARY_FLASH) $(SECONDARY_LIST) $(SECONDARY_SIZE)

.PHONY: all clean dependents
.SECONDARY: post-build

-include ../makefile.targets
