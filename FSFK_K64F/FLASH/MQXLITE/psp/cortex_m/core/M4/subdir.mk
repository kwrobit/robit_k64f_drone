################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_UPPER_SRCS += \
../MQXLITE/psp/cortex_m/core/M4/boot.S \
../MQXLITE/psp/cortex_m/core/M4/dispatch.S 

OBJS += \
./MQXLITE/psp/cortex_m/core/M4/boot.o \
./MQXLITE/psp/cortex_m/core/M4/dispatch.o 

S_UPPER_DEPS += \
./MQXLITE/psp/cortex_m/core/M4/boot.d \
./MQXLITE/psp/cortex_m/core/M4/dispatch.d 


# Each subdirectory must supply rules for building sources it contributes
MQXLITE/psp/cortex_m/core/M4/%.o: ../MQXLITE/psp/cortex_m/core/M4/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM GNU Assembler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O3 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -x assembler-with-cpp -I"D:/007 Project/kinetis/FSFK_K64F/MQXLITE/include" -I"D:/007 Project/kinetis/FSFK_K64F/MQXLITE/config" -I"D:/007 Project/kinetis/FSFK_K64F/MQXLITE/kernel" -I"D:/007 Project/kinetis/FSFK_K64F/MQXLITE/psp/cortex_m" -I"D:/007 Project/kinetis/FSFK_K64F/MQXLITE/psp/cortex_m/core/M4" -I"D:/007 Project/kinetis/FSFK_K64F/MQXLITE/psp/cortex_m/compiler/cwgcc" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


