################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/appa.c \
../src/clock.c \
../src/llist.c \
../src/mutexdemo.c \
../src/prio.c \
../src/prodcon.c \
../src/sem.c \
../src/shell.c \
../src/standby.c \
../src/tictac.c \
../src/timertest.c 

LD_SRCS += \
../src/lscript.ld 

OBJS += \
./src/appa.o \
./src/clock.o \
./src/llist.o \
./src/mutexdemo.o \
./src/prio.o \
./src/prodcon.o \
./src/sem.o \
./src/shell.o \
./src/standby.o \
./src/tictac.o \
./src/timertest.o 

C_DEPS += \
./src/appa.d \
./src/clock.d \
./src/llist.d \
./src/mutexdemo.d \
./src/prio.d \
./src/prodcon.d \
./src/sem.d \
./src/shell.d \
./src/standby.d \
./src/tictac.d \
./src/timertest.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze gcc compiler'
	mb-gcc -Wall -O0 -g3 -c -fmessage-length=0 -D __XMK__ -I../../xilkernel_bsp_0/microblaze_0/include -mlittle-endian -mxl-barrel-shift -mxl-pattern-compare -mcpu=v8.50.c -mno-xl-soft-mul -Wl,--no-relax -ffunction-sections -fdata-sections -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


