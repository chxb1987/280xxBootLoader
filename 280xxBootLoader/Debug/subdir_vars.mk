################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Add inputs and outputs from these tool invocations to the build variables 
CMD_SRCS += \
../DSP2803x_Headers_nonBIOS.cmd \
../Loader_28035_flash_lnk.cmd 

LIB_SRCS += \
C:/projects/CCS/F280_Flash/Lib/2803x_FlashAPI_BootROMSymbols.lib 

ASM_SRCS += \
C:/projects/CCS/F280_Flash/asm/DSP2803x_loaderCodeStartBranch.asm \
C:/projects/CCS/F280_Flash/asm/DSP2803x_usDelay.asm \
C:/projects/CCS/F280_Flash/asm/Exit_Boot.asm \
C:/projects/CCS/F280_Flash/asm/InitBootLoader.asm 

C_SRCS += \
C:/projects/CCS/F280_Flash/SRC/DSP2803x_CpuTimers.c \
C:/projects/CCS/F280_Flash/SRC/DSP2803x_DefaultIsr.c \
C:/projects/CCS/F280_Flash/SRC/DSP2803x_GlobalVariableDefs.c \
C:/projects/CCS/F280_Flash/SRC/DSP2803x_PieCtrl.c \
C:/projects/CCS/F280_Flash/SRC/DSP2803x_PieVect.c \
C:/projects/CCS/F280_Flash/SRC/DSP2803x_SysCtrl.c \
C:/projects/CCS/F280_Flash/SRC/SCI_Boot.c \
C:/projects/CCS/F280_Flash/SRC/Shared_Boot.c \
C:/projects/CCS/F280_Flash/SRC/descriptor.c \
C:/projects/CCS/F280_Flash/SRC/flashcheck.c \
C:/projects/CCS/F280_Flash/SRC/main.c 

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
"C:/projects/CCS/F280_Flash/SRC/DSP2803x_CpuTimers.c" \
"C:/projects/CCS/F280_Flash/SRC/DSP2803x_DefaultIsr.c" \
"C:/projects/CCS/F280_Flash/SRC/DSP2803x_GlobalVariableDefs.c" \
"C:/projects/CCS/F280_Flash/SRC/DSP2803x_PieCtrl.c" \
"C:/projects/CCS/F280_Flash/SRC/DSP2803x_PieVect.c" \
"C:/projects/CCS/F280_Flash/SRC/DSP2803x_SysCtrl.c" \
"C:/projects/CCS/F280_Flash/SRC/SCI_Boot.c" \
"C:/projects/CCS/F280_Flash/SRC/Shared_Boot.c" \
"C:/projects/CCS/F280_Flash/SRC/descriptor.c" \
"C:/projects/CCS/F280_Flash/SRC/flashcheck.c" \
"C:/projects/CCS/F280_Flash/SRC/main.c" 

ASM_SRCS__QUOTED += \
"C:/projects/CCS/F280_Flash/asm/DSP2803x_loaderCodeStartBranch.asm" \
"C:/projects/CCS/F280_Flash/asm/DSP2803x_usDelay.asm" \
"C:/projects/CCS/F280_Flash/asm/Exit_Boot.asm" \
"C:/projects/CCS/F280_Flash/asm/InitBootLoader.asm" 


