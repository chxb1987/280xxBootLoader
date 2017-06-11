################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Add inputs and outputs from these tool invocations to the build variables 
CMD_SRCS += \
C:/ti/controlSUITE/device_support/f2803x/v130/DSP2803x_headers/cmd/DSP2803x_Headers_nonBIOS.cmd \
../Loader_28035_flash_lnk.cmd 

LIB_SRCS += \
../2803x_FlashAPI_BootROMSymbols.lib 

ASM_SRCS += \
../DSP2803x_loaderCodeStartBranch.asm \
C:/ti/controlSUITE/device_support/f2803x/v130/DSP2803x_common/source/DSP2803x_usDelay.asm \
../Exit_Boot.asm \
../InitBootLoader.asm 

C_SRCS += \
C:/ti/controlSUITE/device_support/f2803x/v130/DSP2803x_common/source/DSP2803x_CpuTimers.c \
C:/ti/controlSUITE/device_support/f2803x/v130/DSP2803x_common/source/DSP2803x_DefaultIsr.c \
C:/ti/controlSUITE/device_support/f2803x/v130/DSP2803x_headers/source/DSP2803x_GlobalVariableDefs.c \
C:/ti/controlSUITE/device_support/f2803x/v130/DSP2803x_common/source/DSP2803x_PieCtrl.c \
C:/ti/controlSUITE/device_support/f2803x/v130/DSP2803x_common/source/DSP2803x_PieVect.c \
C:/ti/controlSUITE/device_support/f2803x/v130/DSP2803x_common/source/DSP2803x_SysCtrl.c \
../SCI_Boot.c \
../Shared_Boot.c \
../descriptor.c \
../flashcheck.c \
../main.c 

C_DEPS += \
./DSP2803x_CpuTimers.d \
./DSP2803x_DefaultIsr.d \
./DSP2803x_GlobalVariableDefs.d \
./DSP2803x_PieCtrl.d \
./DSP2803x_PieVect.d \
./DSP2803x_SysCtrl.d \
./SCI_Boot.d \
./Shared_Boot.d \
./descriptor.d \
./flashcheck.d \
./main.d 

OBJS += \
./DSP2803x_CpuTimers.obj \
./DSP2803x_DefaultIsr.obj \
./DSP2803x_GlobalVariableDefs.obj \
./DSP2803x_PieCtrl.obj \
./DSP2803x_PieVect.obj \
./DSP2803x_SysCtrl.obj \
./DSP2803x_loaderCodeStartBranch.obj \
./DSP2803x_usDelay.obj \
./Exit_Boot.obj \
./InitBootLoader.obj \
./SCI_Boot.obj \
./Shared_Boot.obj \
./descriptor.obj \
./flashcheck.obj \
./main.obj 

ASM_DEPS += \
./DSP2803x_loaderCodeStartBranch.d \
./DSP2803x_usDelay.d \
./Exit_Boot.d \
./InitBootLoader.d 

OBJS__QUOTED += \
"DSP2803x_CpuTimers.obj" \
"DSP2803x_DefaultIsr.obj" \
"DSP2803x_GlobalVariableDefs.obj" \
"DSP2803x_PieCtrl.obj" \
"DSP2803x_PieVect.obj" \
"DSP2803x_SysCtrl.obj" \
"DSP2803x_loaderCodeStartBranch.obj" \
"DSP2803x_usDelay.obj" \
"Exit_Boot.obj" \
"InitBootLoader.obj" \
"SCI_Boot.obj" \
"Shared_Boot.obj" \
"descriptor.obj" \
"flashcheck.obj" \
"main.obj" 

C_DEPS__QUOTED += \
"DSP2803x_CpuTimers.d" \
"DSP2803x_DefaultIsr.d" \
"DSP2803x_GlobalVariableDefs.d" \
"DSP2803x_PieCtrl.d" \
"DSP2803x_PieVect.d" \
"DSP2803x_SysCtrl.d" \
"SCI_Boot.d" \
"Shared_Boot.d" \
"descriptor.d" \
"flashcheck.d" \
"main.d" 

ASM_DEPS__QUOTED += \
"DSP2803x_loaderCodeStartBranch.d" \
"DSP2803x_usDelay.d" \
"Exit_Boot.d" \
"InitBootLoader.d" 

C_SRCS__QUOTED += \
"C:/ti/controlSUITE/device_support/f2803x/v130/DSP2803x_common/source/DSP2803x_CpuTimers.c" \
"C:/ti/controlSUITE/device_support/f2803x/v130/DSP2803x_common/source/DSP2803x_DefaultIsr.c" \
"C:/ti/controlSUITE/device_support/f2803x/v130/DSP2803x_headers/source/DSP2803x_GlobalVariableDefs.c" \
"C:/ti/controlSUITE/device_support/f2803x/v130/DSP2803x_common/source/DSP2803x_PieCtrl.c" \
"C:/ti/controlSUITE/device_support/f2803x/v130/DSP2803x_common/source/DSP2803x_PieVect.c" \
"C:/ti/controlSUITE/device_support/f2803x/v130/DSP2803x_common/source/DSP2803x_SysCtrl.c" \
"../SCI_Boot.c" \
"../Shared_Boot.c" \
"../descriptor.c" \
"../flashcheck.c" \
"../main.c" 

ASM_SRCS__QUOTED += \
"../DSP2803x_loaderCodeStartBranch.asm" \
"C:/ti/controlSUITE/device_support/f2803x/v130/DSP2803x_common/source/DSP2803x_usDelay.asm" \
"../Exit_Boot.asm" \
"../InitBootLoader.asm" 


