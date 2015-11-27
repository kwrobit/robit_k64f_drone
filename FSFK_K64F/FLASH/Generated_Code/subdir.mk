################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Generated_Code/ASerialLdd1.c \
../Generated_Code/Cpu.c \
../Generated_Code/FTM.c \
../Generated_Code/I2C.c \
../Generated_Code/LED_GREEN.c \
../Generated_Code/LED_RED.c \
../Generated_Code/MQX1.c \
../Generated_Code/PE_LDD.c \
../Generated_Code/PwmLdd1.c \
../Generated_Code/PwmLdd2.c \
../Generated_Code/PwmLdd3.c \
../Generated_Code/PwmLdd4.c \
../Generated_Code/RC.c \
../Generated_Code/ROTOR1.c \
../Generated_Code/ROTOR2.c \
../Generated_Code/ROTOR3.c \
../Generated_Code/ROTOR4.c \
../Generated_Code/SystemTimer1.c \
../Generated_Code/TI1.c \
../Generated_Code/TU1.c \
../Generated_Code/TU2.c \
../Generated_Code/TimerIntLdd1.c \
../Generated_Code/UART_A.c \
../Generated_Code/UART_B.c 

OBJS += \
./Generated_Code/ASerialLdd1.o \
./Generated_Code/Cpu.o \
./Generated_Code/FTM.o \
./Generated_Code/I2C.o \
./Generated_Code/LED_GREEN.o \
./Generated_Code/LED_RED.o \
./Generated_Code/MQX1.o \
./Generated_Code/PE_LDD.o \
./Generated_Code/PwmLdd1.o \
./Generated_Code/PwmLdd2.o \
./Generated_Code/PwmLdd3.o \
./Generated_Code/PwmLdd4.o \
./Generated_Code/RC.o \
./Generated_Code/ROTOR1.o \
./Generated_Code/ROTOR2.o \
./Generated_Code/ROTOR3.o \
./Generated_Code/ROTOR4.o \
./Generated_Code/SystemTimer1.o \
./Generated_Code/TI1.o \
./Generated_Code/TU1.o \
./Generated_Code/TU2.o \
./Generated_Code/TimerIntLdd1.o \
./Generated_Code/UART_A.o \
./Generated_Code/UART_B.o 

C_DEPS += \
./Generated_Code/ASerialLdd1.d \
./Generated_Code/Cpu.d \
./Generated_Code/FTM.d \
./Generated_Code/I2C.d \
./Generated_Code/LED_GREEN.d \
./Generated_Code/LED_RED.d \
./Generated_Code/MQX1.d \
./Generated_Code/PE_LDD.d \
./Generated_Code/PwmLdd1.d \
./Generated_Code/PwmLdd2.d \
./Generated_Code/PwmLdd3.d \
./Generated_Code/PwmLdd4.d \
./Generated_Code/RC.d \
./Generated_Code/ROTOR1.d \
./Generated_Code/ROTOR2.d \
./Generated_Code/ROTOR3.d \
./Generated_Code/ROTOR4.d \
./Generated_Code/SystemTimer1.d \
./Generated_Code/TI1.d \
./Generated_Code/TU1.d \
./Generated_Code/TU2.d \
./Generated_Code/TimerIntLdd1.d \
./Generated_Code/UART_A.d \
./Generated_Code/UART_B.d 


# Each subdirectory must supply rules for building sources it contributes
Generated_Code/%.o: ../Generated_Code/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O3 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DK64F -I"E:\Freescale\KDS_3.0.0\eclipse\ProcessorExpert/lib/Kinetis/pdd/inc" -I"E:\Freescale\KDS_3.0.0\eclipse\ProcessorExpert/lib/Kinetis/iofiles" -I"D:/007 Project/kinetis/FSFK_K64F/Sources" -I"D:/007 Project/kinetis/FSFK_K64F/Generated_Code" -I"D:/007 Project/kinetis/FSFK_K64F/MQXLITE/include" -I"D:/007 Project/kinetis/FSFK_K64F/MQXLITE/config" -I"D:/007 Project/kinetis/FSFK_K64F/MQXLITE/kernel" -I"D:/007 Project/kinetis/FSFK_K64F/MQXLITE/psp/cortex_m" -I"D:/007 Project/kinetis/FSFK_K64F/MQXLITE/psp/cortex_m/core/M4" -I"D:/007 Project/kinetis/FSFK_K64F/MQXLITE/psp/cortex_m/compiler/cwgcc" -I"E:\Freescale\KDS_3.0.0\eclipse\ProcessorExpert/Repositories/Kinetis_Repository/lib/Kinetis/pdd2/MK64FN1M0LL12/system" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


