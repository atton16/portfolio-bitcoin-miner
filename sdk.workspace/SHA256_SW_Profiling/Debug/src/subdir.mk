################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LD_SRCS += \
../src/lscript.ld 

C_SRCS += \
Y:/sha256.hw.accelerator/sdk.shared_src/platform.c \
Y:/sha256.hw.accelerator/sdk.shared_src/sha256.c \
Y:/sha256.hw.accelerator/sdk.shared_src/sha256_test.c 

OBJS += \
./src/platform.o \
./src/sha256.o \
./src/sha256_test.o 

C_DEPS += \
./src/platform.d \
./src/sha256.d \
./src/sha256_test.d 


# Each subdirectory must supply rules for building sources it contributes
src/platform.o: Y:/sha256.hw.accelerator/sdk.shared_src/platform.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -g3 -pg -c -fmessage-length=0 -MT"$@" -I../../standalone_bsp_profiling/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/sha256.o: Y:/sha256.hw.accelerator/sdk.shared_src/sha256.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -g3 -pg -c -fmessage-length=0 -MT"$@" -I../../standalone_bsp_profiling/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/sha256_test.o: Y:/sha256.hw.accelerator/sdk.shared_src/sha256_test.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -g3 -pg -c -fmessage-length=0 -MT"$@" -I../../standalone_bsp_profiling/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


