################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Freescale/KDS_3.0.0/eclipse/ProcessorExpert/Repositories/Kinetis_Repository/lib/Kinetis/pdd2/MK64FN1M0LL12/peripherals/UART1_Init.c 

OBJS += \
./Static_Code/Peripherals/UART1_Init.o 

C_DEPS += \
./Static_Code/Peripherals/UART1_Init.d 


# Each subdirectory must supply rules for building sources it contributes
Static_Code/Peripherals/UART1_Init.o: C:/Freescale/KDS_3.0.0/eclipse/ProcessorExpert/Repositories/Kinetis_Repository/lib/Kinetis/pdd2/MK64FN1M0LL12/peripherals/UART1_Init.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O3 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DK64F -I"C:\Freescale\KDS_3.0.0\eclipse\ProcessorExpert/lib/Kinetis/pdd/inc" -I"C:\Freescale\KDS_3.0.0\eclipse\ProcessorExpert/lib/Kinetis/iofiles" -I"D:/Dropbox/Project_Drone/FSFK_K64F/Sources" -I"D:/Dropbox/Project_Drone/FSFK_K64F/Generated_Code" -I"D:/Dropbox/Project_Drone/FSFK_K64F/MQXLITE/include" -I"D:/Dropbox/Project_Drone/FSFK_K64F/MQXLITE/config" -I"D:/Dropbox/Project_Drone/FSFK_K64F/MQXLITE/kernel" -I"D:/Dropbox/Project_Drone/FSFK_K64F/MQXLITE/psp/cortex_m" -I"D:/Dropbox/Project_Drone/FSFK_K64F/MQXLITE/psp/cortex_m/core/M4" -I"D:/Dropbox/Project_Drone/FSFK_K64F/MQXLITE/psp/cortex_m/compiler/cwgcc" -I"C:\Freescale\KDS_3.0.0\eclipse\ProcessorExpert/Repositories/Kinetis_Repository/lib/Kinetis/pdd2/MK64FN1M0LL12/system" -I"C:\Freescale\KDS_3.0.0\eclipse\ProcessorExpert/Repositories/lib/FreeMASTER/FreeMASTER_1_9/src_common" -I"C:\Freescale\KDS_3.0.0\eclipse\ProcessorExpert/Repositories/lib/FreeMASTER/FreeMASTER_1_9/src_platforms/Kxx" -I"C:\Freescale\KDS_3.0.0\eclipse\ProcessorExpert/Repositories/Kinetis_Repository/lib/Kinetis/pdd2/MK64FN1M0LL12/peripherals" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


