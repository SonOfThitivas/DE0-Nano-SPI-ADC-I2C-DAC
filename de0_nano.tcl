# Copyright (C) 2020  Intel Corporation. All rights reserved.
# Your use of Intel Corporation's design tools, logic functions 
# and other software and tools, and any partner logic 
# functions, and any output files from any of the foregoing 
# (including device programming or simulation files), and any 
# associated documentation or information are expressly subject 
# to the terms and conditions of the Intel Program License 
# Subscription Agreement, the Intel Quartus Prime License Agreement,
# the Intel FPGA IP License Agreement, or other applicable license
# agreement, including, without limitation, that your use is for
# the sole purpose of programming logic devices manufactured by
# Intel and sold by Intel or its authorized distributors.  Please
# refer to the applicable agreement for further details, at
# https://fpgasoftware.intel.com/eula.

# Quartus Prime: Generate Tcl File for Project
# File: de0_nano.tcl
# Generated on: Mon Nov 04 12:47:50 2024

# Load Quartus Prime Tcl Project package
package require ::quartus::project

set need_to_close_project 0
set make_assignments 1

# Check that the right project is open
if {[is_project_open]} {
	if {[string compare $quartus(project) "de0_nano"]} {
		puts "Project de0_nano is not open"
		set make_assignments 0
	}
} else {
	# Only open if not already open
	if {[project_exists de0_nano]} {
		project_open -revision de0_nano de0_nano
	} else {
		project_new -revision de0_nano de0_nano
	}
	set need_to_close_project 1
}

# Make assignments
if {$make_assignments} {
	set_global_assignment -name FAMILY "Cyclone IV E"
	set_global_assignment -name DEVICE EP4CE22F17C6
	set_global_assignment -name TOP_LEVEL_ENTITY top_level
	set_global_assignment -name ORIGINAL_QUARTUS_VERSION 20.1.1
	set_global_assignment -name PROJECT_CREATION_TIME_DATE "18:46:07  OCTOBER 23, 2024"
	set_global_assignment -name LAST_QUARTUS_VERSION "20.1.1 Lite Edition"
	set_global_assignment -name PROJECT_OUTPUT_DIRECTORY output_files
	set_global_assignment -name MIN_CORE_JUNCTION_TEMP 0
	set_global_assignment -name MAX_CORE_JUNCTION_TEMP 85
	set_global_assignment -name ERROR_CHECK_FREQUENCY_DIVISOR 1
	set_global_assignment -name NOMINAL_CORE_SUPPLY_VOLTAGE 1.2V
	set_global_assignment -name POWER_PRESET_COOLING_SOLUTION "23 MM HEAT SINK WITH 200 LFPM AIRFLOW"
	set_global_assignment -name POWER_BOARD_THERMAL_MODEL "NONE (CONSERVATIVE)"
	set_global_assignment -name EDA_SIMULATION_TOOL "ModelSim-Altera (VHDL)"
	set_global_assignment -name EDA_TIME_SCALE "1 ps" -section_id eda_simulation
	set_global_assignment -name EDA_OUTPUT_DATA_FORMAT VHDL -section_id eda_simulation
	set_global_assignment -name EDA_TEST_BENCH_ENABLE_STATUS TEST_BENCH_MODE -section_id eda_simulation
	set_global_assignment -name EDA_NATIVELINK_SIMULATION_TEST_BENCH tb_top_level -section_id eda_simulation
	set_global_assignment -name ENABLE_OCT_DONE OFF
	set_global_assignment -name ENABLE_CONFIGURATION_PINS OFF
	set_global_assignment -name ENABLE_BOOT_SEL_PIN OFF
	set_global_assignment -name USE_CONFIGURATION_DEVICE OFF
	set_global_assignment -name CRC_ERROR_OPEN_DRAIN OFF
	set_global_assignment -name STRATIX_DEVICE_IO_STANDARD "3.3-V LVTTL"
	set_global_assignment -name OUTPUT_IO_TIMING_NEAR_END_VMEAS "HALF VCCIO" -rise
	set_global_assignment -name OUTPUT_IO_TIMING_NEAR_END_VMEAS "HALF VCCIO" -fall
	set_global_assignment -name OUTPUT_IO_TIMING_FAR_END_VMEAS "HALF SIGNAL SWING" -rise
	set_global_assignment -name OUTPUT_IO_TIMING_FAR_END_VMEAS "HALF SIGNAL SWING" -fall
	set_global_assignment -name VHDL_FILE adc_process.vhd
	set_global_assignment -name VHDL_FILE mcp4725_dac.vhd
	set_global_assignment -name VHDL_FILE i2c_master.vhd
	set_global_assignment -name VHDL_FILE utils/virtual_clock.vhdl -library utils
	set_global_assignment -name VHDL_FILE utils/types.vhdl -library utils
	set_global_assignment -name VHDL_FILE utils/fonts.vhdl -library utils
	set_global_assignment -name VHDL_FILE spi_master.vhd
	set_global_assignment -name VHDL_FILE de0nano_adc.vhd
	set_global_assignment -name VHDL_FILE top_level.vhd
	set_global_assignment -name VECTOR_WAVEFORM_FILE Waveform.vwf
	set_global_assignment -name VHDL_FILE tb_top_level.vhd
	set_global_assignment -name EDA_TEST_BENCH_NAME tb_top_level -section_id eda_simulation
	set_global_assignment -name EDA_DESIGN_INSTANCE_NAME NA -section_id tb_top_level
	set_global_assignment -name EDA_TEST_BENCH_MODULE_NAME tb_top_level -section_id tb_top_level
	set_global_assignment -name EDA_TEST_BENCH_FILE tb_top_level.vhd -section_id tb_top_level
	set_global_assignment -name VHDL_FILE test.vhd
	set_global_assignment -name PARTITION_NETLIST_TYPE SOURCE -section_id Top
	set_global_assignment -name PARTITION_FITTER_PRESERVATION_LEVEL PLACEMENT_AND_ROUTING -section_id Top
	set_global_assignment -name PARTITION_COLOR 16764057 -section_id Top
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to ADC_CS_N
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to ADC_SADDR
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to ADC_SCLK
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to ADC_SDAT
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to scl
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to sda
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to CLOCK_50
	set_location_assignment PIN_R8 -to CLOCK_50
	set_location_assignment PIN_B14 -to ADC_SCLK
	set_location_assignment PIN_A9 -to ADC_SDAT
	set_location_assignment PIN_A14 -to SCL
	set_location_assignment PIN_B16 -to SDA
	set_location_assignment PIN_J15 -to RST
	set_location_assignment PIN_A10 -to ADC_CS_N
	set_location_assignment PIN_B10 -to ADC_SADDR
	set_location_assignment PIN_L3 -to data_out[7]
	set_location_assignment PIN_B1 -to data_out[6]
	set_location_assignment PIN_F3 -to data_out[5]
	set_location_assignment PIN_D1 -to data_out[4]
	set_location_assignment PIN_A11 -to data_out[3]
	set_location_assignment PIN_B13 -to data_out[2]
	set_location_assignment PIN_A13 -to data_out[1]
	set_location_assignment PIN_A15 -to data_out[0]
	set_instance_assignment -name PARTITION_HIERARCHY root_partition -to | -section_id Top

	# Commit assignments
	export_assignments

	# Close project
	if {$need_to_close_project} {
		project_close
	}
}
