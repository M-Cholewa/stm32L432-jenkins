################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/App/Core/vMainTask.c 

OBJS += \
./Core/App/Core/vMainTask.o 

C_DEPS += \
./Core/App/Core/vMainTask.d 


# Each subdirectory must supply rules for building sources it contributes
Core/App/Core/%.o Core/App/Core/%.su Core/App/Core/%.cyclo: ../Core/App/Core/%.c Core/App/Core/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L432xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I"C:/Users/DoDeptania/Desktop/mateus/PROJEKTY/STM32/stm32L432-jenkins/Core/App/Core/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-App-2f-Core

clean-Core-2f-App-2f-Core:
	-$(RM) ./Core/App/Core/vMainTask.cyclo ./Core/App/Core/vMainTask.d ./Core/App/Core/vMainTask.o ./Core/App/Core/vMainTask.su

.PHONY: clean-Core-2f-App-2f-Core

