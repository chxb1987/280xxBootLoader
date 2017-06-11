################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Each subdirectory must supply rules for building sources it contributes
DSP2803x_CpuTimers.obj: C:/ti/controlSUITE/device_support/f2803x/v130/DSP2803x_common/source/DSP2803x_CpuTimers.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv7/tools/compiler/ti-cgt-c2000_16.9.1.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --include_path="C:/ti/ccsv7/tools/compiler/ti-cgt-c2000_16.9.1.LTS/include" --include_path="C:/ti/controlSUITE/device_support/f2803x/v130/DSP2803x_headers/include" --include_path="C:/ti/controlSUITE/device_support/f2803x/v130/DSP2803x_common/include" --define="SCI_LOAD" --define=RUN_FROM_RAM -g --diag_suppress=10063 --diag_suppress=16002 --diag_warning=225 --display_error_number --asm_extension=S --preproc_with_compile --preproc_dependency="DSP2803x_CpuTimers.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

DSP2803x_DefaultIsr.obj: C:/ti/controlSUITE/device_support/f2803x/v130/DSP2803x_common/source/DSP2803x_DefaultIsr.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv7/tools/compiler/ti-cgt-c2000_16.9.1.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --include_path="C:/ti/ccsv7/tools/compiler/ti-cgt-c2000_16.9.1.LTS/include" --include_path="C:/ti/controlSUITE/device_support/f2803x/v130/DSP2803x_headers/include" --include_path="C:/ti/controlSUITE/device_support/f2803x/v130/DSP2803x_common/include" --define="SCI_LOAD" --define=RUN_FROM_RAM -g --diag_suppress=10063 --diag_suppress=16002 --diag_warning=225 --display_error_number --asm_extension=S --preproc_with_compile --preproc_dependency="DSP2803x_DefaultIsr.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

DSP2803x_GlobalVariableDefs.obj: C:/ti/controlSUITE/device_support/f2803x/v130/DSP2803x_headers/source/DSP2803x_GlobalVariableDefs.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv7/tools/compiler/ti-cgt-c2000_16.9.1.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --include_path="C:/ti/ccsv7/tools/compiler/ti-cgt-c2000_16.9.1.LTS/include" --include_path="C:/ti/controlSUITE/device_support/f2803x/v130/DSP2803x_headers/include" --include_path="C:/ti/controlSUITE/device_support/f2803x/v130/DSP2803x_common/include" --define="SCI_LOAD" --define=RUN_FROM_RAM -g --diag_suppress=10063 --diag_suppress=16002 --diag_warning=225 --display_error_number --asm_extension=S --preproc_with_compile --preproc_dependency="DSP2803x_GlobalVariableDefs.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

DSP2803x_PieCtrl.obj: C:/ti/controlSUITE/device_support/f2803x/v130/DSP2803x_common/source/DSP2803x_PieCtrl.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv7/tools/compiler/ti-cgt-c2000_16.9.1.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --include_path="C:/ti/ccsv7/tools/compiler/ti-cgt-c2000_16.9.1.LTS/include" --include_path="C:/ti/controlSUITE/device_support/f2803x/v130/DSP2803x_headers/include" --include_path="C:/ti/controlSUITE/device_support/f2803x/v130/DSP2803x_common/include" --define="SCI_LOAD" --define=RUN_FROM_RAM -g --diag_suppress=10063 --diag_suppress=16002 --diag_warning=225 --display_error_number --asm_extension=S --preproc_with_compile --preproc_dependency="DSP2803x_PieCtrl.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

DSP2803x_PieVect.obj: C:/ti/controlSUITE/device_support/f2803x/v130/DSP2803x_common/source/DSP2803x_PieVect.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv7/tools/compiler/ti-cgt-c2000_16.9.1.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --include_path="C:/ti/ccsv7/tools/compiler/ti-cgt-c2000_16.9.1.LTS/include" --include_path="C:/ti/controlSUITE/device_support/f2803x/v130/DSP2803x_headers/include" --include_path="C:/ti/controlSUITE/device_support/f2803x/v130/DSP2803x_common/include" --define="SCI_LOAD" --define=RUN_FROM_RAM -g --diag_suppress=10063 --diag_suppress=16002 --diag_warning=225 --display_error_number --asm_extension=S --preproc_with_compile --preproc_dependency="DSP2803x_PieVect.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

DSP2803x_SysCtrl.obj: C:/ti/controlSUITE/device_support/f2803x/v130/DSP2803x_common/source/DSP2803x_SysCtrl.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv7/tools/compiler/ti-cgt-c2000_16.9.1.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --include_path="C:/ti/ccsv7/tools/compiler/ti-cgt-c2000_16.9.1.LTS/include" --include_path="C:/ti/controlSUITE/device_support/f2803x/v130/DSP2803x_headers/include" --include_path="C:/ti/controlSUITE/device_support/f2803x/v130/DSP2803x_common/include" --define="SCI_LOAD" --define=RUN_FROM_RAM -g --diag_suppress=10063 --diag_suppress=16002 --diag_warning=225 --display_error_number --asm_extension=S --preproc_with_compile --preproc_dependency="DSP2803x_SysCtrl.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

DSP2803x_loaderCodeStartBranch.obj: ../DSP2803x_loaderCodeStartBranch.asm $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv7/tools/compiler/ti-cgt-c2000_16.9.1.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --include_path="C:/ti/ccsv7/tools/compiler/ti-cgt-c2000_16.9.1.LTS/include" --include_path="C:/ti/controlSUITE/device_support/f2803x/v130/DSP2803x_headers/include" --include_path="C:/ti/controlSUITE/device_support/f2803x/v130/DSP2803x_common/include" --define="SCI_LOAD" --define=RUN_FROM_RAM -g --diag_suppress=10063 --diag_suppress=16002 --diag_warning=225 --display_error_number --asm_extension=S --preproc_with_compile --preproc_dependency="DSP2803x_loaderCodeStartBranch.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

DSP2803x_usDelay.obj: C:/ti/controlSUITE/device_support/f2803x/v130/DSP2803x_common/source/DSP2803x_usDelay.asm $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv7/tools/compiler/ti-cgt-c2000_16.9.1.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --include_path="C:/ti/ccsv7/tools/compiler/ti-cgt-c2000_16.9.1.LTS/include" --include_path="C:/ti/controlSUITE/device_support/f2803x/v130/DSP2803x_headers/include" --include_path="C:/ti/controlSUITE/device_support/f2803x/v130/DSP2803x_common/include" --define="SCI_LOAD" --define=RUN_FROM_RAM -g --diag_suppress=10063 --diag_suppress=16002 --diag_warning=225 --display_error_number --asm_extension=S --preproc_with_compile --preproc_dependency="DSP2803x_usDelay.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

Exit_Boot.obj: ../Exit_Boot.asm $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv7/tools/compiler/ti-cgt-c2000_16.9.1.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --include_path="C:/ti/ccsv7/tools/compiler/ti-cgt-c2000_16.9.1.LTS/include" --include_path="C:/ti/controlSUITE/device_support/f2803x/v130/DSP2803x_headers/include" --include_path="C:/ti/controlSUITE/device_support/f2803x/v130/DSP2803x_common/include" --define="SCI_LOAD" --define=RUN_FROM_RAM -g --diag_suppress=10063 --diag_suppress=16002 --diag_warning=225 --display_error_number --asm_extension=S --preproc_with_compile --preproc_dependency="Exit_Boot.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

InitBootLoader.obj: ../InitBootLoader.asm $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv7/tools/compiler/ti-cgt-c2000_16.9.1.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --include_path="C:/ti/ccsv7/tools/compiler/ti-cgt-c2000_16.9.1.LTS/include" --include_path="C:/ti/controlSUITE/device_support/f2803x/v130/DSP2803x_headers/include" --include_path="C:/ti/controlSUITE/device_support/f2803x/v130/DSP2803x_common/include" --define="SCI_LOAD" --define=RUN_FROM_RAM -g --diag_suppress=10063 --diag_suppress=16002 --diag_warning=225 --display_error_number --asm_extension=S --preproc_with_compile --preproc_dependency="InitBootLoader.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

SCI_Boot.obj: ../SCI_Boot.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv7/tools/compiler/ti-cgt-c2000_16.9.1.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --include_path="C:/ti/ccsv7/tools/compiler/ti-cgt-c2000_16.9.1.LTS/include" --include_path="C:/ti/controlSUITE/device_support/f2803x/v130/DSP2803x_headers/include" --include_path="C:/ti/controlSUITE/device_support/f2803x/v130/DSP2803x_common/include" --define="SCI_LOAD" --define=RUN_FROM_RAM -g --diag_suppress=10063 --diag_suppress=16002 --diag_warning=225 --display_error_number --asm_extension=S --preproc_with_compile --preproc_dependency="SCI_Boot.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

Shared_Boot.obj: ../Shared_Boot.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv7/tools/compiler/ti-cgt-c2000_16.9.1.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --include_path="C:/ti/ccsv7/tools/compiler/ti-cgt-c2000_16.9.1.LTS/include" --include_path="C:/ti/controlSUITE/device_support/f2803x/v130/DSP2803x_headers/include" --include_path="C:/ti/controlSUITE/device_support/f2803x/v130/DSP2803x_common/include" --define="SCI_LOAD" --define=RUN_FROM_RAM -g --diag_suppress=10063 --diag_suppress=16002 --diag_warning=225 --display_error_number --asm_extension=S --preproc_with_compile --preproc_dependency="Shared_Boot.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

descriptor.obj: ../descriptor.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv7/tools/compiler/ti-cgt-c2000_16.9.1.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --include_path="C:/ti/ccsv7/tools/compiler/ti-cgt-c2000_16.9.1.LTS/include" --include_path="C:/ti/controlSUITE/device_support/f2803x/v130/DSP2803x_headers/include" --include_path="C:/ti/controlSUITE/device_support/f2803x/v130/DSP2803x_common/include" --define="SCI_LOAD" --define=RUN_FROM_RAM -g --diag_suppress=10063 --diag_suppress=16002 --diag_warning=225 --display_error_number --asm_extension=S --preproc_with_compile --preproc_dependency="descriptor.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

flashcheck.obj: ../flashcheck.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv7/tools/compiler/ti-cgt-c2000_16.9.1.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --include_path="C:/ti/ccsv7/tools/compiler/ti-cgt-c2000_16.9.1.LTS/include" --include_path="C:/ti/controlSUITE/device_support/f2803x/v130/DSP2803x_headers/include" --include_path="C:/ti/controlSUITE/device_support/f2803x/v130/DSP2803x_common/include" --define="SCI_LOAD" --define=RUN_FROM_RAM -g --diag_suppress=10063 --diag_suppress=16002 --diag_warning=225 --display_error_number --asm_extension=S --preproc_with_compile --preproc_dependency="flashcheck.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

main.obj: ../main.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv7/tools/compiler/ti-cgt-c2000_16.9.1.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --include_path="C:/ti/ccsv7/tools/compiler/ti-cgt-c2000_16.9.1.LTS/include" --include_path="C:/ti/controlSUITE/device_support/f2803x/v130/DSP2803x_headers/include" --include_path="C:/ti/controlSUITE/device_support/f2803x/v130/DSP2803x_common/include" --define="SCI_LOAD" --define=RUN_FROM_RAM -g --diag_suppress=10063 --diag_suppress=16002 --diag_warning=225 --display_error_number --asm_extension=S --preproc_with_compile --preproc_dependency="main.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '


