################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Project_Settings/Startup_Code/startup.c 

OBJS += \
./Project_Settings/Startup_Code/startup.o 

C_DEPS += \
./Project_Settings/Startup_Code/startup.d 


# Each subdirectory must supply rules for building sources it contributes
Project_Settings/Startup_Code/%.o: ../Project_Settings/Startup_Code/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O3 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DK64F -I"E:\Freescale\KDS_3.0.0\eclipse\ProcessorExpert/lib/Kinetis/pdd/inc" -I"E:\Freescale\KDS_3.0.0\eclipse\ProcessorExpert/lib/Kinetis/iofiles" -I"D:/007 Project/kinetis/FSFK_K64F/Sources" -I"D:/007 Project/kinetis/FSFK_K64F/Generated_Code" -I"D:/007 Project/kinetis/FSFK_K64F/MQXLITE/include" -I"D:/007 Project/kinetis/FSFK_K64F/MQXLITE/config" -I"D:/007 Project/kinetis/FSFK_K64F/MQXLITE/kernel" -I"D:/007 Project/kinetis/FSFK_K64F/MQXLITE/psp/cortex_m" -I"D:/007 Project/kinetis/FSFK_K64F/MQXLITE/psp/cortex_m/core/M4" -I"D:/007 Project/kinetis/FSFK_K64F/MQXLITE/psp/cortex_m/compiler/cwgcc" -I"E:\Freescale\KDS_3.0.0\eclipse\ProcessorExpert/Repositories/Kinetis_Repository/lib/Kinetis/pdd2/MK64FN1M0LL12/system" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


