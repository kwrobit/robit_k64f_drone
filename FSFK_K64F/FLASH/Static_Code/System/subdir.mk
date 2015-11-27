################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
E:/Freescale/KDS_3.0.0/eclipse/ProcessorExpert/Repositories/Kinetis_Repository/lib/Kinetis/pdd2/MK64FN1M0LL12/system/CPU_Init.c \
E:/Freescale/KDS_3.0.0/eclipse/ProcessorExpert/Repositories/Kinetis_Repository/lib/Kinetis/pdd2/MK64FN1M0LL12/system/Peripherals_Init.c \
E:/Freescale/KDS_3.0.0/eclipse/ProcessorExpert/Repositories/Kinetis_Repository/lib/Kinetis/pdd2/MK64FN1M0LL12/system/Vectors.c 

OBJS += \
./Static_Code/System/CPU_Init.o \
./Static_Code/System/Peripherals_Init.o \
./Static_Code/System/Vectors.o 

C_DEPS += \
./Static_Code/System/CPU_Init.d \
./Static_Code/System/Peripherals_Init.d \
./Static_Code/System/Vectors.d 


# Each subdirectory must supply rules for building sources it contributes
Static_Code/System/CPU_Init.o: E:/Freescale/KDS_3.0.0/eclipse/ProcessorExpert/Repositories/Kinetis_Repository/lib/Kinetis/pdd2/MK64FN1M0LL12/system/CPU_Init.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O3 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DK64F -I"E:\Freescale\KDS_3.0.0\eclipse\ProcessorExpert/lib/Kinetis/pdd/inc" -I"E:\Freescale\KDS_3.0.0\eclipse\ProcessorExpert/lib/Kinetis/iofiles" -I"D:/007 Project/kinetis/FSFK_K64F/Sources" -I"D:/007 Project/kinetis/FSFK_K64F/Generated_Code" -I"D:/007 Project/kinetis/FSFK_K64F/MQXLITE/include" -I"D:/007 Project/kinetis/FSFK_K64F/MQXLITE/config" -I"D:/007 Project/kinetis/FSFK_K64F/MQXLITE/kernel" -I"D:/007 Project/kinetis/FSFK_K64F/MQXLITE/psp/cortex_m" -I"D:/007 Project/kinetis/FSFK_K64F/MQXLITE/psp/cortex_m/core/M4" -I"D:/007 Project/kinetis/FSFK_K64F/MQXLITE/psp/cortex_m/compiler/cwgcc" -I"E:\Freescale\KDS_3.0.0\eclipse\ProcessorExpert/Repositories/Kinetis_Repository/lib/Kinetis/pdd2/MK64FN1M0LL12/system" -std=c99 -MMD -MP -MF"Static_Code/System/CPU_Init.d" -MT"Static_Code/System/CPU_Init.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Static_Code/System/Peripherals_Init.o: E:/Freescale/KDS_3.0.0/eclipse/ProcessorExpert/Repositories/Kinetis_Repository/lib/Kinetis/pdd2/MK64FN1M0LL12/system/Peripherals_Init.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O3 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DK64F -I"E:\Freescale\KDS_3.0.0\eclipse\ProcessorExpert/lib/Kinetis/pdd/inc" -I"E:\Freescale\KDS_3.0.0\eclipse\ProcessorExpert/lib/Kinetis/iofiles" -I"D:/007 Project/kinetis/FSFK_K64F/Sources" -I"D:/007 Project/kinetis/FSFK_K64F/Generated_Code" -I"D:/007 Project/kinetis/FSFK_K64F/MQXLITE/include" -I"D:/007 Project/kinetis/FSFK_K64F/MQXLITE/config" -I"D:/007 Project/kinetis/FSFK_K64F/MQXLITE/kernel" -I"D:/007 Project/kinetis/FSFK_K64F/MQXLITE/psp/cortex_m" -I"D:/007 Project/kinetis/FSFK_K64F/MQXLITE/psp/cortex_m/core/M4" -I"D:/007 Project/kinetis/FSFK_K64F/MQXLITE/psp/cortex_m/compiler/cwgcc" -I"E:\Freescale\KDS_3.0.0\eclipse\ProcessorExpert/Repositories/Kinetis_Repository/lib/Kinetis/pdd2/MK64FN1M0LL12/system" -std=c99 -MMD -MP -MF"Static_Code/System/Peripherals_Init.d" -MT"Static_Code/System/Peripherals_Init.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Static_Code/System/Vectors.o: E:/Freescale/KDS_3.0.0/eclipse/ProcessorExpert/Repositories/Kinetis_Repository/lib/Kinetis/pdd2/MK64FN1M0LL12/system/Vectors.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O3 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DK64F -I"E:\Freescale\KDS_3.0.0\eclipse\ProcessorExpert/lib/Kinetis/pdd/inc" -I"E:\Freescale\KDS_3.0.0\eclipse\ProcessorExpert/lib/Kinetis/iofiles" -I"D:/007 Project/kinetis/FSFK_K64F/Sources" -I"D:/007 Project/kinetis/FSFK_K64F/Generated_Code" -I"D:/007 Project/kinetis/FSFK_K64F/MQXLITE/include" -I"D:/007 Project/kinetis/FSFK_K64F/MQXLITE/config" -I"D:/007 Project/kinetis/FSFK_K64F/MQXLITE/kernel" -I"D:/007 Project/kinetis/FSFK_K64F/MQXLITE/psp/cortex_m" -I"D:/007 Project/kinetis/FSFK_K64F/MQXLITE/psp/cortex_m/core/M4" -I"D:/007 Project/kinetis/FSFK_K64F/MQXLITE/psp/cortex_m/compiler/cwgcc" -I"E:\Freescale\KDS_3.0.0\eclipse\ProcessorExpert/Repositories/Kinetis_Repository/lib/Kinetis/pdd2/MK64FN1M0LL12/system" -std=c99 -MMD -MP -MF"Static_Code/System/Vectors.d" -MT"Static_Code/System/Vectors.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


