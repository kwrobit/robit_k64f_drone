################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Sources/Events.c \
../Sources/approximations.c \
../Sources/dj6.c \
../Sources/drivers.c \
../Sources/fusion.c \
../Sources/magnetic.c \
../Sources/main.c \
../Sources/matrix.c \
../Sources/mqx_tasks.c \
../Sources/orientation.c \
../Sources/user_tasks.c 

OBJS += \
./Sources/Events.o \
./Sources/approximations.o \
./Sources/dj6.o \
./Sources/drivers.o \
./Sources/fusion.o \
./Sources/magnetic.o \
./Sources/main.o \
./Sources/matrix.o \
./Sources/mqx_tasks.o \
./Sources/orientation.o \
./Sources/user_tasks.o 

C_DEPS += \
./Sources/Events.d \
./Sources/approximations.d \
./Sources/dj6.d \
./Sources/drivers.d \
./Sources/fusion.d \
./Sources/magnetic.d \
./Sources/main.d \
./Sources/matrix.d \
./Sources/mqx_tasks.d \
./Sources/orientation.d \
./Sources/user_tasks.d 


# Each subdirectory must supply rules for building sources it contributes
Sources/%.o: ../Sources/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O3 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DK64F -I"E:\Freescale\KDS_3.0.0\eclipse\ProcessorExpert/lib/Kinetis/pdd/inc" -I"E:\Freescale\KDS_3.0.0\eclipse\ProcessorExpert/lib/Kinetis/iofiles" -I"D:/007 Project/kinetis/FSFK_K64F/Sources" -I"D:/007 Project/kinetis/FSFK_K64F/Generated_Code" -I"D:/007 Project/kinetis/FSFK_K64F/MQXLITE/include" -I"D:/007 Project/kinetis/FSFK_K64F/MQXLITE/config" -I"D:/007 Project/kinetis/FSFK_K64F/MQXLITE/kernel" -I"D:/007 Project/kinetis/FSFK_K64F/MQXLITE/psp/cortex_m" -I"D:/007 Project/kinetis/FSFK_K64F/MQXLITE/psp/cortex_m/core/M4" -I"D:/007 Project/kinetis/FSFK_K64F/MQXLITE/psp/cortex_m/compiler/cwgcc" -I"E:\Freescale\KDS_3.0.0\eclipse\ProcessorExpert/Repositories/Kinetis_Repository/lib/Kinetis/pdd2/MK64FN1M0LL12/system" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


