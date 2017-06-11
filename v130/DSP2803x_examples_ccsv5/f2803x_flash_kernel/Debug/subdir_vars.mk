################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Add inputs and outputs from these tool invocations to the build variables 
CMD_SRCS += \
../28035_RAM_lnk.cmd \
../28035_flash_lnk.cmd \
C:/ti/controlSUITE/device_support/f2803x/v130/DSP2803x_headers/cmd/DSP2803x_Headers_nonBIOS.cmd \
C:/projects/CCS/uRayonM1/src/F28035.cmd 

LIB_SRCS += \
../2803x_FlashAPI_BootROMSymbols.lib 

ASM_SRCS += \
../DSP2803x_CodeStartBranch.asm \
C:/ti/controlSUITE/device_support/f2803x/v130/DSP2803x_common/source/DSP2803x_usDelay.asm \
../Exit_Boot.asm 

C_SRCS += \
C:/ti/controlSUITE/device_support/f2803x/v130/DSP2803x_headers/source/DSP2803x_GlobalVariableDefs.c \
C:/ti/controlSUITE/device_support/f2803x/v130/DSP2803x_common/source/DSP2803x_SysCtrl.c \
../SCI_Boot.c \
../Shared_Boot.c \
../main.c 

C_DEPS += \
./DSP2803x_GlobalVariableDefs.d \
./DSP2803x_SysCtrl.d \
./SCI_Boot.d \
./Shared_Boot.d \
./main.d 

OBJS += \
./DSP2803x_CodeStartBranch.obj \
./DSP2803x_GlobalVariableDefs.obj \
./DSP2803x_SysCtrl.obj \
./DSP2803x_usDelay.obj \
./Exit_Boot.obj \
./SCI_Boot.obj \
./Shared_Boot.obj \
./main.obj 

ASM_DEPS += \
./DSP2803x_CodeStartBranch.d \
./DSP2803x_usDelay.d \
./Exit_Boot.d 

OBJS__QUOTED += \
"DSP2803x_CodeStartBranch.obj" \
"DSP2803x_GlobalVariableDefs.obj" \
"DSP2803x_SysCtrl.obj" \
"DSP2803x_usDelay.obj" \
"Exit_Boot.obj" \
"SCI_Boot.obj" \
"Shared_Boot.obj" \
"main.obj" 

C_DEPS__QUOTED += \
"DSP2803x_GlobalVariableDefs.d" \
"DSP2803x_SysCtrl.d" \
"SCI_Boot.d" \
"Shared_Boot.d" \
"main.d" 

ASM_DEPS__QUOTED += \
"DSP2803x_CodeStartBranch.d" \
"DSP2803x_usDelay.d" \
"Exit_Boot.d" 

ASM_SRCS__QUOTED += \
"../DSP2803x_CodeStartBranch.asm" \
"C:/ti/controlSUITE/device_support/f2803x/v130/DSP2803x_common/source/DSP2803x_usDelay.asm" \
"../Exit_Boot.asm" 

C_SRCS__QUOTED += \
"C:/ti/controlSUITE/device_support/f2803x/v130/DSP2803x_headers/source/DSP2803x_GlobalVariableDefs.c" \
"C:/ti/controlSUITE/device_support/f2803x/v130/DSP2803x_common/source/DSP2803x_SysCtrl.c" \
"../SCI_Boot.c" \
"../Shared_Boot.c" \
"../main.c" 


