################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Add inputs and outputs from these tool invocations to the build variables 
ASM_SRCS += \
../v130/DSP2803x_common/source/DSP2803x_CSMPasswords.asm \
../v130/DSP2803x_common/source/DSP2803x_CodeStartBranch.asm \
../v130/DSP2803x_common/source/DSP2803x_DBGIER.asm \
../v130/DSP2803x_common/source/DSP2803x_DisInt.asm \
../v130/DSP2803x_common/source/DSP2803x_usDelay.asm 

C_SRCS += \
../v130/DSP2803x_common/source/DSP2803x_Adc.c \
../v130/DSP2803x_common/source/DSP2803x_Comp.c \
../v130/DSP2803x_common/source/DSP2803x_CpuTimers.c \
../v130/DSP2803x_common/source/DSP2803x_DefaultIsr.c \
../v130/DSP2803x_common/source/DSP2803x_ECan.c \
../v130/DSP2803x_common/source/DSP2803x_ECap.c \
../v130/DSP2803x_common/source/DSP2803x_EPwm.c \
../v130/DSP2803x_common/source/DSP2803x_EQep.c \
../v130/DSP2803x_common/source/DSP2803x_Gpio.c \
../v130/DSP2803x_common/source/DSP2803x_HRCap.c \
../v130/DSP2803x_common/source/DSP2803x_I2C.c \
../v130/DSP2803x_common/source/DSP2803x_Lin.c \
../v130/DSP2803x_common/source/DSP2803x_OscComp.c \
../v130/DSP2803x_common/source/DSP2803x_PieCtrl.c \
../v130/DSP2803x_common/source/DSP2803x_PieVect.c \
../v130/DSP2803x_common/source/DSP2803x_SWPrioritizedDefaultIsr.c \
../v130/DSP2803x_common/source/DSP2803x_SWPrioritizedPieVect.c \
../v130/DSP2803x_common/source/DSP2803x_Sci.c \
../v130/DSP2803x_common/source/DSP2803x_Spi.c \
../v130/DSP2803x_common/source/DSP2803x_SysCtrl.c \
../v130/DSP2803x_common/source/DSP2803x_TempSensorConv.c 

C_DEPS += \
./v130/DSP2803x_common/source/DSP2803x_Adc.d \
./v130/DSP2803x_common/source/DSP2803x_Comp.d \
./v130/DSP2803x_common/source/DSP2803x_CpuTimers.d \
./v130/DSP2803x_common/source/DSP2803x_DefaultIsr.d \
./v130/DSP2803x_common/source/DSP2803x_ECan.d \
./v130/DSP2803x_common/source/DSP2803x_ECap.d \
./v130/DSP2803x_common/source/DSP2803x_EPwm.d \
./v130/DSP2803x_common/source/DSP2803x_EQep.d \
./v130/DSP2803x_common/source/DSP2803x_Gpio.d \
./v130/DSP2803x_common/source/DSP2803x_HRCap.d \
./v130/DSP2803x_common/source/DSP2803x_I2C.d \
./v130/DSP2803x_common/source/DSP2803x_Lin.d \
./v130/DSP2803x_common/source/DSP2803x_OscComp.d \
./v130/DSP2803x_common/source/DSP2803x_PieCtrl.d \
./v130/DSP2803x_common/source/DSP2803x_PieVect.d \
./v130/DSP2803x_common/source/DSP2803x_SWPrioritizedDefaultIsr.d \
./v130/DSP2803x_common/source/DSP2803x_SWPrioritizedPieVect.d \
./v130/DSP2803x_common/source/DSP2803x_Sci.d \
./v130/DSP2803x_common/source/DSP2803x_Spi.d \
./v130/DSP2803x_common/source/DSP2803x_SysCtrl.d \
./v130/DSP2803x_common/source/DSP2803x_TempSensorConv.d 

OBJS += \
./v130/DSP2803x_common/source/DSP2803x_Adc.obj \
./v130/DSP2803x_common/source/DSP2803x_CSMPasswords.obj \
./v130/DSP2803x_common/source/DSP2803x_CodeStartBranch.obj \
./v130/DSP2803x_common/source/DSP2803x_Comp.obj \
./v130/DSP2803x_common/source/DSP2803x_CpuTimers.obj \
./v130/DSP2803x_common/source/DSP2803x_DBGIER.obj \
./v130/DSP2803x_common/source/DSP2803x_DefaultIsr.obj \
./v130/DSP2803x_common/source/DSP2803x_DisInt.obj \
./v130/DSP2803x_common/source/DSP2803x_ECan.obj \
./v130/DSP2803x_common/source/DSP2803x_ECap.obj \
./v130/DSP2803x_common/source/DSP2803x_EPwm.obj \
./v130/DSP2803x_common/source/DSP2803x_EQep.obj \
./v130/DSP2803x_common/source/DSP2803x_Gpio.obj \
./v130/DSP2803x_common/source/DSP2803x_HRCap.obj \
./v130/DSP2803x_common/source/DSP2803x_I2C.obj \
./v130/DSP2803x_common/source/DSP2803x_Lin.obj \
./v130/DSP2803x_common/source/DSP2803x_OscComp.obj \
./v130/DSP2803x_common/source/DSP2803x_PieCtrl.obj \
./v130/DSP2803x_common/source/DSP2803x_PieVect.obj \
./v130/DSP2803x_common/source/DSP2803x_SWPrioritizedDefaultIsr.obj \
./v130/DSP2803x_common/source/DSP2803x_SWPrioritizedPieVect.obj \
./v130/DSP2803x_common/source/DSP2803x_Sci.obj \
./v130/DSP2803x_common/source/DSP2803x_Spi.obj \
./v130/DSP2803x_common/source/DSP2803x_SysCtrl.obj \
./v130/DSP2803x_common/source/DSP2803x_TempSensorConv.obj \
./v130/DSP2803x_common/source/DSP2803x_usDelay.obj 

ASM_DEPS += \
./v130/DSP2803x_common/source/DSP2803x_CSMPasswords.d \
./v130/DSP2803x_common/source/DSP2803x_CodeStartBranch.d \
./v130/DSP2803x_common/source/DSP2803x_DBGIER.d \
./v130/DSP2803x_common/source/DSP2803x_DisInt.d \
./v130/DSP2803x_common/source/DSP2803x_usDelay.d 

OBJS__QUOTED += \
"v130\DSP2803x_common\source\DSP2803x_Adc.obj" \
"v130\DSP2803x_common\source\DSP2803x_CSMPasswords.obj" \
"v130\DSP2803x_common\source\DSP2803x_CodeStartBranch.obj" \
"v130\DSP2803x_common\source\DSP2803x_Comp.obj" \
"v130\DSP2803x_common\source\DSP2803x_CpuTimers.obj" \
"v130\DSP2803x_common\source\DSP2803x_DBGIER.obj" \
"v130\DSP2803x_common\source\DSP2803x_DefaultIsr.obj" \
"v130\DSP2803x_common\source\DSP2803x_DisInt.obj" \
"v130\DSP2803x_common\source\DSP2803x_ECan.obj" \
"v130\DSP2803x_common\source\DSP2803x_ECap.obj" \
"v130\DSP2803x_common\source\DSP2803x_EPwm.obj" \
"v130\DSP2803x_common\source\DSP2803x_EQep.obj" \
"v130\DSP2803x_common\source\DSP2803x_Gpio.obj" \
"v130\DSP2803x_common\source\DSP2803x_HRCap.obj" \
"v130\DSP2803x_common\source\DSP2803x_I2C.obj" \
"v130\DSP2803x_common\source\DSP2803x_Lin.obj" \
"v130\DSP2803x_common\source\DSP2803x_OscComp.obj" \
"v130\DSP2803x_common\source\DSP2803x_PieCtrl.obj" \
"v130\DSP2803x_common\source\DSP2803x_PieVect.obj" \
"v130\DSP2803x_common\source\DSP2803x_SWPrioritizedDefaultIsr.obj" \
"v130\DSP2803x_common\source\DSP2803x_SWPrioritizedPieVect.obj" \
"v130\DSP2803x_common\source\DSP2803x_Sci.obj" \
"v130\DSP2803x_common\source\DSP2803x_Spi.obj" \
"v130\DSP2803x_common\source\DSP2803x_SysCtrl.obj" \
"v130\DSP2803x_common\source\DSP2803x_TempSensorConv.obj" \
"v130\DSP2803x_common\source\DSP2803x_usDelay.obj" 

C_DEPS__QUOTED += \
"v130\DSP2803x_common\source\DSP2803x_Adc.d" \
"v130\DSP2803x_common\source\DSP2803x_Comp.d" \
"v130\DSP2803x_common\source\DSP2803x_CpuTimers.d" \
"v130\DSP2803x_common\source\DSP2803x_DefaultIsr.d" \
"v130\DSP2803x_common\source\DSP2803x_ECan.d" \
"v130\DSP2803x_common\source\DSP2803x_ECap.d" \
"v130\DSP2803x_common\source\DSP2803x_EPwm.d" \
"v130\DSP2803x_common\source\DSP2803x_EQep.d" \
"v130\DSP2803x_common\source\DSP2803x_Gpio.d" \
"v130\DSP2803x_common\source\DSP2803x_HRCap.d" \
"v130\DSP2803x_common\source\DSP2803x_I2C.d" \
"v130\DSP2803x_common\source\DSP2803x_Lin.d" \
"v130\DSP2803x_common\source\DSP2803x_OscComp.d" \
"v130\DSP2803x_common\source\DSP2803x_PieCtrl.d" \
"v130\DSP2803x_common\source\DSP2803x_PieVect.d" \
"v130\DSP2803x_common\source\DSP2803x_SWPrioritizedDefaultIsr.d" \
"v130\DSP2803x_common\source\DSP2803x_SWPrioritizedPieVect.d" \
"v130\DSP2803x_common\source\DSP2803x_Sci.d" \
"v130\DSP2803x_common\source\DSP2803x_Spi.d" \
"v130\DSP2803x_common\source\DSP2803x_SysCtrl.d" \
"v130\DSP2803x_common\source\DSP2803x_TempSensorConv.d" 

ASM_DEPS__QUOTED += \
"v130\DSP2803x_common\source\DSP2803x_CSMPasswords.d" \
"v130\DSP2803x_common\source\DSP2803x_CodeStartBranch.d" \
"v130\DSP2803x_common\source\DSP2803x_DBGIER.d" \
"v130\DSP2803x_common\source\DSP2803x_DisInt.d" \
"v130\DSP2803x_common\source\DSP2803x_usDelay.d" 

C_SRCS__QUOTED += \
"../v130/DSP2803x_common/source/DSP2803x_Adc.c" \
"../v130/DSP2803x_common/source/DSP2803x_Comp.c" \
"../v130/DSP2803x_common/source/DSP2803x_CpuTimers.c" \
"../v130/DSP2803x_common/source/DSP2803x_DefaultIsr.c" \
"../v130/DSP2803x_common/source/DSP2803x_ECan.c" \
"../v130/DSP2803x_common/source/DSP2803x_ECap.c" \
"../v130/DSP2803x_common/source/DSP2803x_EPwm.c" \
"../v130/DSP2803x_common/source/DSP2803x_EQep.c" \
"../v130/DSP2803x_common/source/DSP2803x_Gpio.c" \
"../v130/DSP2803x_common/source/DSP2803x_HRCap.c" \
"../v130/DSP2803x_common/source/DSP2803x_I2C.c" \
"../v130/DSP2803x_common/source/DSP2803x_Lin.c" \
"../v130/DSP2803x_common/source/DSP2803x_OscComp.c" \
"../v130/DSP2803x_common/source/DSP2803x_PieCtrl.c" \
"../v130/DSP2803x_common/source/DSP2803x_PieVect.c" \
"../v130/DSP2803x_common/source/DSP2803x_SWPrioritizedDefaultIsr.c" \
"../v130/DSP2803x_common/source/DSP2803x_SWPrioritizedPieVect.c" \
"../v130/DSP2803x_common/source/DSP2803x_Sci.c" \
"../v130/DSP2803x_common/source/DSP2803x_Spi.c" \
"../v130/DSP2803x_common/source/DSP2803x_SysCtrl.c" \
"../v130/DSP2803x_common/source/DSP2803x_TempSensorConv.c" 

ASM_SRCS__QUOTED += \
"../v130/DSP2803x_common/source/DSP2803x_CSMPasswords.asm" \
"../v130/DSP2803x_common/source/DSP2803x_CodeStartBranch.asm" \
"../v130/DSP2803x_common/source/DSP2803x_DBGIER.asm" \
"../v130/DSP2803x_common/source/DSP2803x_DisInt.asm" \
"../v130/DSP2803x_common/source/DSP2803x_usDelay.asm" 


