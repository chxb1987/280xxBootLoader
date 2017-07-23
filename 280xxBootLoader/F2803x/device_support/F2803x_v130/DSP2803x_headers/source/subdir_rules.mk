################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Each subdirectory must supply rules for building sources it contributes
device_support/F2803x_v130/DSP2803x_headers/source/DSP2803x_GlobalVariableDefs.obj: ../device_support/F2803x_v130/DSP2803x_headers/source/DSP2803x_GlobalVariableDefs.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv7/tools/compiler/ti-cgt-c2000_16.9.1.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 -O4 --opt_for_speed=5 --include_path="C:/projects/CCS/280xxBootLoader/Compiler/ti-cgt-c2000_16.9.1.LTS/include" --include_path="C:/projects/CCS/280xxBootLoader/280xxBootLoader/device_support/F2803x_v130/DSP2803x_headers/include" --include_path="C:/projects/CCS/280xxBootLoader/280xxBootLoader/device_support/F2803x_v130/DSP2803x_common/include" --advice:performance=all --define=_INLINE --define=F2803x_PRE_DEF --undefine=F2806x_PRE_DEF -g --diag_warning=225 --diag_wrap=off --display_error_number --preproc_with_compile --preproc_dependency="device_support/F2803x_v130/DSP2803x_headers/source/DSP2803x_GlobalVariableDefs.d" --obj_directory="device_support/F2803x_v130/DSP2803x_headers/source" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '


