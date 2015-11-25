################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Generated_Code/ASerialLdd1.c \
../Generated_Code/Cpu.c \
../Generated_Code/FMSTR1.c \
../Generated_Code/PE_LDD.c \
../Generated_Code/Pins1.c \
../Generated_Code/RC.c \
../Generated_Code/TU1.c \
../Generated_Code/TimeOutInt.c \
../Generated_Code/TimerIntLdd1.c \
../Generated_Code/freemaster_tsa_table.c 

OBJS += \
./Generated_Code/ASerialLdd1.o \
./Generated_Code/Cpu.o \
./Generated_Code/FMSTR1.o \
./Generated_Code/PE_LDD.o \
./Generated_Code/Pins1.o \
./Generated_Code/RC.o \
./Generated_Code/TU1.o \
./Generated_Code/TimeOutInt.o \
./Generated_Code/TimerIntLdd1.o \
./Generated_Code/freemaster_tsa_table.o 

C_DEPS += \
./Generated_Code/ASerialLdd1.d \
./Generated_Code/Cpu.d \
./Generated_Code/FMSTR1.d \
./Generated_Code/PE_LDD.d \
./Generated_Code/Pins1.d \
./Generated_Code/RC.d \
./Generated_Code/TU1.d \
./Generated_Code/TimeOutInt.d \
./Generated_Code/TimerIntLdd1.d \
./Generated_Code/freemaster_tsa_table.d 


# Each subdirectory must supply rules for building sources it contributes
Generated_Code/%.o: ../Generated_Code/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -I"E:\Freescale\KDS_3.0.0\eclipse\ProcessorExpert/Repositories/Kinetis_Repository/lib/Kinetis/pdd2/MK64FN1M0LL12/system" -I"E:\Freescale\KDS_3.0.0\eclipse\ProcessorExpert/lib/Kinetis/pdd/inc" -I"E:\Freescale\KDS_3.0.0\eclipse\ProcessorExpert/lib/Kinetis/iofiles" -I"D:/007 Project/kinetis/robit_drone_rc/Sources" -I"D:/007 Project/kinetis/robit_drone_rc/Generated_Code" -I"E:\Freescale\KDS_3.0.0\eclipse\ProcessorExpert/Repositories/lib/FreeMASTER/FreeMASTER_1_9/src_common" -I"E:\Freescale\KDS_3.0.0\eclipse\ProcessorExpert/Repositories/lib/FreeMASTER/FreeMASTER_1_9/src_platforms/Kxx" -I"E:\Freescale\KDS_3.0.0\eclipse\ProcessorExpert/Repositories/Kinetis_Repository/lib/Kinetis/pdd2/MK64FN1M0LL12/peripherals" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


