-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "11/06/2024 10:08:28"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	top_level IS
    PORT (
	CLOCK_50 : IN std_logic;
	incr : IN std_logic;
	decr : IN std_logic;
	led8 : OUT std_logic_vector(7 DOWNTO 0);
	ssw : IN std_logic_vector(1 DOWNTO 0);
	ADC_SDAT : IN std_logic;
	ADC_SADDR : OUT std_logic;
	ADC_CS_N : OUT std_logic;
	ADC_SCLK : OUT std_logic;
	SDA : INOUT std_logic;
	SCL : INOUT std_logic
	);
END top_level;

-- Design Ports Information
-- led8[0]	=>  Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- led8[1]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- led8[2]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- led8[3]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- led8[4]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- led8[5]	=>  Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- led8[6]	=>  Location: PIN_B1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- led8[7]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ADC_SADDR	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ADC_CS_N	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ADC_SCLK	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SDA	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SCL	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- CLOCK_50	=>  Location: PIN_R8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- incr	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ssw[0]	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ssw[1]	=>  Location: PIN_T8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- decr	=>  Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_SDAT	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF top_level IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_incr : std_logic;
SIGNAL ww_decr : std_logic;
SIGNAL ww_led8 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ssw : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_ADC_SDAT : std_logic;
SIGNAL ww_ADC_SADDR : std_logic;
SIGNAL ww_ADC_CS_N : std_logic;
SIGNAL ww_ADC_SCLK : std_logic;
SIGNAL \vclock|virt_clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ADC_SADDR~output_o\ : std_logic;
SIGNAL \SDA~output_o\ : std_logic;
SIGNAL \SCL~output_o\ : std_logic;
SIGNAL \led8[0]~output_o\ : std_logic;
SIGNAL \led8[1]~output_o\ : std_logic;
SIGNAL \led8[2]~output_o\ : std_logic;
SIGNAL \led8[3]~output_o\ : std_logic;
SIGNAL \led8[4]~output_o\ : std_logic;
SIGNAL \led8[5]~output_o\ : std_logic;
SIGNAL \led8[6]~output_o\ : std_logic;
SIGNAL \led8[7]~output_o\ : std_logic;
SIGNAL \ADC_CS_N~output_o\ : std_logic;
SIGNAL \ADC_SCLK~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \adc|spi_driver|clk_toggles[0]~6_combout\ : std_logic;
SIGNAL \adc|spi_driver|clk_toggles[2]~12\ : std_logic;
SIGNAL \adc|spi_driver|clk_toggles[3]~13_combout\ : std_logic;
SIGNAL \CLOCK_ADJ|ADC_CLK[6]~26_combout\ : std_logic;
SIGNAL \decr~input_o\ : std_logic;
SIGNAL \CLOCK_ADJ|prev_decr~0_combout\ : std_logic;
SIGNAL \incr~input_o\ : std_logic;
SIGNAL \RST~0_combout\ : std_logic;
SIGNAL \RST~q\ : std_logic;
SIGNAL \CLOCK_ADJ|prev_decr~q\ : std_logic;
SIGNAL \CLOCK_ADJ|ADC_CLK[21]~31_combout\ : std_logic;
SIGNAL \CLOCK_ADJ|process_0~1_combout\ : std_logic;
SIGNAL \CLOCK_ADJ|process_0~0_combout\ : std_logic;
SIGNAL \CLOCK_ADJ|process_0~2_combout\ : std_logic;
SIGNAL \CLOCK_ADJ|LessThan1~5_combout\ : std_logic;
SIGNAL \CLOCK_ADJ|LessThan1~1_combout\ : std_logic;
SIGNAL \CLOCK_ADJ|LessThan1~0_combout\ : std_logic;
SIGNAL \CLOCK_ADJ|LessThan1~2_combout\ : std_logic;
SIGNAL \CLOCK_ADJ|LessThan1~3_combout\ : std_logic;
SIGNAL \CLOCK_ADJ|LessThan1~4_combout\ : std_logic;
SIGNAL \CLOCK_ADJ|LessThan1~6_combout\ : std_logic;
SIGNAL \ssw[0]~input_o\ : std_logic;
SIGNAL \ssw[1]~input_o\ : std_logic;
SIGNAL \CLOCK_ADJ|ADC_CLK[21]~30_combout\ : std_logic;
SIGNAL \CLOCK_ADJ|ADC_CLK[21]~32_combout\ : std_logic;
SIGNAL \CLOCK_ADJ|ADC_CLK[6]~27\ : std_logic;
SIGNAL \CLOCK_ADJ|ADC_CLK[7]~29\ : std_logic;
SIGNAL \CLOCK_ADJ|ADC_CLK[8]~33_combout\ : std_logic;
SIGNAL \CLOCK_ADJ|ADC_CLK[8]~34\ : std_logic;
SIGNAL \CLOCK_ADJ|ADC_CLK[9]~35_combout\ : std_logic;
SIGNAL \CLOCK_ADJ|ADC_CLK[9]~36\ : std_logic;
SIGNAL \CLOCK_ADJ|ADC_CLK[10]~37_combout\ : std_logic;
SIGNAL \CLOCK_ADJ|ADC_CLK[10]~38\ : std_logic;
SIGNAL \CLOCK_ADJ|ADC_CLK[11]~39_combout\ : std_logic;
SIGNAL \CLOCK_ADJ|ADC_CLK[11]~40\ : std_logic;
SIGNAL \CLOCK_ADJ|ADC_CLK[12]~41_combout\ : std_logic;
SIGNAL \CLOCK_ADJ|ADC_CLK[12]~42\ : std_logic;
SIGNAL \CLOCK_ADJ|ADC_CLK[13]~43_combout\ : std_logic;
SIGNAL \CLOCK_ADJ|ADC_CLK[13]~44\ : std_logic;
SIGNAL \CLOCK_ADJ|ADC_CLK[14]~45_combout\ : std_logic;
SIGNAL \CLOCK_ADJ|ADC_CLK[14]~46\ : std_logic;
SIGNAL \CLOCK_ADJ|ADC_CLK[15]~47_combout\ : std_logic;
SIGNAL \CLOCK_ADJ|ADC_CLK[15]~48\ : std_logic;
SIGNAL \CLOCK_ADJ|ADC_CLK[16]~49_combout\ : std_logic;
SIGNAL \CLOCK_ADJ|ADC_CLK[16]~50\ : std_logic;
SIGNAL \CLOCK_ADJ|ADC_CLK[17]~51_combout\ : std_logic;
SIGNAL \CLOCK_ADJ|ADC_CLK[17]~52\ : std_logic;
SIGNAL \CLOCK_ADJ|ADC_CLK[18]~53_combout\ : std_logic;
SIGNAL \CLOCK_ADJ|ADC_CLK[18]~54\ : std_logic;
SIGNAL \CLOCK_ADJ|ADC_CLK[19]~55_combout\ : std_logic;
SIGNAL \CLOCK_ADJ|ADC_CLK[19]~56\ : std_logic;
SIGNAL \CLOCK_ADJ|ADC_CLK[20]~57_combout\ : std_logic;
SIGNAL \CLOCK_ADJ|ADC_CLK[20]~58\ : std_logic;
SIGNAL \CLOCK_ADJ|ADC_CLK[21]~59_combout\ : std_logic;
SIGNAL \CLOCK_ADJ|ADC_CLK[21]~60\ : std_logic;
SIGNAL \CLOCK_ADJ|ADC_CLK[22]~61_combout\ : std_logic;
SIGNAL \CLOCK_ADJ|ADC_CLK[22]~62\ : std_logic;
SIGNAL \CLOCK_ADJ|ADC_CLK[23]~63_combout\ : std_logic;
SIGNAL \CLOCK_ADJ|ADC_CLK[23]~64\ : std_logic;
SIGNAL \CLOCK_ADJ|ADC_CLK[24]~65_combout\ : std_logic;
SIGNAL \CLOCK_ADJ|ADC_CLK[24]~66\ : std_logic;
SIGNAL \CLOCK_ADJ|ADC_CLK[25]~67_combout\ : std_logic;
SIGNAL \CLOCK_ADJ|ADC_CLK[25]~68\ : std_logic;
SIGNAL \CLOCK_ADJ|ADC_CLK[26]~69_combout\ : std_logic;
SIGNAL \CLOCK_ADJ|ADC_CLK[26]~70\ : std_logic;
SIGNAL \CLOCK_ADJ|ADC_CLK[27]~71_combout\ : std_logic;
SIGNAL \CLOCK_ADJ|ADC_CLK[27]~72\ : std_logic;
SIGNAL \CLOCK_ADJ|ADC_CLK[28]~73_combout\ : std_logic;
SIGNAL \CLOCK_ADJ|ADC_CLK[28]~74\ : std_logic;
SIGNAL \CLOCK_ADJ|ADC_CLK[29]~75_combout\ : std_logic;
SIGNAL \CLOCK_ADJ|ADC_CLK[29]~76\ : std_logic;
SIGNAL \CLOCK_ADJ|ADC_CLK[30]~77_combout\ : std_logic;
SIGNAL \CLOCK_ADJ|ADC_CLK[30]~78\ : std_logic;
SIGNAL \CLOCK_ADJ|ADC_CLK[31]~79_combout\ : std_logic;
SIGNAL \CLOCK_ADJ|prev_incr~0_combout\ : std_logic;
SIGNAL \CLOCK_ADJ|prev_incr~q\ : std_logic;
SIGNAL \CLOCK_ADJ|LessThan0~0_combout\ : std_logic;
SIGNAL \CLOCK_ADJ|LessThan0~1_combout\ : std_logic;
SIGNAL \CLOCK_ADJ|LessThan0~2_combout\ : std_logic;
SIGNAL \CLOCK_ADJ|process_0~3_combout\ : std_logic;
SIGNAL \CLOCK_ADJ|process_0~4_combout\ : std_logic;
SIGNAL \CLOCK_ADJ|ADC_CLK[7]~28_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|selnose[459]~0_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|selnose[324]~1_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|selnose[243]~2_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|sel[138]~0_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_22~1_cout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_22~3\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_22~4_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_22~2_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[168]~8_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[167]~9_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~1\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~3\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~4_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|selnose[216]~3_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~2_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[192]~10_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~0_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[191]~11_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[190]~12_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_24~1\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_24~3\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_24~5\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_24~6_combout\ : std_logic;
SIGNAL \vclock|Equal0~18_combout\ : std_logic;
SIGNAL \vclock|Equal0~8_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|selnose[270]~4_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_24~4_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[216]~13_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_24~2_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[215]~14_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_24~0_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[214]~15_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~1\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~3\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~5\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|add_sub_10_result_int[10]~7\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~8_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|add_sub_10_result_int[10]~6_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[240]~16_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~4_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[239]~17_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~2_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[238]~18_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~0_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[237]~19_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~1\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~3\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~5\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|add_sub_11_result_int[10]~7\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~9\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~10_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|selnose[297]~5_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~8_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[264]~20_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|add_sub_11_result_int[10]~6_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[263]~21_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~4_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[262]~22_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~2_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[261]~23_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~0_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[260]~24_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~1\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~3\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~5\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[10]~7\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[11]~9\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[12]~11\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~12_combout\ : std_logic;
SIGNAL \vclock|Equal0~19_combout\ : std_logic;
SIGNAL \vclock|Equal0~9_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|selnose[432]~7_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|selnose[405]~6_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[12]~10_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[288]~25_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[11]~8_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[287]~26_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[10]~6_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[286]~27_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~4_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[285]~28_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~2_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[284]~29_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~0_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[283]~30_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~1_cout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~3\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~5\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~7\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[10]~9\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[11]~11\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[12]~13\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[13]~14_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[13]~15\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~16_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[312]~31_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[12]~12_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[311]~32_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[11]~10_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[310]~33_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[10]~8_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[309]~34_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~6_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[308]~35_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~4_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[307]~36_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~2_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[306]~37_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[305]~38_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_5~1\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_5~3\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_5~5\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_5~7\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_5~9\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_5~11\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_5~13\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_5~14_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_5~15\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_5~16_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[336]~39_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_5~12_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[335]~40_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_5~10_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[334]~41_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_5~8_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[333]~42_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_5~6_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[332]~43_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_5~4_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[331]~44_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_5~2_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[330]~45_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_5~0_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[329]~46_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_5~18_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_6~1_cout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_6~3\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_6~5\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_6~7\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_6~9\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_6~11\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_6~13\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_6~15\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_6~17\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_6~19\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_6~20_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_6~18_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[360]~47_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_6~16_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[359]~48_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_6~14_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[358]~49_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_6~12_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[357]~50_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_6~10_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[356]~51_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_6~8_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[355]~52_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_6~6_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[354]~53_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_6~4_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[353]~54_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_6~2_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[352]~55_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[351]~56_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_7~1\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_7~3\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_7~5\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_7~7\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_7~9\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_7~11\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_7~13\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_7~15\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_7~17\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_7~18_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_7~19\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_7~20_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[384]~57_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_7~16_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[383]~58_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_7~14_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[382]~59_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_7~12_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[381]~60_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_7~10_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[380]~61_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_7~8_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[379]~62_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_7~6_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[378]~63_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_7~4_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[377]~64_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_7~2_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[376]~65_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_7~0_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[375]~66_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_8~1\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_8~3\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_8~5\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_8~7\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_8~9\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_8~11\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_8~13\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_8~15\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_8~17\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_8~19\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_8~21\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_8~22_combout\ : std_logic;
SIGNAL \vclock|Equal0~20_combout\ : std_logic;
SIGNAL \vclock|vclk_cnt~7_combout\ : std_logic;
SIGNAL \vclock|vclk_cnt~6_combout\ : std_logic;
SIGNAL \vclock|vclk_cnt~8_combout\ : std_logic;
SIGNAL \vclock|Add0~1_combout\ : std_logic;
SIGNAL \vclock|vclk_cnt~5_combout\ : std_logic;
SIGNAL \vclock|Add0~0_combout\ : std_logic;
SIGNAL \vclock|vclk_cnt~4_combout\ : std_logic;
SIGNAL \vclock|vclk_cnt~9_combout\ : std_logic;
SIGNAL \vclock|Add0~2_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|selnose[486]~8_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_8~20_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[408]~67_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_8~18_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[407]~68_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_8~16_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[406]~69_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_8~14_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[405]~70_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_8~12_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[404]~71_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_8~10_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[403]~72_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_8~8_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[402]~73_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_8~6_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[401]~74_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_8~4_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[400]~75_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_8~2_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[399]~76_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_8~0_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[398]~77_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[7]~1\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[8]~3\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[9]~5\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[10]~7\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[11]~9\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[12]~11\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[13]~13\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[14]~15\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[15]~17\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[16]~19\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[17]~21\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[18]~22_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[18]~23\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~24_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[432]~78_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[17]~20_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[431]~79_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[16]~18_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[430]~80_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[15]~16_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[429]~81_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[14]~14_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[428]~82_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[13]~12_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[427]~83_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[12]~10_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[426]~84_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[11]~8_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[425]~85_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[10]~6_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[424]~86_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[9]~4_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[423]~87_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[8]~2_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[422]~88_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[7]~0_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[421]~89_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_10~1\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_10~3\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_10~5\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_10~7\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_10~9\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_10~11\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_10~13\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_10~15\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_10~17\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_10~19\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_10~21\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_10~23\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_10~25\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_10~26_combout\ : std_logic;
SIGNAL \vclock|Equal0~21_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_10~24_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[456]~90_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_10~22_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[455]~91_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_10~20_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[454]~92_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_10~18_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[453]~93_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_10~16_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[452]~94_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_10~14_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[451]~95_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_10~12_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[450]~96_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_10~10_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[449]~97_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_10~8_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[448]~98_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_10~6_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[447]~99_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_10~4_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[446]~100_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_10~2_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[445]~101_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_10~0_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[444]~102_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_12~1_cout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_12~3\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_12~5\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_12~7\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_12~9\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_12~11\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_12~13\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_12~15\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_12~17\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_12~19\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_12~21\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_12~23\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_12~25\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_12~27\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_12~29\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_12~30_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_12~28_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[480]~103_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_12~26_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[479]~104_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_12~24_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[478]~105_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_12~22_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[477]~106_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_12~20_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[476]~107_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_12~18_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[475]~108_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_12~16_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[474]~109_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_12~14_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[473]~110_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_12~12_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[472]~111_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_12~10_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[471]~112_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_12~8_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[470]~113_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_12~6_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[469]~114_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_12~4_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[468]~115_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_12~2_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[467]~116_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[466]~117_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_13~1_cout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_13~3\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_13~5\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_13~7\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_13~9\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_13~11\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_13~13\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_13~15\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_13~17\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_13~19\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_13~21\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_13~23\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_13~25\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_13~27\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_13~29\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_13~31\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_13~32_combout\ : std_logic;
SIGNAL \vclock|Equal0~11_combout\ : std_logic;
SIGNAL \vclock|Equal0~10_combout\ : std_logic;
SIGNAL \vclock|Add0~3_combout\ : std_logic;
SIGNAL \vclock|Equal0~13_combout\ : std_logic;
SIGNAL \vclock|Equal0~14_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[504]~132_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_13~30_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[504]~133_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_13~28_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[503]~134_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_13~26_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[502]~118_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_13~24_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[501]~119_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_13~22_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[500]~120_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_13~20_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[499]~121_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_13~18_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[498]~122_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_13~16_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[497]~123_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_13~14_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[496]~124_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_13~12_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[495]~125_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_13~10_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[494]~126_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_13~8_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[493]~127_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_13~6_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[492]~128_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_13~4_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[491]~129_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_13~2_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[490]~130_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[489]~131_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_14~1_cout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_14~3\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_14~5\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_14~7\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_14~9\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_14~11\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_14~13\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_14~15\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_14~17\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_14~19\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_14~21\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_14~23\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_14~25\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_14~27\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_14~29\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_14~31\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_14~33_cout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_14~34_combout\ : std_logic;
SIGNAL \vclock|Equal0~15_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_14~30_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[527]~136_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[527]~165_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_14~28_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[526]~135_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_14~26_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[525]~137_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_14~24_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[524]~138_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_14~22_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[523]~139_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_14~20_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[522]~140_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_14~18_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[521]~141_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_14~16_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[520]~142_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_14~14_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[519]~143_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_14~12_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[518]~144_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_14~10_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[517]~145_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_14~8_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[516]~146_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_14~6_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[515]~147_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_14~4_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[514]~148_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_14~2_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[513]~166_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[512]~149_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_15~1_cout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_15~3\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_15~5\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_15~7\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_15~9\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_15~11\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_15~13\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_15~15\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_15~17\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_15~19\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_15~21\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_15~23\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_15~25\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_15~27\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_15~29\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_15~31\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_15~33_cout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_15~34_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[550]~167_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_15~30_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[550]~150_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_15~28_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[549]~151_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_15~26_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[548]~152_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_15~24_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[547]~153_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_15~22_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[546]~154_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_15~20_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[545]~155_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_15~18_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[544]~156_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_15~16_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[543]~157_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_15~14_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[542]~158_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_15~12_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[541]~159_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_15~10_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[540]~160_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_15~8_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[539]~161_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_15~6_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[538]~162_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_15~4_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[537]~163_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_15~2_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[536]~168_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut[535]~164_combout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_16~1_cout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_16~3_cout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_16~5_cout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_16~7_cout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_16~9_cout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_16~11_cout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_16~13_cout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_16~15_cout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_16~17_cout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_16~19_cout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_16~21_cout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_16~23_cout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_16~25_cout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_16~27_cout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_16~29_cout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_16~31_cout\ : std_logic;
SIGNAL \vclock|Div0|auto_generated|divider|divider|op_16~32_combout\ : std_logic;
SIGNAL \vclock|Equal0~12_combout\ : std_logic;
SIGNAL \vclock|Equal0~16_combout\ : std_logic;
SIGNAL \vclock|Equal0~17_combout\ : std_logic;
SIGNAL \vclock|virt_clk~0_combout\ : std_logic;
SIGNAL \vclock|virt_clk~q\ : std_logic;
SIGNAL \vclock|virt_clk~clkctrl_outclk\ : std_logic;
SIGNAL \adc|Add1~1_combout\ : std_logic;
SIGNAL \adc|Add1~0_combout\ : std_logic;
SIGNAL \adc|Selector0~0_combout\ : std_logic;
SIGNAL \adc|init_delay[0]~0_combout\ : std_logic;
SIGNAL \adc|Add0~1_combout\ : std_logic;
SIGNAL \adc|Add0~0_combout\ : std_logic;
SIGNAL \adc|Selector0~1_combout\ : std_logic;
SIGNAL \adc|state.ready~0_combout\ : std_logic;
SIGNAL \adc|state.initialize~0_combout\ : std_logic;
SIGNAL \adc|state.initialize~reg0_q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \adc_run~q\ : std_logic;
SIGNAL \adc|state.ready~1_combout\ : std_logic;
SIGNAL \adc|state.ready~reg0_q\ : std_logic;
SIGNAL \adc|state.execute~0_combout\ : std_logic;
SIGNAL \adc|state.execute~reg0_q\ : std_logic;
SIGNAL \adc|Add1~4_combout\ : std_logic;
SIGNAL \adc|Equal2~0_combout\ : std_logic;
SIGNAL \adc|Equal2~1_combout\ : std_logic;
SIGNAL \adc|spi_comm_delay~8_combout\ : std_logic;
SIGNAL \adc|spi_comm_delay~6_combout\ : std_logic;
SIGNAL \adc|spi_comm_delay~7_combout\ : std_logic;
SIGNAL \adc|Add1~2_combout\ : std_logic;
SIGNAL \adc|Add1~3_combout\ : std_logic;
SIGNAL \adc|enable~0_combout\ : std_logic;
SIGNAL \adc|enable~1_combout\ : std_logic;
SIGNAL \adc|enable~2_combout\ : std_logic;
SIGNAL \adc|enable~q\ : std_logic;
SIGNAL \adc|reset~0_combout\ : std_logic;
SIGNAL \adc|reset~1_combout\ : std_logic;
SIGNAL \adc|reset~feeder_combout\ : std_logic;
SIGNAL \adc|reset~q\ : std_logic;
SIGNAL \adc|spi_driver|clk_toggles[5]~10_combout\ : std_logic;
SIGNAL \adc|spi_driver|clk_toggles[3]~14\ : std_logic;
SIGNAL \adc|spi_driver|clk_toggles[4]~15_combout\ : std_logic;
SIGNAL \adc|spi_driver|clk_toggles[4]~16\ : std_logic;
SIGNAL \adc|spi_driver|clk_toggles[5]~17_combout\ : std_logic;
SIGNAL \adc|spi_driver|mosi~5_combout\ : std_logic;
SIGNAL \adc|spi_driver|clk_toggles[0]~7\ : std_logic;
SIGNAL \adc|spi_driver|clk_toggles[1]~8_combout\ : std_logic;
SIGNAL \adc|spi_driver|clk_toggles[1]~9\ : std_logic;
SIGNAL \adc|spi_driver|clk_toggles[2]~11_combout\ : std_logic;
SIGNAL \adc|spi_driver|Equal3~0_combout\ : std_logic;
SIGNAL \adc|spi_driver|Equal3~1_combout\ : std_logic;
SIGNAL \adc|spi_driver|busy~0_combout\ : std_logic;
SIGNAL \adc|spi_driver|state~feeder_combout\ : std_logic;
SIGNAL \adc|spi_driver|state~q\ : std_logic;
SIGNAL \adc|spi_driver|Add5~0_combout\ : std_logic;
SIGNAL \adc|spi_driver|count~1_combout\ : std_logic;
SIGNAL \adc|spi_driver|count[30]~2_combout\ : std_logic;
SIGNAL \adc|spi_driver|Add5~1\ : std_logic;
SIGNAL \adc|spi_driver|Add5~2_combout\ : std_logic;
SIGNAL \adc|spi_driver|count~33_combout\ : std_logic;
SIGNAL \adc|spi_driver|Add5~3\ : std_logic;
SIGNAL \adc|spi_driver|Add5~4_combout\ : std_logic;
SIGNAL \adc|spi_driver|count~32_combout\ : std_logic;
SIGNAL \adc|spi_driver|Add5~5\ : std_logic;
SIGNAL \adc|spi_driver|Add5~6_combout\ : std_logic;
SIGNAL \adc|spi_driver|count~31_combout\ : std_logic;
SIGNAL \adc|spi_driver|Add5~7\ : std_logic;
SIGNAL \adc|spi_driver|Add5~8_combout\ : std_logic;
SIGNAL \adc|spi_driver|count~3_combout\ : std_logic;
SIGNAL \adc|spi_driver|Add5~9\ : std_logic;
SIGNAL \adc|spi_driver|Add5~10_combout\ : std_logic;
SIGNAL \adc|spi_driver|count~30_combout\ : std_logic;
SIGNAL \adc|spi_driver|Add5~11\ : std_logic;
SIGNAL \adc|spi_driver|Add5~12_combout\ : std_logic;
SIGNAL \adc|spi_driver|count~29_combout\ : std_logic;
SIGNAL \adc|spi_driver|Add5~13\ : std_logic;
SIGNAL \adc|spi_driver|Add5~14_combout\ : std_logic;
SIGNAL \adc|spi_driver|count~28_combout\ : std_logic;
SIGNAL \adc|spi_driver|Add5~15\ : std_logic;
SIGNAL \adc|spi_driver|Add5~16_combout\ : std_logic;
SIGNAL \adc|spi_driver|count~27_combout\ : std_logic;
SIGNAL \adc|spi_driver|Add5~17\ : std_logic;
SIGNAL \adc|spi_driver|Add5~18_combout\ : std_logic;
SIGNAL \adc|spi_driver|count~26_combout\ : std_logic;
SIGNAL \adc|spi_driver|Add5~19\ : std_logic;
SIGNAL \adc|spi_driver|Add5~20_combout\ : std_logic;
SIGNAL \adc|spi_driver|count~25_combout\ : std_logic;
SIGNAL \adc|spi_driver|Equal1~7_combout\ : std_logic;
SIGNAL \adc|spi_driver|Add5~21\ : std_logic;
SIGNAL \adc|spi_driver|Add5~22_combout\ : std_logic;
SIGNAL \adc|spi_driver|count~24_combout\ : std_logic;
SIGNAL \adc|spi_driver|Add5~23\ : std_logic;
SIGNAL \adc|spi_driver|Add5~24_combout\ : std_logic;
SIGNAL \adc|spi_driver|count~23_combout\ : std_logic;
SIGNAL \adc|spi_driver|Add5~25\ : std_logic;
SIGNAL \adc|spi_driver|Add5~26_combout\ : std_logic;
SIGNAL \adc|spi_driver|count~22_combout\ : std_logic;
SIGNAL \adc|spi_driver|Add5~27\ : std_logic;
SIGNAL \adc|spi_driver|Add5~28_combout\ : std_logic;
SIGNAL \adc|spi_driver|count~21_combout\ : std_logic;
SIGNAL \adc|spi_driver|Equal1~6_combout\ : std_logic;
SIGNAL \adc|spi_driver|Equal1~8_combout\ : std_logic;
SIGNAL \adc|spi_driver|Add5~29\ : std_logic;
SIGNAL \adc|spi_driver|Add5~30_combout\ : std_logic;
SIGNAL \adc|spi_driver|count~20_combout\ : std_logic;
SIGNAL \adc|spi_driver|Add5~31\ : std_logic;
SIGNAL \adc|spi_driver|Add5~32_combout\ : std_logic;
SIGNAL \adc|spi_driver|count~19_combout\ : std_logic;
SIGNAL \adc|spi_driver|Add5~33\ : std_logic;
SIGNAL \adc|spi_driver|Add5~34_combout\ : std_logic;
SIGNAL \adc|spi_driver|count~18_combout\ : std_logic;
SIGNAL \adc|spi_driver|Add5~35\ : std_logic;
SIGNAL \adc|spi_driver|Add5~36_combout\ : std_logic;
SIGNAL \adc|spi_driver|count~17_combout\ : std_logic;
SIGNAL \adc|spi_driver|Equal1~5_combout\ : std_logic;
SIGNAL \adc|spi_driver|Equal1~9_combout\ : std_logic;
SIGNAL \adc|spi_driver|count[3]~0_combout\ : std_logic;
SIGNAL \adc|spi_driver|Add5~37\ : std_logic;
SIGNAL \adc|spi_driver|Add5~38_combout\ : std_logic;
SIGNAL \adc|spi_driver|count~16_combout\ : std_logic;
SIGNAL \adc|spi_driver|Add5~39\ : std_logic;
SIGNAL \adc|spi_driver|Add5~40_combout\ : std_logic;
SIGNAL \adc|spi_driver|count~15_combout\ : std_logic;
SIGNAL \adc|spi_driver|Add5~41\ : std_logic;
SIGNAL \adc|spi_driver|Add5~42_combout\ : std_logic;
SIGNAL \adc|spi_driver|count~14_combout\ : std_logic;
SIGNAL \adc|spi_driver|Add5~43\ : std_logic;
SIGNAL \adc|spi_driver|Add5~44_combout\ : std_logic;
SIGNAL \adc|spi_driver|count~13_combout\ : std_logic;
SIGNAL \adc|spi_driver|Add5~45\ : std_logic;
SIGNAL \adc|spi_driver|Add5~46_combout\ : std_logic;
SIGNAL \adc|spi_driver|count~12_combout\ : std_logic;
SIGNAL \adc|spi_driver|Add5~47\ : std_logic;
SIGNAL \adc|spi_driver|Add5~48_combout\ : std_logic;
SIGNAL \adc|spi_driver|count~11_combout\ : std_logic;
SIGNAL \adc|spi_driver|Add5~49\ : std_logic;
SIGNAL \adc|spi_driver|Add5~50_combout\ : std_logic;
SIGNAL \adc|spi_driver|count~10_combout\ : std_logic;
SIGNAL \adc|spi_driver|Add5~51\ : std_logic;
SIGNAL \adc|spi_driver|Add5~52_combout\ : std_logic;
SIGNAL \adc|spi_driver|count~9_combout\ : std_logic;
SIGNAL \adc|spi_driver|Equal1~2_combout\ : std_logic;
SIGNAL \adc|spi_driver|Add5~53\ : std_logic;
SIGNAL \adc|spi_driver|Add5~54_combout\ : std_logic;
SIGNAL \adc|spi_driver|count~8_combout\ : std_logic;
SIGNAL \adc|spi_driver|Add5~55\ : std_logic;
SIGNAL \adc|spi_driver|Add5~56_combout\ : std_logic;
SIGNAL \adc|spi_driver|count~7_combout\ : std_logic;
SIGNAL \adc|spi_driver|Add5~57\ : std_logic;
SIGNAL \adc|spi_driver|Add5~58_combout\ : std_logic;
SIGNAL \adc|spi_driver|count~6_combout\ : std_logic;
SIGNAL \adc|spi_driver|Add5~59\ : std_logic;
SIGNAL \adc|spi_driver|Add5~60_combout\ : std_logic;
SIGNAL \adc|spi_driver|count~5_combout\ : std_logic;
SIGNAL \adc|spi_driver|Equal1~1_combout\ : std_logic;
SIGNAL \adc|spi_driver|Equal1~3_combout\ : std_logic;
SIGNAL \adc|spi_driver|clk_ratio[0]~0_combout\ : std_logic;
SIGNAL \adc|spi_driver|Add5~61\ : std_logic;
SIGNAL \adc|spi_driver|Add5~62_combout\ : std_logic;
SIGNAL \adc|spi_driver|count~4_combout\ : std_logic;
SIGNAL \adc|spi_driver|Equal1~0_combout\ : std_logic;
SIGNAL \adc|spi_driver|Equal1~4_combout\ : std_logic;
SIGNAL \adc|spi_driver|Equal1~10_combout\ : std_logic;
SIGNAL \adc|spi_driver|assert_data~0_combout\ : std_logic;
SIGNAL \adc|spi_driver|assert_data~q\ : std_logic;
SIGNAL \adc|spi_driver|mosi~1_combout\ : std_logic;
SIGNAL \adc|spi_driver|mosi~2_combout\ : std_logic;
SIGNAL \adc|spi_driver|mosi~3_combout\ : std_logic;
SIGNAL \adc|spi_driver|mosi~4_combout\ : std_logic;
SIGNAL \adc|spi_driver|mosi~enfeeder_combout\ : std_logic;
SIGNAL \adc|spi_driver|mosi~en_q\ : std_logic;
SIGNAL \dac|i2c_master_inst|bit_cnt[0]~5_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Add0~3\ : std_logic;
SIGNAL \dac|i2c_master_inst|Add0~5\ : std_logic;
SIGNAL \dac|i2c_master_inst|Add0~6_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|count~1_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Add0~7\ : std_logic;
SIGNAL \dac|i2c_master_inst|Add0~8_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|count~5_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Add0~9\ : std_logic;
SIGNAL \dac|i2c_master_inst|Add0~10_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|count~6_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Add0~11\ : std_logic;
SIGNAL \dac|i2c_master_inst|Add0~12_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|count~2_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|count~4_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Add0~0_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|process_0~5_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Add0~4_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|process_0~4_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|process_0~6_combout\ : std_logic;
SIGNAL \SCL~input_o\ : std_logic;
SIGNAL \dac|i2c_master_inst|stretch~0_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|stretch~q\ : std_logic;
SIGNAL \dac|i2c_master_inst|Add0~1\ : std_logic;
SIGNAL \dac|i2c_master_inst|Add0~2_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|count~3_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Equal0~0_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Equal0~1_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|count~0_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|LessThan1~0_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|process_0~0_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|process_0~1_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|process_0~2_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|process_0~3_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|LessThan1~1_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|LessThan1~2_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|data_clk~0_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|data_clk~q\ : std_logic;
SIGNAL \dac|i2c_master_inst|data_clk_prev~q\ : std_logic;
SIGNAL \dac|i2c_master_inst|Add1~0_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Equal1~0_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|process_1~0_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|state.mstr_ack~q\ : std_logic;
SIGNAL \dac|i2c_master_inst|state.start~q\ : std_logic;
SIGNAL \dac|i2c_master_inst|Selector19~0_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|state.command~q\ : std_logic;
SIGNAL \dac|i2c_master_inst|state~15_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|state.slv_ack1~q\ : std_logic;
SIGNAL \dac|i2c_master_inst|Selector20~0_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Selector20~1_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|state.wr~q\ : std_logic;
SIGNAL \dac|i2c_master_inst|state~14_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|state.slv_ack2~q\ : std_logic;
SIGNAL \dac|i2c_master_inst|Selector22~0_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|state.stop~q\ : std_logic;
SIGNAL \dac|i2c_master_inst|Selector17~0_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|state.ready~q\ : std_logic;
SIGNAL \dac|i2c_master_inst|Selector18~0_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Selector0~1_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Selector0~2_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|busy~q\ : std_logic;
SIGNAL \dac|busy_prev[0]~0_combout\ : std_logic;
SIGNAL \dac|ena~0_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|data_tx[7]~0_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Selector27~0_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Selector27~1_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|process_1~1_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|scl_ena~q\ : std_logic;
SIGNAL \dac|i2c_master_inst|Selector28~1_combout\ : std_logic;
SIGNAL \SDA~input_o\ : std_logic;
SIGNAL \dac|i2c_master_inst|Selector28~0_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Selector28~2_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|ack_error~q\ : std_logic;
SIGNAL \dac|Selector4~0_combout\ : std_logic;
SIGNAL \dac|state.ST_STOP~q\ : std_logic;
SIGNAL \dac|Selector0~0_combout\ : std_logic;
SIGNAL \dac|state.ST_IDLE~q\ : std_logic;
SIGNAL \dac|state.ST_START~0_combout\ : std_logic;
SIGNAL \dac|state.ST_START~q\ : std_logic;
SIGNAL \dac|Selector2~0_combout\ : std_logic;
SIGNAL \dac|state.ST_WR_1~q\ : std_logic;
SIGNAL \dac|state.ST_WR_2~0_combout\ : std_logic;
SIGNAL \dac|state.ST_WR_2~q\ : std_logic;
SIGNAL \dac|Selector5~1_combout\ : std_logic;
SIGNAL \dac|Add0~0_combout\ : std_logic;
SIGNAL \dac|wait_cnt~26_combout\ : std_logic;
SIGNAL \dac|Add0~1\ : std_logic;
SIGNAL \dac|Add0~2_combout\ : std_logic;
SIGNAL \dac|wait_cnt~25_combout\ : std_logic;
SIGNAL \dac|Add0~3\ : std_logic;
SIGNAL \dac|Add0~4_combout\ : std_logic;
SIGNAL \dac|wait_cnt~24_combout\ : std_logic;
SIGNAL \dac|Add0~5\ : std_logic;
SIGNAL \dac|Add0~6_combout\ : std_logic;
SIGNAL \dac|wait_cnt~23_combout\ : std_logic;
SIGNAL \dac|Equal2~9_combout\ : std_logic;
SIGNAL \dac|Add0~7\ : std_logic;
SIGNAL \dac|Add0~8_combout\ : std_logic;
SIGNAL \dac|wait_cnt[4]~31_combout\ : std_logic;
SIGNAL \dac|Add0~9\ : std_logic;
SIGNAL \dac|Add0~10_combout\ : std_logic;
SIGNAL \dac|wait_cnt~22_combout\ : std_logic;
SIGNAL \dac|Add0~11\ : std_logic;
SIGNAL \dac|Add0~12_combout\ : std_logic;
SIGNAL \dac|wait_cnt~21_combout\ : std_logic;
SIGNAL \dac|Add0~13\ : std_logic;
SIGNAL \dac|Add0~14_combout\ : std_logic;
SIGNAL \dac|wait_cnt~20_combout\ : std_logic;
SIGNAL \dac|Equal2~8_combout\ : std_logic;
SIGNAL \dac|Add0~15\ : std_logic;
SIGNAL \dac|Add0~16_combout\ : std_logic;
SIGNAL \dac|wait_cnt[8]~30_combout\ : std_logic;
SIGNAL \dac|Add0~17\ : std_logic;
SIGNAL \dac|Add0~18_combout\ : std_logic;
SIGNAL \dac|wait_cnt[9]~29_combout\ : std_logic;
SIGNAL \dac|Add0~19\ : std_logic;
SIGNAL \dac|Add0~20_combout\ : std_logic;
SIGNAL \dac|wait_cnt[10]~28_combout\ : std_logic;
SIGNAL \dac|Add0~21\ : std_logic;
SIGNAL \dac|Add0~22_combout\ : std_logic;
SIGNAL \dac|wait_cnt~19_combout\ : std_logic;
SIGNAL \dac|Equal2~6_combout\ : std_logic;
SIGNAL \dac|Add0~23\ : std_logic;
SIGNAL \dac|Add0~24_combout\ : std_logic;
SIGNAL \dac|wait_cnt~18_combout\ : std_logic;
SIGNAL \dac|Add0~25\ : std_logic;
SIGNAL \dac|Add0~26_combout\ : std_logic;
SIGNAL \dac|wait_cnt[13]~27_combout\ : std_logic;
SIGNAL \dac|Add0~27\ : std_logic;
SIGNAL \dac|Add0~28_combout\ : std_logic;
SIGNAL \dac|wait_cnt~17_combout\ : std_logic;
SIGNAL \dac|Add0~29\ : std_logic;
SIGNAL \dac|Add0~30_combout\ : std_logic;
SIGNAL \dac|wait_cnt~16_combout\ : std_logic;
SIGNAL \dac|Equal2~5_combout\ : std_logic;
SIGNAL \dac|Equal2~7_combout\ : std_logic;
SIGNAL \dac|Add0~31\ : std_logic;
SIGNAL \dac|Add0~32_combout\ : std_logic;
SIGNAL \dac|wait_cnt~15_combout\ : std_logic;
SIGNAL \dac|Add0~33\ : std_logic;
SIGNAL \dac|Add0~34_combout\ : std_logic;
SIGNAL \dac|wait_cnt~14_combout\ : std_logic;
SIGNAL \dac|Add0~35\ : std_logic;
SIGNAL \dac|Add0~36_combout\ : std_logic;
SIGNAL \dac|wait_cnt~13_combout\ : std_logic;
SIGNAL \dac|Add0~37\ : std_logic;
SIGNAL \dac|Add0~38_combout\ : std_logic;
SIGNAL \dac|wait_cnt~12_combout\ : std_logic;
SIGNAL \dac|Add0~39\ : std_logic;
SIGNAL \dac|Add0~40_combout\ : std_logic;
SIGNAL \dac|wait_cnt~11_combout\ : std_logic;
SIGNAL \dac|Add0~41\ : std_logic;
SIGNAL \dac|Add0~42_combout\ : std_logic;
SIGNAL \dac|wait_cnt~10_combout\ : std_logic;
SIGNAL \dac|Add0~43\ : std_logic;
SIGNAL \dac|Add0~44_combout\ : std_logic;
SIGNAL \dac|wait_cnt~9_combout\ : std_logic;
SIGNAL \dac|Add0~45\ : std_logic;
SIGNAL \dac|Add0~46_combout\ : std_logic;
SIGNAL \dac|wait_cnt~8_combout\ : std_logic;
SIGNAL \dac|Add0~47\ : std_logic;
SIGNAL \dac|Add0~48_combout\ : std_logic;
SIGNAL \dac|wait_cnt~7_combout\ : std_logic;
SIGNAL \dac|Add0~49\ : std_logic;
SIGNAL \dac|Add0~50_combout\ : std_logic;
SIGNAL \dac|wait_cnt~6_combout\ : std_logic;
SIGNAL \dac|Add0~51\ : std_logic;
SIGNAL \dac|Add0~52_combout\ : std_logic;
SIGNAL \dac|wait_cnt~5_combout\ : std_logic;
SIGNAL \dac|Add0~53\ : std_logic;
SIGNAL \dac|Add0~54_combout\ : std_logic;
SIGNAL \dac|wait_cnt~4_combout\ : std_logic;
SIGNAL \dac|Equal2~1_combout\ : std_logic;
SIGNAL \dac|Equal2~2_combout\ : std_logic;
SIGNAL \dac|Add0~55\ : std_logic;
SIGNAL \dac|Add0~56_combout\ : std_logic;
SIGNAL \dac|wait_cnt~3_combout\ : std_logic;
SIGNAL \dac|Add0~57\ : std_logic;
SIGNAL \dac|Add0~58_combout\ : std_logic;
SIGNAL \dac|wait_cnt~2_combout\ : std_logic;
SIGNAL \dac|Add0~59\ : std_logic;
SIGNAL \dac|Add0~60_combout\ : std_logic;
SIGNAL \dac|wait_cnt~1_combout\ : std_logic;
SIGNAL \dac|Add0~61\ : std_logic;
SIGNAL \dac|Add0~62_combout\ : std_logic;
SIGNAL \dac|wait_cnt~0_combout\ : std_logic;
SIGNAL \dac|Equal2~0_combout\ : std_logic;
SIGNAL \dac|Equal2~3_combout\ : std_logic;
SIGNAL \dac|Equal2~4_combout\ : std_logic;
SIGNAL \dac|Equal2~10_combout\ : std_logic;
SIGNAL \dac|Selector5~0_combout\ : std_logic;
SIGNAL \dac|Selector5~2_combout\ : std_logic;
SIGNAL \dac|Selector5~3_combout\ : std_logic;
SIGNAL \dac|ena~q\ : std_logic;
SIGNAL \dac|i2c_master_inst|Selector21~0_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|state.rd~q\ : std_logic;
SIGNAL \dac|i2c_master_inst|Selector0~0_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|bit_cnt[2]~4_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Selector25~0_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|state~13_combout\ : std_logic;
SIGNAL \ADC_SDAT~input_o\ : std_logic;
SIGNAL \adc|spi_driver|rx_buffer[0]~feeder_combout\ : std_logic;
SIGNAL \adc|spi_driver|ss_n~0_combout\ : std_logic;
SIGNAL \adc|spi_driver|ss_n~1_combout\ : std_logic;
SIGNAL \adc|spi_driver|rx_buffer[7]~0_combout\ : std_logic;
SIGNAL \adc|spi_driver|rx_buffer[7]~1_combout\ : std_logic;
SIGNAL \adc|spi_driver|rx_buffer[7]~2_combout\ : std_logic;
SIGNAL \adc|spi_driver|rx_data[7]~0_combout\ : std_logic;
SIGNAL \DAC_DATA[1]~feeder_combout\ : std_logic;
SIGNAL \DAC_DATA[7]~0_combout\ : std_logic;
SIGNAL \dac|data_buffer[1]~feeder_combout\ : std_logic;
SIGNAL \dac|data_buffer[7]~0_combout\ : std_logic;
SIGNAL \adc|spi_driver|rx_buffer[3]~feeder_combout\ : std_logic;
SIGNAL \adc|spi_driver|rx_buffer[4]~feeder_combout\ : std_logic;
SIGNAL \adc|spi_driver|rx_buffer[7]~feeder_combout\ : std_logic;
SIGNAL \dac|data_buffer[9]~feeder_combout\ : std_logic;
SIGNAL \dac|Selector12~0_combout\ : std_logic;
SIGNAL \dac|process_0~0_combout\ : std_logic;
SIGNAL \dac|data_wr[3]~4_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|data_tx[7]~1_combout\ : std_logic;
SIGNAL \adc|spi_driver|rx_data[0]~feeder_combout\ : std_logic;
SIGNAL \dac|data_buffer[0]~feeder_combout\ : std_logic;
SIGNAL \adc|spi_driver|rx_data[8]~feeder_combout\ : std_logic;
SIGNAL \dac|data_buffer[8]~feeder_combout\ : std_logic;
SIGNAL \dac|Selector13~0_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Mux2~2_combout\ : std_logic;
SIGNAL \adc|spi_driver|rx_buffer[10]~feeder_combout\ : std_logic;
SIGNAL \DAC_DATA[10]~feeder_combout\ : std_logic;
SIGNAL \DAC_DATA[2]~feeder_combout\ : std_logic;
SIGNAL \dac|data_buffer[2]~feeder_combout\ : std_logic;
SIGNAL \dac|Selector11~0_combout\ : std_logic;
SIGNAL \adc|spi_driver|rx_buffer[11]~feeder_combout\ : std_logic;
SIGNAL \DAC_DATA[11]~feeder_combout\ : std_logic;
SIGNAL \dac|data_buffer[11]~feeder_combout\ : std_logic;
SIGNAL \DAC_DATA[3]~feeder_combout\ : std_logic;
SIGNAL \dac|Selector10~0_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Mux2~3_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Selector23~3_combout\ : std_logic;
SIGNAL \adc|spi_driver|rx_data[4]~feeder_combout\ : std_logic;
SIGNAL \dac|data_wr[4]~2_combout\ : std_logic;
SIGNAL \dac|Selector9~0_combout\ : std_logic;
SIGNAL \adc|spi_driver|rx_data[5]~feeder_combout\ : std_logic;
SIGNAL \dac|data_wr[5]~1_combout\ : std_logic;
SIGNAL \dac|Selector8~0_combout\ : std_logic;
SIGNAL \DAC_DATA[7]~feeder_combout\ : std_logic;
SIGNAL \dac|data_wr[7]~3_combout\ : std_logic;
SIGNAL \dac|Selector6~0_combout\ : std_logic;
SIGNAL \adc|spi_driver|rx_data[6]~feeder_combout\ : std_logic;
SIGNAL \DAC_DATA[6]~feeder_combout\ : std_logic;
SIGNAL \dac|data_wr[6]~0_combout\ : std_logic;
SIGNAL \dac|Selector7~0_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Mux3~2_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Mux3~3_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Mux3~0_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Mux3~1_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Selector23~4_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Selector23~5_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Mux4~2_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Mux4~3_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Selector23~6_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Selector23~7_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Selector23~8_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Selector23~9_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Mux2~0_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Mux2~1_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Selector23~0_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Mux4~0_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Mux4~1_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Selector23~1_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Selector23~2_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Selector23~10_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|sda_int~q\ : std_logic;
SIGNAL \dac|i2c_master_inst|Selector29~0_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|scl_clk~0_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|scl_clk~q\ : std_logic;
SIGNAL \dac|i2c_master_inst|scl~1_combout\ : std_logic;
SIGNAL \adc|spi_driver|busy~1_combout\ : std_logic;
SIGNAL \adc|spi_driver|busy~q\ : std_logic;
SIGNAL \adc|spi_driver|sclk~0_combout\ : std_logic;
SIGNAL \adc|spi_driver|sclk~1_combout\ : std_logic;
SIGNAL \adc|spi_driver|sclk~2_combout\ : std_logic;
SIGNAL \adc|spi_driver|sclk~q\ : std_logic;
SIGNAL \adc|spi_driver|clk_toggles\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \adc|init_delay\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \CLOCK_ADJ|ADC_CLK\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \vclock|Div0|auto_generated|divider|divider|sel\ : std_logic_vector(593 DOWNTO 0);
SIGNAL \adc|spi_driver|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \dac|i2c_master_inst|bit_cnt\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \dac|data_wr\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \adc|spi_comm_delay\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \adc|spi_driver|clk_ratio\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \adc|spi_driver|ss_n\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vclock|Div0|auto_generated|divider|divider|StageOut\ : std_logic_vector(597 DOWNTO 0);
SIGNAL \vclock|vclk_cnt\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \adc|spi_driver|rx_buffer\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \vclock|Div0|auto_generated|divider|divider|selnose\ : std_logic_vector(701 DOWNTO 0);
SIGNAL \dac|i2c_master_inst|data_tx\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \dac|wait_cnt\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \dac|i2c_master_inst|count\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \dac|busy_prev\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \dac|data_buffer\ : std_logic_vector(15 DOWNTO 0);
SIGNAL DAC_DATA : std_logic_vector(15 DOWNTO 0);
SIGNAL \adc|spi_driver|rx_data\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \adc|spi_driver|ALT_INV_mosi~en_q\ : std_logic;
SIGNAL \adc|ALT_INV_state.initialize~reg0_q\ : std_logic;
SIGNAL \ALT_INV_RST~q\ : std_logic;
SIGNAL \dac|ALT_INV_state.ST_WR_1~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_incr <= incr;
ww_decr <= decr;
led8 <= ww_led8;
ww_ssw <= ssw;
ww_ADC_SDAT <= ADC_SDAT;
ADC_SADDR <= ww_ADC_SADDR;
ADC_CS_N <= ww_ADC_CS_N;
ADC_SCLK <= ww_ADC_SCLK;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\vclock|virt_clk~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \vclock|virt_clk~q\);

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\adc|spi_driver|ALT_INV_mosi~en_q\ <= NOT \adc|spi_driver|mosi~en_q\;
\adc|ALT_INV_state.initialize~reg0_q\ <= NOT \adc|state.initialize~reg0_q\;
\ALT_INV_RST~q\ <= NOT \RST~q\;
\dac|ALT_INV_state.ST_WR_1~q\ <= NOT \dac|state.ST_WR_1~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X34_Y34_N16
\ADC_SADDR~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \adc|spi_driver|ALT_INV_mosi~en_q\,
	devoe => ww_devoe,
	o => \ADC_SADDR~output_o\);

-- Location: IOOBUF_X53_Y22_N2
\SDA~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \dac|i2c_master_inst|Selector29~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \SDA~output_o\);

-- Location: IOOBUF_X47_Y34_N23
\SCL~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \dac|i2c_master_inst|scl~1_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \SCL~output_o\);

-- Location: IOOBUF_X38_Y34_N16
\led8[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led8[0]~output_o\);

-- Location: IOOBUF_X49_Y34_N2
\led8[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led8[1]~output_o\);

-- Location: IOOBUF_X49_Y34_N9
\led8[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led8[2]~output_o\);

-- Location: IOOBUF_X40_Y34_N2
\led8[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led8[3]~output_o\);

-- Location: IOOBUF_X0_Y25_N9
\led8[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led8[4]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\led8[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led8[5]~output_o\);

-- Location: IOOBUF_X0_Y28_N9
\led8[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led8[6]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\led8[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led8[7]~output_o\);

-- Location: IOOBUF_X34_Y34_N9
\ADC_CS_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adc|spi_driver|busy~q\,
	devoe => ww_devoe,
	o => \ADC_CS_N~output_o\);

-- Location: IOOBUF_X45_Y34_N2
\ADC_SCLK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adc|spi_driver|sclk~q\,
	devoe => ww_devoe,
	o => \ADC_SCLK~output_o\);

-- Location: IOIBUF_X27_Y0_N22
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G18
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X37_Y30_N8
\adc|spi_driver|clk_toggles[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|clk_toggles[0]~6_combout\ = \adc|spi_driver|clk_toggles\(0) $ (VCC)
-- \adc|spi_driver|clk_toggles[0]~7\ = CARRY(\adc|spi_driver|clk_toggles\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc|spi_driver|clk_toggles\(0),
	datad => VCC,
	combout => \adc|spi_driver|clk_toggles[0]~6_combout\,
	cout => \adc|spi_driver|clk_toggles[0]~7\);

-- Location: LCCOMB_X37_Y30_N12
\adc|spi_driver|clk_toggles[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|clk_toggles[2]~11_combout\ = (\adc|spi_driver|clk_toggles\(2) & (\adc|spi_driver|clk_toggles[1]~9\ $ (GND))) # (!\adc|spi_driver|clk_toggles\(2) & (!\adc|spi_driver|clk_toggles[1]~9\ & VCC))
-- \adc|spi_driver|clk_toggles[2]~12\ = CARRY((\adc|spi_driver|clk_toggles\(2) & !\adc|spi_driver|clk_toggles[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|clk_toggles\(2),
	datad => VCC,
	cin => \adc|spi_driver|clk_toggles[1]~9\,
	combout => \adc|spi_driver|clk_toggles[2]~11_combout\,
	cout => \adc|spi_driver|clk_toggles[2]~12\);

-- Location: LCCOMB_X37_Y30_N14
\adc|spi_driver|clk_toggles[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|clk_toggles[3]~13_combout\ = (\adc|spi_driver|clk_toggles\(3) & (!\adc|spi_driver|clk_toggles[2]~12\)) # (!\adc|spi_driver|clk_toggles\(3) & ((\adc|spi_driver|clk_toggles[2]~12\) # (GND)))
-- \adc|spi_driver|clk_toggles[3]~14\ = CARRY((!\adc|spi_driver|clk_toggles[2]~12\) # (!\adc|spi_driver|clk_toggles\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc|spi_driver|clk_toggles\(3),
	datad => VCC,
	cin => \adc|spi_driver|clk_toggles[2]~12\,
	combout => \adc|spi_driver|clk_toggles[3]~13_combout\,
	cout => \adc|spi_driver|clk_toggles[3]~14\);

-- Location: LCCOMB_X30_Y23_N6
\CLOCK_ADJ|ADC_CLK[6]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLOCK_ADJ|ADC_CLK[6]~26_combout\ = \CLOCK_ADJ|ADC_CLK\(6) $ (VCC)
-- \CLOCK_ADJ|ADC_CLK[6]~27\ = CARRY(\CLOCK_ADJ|ADC_CLK\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLOCK_ADJ|ADC_CLK\(6),
	datad => VCC,
	combout => \CLOCK_ADJ|ADC_CLK[6]~26_combout\,
	cout => \CLOCK_ADJ|ADC_CLK[6]~27\);

-- Location: IOIBUF_X53_Y14_N1
\decr~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_decr,
	o => \decr~input_o\);

-- Location: LCCOMB_X34_Y23_N12
\CLOCK_ADJ|prev_decr~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLOCK_ADJ|prev_decr~0_combout\ = !\decr~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \decr~input_o\,
	combout => \CLOCK_ADJ|prev_decr~0_combout\);

-- Location: IOIBUF_X0_Y16_N8
\incr~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_incr,
	o => \incr~input_o\);

-- Location: LCCOMB_X34_Y23_N14
\RST~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RST~0_combout\ = (\RST~q\) # ((!\incr~input_o\ & !\decr~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \incr~input_o\,
	datab => \RST~q\,
	datad => \decr~input_o\,
	combout => \RST~0_combout\);

-- Location: FF_X35_Y25_N1
RST : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \RST~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RST~q\);

-- Location: FF_X34_Y23_N13
\CLOCK_ADJ|prev_decr\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLOCK_ADJ|prev_decr~0_combout\,
	clrn => \ALT_INV_RST~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLOCK_ADJ|prev_decr~q\);

-- Location: LCCOMB_X34_Y23_N10
\CLOCK_ADJ|ADC_CLK[21]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLOCK_ADJ|ADC_CLK[21]~31_combout\ = (!\CLOCK_ADJ|prev_decr~q\ & (!\CLOCK_ADJ|ADC_CLK\(31) & !\decr~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|prev_decr~q\,
	datac => \CLOCK_ADJ|ADC_CLK\(31),
	datad => \decr~input_o\,
	combout => \CLOCK_ADJ|ADC_CLK[21]~31_combout\);

-- Location: LCCOMB_X30_Y22_N26
\CLOCK_ADJ|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLOCK_ADJ|process_0~1_combout\ = (!\CLOCK_ADJ|ADC_CLK\(28) & (!\CLOCK_ADJ|ADC_CLK\(29) & (!\CLOCK_ADJ|ADC_CLK\(26) & !\CLOCK_ADJ|ADC_CLK\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(28),
	datab => \CLOCK_ADJ|ADC_CLK\(29),
	datac => \CLOCK_ADJ|ADC_CLK\(26),
	datad => \CLOCK_ADJ|ADC_CLK\(27),
	combout => \CLOCK_ADJ|process_0~1_combout\);

-- Location: LCCOMB_X31_Y22_N28
\CLOCK_ADJ|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLOCK_ADJ|process_0~0_combout\ = (!\CLOCK_ADJ|ADC_CLK\(24) & (!\CLOCK_ADJ|ADC_CLK\(25) & (!\CLOCK_ADJ|ADC_CLK\(22) & !\CLOCK_ADJ|ADC_CLK\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(24),
	datab => \CLOCK_ADJ|ADC_CLK\(25),
	datac => \CLOCK_ADJ|ADC_CLK\(22),
	datad => \CLOCK_ADJ|ADC_CLK\(23),
	combout => \CLOCK_ADJ|process_0~0_combout\);

-- Location: LCCOMB_X31_Y22_N2
\CLOCK_ADJ|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLOCK_ADJ|process_0~2_combout\ = (!\CLOCK_ADJ|ADC_CLK\(30) & (\CLOCK_ADJ|process_0~1_combout\ & \CLOCK_ADJ|process_0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLOCK_ADJ|ADC_CLK\(30),
	datac => \CLOCK_ADJ|process_0~1_combout\,
	datad => \CLOCK_ADJ|process_0~0_combout\,
	combout => \CLOCK_ADJ|process_0~2_combout\);

-- Location: LCCOMB_X29_Y20_N16
\CLOCK_ADJ|LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLOCK_ADJ|LessThan1~5_combout\ = (\CLOCK_ADJ|ADC_CLK\(18) & \CLOCK_ADJ|ADC_CLK\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CLOCK_ADJ|ADC_CLK\(18),
	datad => \CLOCK_ADJ|ADC_CLK\(19),
	combout => \CLOCK_ADJ|LessThan1~5_combout\);

-- Location: LCCOMB_X34_Y23_N4
\CLOCK_ADJ|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLOCK_ADJ|LessThan1~1_combout\ = (!\CLOCK_ADJ|ADC_CLK\(21) & !\CLOCK_ADJ|ADC_CLK\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CLOCK_ADJ|ADC_CLK\(21),
	datad => \CLOCK_ADJ|ADC_CLK\(20),
	combout => \CLOCK_ADJ|LessThan1~1_combout\);

-- Location: LCCOMB_X30_Y23_N4
\CLOCK_ADJ|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLOCK_ADJ|LessThan1~0_combout\ = (!\CLOCK_ADJ|ADC_CLK\(14) & (!\CLOCK_ADJ|ADC_CLK\(15) & !\CLOCK_ADJ|ADC_CLK\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(14),
	datab => \CLOCK_ADJ|ADC_CLK\(15),
	datad => \CLOCK_ADJ|ADC_CLK\(16),
	combout => \CLOCK_ADJ|LessThan1~0_combout\);

-- Location: LCCOMB_X29_Y23_N24
\CLOCK_ADJ|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLOCK_ADJ|LessThan1~2_combout\ = (\CLOCK_ADJ|ADC_CLK\(9)) # ((\CLOCK_ADJ|ADC_CLK\(8) & ((\CLOCK_ADJ|ADC_CLK\(7)) # (\CLOCK_ADJ|ADC_CLK\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(9),
	datab => \CLOCK_ADJ|ADC_CLK\(8),
	datac => \CLOCK_ADJ|ADC_CLK\(7),
	datad => \CLOCK_ADJ|ADC_CLK\(6),
	combout => \CLOCK_ADJ|LessThan1~2_combout\);

-- Location: LCCOMB_X31_Y23_N28
\CLOCK_ADJ|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLOCK_ADJ|LessThan1~3_combout\ = (\CLOCK_ADJ|ADC_CLK\(13) & ((\CLOCK_ADJ|ADC_CLK\(11)) # ((\CLOCK_ADJ|LessThan1~2_combout\ & \CLOCK_ADJ|ADC_CLK\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|LessThan1~2_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(13),
	datac => \CLOCK_ADJ|ADC_CLK\(11),
	datad => \CLOCK_ADJ|ADC_CLK\(10),
	combout => \CLOCK_ADJ|LessThan1~3_combout\);

-- Location: LCCOMB_X31_Y23_N30
\CLOCK_ADJ|LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLOCK_ADJ|LessThan1~4_combout\ = (\CLOCK_ADJ|ADC_CLK\(17)) # (((\CLOCK_ADJ|ADC_CLK\(12) & \CLOCK_ADJ|LessThan1~3_combout\)) # (!\CLOCK_ADJ|LessThan1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(17),
	datab => \CLOCK_ADJ|LessThan1~0_combout\,
	datac => \CLOCK_ADJ|ADC_CLK\(12),
	datad => \CLOCK_ADJ|LessThan1~3_combout\,
	combout => \CLOCK_ADJ|LessThan1~4_combout\);

-- Location: LCCOMB_X34_Y23_N2
\CLOCK_ADJ|LessThan1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLOCK_ADJ|LessThan1~6_combout\ = (((\CLOCK_ADJ|LessThan1~5_combout\ & \CLOCK_ADJ|LessThan1~4_combout\)) # (!\CLOCK_ADJ|LessThan1~1_combout\)) # (!\CLOCK_ADJ|process_0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|process_0~2_combout\,
	datab => \CLOCK_ADJ|LessThan1~5_combout\,
	datac => \CLOCK_ADJ|LessThan1~1_combout\,
	datad => \CLOCK_ADJ|LessThan1~4_combout\,
	combout => \CLOCK_ADJ|LessThan1~6_combout\);

-- Location: IOIBUF_X0_Y16_N22
\ssw[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ssw(0),
	o => \ssw[0]~input_o\);

-- Location: IOIBUF_X27_Y0_N15
\ssw[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ssw(1),
	o => \ssw[1]~input_o\);

-- Location: LCCOMB_X34_Y23_N16
\CLOCK_ADJ|ADC_CLK[21]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLOCK_ADJ|ADC_CLK[21]~30_combout\ = (\ssw[0]~input_o\ & (!\RST~q\ & !\ssw[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ssw[0]~input_o\,
	datac => \RST~q\,
	datad => \ssw[1]~input_o\,
	combout => \CLOCK_ADJ|ADC_CLK[21]~30_combout\);

-- Location: LCCOMB_X34_Y23_N28
\CLOCK_ADJ|ADC_CLK[21]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLOCK_ADJ|ADC_CLK[21]~32_combout\ = (\CLOCK_ADJ|ADC_CLK[21]~30_combout\ & ((\CLOCK_ADJ|process_0~4_combout\) # ((\CLOCK_ADJ|ADC_CLK[21]~31_combout\ & \CLOCK_ADJ|LessThan1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK[21]~31_combout\,
	datab => \CLOCK_ADJ|LessThan1~6_combout\,
	datac => \CLOCK_ADJ|process_0~4_combout\,
	datad => \CLOCK_ADJ|ADC_CLK[21]~30_combout\,
	combout => \CLOCK_ADJ|ADC_CLK[21]~32_combout\);

-- Location: FF_X29_Y23_N15
\CLOCK_ADJ|ADC_CLK[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CLOCK_ADJ|ADC_CLK[6]~26_combout\,
	sload => VCC,
	ena => \CLOCK_ADJ|ADC_CLK[21]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLOCK_ADJ|ADC_CLK\(6));

-- Location: LCCOMB_X30_Y23_N8
\CLOCK_ADJ|ADC_CLK[7]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLOCK_ADJ|ADC_CLK[7]~28_combout\ = (\CLOCK_ADJ|process_0~4_combout\ & ((\CLOCK_ADJ|ADC_CLK\(7) & (!\CLOCK_ADJ|ADC_CLK[6]~27\)) # (!\CLOCK_ADJ|ADC_CLK\(7) & ((\CLOCK_ADJ|ADC_CLK[6]~27\) # (GND))))) # (!\CLOCK_ADJ|process_0~4_combout\ & 
-- ((\CLOCK_ADJ|ADC_CLK\(7) & (\CLOCK_ADJ|ADC_CLK[6]~27\ & VCC)) # (!\CLOCK_ADJ|ADC_CLK\(7) & (!\CLOCK_ADJ|ADC_CLK[6]~27\))))
-- \CLOCK_ADJ|ADC_CLK[7]~29\ = CARRY((\CLOCK_ADJ|process_0~4_combout\ & ((!\CLOCK_ADJ|ADC_CLK[6]~27\) # (!\CLOCK_ADJ|ADC_CLK\(7)))) # (!\CLOCK_ADJ|process_0~4_combout\ & (!\CLOCK_ADJ|ADC_CLK\(7) & !\CLOCK_ADJ|ADC_CLK[6]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|process_0~4_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(7),
	datad => VCC,
	cin => \CLOCK_ADJ|ADC_CLK[6]~27\,
	combout => \CLOCK_ADJ|ADC_CLK[7]~28_combout\,
	cout => \CLOCK_ADJ|ADC_CLK[7]~29\);

-- Location: LCCOMB_X30_Y23_N10
\CLOCK_ADJ|ADC_CLK[8]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLOCK_ADJ|ADC_CLK[8]~33_combout\ = ((\CLOCK_ADJ|process_0~4_combout\ $ (\CLOCK_ADJ|ADC_CLK\(8) $ (\CLOCK_ADJ|ADC_CLK[7]~29\)))) # (GND)
-- \CLOCK_ADJ|ADC_CLK[8]~34\ = CARRY((\CLOCK_ADJ|process_0~4_combout\ & (\CLOCK_ADJ|ADC_CLK\(8) & !\CLOCK_ADJ|ADC_CLK[7]~29\)) # (!\CLOCK_ADJ|process_0~4_combout\ & ((\CLOCK_ADJ|ADC_CLK\(8)) # (!\CLOCK_ADJ|ADC_CLK[7]~29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|process_0~4_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(8),
	datad => VCC,
	cin => \CLOCK_ADJ|ADC_CLK[7]~29\,
	combout => \CLOCK_ADJ|ADC_CLK[8]~33_combout\,
	cout => \CLOCK_ADJ|ADC_CLK[8]~34\);

-- Location: FF_X29_Y23_N3
\CLOCK_ADJ|ADC_CLK[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CLOCK_ADJ|ADC_CLK[8]~33_combout\,
	sload => VCC,
	ena => \CLOCK_ADJ|ADC_CLK[21]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLOCK_ADJ|ADC_CLK\(8));

-- Location: LCCOMB_X30_Y23_N12
\CLOCK_ADJ|ADC_CLK[9]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLOCK_ADJ|ADC_CLK[9]~35_combout\ = (\CLOCK_ADJ|process_0~4_combout\ & ((\CLOCK_ADJ|ADC_CLK\(9) & (\CLOCK_ADJ|ADC_CLK[8]~34\ & VCC)) # (!\CLOCK_ADJ|ADC_CLK\(9) & (!\CLOCK_ADJ|ADC_CLK[8]~34\)))) # (!\CLOCK_ADJ|process_0~4_combout\ & 
-- ((\CLOCK_ADJ|ADC_CLK\(9) & (!\CLOCK_ADJ|ADC_CLK[8]~34\)) # (!\CLOCK_ADJ|ADC_CLK\(9) & ((\CLOCK_ADJ|ADC_CLK[8]~34\) # (GND)))))
-- \CLOCK_ADJ|ADC_CLK[9]~36\ = CARRY((\CLOCK_ADJ|process_0~4_combout\ & (!\CLOCK_ADJ|ADC_CLK\(9) & !\CLOCK_ADJ|ADC_CLK[8]~34\)) # (!\CLOCK_ADJ|process_0~4_combout\ & ((!\CLOCK_ADJ|ADC_CLK[8]~34\) # (!\CLOCK_ADJ|ADC_CLK\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|process_0~4_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(9),
	datad => VCC,
	cin => \CLOCK_ADJ|ADC_CLK[8]~34\,
	combout => \CLOCK_ADJ|ADC_CLK[9]~35_combout\,
	cout => \CLOCK_ADJ|ADC_CLK[9]~36\);

-- Location: FF_X29_Y23_N9
\CLOCK_ADJ|ADC_CLK[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CLOCK_ADJ|ADC_CLK[9]~35_combout\,
	sload => VCC,
	ena => \CLOCK_ADJ|ADC_CLK[21]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLOCK_ADJ|ADC_CLK\(9));

-- Location: LCCOMB_X30_Y23_N14
\CLOCK_ADJ|ADC_CLK[10]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLOCK_ADJ|ADC_CLK[10]~37_combout\ = ((\CLOCK_ADJ|process_0~4_combout\ $ (\CLOCK_ADJ|ADC_CLK\(10) $ (\CLOCK_ADJ|ADC_CLK[9]~36\)))) # (GND)
-- \CLOCK_ADJ|ADC_CLK[10]~38\ = CARRY((\CLOCK_ADJ|process_0~4_combout\ & (\CLOCK_ADJ|ADC_CLK\(10) & !\CLOCK_ADJ|ADC_CLK[9]~36\)) # (!\CLOCK_ADJ|process_0~4_combout\ & ((\CLOCK_ADJ|ADC_CLK\(10)) # (!\CLOCK_ADJ|ADC_CLK[9]~36\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|process_0~4_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(10),
	datad => VCC,
	cin => \CLOCK_ADJ|ADC_CLK[9]~36\,
	combout => \CLOCK_ADJ|ADC_CLK[10]~37_combout\,
	cout => \CLOCK_ADJ|ADC_CLK[10]~38\);

-- Location: FF_X30_Y23_N3
\CLOCK_ADJ|ADC_CLK[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CLOCK_ADJ|ADC_CLK[10]~37_combout\,
	sload => VCC,
	ena => \CLOCK_ADJ|ADC_CLK[21]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLOCK_ADJ|ADC_CLK\(10));

-- Location: LCCOMB_X30_Y23_N16
\CLOCK_ADJ|ADC_CLK[11]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLOCK_ADJ|ADC_CLK[11]~39_combout\ = (\CLOCK_ADJ|process_0~4_combout\ & ((\CLOCK_ADJ|ADC_CLK\(11) & (!\CLOCK_ADJ|ADC_CLK[10]~38\)) # (!\CLOCK_ADJ|ADC_CLK\(11) & ((\CLOCK_ADJ|ADC_CLK[10]~38\) # (GND))))) # (!\CLOCK_ADJ|process_0~4_combout\ & 
-- ((\CLOCK_ADJ|ADC_CLK\(11) & (\CLOCK_ADJ|ADC_CLK[10]~38\ & VCC)) # (!\CLOCK_ADJ|ADC_CLK\(11) & (!\CLOCK_ADJ|ADC_CLK[10]~38\))))
-- \CLOCK_ADJ|ADC_CLK[11]~40\ = CARRY((\CLOCK_ADJ|process_0~4_combout\ & ((!\CLOCK_ADJ|ADC_CLK[10]~38\) # (!\CLOCK_ADJ|ADC_CLK\(11)))) # (!\CLOCK_ADJ|process_0~4_combout\ & (!\CLOCK_ADJ|ADC_CLK\(11) & !\CLOCK_ADJ|ADC_CLK[10]~38\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|process_0~4_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(11),
	datad => VCC,
	cin => \CLOCK_ADJ|ADC_CLK[10]~38\,
	combout => \CLOCK_ADJ|ADC_CLK[11]~39_combout\,
	cout => \CLOCK_ADJ|ADC_CLK[11]~40\);

-- Location: FF_X30_Y23_N17
\CLOCK_ADJ|ADC_CLK[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLOCK_ADJ|ADC_CLK[11]~39_combout\,
	ena => \CLOCK_ADJ|ADC_CLK[21]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLOCK_ADJ|ADC_CLK\(11));

-- Location: LCCOMB_X30_Y23_N18
\CLOCK_ADJ|ADC_CLK[12]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLOCK_ADJ|ADC_CLK[12]~41_combout\ = ((\CLOCK_ADJ|process_0~4_combout\ $ (\CLOCK_ADJ|ADC_CLK\(12) $ (\CLOCK_ADJ|ADC_CLK[11]~40\)))) # (GND)
-- \CLOCK_ADJ|ADC_CLK[12]~42\ = CARRY((\CLOCK_ADJ|process_0~4_combout\ & (\CLOCK_ADJ|ADC_CLK\(12) & !\CLOCK_ADJ|ADC_CLK[11]~40\)) # (!\CLOCK_ADJ|process_0~4_combout\ & ((\CLOCK_ADJ|ADC_CLK\(12)) # (!\CLOCK_ADJ|ADC_CLK[11]~40\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|process_0~4_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(12),
	datad => VCC,
	cin => \CLOCK_ADJ|ADC_CLK[11]~40\,
	combout => \CLOCK_ADJ|ADC_CLK[12]~41_combout\,
	cout => \CLOCK_ADJ|ADC_CLK[12]~42\);

-- Location: FF_X30_Y23_N5
\CLOCK_ADJ|ADC_CLK[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CLOCK_ADJ|ADC_CLK[12]~41_combout\,
	sload => VCC,
	ena => \CLOCK_ADJ|ADC_CLK[21]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLOCK_ADJ|ADC_CLK\(12));

-- Location: LCCOMB_X30_Y23_N20
\CLOCK_ADJ|ADC_CLK[13]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLOCK_ADJ|ADC_CLK[13]~43_combout\ = (\CLOCK_ADJ|ADC_CLK\(13) & ((\CLOCK_ADJ|process_0~4_combout\ & (!\CLOCK_ADJ|ADC_CLK[12]~42\)) # (!\CLOCK_ADJ|process_0~4_combout\ & (\CLOCK_ADJ|ADC_CLK[12]~42\ & VCC)))) # (!\CLOCK_ADJ|ADC_CLK\(13) & 
-- ((\CLOCK_ADJ|process_0~4_combout\ & ((\CLOCK_ADJ|ADC_CLK[12]~42\) # (GND))) # (!\CLOCK_ADJ|process_0~4_combout\ & (!\CLOCK_ADJ|ADC_CLK[12]~42\))))
-- \CLOCK_ADJ|ADC_CLK[13]~44\ = CARRY((\CLOCK_ADJ|ADC_CLK\(13) & (\CLOCK_ADJ|process_0~4_combout\ & !\CLOCK_ADJ|ADC_CLK[12]~42\)) # (!\CLOCK_ADJ|ADC_CLK\(13) & ((\CLOCK_ADJ|process_0~4_combout\) # (!\CLOCK_ADJ|ADC_CLK[12]~42\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(13),
	datab => \CLOCK_ADJ|process_0~4_combout\,
	datad => VCC,
	cin => \CLOCK_ADJ|ADC_CLK[12]~42\,
	combout => \CLOCK_ADJ|ADC_CLK[13]~43_combout\,
	cout => \CLOCK_ADJ|ADC_CLK[13]~44\);

-- Location: FF_X30_Y23_N21
\CLOCK_ADJ|ADC_CLK[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLOCK_ADJ|ADC_CLK[13]~43_combout\,
	ena => \CLOCK_ADJ|ADC_CLK[21]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLOCK_ADJ|ADC_CLK\(13));

-- Location: LCCOMB_X30_Y23_N22
\CLOCK_ADJ|ADC_CLK[14]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLOCK_ADJ|ADC_CLK[14]~45_combout\ = ((\CLOCK_ADJ|ADC_CLK\(14) $ (\CLOCK_ADJ|process_0~4_combout\ $ (!\CLOCK_ADJ|ADC_CLK[13]~44\)))) # (GND)
-- \CLOCK_ADJ|ADC_CLK[14]~46\ = CARRY((\CLOCK_ADJ|ADC_CLK\(14) & ((\CLOCK_ADJ|process_0~4_combout\) # (!\CLOCK_ADJ|ADC_CLK[13]~44\))) # (!\CLOCK_ADJ|ADC_CLK\(14) & (\CLOCK_ADJ|process_0~4_combout\ & !\CLOCK_ADJ|ADC_CLK[13]~44\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(14),
	datab => \CLOCK_ADJ|process_0~4_combout\,
	datad => VCC,
	cin => \CLOCK_ADJ|ADC_CLK[13]~44\,
	combout => \CLOCK_ADJ|ADC_CLK[14]~45_combout\,
	cout => \CLOCK_ADJ|ADC_CLK[14]~46\);

-- Location: FF_X30_Y23_N23
\CLOCK_ADJ|ADC_CLK[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLOCK_ADJ|ADC_CLK[14]~45_combout\,
	ena => \CLOCK_ADJ|ADC_CLK[21]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLOCK_ADJ|ADC_CLK\(14));

-- Location: LCCOMB_X30_Y23_N24
\CLOCK_ADJ|ADC_CLK[15]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLOCK_ADJ|ADC_CLK[15]~47_combout\ = (\CLOCK_ADJ|ADC_CLK\(15) & ((\CLOCK_ADJ|process_0~4_combout\ & (!\CLOCK_ADJ|ADC_CLK[14]~46\)) # (!\CLOCK_ADJ|process_0~4_combout\ & (\CLOCK_ADJ|ADC_CLK[14]~46\ & VCC)))) # (!\CLOCK_ADJ|ADC_CLK\(15) & 
-- ((\CLOCK_ADJ|process_0~4_combout\ & ((\CLOCK_ADJ|ADC_CLK[14]~46\) # (GND))) # (!\CLOCK_ADJ|process_0~4_combout\ & (!\CLOCK_ADJ|ADC_CLK[14]~46\))))
-- \CLOCK_ADJ|ADC_CLK[15]~48\ = CARRY((\CLOCK_ADJ|ADC_CLK\(15) & (\CLOCK_ADJ|process_0~4_combout\ & !\CLOCK_ADJ|ADC_CLK[14]~46\)) # (!\CLOCK_ADJ|ADC_CLK\(15) & ((\CLOCK_ADJ|process_0~4_combout\) # (!\CLOCK_ADJ|ADC_CLK[14]~46\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(15),
	datab => \CLOCK_ADJ|process_0~4_combout\,
	datad => VCC,
	cin => \CLOCK_ADJ|ADC_CLK[14]~46\,
	combout => \CLOCK_ADJ|ADC_CLK[15]~47_combout\,
	cout => \CLOCK_ADJ|ADC_CLK[15]~48\);

-- Location: FF_X30_Y23_N25
\CLOCK_ADJ|ADC_CLK[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLOCK_ADJ|ADC_CLK[15]~47_combout\,
	ena => \CLOCK_ADJ|ADC_CLK[21]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLOCK_ADJ|ADC_CLK\(15));

-- Location: LCCOMB_X30_Y23_N26
\CLOCK_ADJ|ADC_CLK[16]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLOCK_ADJ|ADC_CLK[16]~49_combout\ = ((\CLOCK_ADJ|ADC_CLK\(16) $ (\CLOCK_ADJ|process_0~4_combout\ $ (!\CLOCK_ADJ|ADC_CLK[15]~48\)))) # (GND)
-- \CLOCK_ADJ|ADC_CLK[16]~50\ = CARRY((\CLOCK_ADJ|ADC_CLK\(16) & ((\CLOCK_ADJ|process_0~4_combout\) # (!\CLOCK_ADJ|ADC_CLK[15]~48\))) # (!\CLOCK_ADJ|ADC_CLK\(16) & (\CLOCK_ADJ|process_0~4_combout\ & !\CLOCK_ADJ|ADC_CLK[15]~48\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(16),
	datab => \CLOCK_ADJ|process_0~4_combout\,
	datad => VCC,
	cin => \CLOCK_ADJ|ADC_CLK[15]~48\,
	combout => \CLOCK_ADJ|ADC_CLK[16]~49_combout\,
	cout => \CLOCK_ADJ|ADC_CLK[16]~50\);

-- Location: FF_X30_Y23_N27
\CLOCK_ADJ|ADC_CLK[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLOCK_ADJ|ADC_CLK[16]~49_combout\,
	ena => \CLOCK_ADJ|ADC_CLK[21]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLOCK_ADJ|ADC_CLK\(16));

-- Location: LCCOMB_X30_Y23_N28
\CLOCK_ADJ|ADC_CLK[17]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLOCK_ADJ|ADC_CLK[17]~51_combout\ = (\CLOCK_ADJ|ADC_CLK\(17) & ((\CLOCK_ADJ|process_0~4_combout\ & (\CLOCK_ADJ|ADC_CLK[16]~50\ & VCC)) # (!\CLOCK_ADJ|process_0~4_combout\ & (!\CLOCK_ADJ|ADC_CLK[16]~50\)))) # (!\CLOCK_ADJ|ADC_CLK\(17) & 
-- ((\CLOCK_ADJ|process_0~4_combout\ & (!\CLOCK_ADJ|ADC_CLK[16]~50\)) # (!\CLOCK_ADJ|process_0~4_combout\ & ((\CLOCK_ADJ|ADC_CLK[16]~50\) # (GND)))))
-- \CLOCK_ADJ|ADC_CLK[17]~52\ = CARRY((\CLOCK_ADJ|ADC_CLK\(17) & (!\CLOCK_ADJ|process_0~4_combout\ & !\CLOCK_ADJ|ADC_CLK[16]~50\)) # (!\CLOCK_ADJ|ADC_CLK\(17) & ((!\CLOCK_ADJ|ADC_CLK[16]~50\) # (!\CLOCK_ADJ|process_0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(17),
	datab => \CLOCK_ADJ|process_0~4_combout\,
	datad => VCC,
	cin => \CLOCK_ADJ|ADC_CLK[16]~50\,
	combout => \CLOCK_ADJ|ADC_CLK[17]~51_combout\,
	cout => \CLOCK_ADJ|ADC_CLK[17]~52\);

-- Location: FF_X30_Y23_N1
\CLOCK_ADJ|ADC_CLK[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CLOCK_ADJ|ADC_CLK[17]~51_combout\,
	sload => VCC,
	ena => \CLOCK_ADJ|ADC_CLK[21]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLOCK_ADJ|ADC_CLK\(17));

-- Location: LCCOMB_X30_Y23_N30
\CLOCK_ADJ|ADC_CLK[18]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLOCK_ADJ|ADC_CLK[18]~53_combout\ = ((\CLOCK_ADJ|ADC_CLK\(18) $ (\CLOCK_ADJ|process_0~4_combout\ $ (!\CLOCK_ADJ|ADC_CLK[17]~52\)))) # (GND)
-- \CLOCK_ADJ|ADC_CLK[18]~54\ = CARRY((\CLOCK_ADJ|ADC_CLK\(18) & ((\CLOCK_ADJ|process_0~4_combout\) # (!\CLOCK_ADJ|ADC_CLK[17]~52\))) # (!\CLOCK_ADJ|ADC_CLK\(18) & (\CLOCK_ADJ|process_0~4_combout\ & !\CLOCK_ADJ|ADC_CLK[17]~52\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(18),
	datab => \CLOCK_ADJ|process_0~4_combout\,
	datad => VCC,
	cin => \CLOCK_ADJ|ADC_CLK[17]~52\,
	combout => \CLOCK_ADJ|ADC_CLK[18]~53_combout\,
	cout => \CLOCK_ADJ|ADC_CLK[18]~54\);

-- Location: FF_X29_Y22_N9
\CLOCK_ADJ|ADC_CLK[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CLOCK_ADJ|ADC_CLK[18]~53_combout\,
	sload => VCC,
	ena => \CLOCK_ADJ|ADC_CLK[21]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLOCK_ADJ|ADC_CLK\(18));

-- Location: LCCOMB_X30_Y22_N0
\CLOCK_ADJ|ADC_CLK[19]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLOCK_ADJ|ADC_CLK[19]~55_combout\ = (\CLOCK_ADJ|ADC_CLK\(19) & ((\CLOCK_ADJ|process_0~4_combout\ & (\CLOCK_ADJ|ADC_CLK[18]~54\ & VCC)) # (!\CLOCK_ADJ|process_0~4_combout\ & (!\CLOCK_ADJ|ADC_CLK[18]~54\)))) # (!\CLOCK_ADJ|ADC_CLK\(19) & 
-- ((\CLOCK_ADJ|process_0~4_combout\ & (!\CLOCK_ADJ|ADC_CLK[18]~54\)) # (!\CLOCK_ADJ|process_0~4_combout\ & ((\CLOCK_ADJ|ADC_CLK[18]~54\) # (GND)))))
-- \CLOCK_ADJ|ADC_CLK[19]~56\ = CARRY((\CLOCK_ADJ|ADC_CLK\(19) & (!\CLOCK_ADJ|process_0~4_combout\ & !\CLOCK_ADJ|ADC_CLK[18]~54\)) # (!\CLOCK_ADJ|ADC_CLK\(19) & ((!\CLOCK_ADJ|ADC_CLK[18]~54\) # (!\CLOCK_ADJ|process_0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(19),
	datab => \CLOCK_ADJ|process_0~4_combout\,
	datad => VCC,
	cin => \CLOCK_ADJ|ADC_CLK[18]~54\,
	combout => \CLOCK_ADJ|ADC_CLK[19]~55_combout\,
	cout => \CLOCK_ADJ|ADC_CLK[19]~56\);

-- Location: FF_X30_Y22_N31
\CLOCK_ADJ|ADC_CLK[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CLOCK_ADJ|ADC_CLK[19]~55_combout\,
	sload => VCC,
	ena => \CLOCK_ADJ|ADC_CLK[21]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLOCK_ADJ|ADC_CLK\(19));

-- Location: LCCOMB_X30_Y22_N2
\CLOCK_ADJ|ADC_CLK[20]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLOCK_ADJ|ADC_CLK[20]~57_combout\ = ((\CLOCK_ADJ|ADC_CLK\(20) $ (\CLOCK_ADJ|process_0~4_combout\ $ (\CLOCK_ADJ|ADC_CLK[19]~56\)))) # (GND)
-- \CLOCK_ADJ|ADC_CLK[20]~58\ = CARRY((\CLOCK_ADJ|ADC_CLK\(20) & ((!\CLOCK_ADJ|ADC_CLK[19]~56\) # (!\CLOCK_ADJ|process_0~4_combout\))) # (!\CLOCK_ADJ|ADC_CLK\(20) & (!\CLOCK_ADJ|process_0~4_combout\ & !\CLOCK_ADJ|ADC_CLK[19]~56\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(20),
	datab => \CLOCK_ADJ|process_0~4_combout\,
	datad => VCC,
	cin => \CLOCK_ADJ|ADC_CLK[19]~56\,
	combout => \CLOCK_ADJ|ADC_CLK[20]~57_combout\,
	cout => \CLOCK_ADJ|ADC_CLK[20]~58\);

-- Location: FF_X30_Y22_N3
\CLOCK_ADJ|ADC_CLK[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLOCK_ADJ|ADC_CLK[20]~57_combout\,
	ena => \CLOCK_ADJ|ADC_CLK[21]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLOCK_ADJ|ADC_CLK\(20));

-- Location: LCCOMB_X30_Y22_N4
\CLOCK_ADJ|ADC_CLK[21]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLOCK_ADJ|ADC_CLK[21]~59_combout\ = (\CLOCK_ADJ|process_0~4_combout\ & ((\CLOCK_ADJ|ADC_CLK\(21) & (!\CLOCK_ADJ|ADC_CLK[20]~58\)) # (!\CLOCK_ADJ|ADC_CLK\(21) & ((\CLOCK_ADJ|ADC_CLK[20]~58\) # (GND))))) # (!\CLOCK_ADJ|process_0~4_combout\ & 
-- ((\CLOCK_ADJ|ADC_CLK\(21) & (\CLOCK_ADJ|ADC_CLK[20]~58\ & VCC)) # (!\CLOCK_ADJ|ADC_CLK\(21) & (!\CLOCK_ADJ|ADC_CLK[20]~58\))))
-- \CLOCK_ADJ|ADC_CLK[21]~60\ = CARRY((\CLOCK_ADJ|process_0~4_combout\ & ((!\CLOCK_ADJ|ADC_CLK[20]~58\) # (!\CLOCK_ADJ|ADC_CLK\(21)))) # (!\CLOCK_ADJ|process_0~4_combout\ & (!\CLOCK_ADJ|ADC_CLK\(21) & !\CLOCK_ADJ|ADC_CLK[20]~58\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|process_0~4_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(21),
	datad => VCC,
	cin => \CLOCK_ADJ|ADC_CLK[20]~58\,
	combout => \CLOCK_ADJ|ADC_CLK[21]~59_combout\,
	cout => \CLOCK_ADJ|ADC_CLK[21]~60\);

-- Location: FF_X30_Y22_N5
\CLOCK_ADJ|ADC_CLK[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLOCK_ADJ|ADC_CLK[21]~59_combout\,
	ena => \CLOCK_ADJ|ADC_CLK[21]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLOCK_ADJ|ADC_CLK\(21));

-- Location: LCCOMB_X30_Y22_N6
\CLOCK_ADJ|ADC_CLK[22]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLOCK_ADJ|ADC_CLK[22]~61_combout\ = ((\CLOCK_ADJ|ADC_CLK\(22) $ (\CLOCK_ADJ|process_0~4_combout\ $ (\CLOCK_ADJ|ADC_CLK[21]~60\)))) # (GND)
-- \CLOCK_ADJ|ADC_CLK[22]~62\ = CARRY((\CLOCK_ADJ|ADC_CLK\(22) & ((!\CLOCK_ADJ|ADC_CLK[21]~60\) # (!\CLOCK_ADJ|process_0~4_combout\))) # (!\CLOCK_ADJ|ADC_CLK\(22) & (!\CLOCK_ADJ|process_0~4_combout\ & !\CLOCK_ADJ|ADC_CLK[21]~60\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(22),
	datab => \CLOCK_ADJ|process_0~4_combout\,
	datad => VCC,
	cin => \CLOCK_ADJ|ADC_CLK[21]~60\,
	combout => \CLOCK_ADJ|ADC_CLK[22]~61_combout\,
	cout => \CLOCK_ADJ|ADC_CLK[22]~62\);

-- Location: FF_X30_Y22_N7
\CLOCK_ADJ|ADC_CLK[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLOCK_ADJ|ADC_CLK[22]~61_combout\,
	ena => \CLOCK_ADJ|ADC_CLK[21]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLOCK_ADJ|ADC_CLK\(22));

-- Location: LCCOMB_X30_Y22_N8
\CLOCK_ADJ|ADC_CLK[23]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLOCK_ADJ|ADC_CLK[23]~63_combout\ = (\CLOCK_ADJ|process_0~4_combout\ & ((\CLOCK_ADJ|ADC_CLK\(23) & (!\CLOCK_ADJ|ADC_CLK[22]~62\)) # (!\CLOCK_ADJ|ADC_CLK\(23) & ((\CLOCK_ADJ|ADC_CLK[22]~62\) # (GND))))) # (!\CLOCK_ADJ|process_0~4_combout\ & 
-- ((\CLOCK_ADJ|ADC_CLK\(23) & (\CLOCK_ADJ|ADC_CLK[22]~62\ & VCC)) # (!\CLOCK_ADJ|ADC_CLK\(23) & (!\CLOCK_ADJ|ADC_CLK[22]~62\))))
-- \CLOCK_ADJ|ADC_CLK[23]~64\ = CARRY((\CLOCK_ADJ|process_0~4_combout\ & ((!\CLOCK_ADJ|ADC_CLK[22]~62\) # (!\CLOCK_ADJ|ADC_CLK\(23)))) # (!\CLOCK_ADJ|process_0~4_combout\ & (!\CLOCK_ADJ|ADC_CLK\(23) & !\CLOCK_ADJ|ADC_CLK[22]~62\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|process_0~4_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(23),
	datad => VCC,
	cin => \CLOCK_ADJ|ADC_CLK[22]~62\,
	combout => \CLOCK_ADJ|ADC_CLK[23]~63_combout\,
	cout => \CLOCK_ADJ|ADC_CLK[23]~64\);

-- Location: FF_X30_Y22_N9
\CLOCK_ADJ|ADC_CLK[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLOCK_ADJ|ADC_CLK[23]~63_combout\,
	ena => \CLOCK_ADJ|ADC_CLK[21]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLOCK_ADJ|ADC_CLK\(23));

-- Location: LCCOMB_X30_Y22_N10
\CLOCK_ADJ|ADC_CLK[24]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLOCK_ADJ|ADC_CLK[24]~65_combout\ = ((\CLOCK_ADJ|process_0~4_combout\ $ (\CLOCK_ADJ|ADC_CLK\(24) $ (\CLOCK_ADJ|ADC_CLK[23]~64\)))) # (GND)
-- \CLOCK_ADJ|ADC_CLK[24]~66\ = CARRY((\CLOCK_ADJ|process_0~4_combout\ & (\CLOCK_ADJ|ADC_CLK\(24) & !\CLOCK_ADJ|ADC_CLK[23]~64\)) # (!\CLOCK_ADJ|process_0~4_combout\ & ((\CLOCK_ADJ|ADC_CLK\(24)) # (!\CLOCK_ADJ|ADC_CLK[23]~64\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|process_0~4_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(24),
	datad => VCC,
	cin => \CLOCK_ADJ|ADC_CLK[23]~64\,
	combout => \CLOCK_ADJ|ADC_CLK[24]~65_combout\,
	cout => \CLOCK_ADJ|ADC_CLK[24]~66\);

-- Location: FF_X30_Y22_N11
\CLOCK_ADJ|ADC_CLK[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLOCK_ADJ|ADC_CLK[24]~65_combout\,
	ena => \CLOCK_ADJ|ADC_CLK[21]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLOCK_ADJ|ADC_CLK\(24));

-- Location: LCCOMB_X30_Y22_N12
\CLOCK_ADJ|ADC_CLK[25]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLOCK_ADJ|ADC_CLK[25]~67_combout\ = (\CLOCK_ADJ|process_0~4_combout\ & ((\CLOCK_ADJ|ADC_CLK\(25) & (!\CLOCK_ADJ|ADC_CLK[24]~66\)) # (!\CLOCK_ADJ|ADC_CLK\(25) & ((\CLOCK_ADJ|ADC_CLK[24]~66\) # (GND))))) # (!\CLOCK_ADJ|process_0~4_combout\ & 
-- ((\CLOCK_ADJ|ADC_CLK\(25) & (\CLOCK_ADJ|ADC_CLK[24]~66\ & VCC)) # (!\CLOCK_ADJ|ADC_CLK\(25) & (!\CLOCK_ADJ|ADC_CLK[24]~66\))))
-- \CLOCK_ADJ|ADC_CLK[25]~68\ = CARRY((\CLOCK_ADJ|process_0~4_combout\ & ((!\CLOCK_ADJ|ADC_CLK[24]~66\) # (!\CLOCK_ADJ|ADC_CLK\(25)))) # (!\CLOCK_ADJ|process_0~4_combout\ & (!\CLOCK_ADJ|ADC_CLK\(25) & !\CLOCK_ADJ|ADC_CLK[24]~66\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|process_0~4_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(25),
	datad => VCC,
	cin => \CLOCK_ADJ|ADC_CLK[24]~66\,
	combout => \CLOCK_ADJ|ADC_CLK[25]~67_combout\,
	cout => \CLOCK_ADJ|ADC_CLK[25]~68\);

-- Location: FF_X30_Y22_N13
\CLOCK_ADJ|ADC_CLK[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLOCK_ADJ|ADC_CLK[25]~67_combout\,
	ena => \CLOCK_ADJ|ADC_CLK[21]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLOCK_ADJ|ADC_CLK\(25));

-- Location: LCCOMB_X30_Y22_N14
\CLOCK_ADJ|ADC_CLK[26]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLOCK_ADJ|ADC_CLK[26]~69_combout\ = ((\CLOCK_ADJ|ADC_CLK\(26) $ (\CLOCK_ADJ|process_0~4_combout\ $ (\CLOCK_ADJ|ADC_CLK[25]~68\)))) # (GND)
-- \CLOCK_ADJ|ADC_CLK[26]~70\ = CARRY((\CLOCK_ADJ|ADC_CLK\(26) & ((!\CLOCK_ADJ|ADC_CLK[25]~68\) # (!\CLOCK_ADJ|process_0~4_combout\))) # (!\CLOCK_ADJ|ADC_CLK\(26) & (!\CLOCK_ADJ|process_0~4_combout\ & !\CLOCK_ADJ|ADC_CLK[25]~68\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(26),
	datab => \CLOCK_ADJ|process_0~4_combout\,
	datad => VCC,
	cin => \CLOCK_ADJ|ADC_CLK[25]~68\,
	combout => \CLOCK_ADJ|ADC_CLK[26]~69_combout\,
	cout => \CLOCK_ADJ|ADC_CLK[26]~70\);

-- Location: FF_X30_Y22_N15
\CLOCK_ADJ|ADC_CLK[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLOCK_ADJ|ADC_CLK[26]~69_combout\,
	ena => \CLOCK_ADJ|ADC_CLK[21]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLOCK_ADJ|ADC_CLK\(26));

-- Location: LCCOMB_X30_Y22_N16
\CLOCK_ADJ|ADC_CLK[27]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLOCK_ADJ|ADC_CLK[27]~71_combout\ = (\CLOCK_ADJ|ADC_CLK\(27) & ((\CLOCK_ADJ|process_0~4_combout\ & (!\CLOCK_ADJ|ADC_CLK[26]~70\)) # (!\CLOCK_ADJ|process_0~4_combout\ & (\CLOCK_ADJ|ADC_CLK[26]~70\ & VCC)))) # (!\CLOCK_ADJ|ADC_CLK\(27) & 
-- ((\CLOCK_ADJ|process_0~4_combout\ & ((\CLOCK_ADJ|ADC_CLK[26]~70\) # (GND))) # (!\CLOCK_ADJ|process_0~4_combout\ & (!\CLOCK_ADJ|ADC_CLK[26]~70\))))
-- \CLOCK_ADJ|ADC_CLK[27]~72\ = CARRY((\CLOCK_ADJ|ADC_CLK\(27) & (\CLOCK_ADJ|process_0~4_combout\ & !\CLOCK_ADJ|ADC_CLK[26]~70\)) # (!\CLOCK_ADJ|ADC_CLK\(27) & ((\CLOCK_ADJ|process_0~4_combout\) # (!\CLOCK_ADJ|ADC_CLK[26]~70\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(27),
	datab => \CLOCK_ADJ|process_0~4_combout\,
	datad => VCC,
	cin => \CLOCK_ADJ|ADC_CLK[26]~70\,
	combout => \CLOCK_ADJ|ADC_CLK[27]~71_combout\,
	cout => \CLOCK_ADJ|ADC_CLK[27]~72\);

-- Location: FF_X30_Y22_N17
\CLOCK_ADJ|ADC_CLK[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLOCK_ADJ|ADC_CLK[27]~71_combout\,
	ena => \CLOCK_ADJ|ADC_CLK[21]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLOCK_ADJ|ADC_CLK\(27));

-- Location: LCCOMB_X30_Y22_N18
\CLOCK_ADJ|ADC_CLK[28]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLOCK_ADJ|ADC_CLK[28]~73_combout\ = ((\CLOCK_ADJ|ADC_CLK\(28) $ (\CLOCK_ADJ|process_0~4_combout\ $ (\CLOCK_ADJ|ADC_CLK[27]~72\)))) # (GND)
-- \CLOCK_ADJ|ADC_CLK[28]~74\ = CARRY((\CLOCK_ADJ|ADC_CLK\(28) & ((!\CLOCK_ADJ|ADC_CLK[27]~72\) # (!\CLOCK_ADJ|process_0~4_combout\))) # (!\CLOCK_ADJ|ADC_CLK\(28) & (!\CLOCK_ADJ|process_0~4_combout\ & !\CLOCK_ADJ|ADC_CLK[27]~72\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(28),
	datab => \CLOCK_ADJ|process_0~4_combout\,
	datad => VCC,
	cin => \CLOCK_ADJ|ADC_CLK[27]~72\,
	combout => \CLOCK_ADJ|ADC_CLK[28]~73_combout\,
	cout => \CLOCK_ADJ|ADC_CLK[28]~74\);

-- Location: FF_X30_Y22_N19
\CLOCK_ADJ|ADC_CLK[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLOCK_ADJ|ADC_CLK[28]~73_combout\,
	ena => \CLOCK_ADJ|ADC_CLK[21]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLOCK_ADJ|ADC_CLK\(28));

-- Location: LCCOMB_X30_Y22_N20
\CLOCK_ADJ|ADC_CLK[29]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLOCK_ADJ|ADC_CLK[29]~75_combout\ = (\CLOCK_ADJ|process_0~4_combout\ & ((\CLOCK_ADJ|ADC_CLK\(29) & (!\CLOCK_ADJ|ADC_CLK[28]~74\)) # (!\CLOCK_ADJ|ADC_CLK\(29) & ((\CLOCK_ADJ|ADC_CLK[28]~74\) # (GND))))) # (!\CLOCK_ADJ|process_0~4_combout\ & 
-- ((\CLOCK_ADJ|ADC_CLK\(29) & (\CLOCK_ADJ|ADC_CLK[28]~74\ & VCC)) # (!\CLOCK_ADJ|ADC_CLK\(29) & (!\CLOCK_ADJ|ADC_CLK[28]~74\))))
-- \CLOCK_ADJ|ADC_CLK[29]~76\ = CARRY((\CLOCK_ADJ|process_0~4_combout\ & ((!\CLOCK_ADJ|ADC_CLK[28]~74\) # (!\CLOCK_ADJ|ADC_CLK\(29)))) # (!\CLOCK_ADJ|process_0~4_combout\ & (!\CLOCK_ADJ|ADC_CLK\(29) & !\CLOCK_ADJ|ADC_CLK[28]~74\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|process_0~4_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(29),
	datad => VCC,
	cin => \CLOCK_ADJ|ADC_CLK[28]~74\,
	combout => \CLOCK_ADJ|ADC_CLK[29]~75_combout\,
	cout => \CLOCK_ADJ|ADC_CLK[29]~76\);

-- Location: FF_X30_Y22_N21
\CLOCK_ADJ|ADC_CLK[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLOCK_ADJ|ADC_CLK[29]~75_combout\,
	ena => \CLOCK_ADJ|ADC_CLK[21]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLOCK_ADJ|ADC_CLK\(29));

-- Location: LCCOMB_X30_Y22_N22
\CLOCK_ADJ|ADC_CLK[30]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLOCK_ADJ|ADC_CLK[30]~77_combout\ = ((\CLOCK_ADJ|process_0~4_combout\ $ (\CLOCK_ADJ|ADC_CLK\(30) $ (\CLOCK_ADJ|ADC_CLK[29]~76\)))) # (GND)
-- \CLOCK_ADJ|ADC_CLK[30]~78\ = CARRY((\CLOCK_ADJ|process_0~4_combout\ & (\CLOCK_ADJ|ADC_CLK\(30) & !\CLOCK_ADJ|ADC_CLK[29]~76\)) # (!\CLOCK_ADJ|process_0~4_combout\ & ((\CLOCK_ADJ|ADC_CLK\(30)) # (!\CLOCK_ADJ|ADC_CLK[29]~76\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|process_0~4_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(30),
	datad => VCC,
	cin => \CLOCK_ADJ|ADC_CLK[29]~76\,
	combout => \CLOCK_ADJ|ADC_CLK[30]~77_combout\,
	cout => \CLOCK_ADJ|ADC_CLK[30]~78\);

-- Location: FF_X30_Y22_N23
\CLOCK_ADJ|ADC_CLK[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLOCK_ADJ|ADC_CLK[30]~77_combout\,
	ena => \CLOCK_ADJ|ADC_CLK[21]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLOCK_ADJ|ADC_CLK\(30));

-- Location: LCCOMB_X30_Y22_N24
\CLOCK_ADJ|ADC_CLK[31]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLOCK_ADJ|ADC_CLK[31]~79_combout\ = \CLOCK_ADJ|process_0~4_combout\ $ (\CLOCK_ADJ|ADC_CLK\(31) $ (!\CLOCK_ADJ|ADC_CLK[30]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|process_0~4_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(31),
	cin => \CLOCK_ADJ|ADC_CLK[30]~78\,
	combout => \CLOCK_ADJ|ADC_CLK[31]~79_combout\);

-- Location: FF_X30_Y22_N25
\CLOCK_ADJ|ADC_CLK[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLOCK_ADJ|ADC_CLK[31]~79_combout\,
	ena => \CLOCK_ADJ|ADC_CLK[21]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLOCK_ADJ|ADC_CLK\(31));

-- Location: LCCOMB_X34_Y23_N24
\CLOCK_ADJ|prev_incr~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLOCK_ADJ|prev_incr~0_combout\ = !\incr~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \incr~input_o\,
	combout => \CLOCK_ADJ|prev_incr~0_combout\);

-- Location: FF_X34_Y23_N25
\CLOCK_ADJ|prev_incr\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLOCK_ADJ|prev_incr~0_combout\,
	clrn => \ALT_INV_RST~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLOCK_ADJ|prev_incr~q\);

-- Location: LCCOMB_X29_Y20_N6
\CLOCK_ADJ|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLOCK_ADJ|LessThan0~0_combout\ = (!\CLOCK_ADJ|ADC_CLK\(17) & (!\CLOCK_ADJ|ADC_CLK\(16) & (!\CLOCK_ADJ|ADC_CLK\(18) & !\CLOCK_ADJ|ADC_CLK\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(17),
	datab => \CLOCK_ADJ|ADC_CLK\(16),
	datac => \CLOCK_ADJ|ADC_CLK\(18),
	datad => \CLOCK_ADJ|ADC_CLK\(19),
	combout => \CLOCK_ADJ|LessThan0~0_combout\);

-- Location: LCCOMB_X29_Y20_N28
\CLOCK_ADJ|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLOCK_ADJ|LessThan0~1_combout\ = (!\CLOCK_ADJ|ADC_CLK\(13) & (((!\CLOCK_ADJ|ADC_CLK\(11) & !\CLOCK_ADJ|ADC_CLK\(10))) # (!\CLOCK_ADJ|ADC_CLK\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(12),
	datab => \CLOCK_ADJ|ADC_CLK\(11),
	datac => \CLOCK_ADJ|ADC_CLK\(13),
	datad => \CLOCK_ADJ|ADC_CLK\(10),
	combout => \CLOCK_ADJ|LessThan0~1_combout\);

-- Location: LCCOMB_X29_Y20_N18
\CLOCK_ADJ|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLOCK_ADJ|LessThan0~2_combout\ = (\CLOCK_ADJ|LessThan0~0_combout\ & (((\CLOCK_ADJ|LessThan0~1_combout\) # (!\CLOCK_ADJ|ADC_CLK\(14))) # (!\CLOCK_ADJ|ADC_CLK\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|LessThan0~0_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(15),
	datac => \CLOCK_ADJ|ADC_CLK\(14),
	datad => \CLOCK_ADJ|LessThan0~1_combout\,
	combout => \CLOCK_ADJ|LessThan0~2_combout\);

-- Location: LCCOMB_X34_Y23_N18
\CLOCK_ADJ|process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLOCK_ADJ|process_0~3_combout\ = (\CLOCK_ADJ|process_0~2_combout\ & (((\CLOCK_ADJ|LessThan0~2_combout\) # (!\CLOCK_ADJ|ADC_CLK\(21))) # (!\CLOCK_ADJ|ADC_CLK\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(20),
	datab => \CLOCK_ADJ|LessThan0~2_combout\,
	datac => \CLOCK_ADJ|ADC_CLK\(21),
	datad => \CLOCK_ADJ|process_0~2_combout\,
	combout => \CLOCK_ADJ|process_0~3_combout\);

-- Location: LCCOMB_X34_Y23_N30
\CLOCK_ADJ|process_0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLOCK_ADJ|process_0~4_combout\ = (!\CLOCK_ADJ|prev_incr~q\ & (!\incr~input_o\ & ((\CLOCK_ADJ|ADC_CLK\(31)) # (\CLOCK_ADJ|process_0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(31),
	datab => \CLOCK_ADJ|prev_incr~q\,
	datac => \incr~input_o\,
	datad => \CLOCK_ADJ|process_0~3_combout\,
	combout => \CLOCK_ADJ|process_0~4_combout\);

-- Location: FF_X29_Y23_N25
\CLOCK_ADJ|ADC_CLK[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CLOCK_ADJ|ADC_CLK[7]~28_combout\,
	sload => VCC,
	ena => \CLOCK_ADJ|ADC_CLK[21]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLOCK_ADJ|ADC_CLK\(7));

-- Location: LCCOMB_X30_Y22_N28
\vclock|Div0|auto_generated|divider|divider|selnose[459]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|selnose[459]~0_combout\ = (!\CLOCK_ADJ|ADC_CLK\(19) & (!\CLOCK_ADJ|ADC_CLK\(20) & (!\CLOCK_ADJ|ADC_CLK\(21) & !\CLOCK_ADJ|ADC_CLK\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(19),
	datab => \CLOCK_ADJ|ADC_CLK\(20),
	datac => \CLOCK_ADJ|ADC_CLK\(21),
	datad => \CLOCK_ADJ|ADC_CLK\(18),
	combout => \vclock|Div0|auto_generated|divider|divider|selnose[459]~0_combout\);

-- Location: LCCOMB_X30_Y23_N0
\vclock|Div0|auto_generated|divider|divider|selnose[324]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|selnose[324]~1_combout\ = (!\CLOCK_ADJ|ADC_CLK\(13) & (\CLOCK_ADJ|LessThan1~0_combout\ & (!\CLOCK_ADJ|ADC_CLK\(17) & \vclock|Div0|auto_generated|divider|divider|selnose[459]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(13),
	datab => \CLOCK_ADJ|LessThan1~0_combout\,
	datac => \CLOCK_ADJ|ADC_CLK\(17),
	datad => \vclock|Div0|auto_generated|divider|divider|selnose[459]~0_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|selnose[324]~1_combout\);

-- Location: LCCOMB_X30_Y23_N2
\vclock|Div0|auto_generated|divider|divider|selnose[243]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|selnose[243]~2_combout\ = (!\CLOCK_ADJ|ADC_CLK\(12) & (!\CLOCK_ADJ|ADC_CLK\(11) & (!\CLOCK_ADJ|ADC_CLK\(10) & \vclock|Div0|auto_generated|divider|divider|selnose[324]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(12),
	datab => \CLOCK_ADJ|ADC_CLK\(11),
	datac => \CLOCK_ADJ|ADC_CLK\(10),
	datad => \vclock|Div0|auto_generated|divider|divider|selnose[324]~1_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|selnose[243]~2_combout\);

-- Location: LCCOMB_X29_Y23_N0
\vclock|Div0|auto_generated|divider|divider|sel[138]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|sel[138]~0_combout\ = (!\CLOCK_ADJ|ADC_CLK\(9) & (!\CLOCK_ADJ|ADC_CLK\(8) & \vclock|Div0|auto_generated|divider|divider|selnose[243]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLOCK_ADJ|ADC_CLK\(9),
	datac => \CLOCK_ADJ|ADC_CLK\(8),
	datad => \vclock|Div0|auto_generated|divider|divider|selnose[243]~2_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|sel[138]~0_combout\);

-- Location: LCCOMB_X29_Y23_N6
\vclock|Div0|auto_generated|divider|divider|StageOut[144]\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut\(144) = (\CLOCK_ADJ|ADC_CLK\(7)) # ((!\vclock|Div0|auto_generated|divider|divider|sel[138]~0_combout\) # (!\CLOCK_ADJ|ADC_CLK\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLOCK_ADJ|ADC_CLK\(7),
	datac => \CLOCK_ADJ|ADC_CLK\(6),
	datad => \vclock|Div0|auto_generated|divider|divider|sel[138]~0_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut\(144));

-- Location: LCCOMB_X29_Y23_N18
\vclock|Div0|auto_generated|divider|divider|op_22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_22~1_cout\ = CARRY(!\CLOCK_ADJ|ADC_CLK\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLOCK_ADJ|ADC_CLK\(6),
	datad => VCC,
	cout => \vclock|Div0|auto_generated|divider|divider|op_22~1_cout\);

-- Location: LCCOMB_X29_Y23_N20
\vclock|Div0|auto_generated|divider|divider|op_22~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_22~2_combout\ = (\vclock|Div0|auto_generated|divider|divider|StageOut\(144) & ((\CLOCK_ADJ|ADC_CLK\(7) & (!\vclock|Div0|auto_generated|divider|divider|op_22~1_cout\)) # (!\CLOCK_ADJ|ADC_CLK\(7) & 
-- (\vclock|Div0|auto_generated|divider|divider|op_22~1_cout\ & VCC)))) # (!\vclock|Div0|auto_generated|divider|divider|StageOut\(144) & ((\CLOCK_ADJ|ADC_CLK\(7) & ((\vclock|Div0|auto_generated|divider|divider|op_22~1_cout\) # (GND))) # 
-- (!\CLOCK_ADJ|ADC_CLK\(7) & (!\vclock|Div0|auto_generated|divider|divider|op_22~1_cout\))))
-- \vclock|Div0|auto_generated|divider|divider|op_22~3\ = CARRY((\vclock|Div0|auto_generated|divider|divider|StageOut\(144) & (\CLOCK_ADJ|ADC_CLK\(7) & !\vclock|Div0|auto_generated|divider|divider|op_22~1_cout\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut\(144) & ((\CLOCK_ADJ|ADC_CLK\(7)) # (!\vclock|Div0|auto_generated|divider|divider|op_22~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut\(144),
	datab => \CLOCK_ADJ|ADC_CLK\(7),
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_22~1_cout\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_22~2_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_22~3\);

-- Location: LCCOMB_X29_Y23_N22
\vclock|Div0|auto_generated|divider|divider|op_22~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_22~4_combout\ = \vclock|Div0|auto_generated|divider|divider|op_22~3\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \vclock|Div0|auto_generated|divider|divider|op_22~3\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_22~4_combout\);

-- Location: LCCOMB_X29_Y23_N12
\vclock|Div0|auto_generated|divider|divider|StageOut[168]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[168]~8_combout\ = (\vclock|Div0|auto_generated|divider|divider|sel[138]~0_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_22~4_combout\ & 
-- (\vclock|Div0|auto_generated|divider|divider|StageOut\(144))) # (!\vclock|Div0|auto_generated|divider|divider|op_22~4_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_22~2_combout\))))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|sel[138]~0_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut\(144)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut\(144),
	datab => \vclock|Div0|auto_generated|divider|divider|sel[138]~0_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|op_22~4_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_22~2_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[168]~8_combout\);

-- Location: LCCOMB_X29_Y23_N10
\vclock|Div0|auto_generated|divider|divider|StageOut[167]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[167]~9_combout\ = (\CLOCK_ADJ|ADC_CLK\(6) & (!\vclock|Div0|auto_generated|divider|divider|op_22~4_combout\ & \vclock|Div0|auto_generated|divider|divider|sel[138]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLOCK_ADJ|ADC_CLK\(6),
	datac => \vclock|Div0|auto_generated|divider|divider|op_22~4_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|sel[138]~0_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[167]~9_combout\);

-- Location: LCCOMB_X29_Y23_N26
\vclock|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~0_combout\ = (\vclock|Div0|auto_generated|divider|divider|StageOut[167]~9_combout\ & ((GND) # (!\CLOCK_ADJ|ADC_CLK\(7)))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[167]~9_combout\ & (\CLOCK_ADJ|ADC_CLK\(7) $ (GND)))
-- \vclock|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~1\ = CARRY((\vclock|Div0|auto_generated|divider|divider|StageOut[167]~9_combout\) # (!\CLOCK_ADJ|ADC_CLK\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[167]~9_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(7),
	datad => VCC,
	combout => \vclock|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~0_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~1\);

-- Location: LCCOMB_X29_Y23_N28
\vclock|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~2_combout\ = (\vclock|Div0|auto_generated|divider|divider|StageOut[168]~8_combout\ & ((\CLOCK_ADJ|ADC_CLK\(8) & (!\vclock|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~1\)) 
-- # (!\CLOCK_ADJ|ADC_CLK\(8) & (\vclock|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~1\ & VCC)))) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[168]~8_combout\ & ((\CLOCK_ADJ|ADC_CLK\(8) & 
-- ((\vclock|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~1\) # (GND))) # (!\CLOCK_ADJ|ADC_CLK\(8) & (!\vclock|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~1\))))
-- \vclock|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~3\ = CARRY((\vclock|Div0|auto_generated|divider|divider|StageOut[168]~8_combout\ & (\CLOCK_ADJ|ADC_CLK\(8) & !\vclock|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~1\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[168]~8_combout\ & ((\CLOCK_ADJ|ADC_CLK\(8)) # (!\vclock|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[168]~8_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(8),
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~1\,
	combout => \vclock|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~2_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~3\);

-- Location: LCCOMB_X29_Y23_N30
\vclock|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~4_combout\ = \vclock|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~3\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \vclock|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~3\,
	combout => \vclock|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~4_combout\);

-- Location: LCCOMB_X29_Y23_N2
\vclock|Div0|auto_generated|divider|divider|selnose[216]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|selnose[216]~3_combout\ = (!\CLOCK_ADJ|ADC_CLK\(9) & \vclock|Div0|auto_generated|divider|divider|selnose[243]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLOCK_ADJ|ADC_CLK\(9),
	datad => \vclock|Div0|auto_generated|divider|divider|selnose[243]~2_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|selnose[216]~3_combout\);

-- Location: LCCOMB_X29_Y23_N4
\vclock|Div0|auto_generated|divider|divider|StageOut[192]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[192]~10_combout\ = (\vclock|Div0|auto_generated|divider|divider|selnose[216]~3_combout\ & ((\vclock|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~4_combout\ & 
-- (\vclock|Div0|auto_generated|divider|divider|StageOut[168]~8_combout\)) # (!\vclock|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~4_combout\ & ((\vclock|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~2_combout\))))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|selnose[216]~3_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut[168]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[168]~8_combout\,
	datab => \vclock|Div0|auto_generated|divider|divider|selnose[216]~3_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~4_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~2_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[192]~10_combout\);

-- Location: LCCOMB_X29_Y23_N16
\vclock|Div0|auto_generated|divider|divider|StageOut[191]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[191]~11_combout\ = (\vclock|Div0|auto_generated|divider|divider|selnose[216]~3_combout\ & ((\vclock|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~4_combout\ & 
-- ((\vclock|Div0|auto_generated|divider|divider|StageOut[167]~9_combout\))) # (!\vclock|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~4_combout\ & (\vclock|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~0_combout\)))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|selnose[216]~3_combout\ & (((\vclock|Div0|auto_generated|divider|divider|StageOut[167]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~0_combout\,
	datab => \vclock|Div0|auto_generated|divider|divider|selnose[216]~3_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~4_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|StageOut[167]~9_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[191]~11_combout\);

-- Location: LCCOMB_X28_Y23_N28
\vclock|Div0|auto_generated|divider|divider|StageOut[190]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[190]~12_combout\ = ((\CLOCK_ADJ|ADC_CLK\(10)) # ((\CLOCK_ADJ|ADC_CLK\(12)) # (\CLOCK_ADJ|ADC_CLK\(11)))) # (!\CLOCK_ADJ|ADC_CLK\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(6),
	datab => \CLOCK_ADJ|ADC_CLK\(10),
	datac => \CLOCK_ADJ|ADC_CLK\(12),
	datad => \CLOCK_ADJ|ADC_CLK\(11),
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[190]~12_combout\);

-- Location: LCCOMB_X28_Y23_N16
\vclock|Div0|auto_generated|divider|divider|StageOut[190]\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut\(190) = ((\CLOCK_ADJ|ADC_CLK\(9)) # ((\vclock|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~4_combout\) # (\vclock|Div0|auto_generated|divider|divider|StageOut[190]~12_combout\))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|selnose[324]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|selnose[324]~1_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(9),
	datac => \vclock|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~4_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|StageOut[190]~12_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut\(190));

-- Location: LCCOMB_X28_Y23_N18
\vclock|Div0|auto_generated|divider|divider|op_24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_24~0_combout\ = (\CLOCK_ADJ|ADC_CLK\(7) & (\vclock|Div0|auto_generated|divider|divider|StageOut\(190) $ (VCC))) # (!\CLOCK_ADJ|ADC_CLK\(7) & ((\vclock|Div0|auto_generated|divider|divider|StageOut\(190)) # 
-- (GND)))
-- \vclock|Div0|auto_generated|divider|divider|op_24~1\ = CARRY((\vclock|Div0|auto_generated|divider|divider|StageOut\(190)) # (!\CLOCK_ADJ|ADC_CLK\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(7),
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut\(190),
	datad => VCC,
	combout => \vclock|Div0|auto_generated|divider|divider|op_24~0_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_24~1\);

-- Location: LCCOMB_X28_Y23_N20
\vclock|Div0|auto_generated|divider|divider|op_24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_24~2_combout\ = (\CLOCK_ADJ|ADC_CLK\(8) & ((\vclock|Div0|auto_generated|divider|divider|StageOut[191]~11_combout\ & (!\vclock|Div0|auto_generated|divider|divider|op_24~1\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[191]~11_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_24~1\) # (GND))))) # (!\CLOCK_ADJ|ADC_CLK\(8) & ((\vclock|Div0|auto_generated|divider|divider|StageOut[191]~11_combout\ & 
-- (\vclock|Div0|auto_generated|divider|divider|op_24~1\ & VCC)) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[191]~11_combout\ & (!\vclock|Div0|auto_generated|divider|divider|op_24~1\))))
-- \vclock|Div0|auto_generated|divider|divider|op_24~3\ = CARRY((\CLOCK_ADJ|ADC_CLK\(8) & ((!\vclock|Div0|auto_generated|divider|divider|op_24~1\) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[191]~11_combout\))) # (!\CLOCK_ADJ|ADC_CLK\(8) & 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[191]~11_combout\ & !\vclock|Div0|auto_generated|divider|divider|op_24~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(8),
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[191]~11_combout\,
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_24~1\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_24~2_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_24~3\);

-- Location: LCCOMB_X28_Y23_N22
\vclock|Div0|auto_generated|divider|divider|op_24~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_24~4_combout\ = ((\vclock|Div0|auto_generated|divider|divider|StageOut[192]~10_combout\ $ (\CLOCK_ADJ|ADC_CLK\(9) $ (\vclock|Div0|auto_generated|divider|divider|op_24~3\)))) # (GND)
-- \vclock|Div0|auto_generated|divider|divider|op_24~5\ = CARRY((\vclock|Div0|auto_generated|divider|divider|StageOut[192]~10_combout\ & ((!\vclock|Div0|auto_generated|divider|divider|op_24~3\) # (!\CLOCK_ADJ|ADC_CLK\(9)))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[192]~10_combout\ & (!\CLOCK_ADJ|ADC_CLK\(9) & !\vclock|Div0|auto_generated|divider|divider|op_24~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[192]~10_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(9),
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_24~3\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_24~4_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_24~5\);

-- Location: LCCOMB_X28_Y23_N24
\vclock|Div0|auto_generated|divider|divider|op_24~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_24~6_combout\ = !\vclock|Div0|auto_generated|divider|divider|op_24~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \vclock|Div0|auto_generated|divider|divider|op_24~5\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_24~6_combout\);

-- Location: LCCOMB_X29_Y23_N8
\vclock|Equal0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Equal0~18_combout\ = ((\vclock|Div0|auto_generated|divider|divider|op_24~6_combout\ & ((\vclock|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~4_combout\) # (\CLOCK_ADJ|ADC_CLK\(9))))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|selnose[243]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~4_combout\,
	datab => \vclock|Div0|auto_generated|divider|divider|op_24~6_combout\,
	datac => \CLOCK_ADJ|ADC_CLK\(9),
	datad => \vclock|Div0|auto_generated|divider|divider|selnose[243]~2_combout\,
	combout => \vclock|Equal0~18_combout\);

-- Location: LCCOMB_X29_Y23_N14
\vclock|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Equal0~8_combout\ = ((\CLOCK_ADJ|ADC_CLK\(7) & \vclock|Div0|auto_generated|divider|divider|op_22~4_combout\)) # (!\vclock|Div0|auto_generated|divider|divider|sel[138]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(7),
	datab => \vclock|Div0|auto_generated|divider|divider|op_22~4_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|sel[138]~0_combout\,
	combout => \vclock|Equal0~8_combout\);

-- Location: LCCOMB_X27_Y23_N24
\vclock|Div0|auto_generated|divider|divider|selnose[270]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|selnose[270]~4_combout\ = (\vclock|Div0|auto_generated|divider|divider|selnose[324]~1_combout\ & (!\CLOCK_ADJ|ADC_CLK\(11) & !\CLOCK_ADJ|ADC_CLK\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|selnose[324]~1_combout\,
	datac => \CLOCK_ADJ|ADC_CLK\(11),
	datad => \CLOCK_ADJ|ADC_CLK\(12),
	combout => \vclock|Div0|auto_generated|divider|divider|selnose[270]~4_combout\);

-- Location: LCCOMB_X28_Y23_N26
\vclock|Div0|auto_generated|divider|divider|StageOut[216]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[216]~13_combout\ = (\vclock|Div0|auto_generated|divider|divider|selnose[243]~2_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_24~6_combout\ & 
-- (\vclock|Div0|auto_generated|divider|divider|StageOut[192]~10_combout\)) # (!\vclock|Div0|auto_generated|divider|divider|op_24~6_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_24~4_combout\))))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|selnose[243]~2_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut[192]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[192]~10_combout\,
	datab => \vclock|Div0|auto_generated|divider|divider|selnose[243]~2_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|op_24~4_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_24~6_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[216]~13_combout\);

-- Location: LCCOMB_X28_Y23_N0
\vclock|Div0|auto_generated|divider|divider|StageOut[215]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[215]~14_combout\ = (\vclock|Div0|auto_generated|divider|divider|selnose[243]~2_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_24~6_combout\ & 
-- (\vclock|Div0|auto_generated|divider|divider|StageOut[191]~11_combout\)) # (!\vclock|Div0|auto_generated|divider|divider|op_24~6_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_24~2_combout\))))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|selnose[243]~2_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut[191]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[191]~11_combout\,
	datab => \vclock|Div0|auto_generated|divider|divider|op_24~2_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|selnose[243]~2_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_24~6_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[215]~14_combout\);

-- Location: LCCOMB_X28_Y23_N14
\vclock|Div0|auto_generated|divider|divider|StageOut[214]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[214]~15_combout\ = (\vclock|Div0|auto_generated|divider|divider|selnose[243]~2_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_24~6_combout\ & 
-- (\vclock|Div0|auto_generated|divider|divider|StageOut\(190))) # (!\vclock|Div0|auto_generated|divider|divider|op_24~6_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_24~0_combout\))))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|selnose[243]~2_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut\(190)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut\(190),
	datab => \vclock|Div0|auto_generated|divider|divider|op_24~0_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|selnose[243]~2_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_24~6_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[214]~15_combout\);

-- Location: LCCOMB_X28_Y23_N12
\vclock|Div0|auto_generated|divider|divider|StageOut[213]\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut\(213) = ((\vclock|Div0|auto_generated|divider|divider|op_24~6_combout\) # (!\vclock|Div0|auto_generated|divider|divider|selnose[243]~2_combout\)) # (!\CLOCK_ADJ|ADC_CLK\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLOCK_ADJ|ADC_CLK\(6),
	datac => \vclock|Div0|auto_generated|divider|divider|selnose[243]~2_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_24~6_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut\(213));

-- Location: LCCOMB_X28_Y23_N2
\vclock|Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~0_combout\ = (\vclock|Div0|auto_generated|divider|divider|StageOut\(213) & ((GND) # (!\CLOCK_ADJ|ADC_CLK\(7)))) # (!\vclock|Div0|auto_generated|divider|divider|StageOut\(213) & 
-- (\CLOCK_ADJ|ADC_CLK\(7) $ (GND)))
-- \vclock|Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~1\ = CARRY((\vclock|Div0|auto_generated|divider|divider|StageOut\(213)) # (!\CLOCK_ADJ|ADC_CLK\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut\(213),
	datab => \CLOCK_ADJ|ADC_CLK\(7),
	datad => VCC,
	combout => \vclock|Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~0_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~1\);

-- Location: LCCOMB_X28_Y23_N4
\vclock|Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~2_combout\ = (\CLOCK_ADJ|ADC_CLK\(8) & ((\vclock|Div0|auto_generated|divider|divider|StageOut[214]~15_combout\ & 
-- (!\vclock|Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~1\)) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[214]~15_combout\ & ((\vclock|Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~1\) # (GND))))) # 
-- (!\CLOCK_ADJ|ADC_CLK\(8) & ((\vclock|Div0|auto_generated|divider|divider|StageOut[214]~15_combout\ & (\vclock|Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~1\ & VCC)) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[214]~15_combout\ 
-- & (!\vclock|Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~1\))))
-- \vclock|Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~3\ = CARRY((\CLOCK_ADJ|ADC_CLK\(8) & ((!\vclock|Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~1\) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[214]~15_combout\))) # (!\CLOCK_ADJ|ADC_CLK\(8) & (!\vclock|Div0|auto_generated|divider|divider|StageOut[214]~15_combout\ & !\vclock|Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(8),
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[214]~15_combout\,
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~1\,
	combout => \vclock|Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~2_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~3\);

-- Location: LCCOMB_X28_Y23_N6
\vclock|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~4_combout\ = ((\CLOCK_ADJ|ADC_CLK\(9) $ (\vclock|Div0|auto_generated|divider|divider|StageOut[215]~14_combout\ $ 
-- (\vclock|Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~3\)))) # (GND)
-- \vclock|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~5\ = CARRY((\CLOCK_ADJ|ADC_CLK\(9) & (\vclock|Div0|auto_generated|divider|divider|StageOut[215]~14_combout\ & !\vclock|Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~3\)) # 
-- (!\CLOCK_ADJ|ADC_CLK\(9) & ((\vclock|Div0|auto_generated|divider|divider|StageOut[215]~14_combout\) # (!\vclock|Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(9),
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[215]~14_combout\,
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~3\,
	combout => \vclock|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~4_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~5\);

-- Location: LCCOMB_X28_Y23_N8
\vclock|Div0|auto_generated|divider|divider|add_sub_10_result_int[10]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|add_sub_10_result_int[10]~6_combout\ = (\vclock|Div0|auto_generated|divider|divider|StageOut[216]~13_combout\ & ((\CLOCK_ADJ|ADC_CLK\(10) & 
-- (!\vclock|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~5\)) # (!\CLOCK_ADJ|ADC_CLK\(10) & (\vclock|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~5\ & VCC)))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[216]~13_combout\ & ((\CLOCK_ADJ|ADC_CLK\(10) & ((\vclock|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~5\) # (GND))) # (!\CLOCK_ADJ|ADC_CLK\(10) & 
-- (!\vclock|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~5\))))
-- \vclock|Div0|auto_generated|divider|divider|add_sub_10_result_int[10]~7\ = CARRY((\vclock|Div0|auto_generated|divider|divider|StageOut[216]~13_combout\ & (\CLOCK_ADJ|ADC_CLK\(10) & !\vclock|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~5\)) 
-- # (!\vclock|Div0|auto_generated|divider|divider|StageOut[216]~13_combout\ & ((\CLOCK_ADJ|ADC_CLK\(10)) # (!\vclock|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[216]~13_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(10),
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~5\,
	combout => \vclock|Div0|auto_generated|divider|divider|add_sub_10_result_int[10]~6_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|add_sub_10_result_int[10]~7\);

-- Location: LCCOMB_X28_Y23_N10
\vclock|Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~8_combout\ = \vclock|Div0|auto_generated|divider|divider|add_sub_10_result_int[10]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \vclock|Div0|auto_generated|divider|divider|add_sub_10_result_int[10]~7\,
	combout => \vclock|Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~8_combout\);

-- Location: LCCOMB_X27_Y23_N22
\vclock|Div0|auto_generated|divider|divider|StageOut[240]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[240]~16_combout\ = (\vclock|Div0|auto_generated|divider|divider|selnose[270]~4_combout\ & ((\vclock|Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~8_combout\ & 
-- ((\vclock|Div0|auto_generated|divider|divider|StageOut[216]~13_combout\))) # (!\vclock|Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~8_combout\ & (\vclock|Div0|auto_generated|divider|divider|add_sub_10_result_int[10]~6_combout\)))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|selnose[270]~4_combout\ & (((\vclock|Div0|auto_generated|divider|divider|StageOut[216]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|selnose[270]~4_combout\,
	datab => \vclock|Div0|auto_generated|divider|divider|add_sub_10_result_int[10]~6_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~8_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|StageOut[216]~13_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[240]~16_combout\);

-- Location: LCCOMB_X28_Y23_N30
\vclock|Div0|auto_generated|divider|divider|StageOut[239]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[239]~17_combout\ = (\vclock|Div0|auto_generated|divider|divider|selnose[270]~4_combout\ & ((\vclock|Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~8_combout\ & 
-- ((\vclock|Div0|auto_generated|divider|divider|StageOut[215]~14_combout\))) # (!\vclock|Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~8_combout\ & (\vclock|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~4_combout\)))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|selnose[270]~4_combout\ & (((\vclock|Div0|auto_generated|divider|divider|StageOut[215]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~4_combout\,
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[215]~14_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|selnose[270]~4_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~8_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[239]~17_combout\);

-- Location: LCCOMB_X27_Y23_N0
\vclock|Div0|auto_generated|divider|divider|StageOut[238]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[238]~18_combout\ = (\vclock|Div0|auto_generated|divider|divider|selnose[270]~4_combout\ & ((\vclock|Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~8_combout\ & 
-- (\vclock|Div0|auto_generated|divider|divider|StageOut[214]~15_combout\)) # (!\vclock|Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~8_combout\ & ((\vclock|Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~2_combout\))))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|selnose[270]~4_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut[214]~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|selnose[270]~4_combout\,
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[214]~15_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~8_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~2_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[238]~18_combout\);

-- Location: LCCOMB_X27_Y23_N26
\vclock|Div0|auto_generated|divider|divider|StageOut[237]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[237]~19_combout\ = (\vclock|Div0|auto_generated|divider|divider|selnose[270]~4_combout\ & ((\vclock|Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~8_combout\ & 
-- (\vclock|Div0|auto_generated|divider|divider|StageOut\(213))) # (!\vclock|Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~8_combout\ & ((\vclock|Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~0_combout\))))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|selnose[270]~4_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut\(213)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|selnose[270]~4_combout\,
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut\(213),
	datac => \vclock|Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~8_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~0_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[237]~19_combout\);

-- Location: LCCOMB_X27_Y23_N28
\vclock|Div0|auto_generated|divider|divider|StageOut[236]\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut\(236) = ((\vclock|Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~8_combout\) # (!\vclock|Div0|auto_generated|divider|divider|selnose[270]~4_combout\)) # (!\CLOCK_ADJ|ADC_CLK\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(6),
	datac => \vclock|Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~8_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|selnose[270]~4_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut\(236));

-- Location: LCCOMB_X27_Y23_N2
\vclock|Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~0_combout\ = (\CLOCK_ADJ|ADC_CLK\(7) & (\vclock|Div0|auto_generated|divider|divider|StageOut\(236) $ (VCC))) # (!\CLOCK_ADJ|ADC_CLK\(7) & 
-- ((\vclock|Div0|auto_generated|divider|divider|StageOut\(236)) # (GND)))
-- \vclock|Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~1\ = CARRY((\vclock|Div0|auto_generated|divider|divider|StageOut\(236)) # (!\CLOCK_ADJ|ADC_CLK\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(7),
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut\(236),
	datad => VCC,
	combout => \vclock|Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~0_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~1\);

-- Location: LCCOMB_X27_Y23_N4
\vclock|Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~2_combout\ = (\vclock|Div0|auto_generated|divider|divider|StageOut[237]~19_combout\ & ((\CLOCK_ADJ|ADC_CLK\(8) & 
-- (!\vclock|Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~1\)) # (!\CLOCK_ADJ|ADC_CLK\(8) & (\vclock|Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~1\ & VCC)))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[237]~19_combout\ & ((\CLOCK_ADJ|ADC_CLK\(8) & ((\vclock|Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~1\) # (GND))) # (!\CLOCK_ADJ|ADC_CLK\(8) & 
-- (!\vclock|Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~1\))))
-- \vclock|Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~3\ = CARRY((\vclock|Div0|auto_generated|divider|divider|StageOut[237]~19_combout\ & (\CLOCK_ADJ|ADC_CLK\(8) & !\vclock|Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~1\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[237]~19_combout\ & ((\CLOCK_ADJ|ADC_CLK\(8)) # (!\vclock|Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[237]~19_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(8),
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~1\,
	combout => \vclock|Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~2_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~3\);

-- Location: LCCOMB_X27_Y23_N6
\vclock|Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~4_combout\ = ((\CLOCK_ADJ|ADC_CLK\(9) $ (\vclock|Div0|auto_generated|divider|divider|StageOut[238]~18_combout\ $ 
-- (\vclock|Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~3\)))) # (GND)
-- \vclock|Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~5\ = CARRY((\CLOCK_ADJ|ADC_CLK\(9) & (\vclock|Div0|auto_generated|divider|divider|StageOut[238]~18_combout\ & !\vclock|Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~3\)) # 
-- (!\CLOCK_ADJ|ADC_CLK\(9) & ((\vclock|Div0|auto_generated|divider|divider|StageOut[238]~18_combout\) # (!\vclock|Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(9),
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[238]~18_combout\,
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~3\,
	combout => \vclock|Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~4_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~5\);

-- Location: LCCOMB_X27_Y23_N8
\vclock|Div0|auto_generated|divider|divider|add_sub_11_result_int[10]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|add_sub_11_result_int[10]~6_combout\ = (\vclock|Div0|auto_generated|divider|divider|StageOut[239]~17_combout\ & ((\CLOCK_ADJ|ADC_CLK\(10) & 
-- (!\vclock|Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~5\)) # (!\CLOCK_ADJ|ADC_CLK\(10) & (\vclock|Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~5\ & VCC)))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[239]~17_combout\ & ((\CLOCK_ADJ|ADC_CLK\(10) & ((\vclock|Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~5\) # (GND))) # (!\CLOCK_ADJ|ADC_CLK\(10) & 
-- (!\vclock|Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~5\))))
-- \vclock|Div0|auto_generated|divider|divider|add_sub_11_result_int[10]~7\ = CARRY((\vclock|Div0|auto_generated|divider|divider|StageOut[239]~17_combout\ & (\CLOCK_ADJ|ADC_CLK\(10) & !\vclock|Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~5\)) 
-- # (!\vclock|Div0|auto_generated|divider|divider|StageOut[239]~17_combout\ & ((\CLOCK_ADJ|ADC_CLK\(10)) # (!\vclock|Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[239]~17_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(10),
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~5\,
	combout => \vclock|Div0|auto_generated|divider|divider|add_sub_11_result_int[10]~6_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|add_sub_11_result_int[10]~7\);

-- Location: LCCOMB_X27_Y23_N10
\vclock|Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~8_combout\ = ((\vclock|Div0|auto_generated|divider|divider|StageOut[240]~16_combout\ $ (\CLOCK_ADJ|ADC_CLK\(11) $ 
-- (\vclock|Div0|auto_generated|divider|divider|add_sub_11_result_int[10]~7\)))) # (GND)
-- \vclock|Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~9\ = CARRY((\vclock|Div0|auto_generated|divider|divider|StageOut[240]~16_combout\ & ((!\vclock|Div0|auto_generated|divider|divider|add_sub_11_result_int[10]~7\) # 
-- (!\CLOCK_ADJ|ADC_CLK\(11)))) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[240]~16_combout\ & (!\CLOCK_ADJ|ADC_CLK\(11) & !\vclock|Div0|auto_generated|divider|divider|add_sub_11_result_int[10]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[240]~16_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(11),
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|add_sub_11_result_int[10]~7\,
	combout => \vclock|Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~8_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~9\);

-- Location: LCCOMB_X27_Y23_N12
\vclock|Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~10_combout\ = !\vclock|Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \vclock|Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~9\,
	combout => \vclock|Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~10_combout\);

-- Location: LCCOMB_X27_Y23_N30
\vclock|Div0|auto_generated|divider|divider|selnose[297]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|selnose[297]~5_combout\ = (\vclock|Div0|auto_generated|divider|divider|selnose[324]~1_combout\ & !\CLOCK_ADJ|ADC_CLK\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vclock|Div0|auto_generated|divider|divider|selnose[324]~1_combout\,
	datad => \CLOCK_ADJ|ADC_CLK\(12),
	combout => \vclock|Div0|auto_generated|divider|divider|selnose[297]~5_combout\);

-- Location: LCCOMB_X27_Y23_N16
\vclock|Div0|auto_generated|divider|divider|StageOut[264]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[264]~20_combout\ = (\vclock|Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~10_combout\ & (((\vclock|Div0|auto_generated|divider|divider|StageOut[240]~16_combout\)))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~10_combout\ & ((\vclock|Div0|auto_generated|divider|divider|selnose[297]~5_combout\ & ((\vclock|Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~8_combout\))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|selnose[297]~5_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut[240]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~10_combout\,
	datab => \vclock|Div0|auto_generated|divider|divider|selnose[297]~5_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|StageOut[240]~16_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~8_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[264]~20_combout\);

-- Location: LCCOMB_X26_Y23_N26
\vclock|Div0|auto_generated|divider|divider|StageOut[263]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[263]~21_combout\ = (\vclock|Div0|auto_generated|divider|divider|selnose[297]~5_combout\ & ((\vclock|Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~10_combout\ & 
-- (\vclock|Div0|auto_generated|divider|divider|StageOut[239]~17_combout\)) # (!\vclock|Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~10_combout\ & ((\vclock|Div0|auto_generated|divider|divider|add_sub_11_result_int[10]~6_combout\))))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|selnose[297]~5_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut[239]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|selnose[297]~5_combout\,
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[239]~17_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~10_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|add_sub_11_result_int[10]~6_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[263]~21_combout\);

-- Location: LCCOMB_X27_Y23_N14
\vclock|Div0|auto_generated|divider|divider|StageOut[262]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[262]~22_combout\ = (\vclock|Div0|auto_generated|divider|divider|selnose[297]~5_combout\ & ((\vclock|Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~10_combout\ & 
-- ((\vclock|Div0|auto_generated|divider|divider|StageOut[238]~18_combout\))) # (!\vclock|Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~10_combout\ & (\vclock|Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~4_combout\)))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|selnose[297]~5_combout\ & (((\vclock|Div0|auto_generated|divider|divider|StageOut[238]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~4_combout\,
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[238]~18_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|selnose[297]~5_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~10_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[262]~22_combout\);

-- Location: LCCOMB_X27_Y23_N20
\vclock|Div0|auto_generated|divider|divider|StageOut[261]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[261]~23_combout\ = (\vclock|Div0|auto_generated|divider|divider|selnose[297]~5_combout\ & ((\vclock|Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~10_combout\ & 
-- (\vclock|Div0|auto_generated|divider|divider|StageOut[237]~19_combout\)) # (!\vclock|Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~10_combout\ & ((\vclock|Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~2_combout\))))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|selnose[297]~5_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut[237]~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[237]~19_combout\,
	datab => \vclock|Div0|auto_generated|divider|divider|selnose[297]~5_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~2_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~10_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[261]~23_combout\);

-- Location: LCCOMB_X26_Y23_N24
\vclock|Div0|auto_generated|divider|divider|StageOut[260]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[260]~24_combout\ = (\vclock|Div0|auto_generated|divider|divider|selnose[297]~5_combout\ & ((\vclock|Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~10_combout\ & 
-- (\vclock|Div0|auto_generated|divider|divider|StageOut\(236))) # (!\vclock|Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~10_combout\ & ((\vclock|Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~0_combout\))))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|selnose[297]~5_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut\(236)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|selnose[297]~5_combout\,
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut\(236),
	datac => \vclock|Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~10_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~0_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[260]~24_combout\);

-- Location: LCCOMB_X26_Y23_N22
\vclock|Div0|auto_generated|divider|divider|StageOut[259]\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut\(259) = (\CLOCK_ADJ|ADC_CLK\(12)) # (((\vclock|Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~10_combout\) # (!\CLOCK_ADJ|ADC_CLK\(6))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|selnose[324]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(12),
	datab => \vclock|Div0|auto_generated|divider|divider|selnose[324]~1_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~10_combout\,
	datad => \CLOCK_ADJ|ADC_CLK\(6),
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut\(259));

-- Location: LCCOMB_X26_Y23_N0
\vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~0_combout\ = (\vclock|Div0|auto_generated|divider|divider|StageOut\(259) & ((GND) # (!\CLOCK_ADJ|ADC_CLK\(7)))) # (!\vclock|Div0|auto_generated|divider|divider|StageOut\(259) & 
-- (\CLOCK_ADJ|ADC_CLK\(7) $ (GND)))
-- \vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~1\ = CARRY((\vclock|Div0|auto_generated|divider|divider|StageOut\(259)) # (!\CLOCK_ADJ|ADC_CLK\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut\(259),
	datab => \CLOCK_ADJ|ADC_CLK\(7),
	datad => VCC,
	combout => \vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~0_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~1\);

-- Location: LCCOMB_X26_Y23_N2
\vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~2_combout\ = (\CLOCK_ADJ|ADC_CLK\(8) & ((\vclock|Div0|auto_generated|divider|divider|StageOut[260]~24_combout\ & 
-- (!\vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~1\)) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[260]~24_combout\ & ((\vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~1\) # (GND))))) # 
-- (!\CLOCK_ADJ|ADC_CLK\(8) & ((\vclock|Div0|auto_generated|divider|divider|StageOut[260]~24_combout\ & (\vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~1\ & VCC)) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[260]~24_combout\ 
-- & (!\vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~1\))))
-- \vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~3\ = CARRY((\CLOCK_ADJ|ADC_CLK\(8) & ((!\vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~1\) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[260]~24_combout\))) # (!\CLOCK_ADJ|ADC_CLK\(8) & (!\vclock|Div0|auto_generated|divider|divider|StageOut[260]~24_combout\ & !\vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(8),
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[260]~24_combout\,
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~1\,
	combout => \vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~2_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~3\);

-- Location: LCCOMB_X26_Y23_N4
\vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~4_combout\ = ((\vclock|Div0|auto_generated|divider|divider|StageOut[261]~23_combout\ $ (\CLOCK_ADJ|ADC_CLK\(9) $ 
-- (\vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~3\)))) # (GND)
-- \vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~5\ = CARRY((\vclock|Div0|auto_generated|divider|divider|StageOut[261]~23_combout\ & ((!\vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~3\) # 
-- (!\CLOCK_ADJ|ADC_CLK\(9)))) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[261]~23_combout\ & (!\CLOCK_ADJ|ADC_CLK\(9) & !\vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[261]~23_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(9),
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~3\,
	combout => \vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~4_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~5\);

-- Location: LCCOMB_X26_Y23_N6
\vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[10]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[10]~6_combout\ = (\CLOCK_ADJ|ADC_CLK\(10) & ((\vclock|Div0|auto_generated|divider|divider|StageOut[262]~22_combout\ & 
-- (!\vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~5\)) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[262]~22_combout\ & ((\vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~5\) # (GND))))) # 
-- (!\CLOCK_ADJ|ADC_CLK\(10) & ((\vclock|Div0|auto_generated|divider|divider|StageOut[262]~22_combout\ & (\vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~5\ & VCC)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[262]~22_combout\ & (!\vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~5\))))
-- \vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[10]~7\ = CARRY((\CLOCK_ADJ|ADC_CLK\(10) & ((!\vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~5\) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[262]~22_combout\))) # (!\CLOCK_ADJ|ADC_CLK\(10) & (!\vclock|Div0|auto_generated|divider|divider|StageOut[262]~22_combout\ & !\vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(10),
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[262]~22_combout\,
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~5\,
	combout => \vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[10]~6_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[10]~7\);

-- Location: LCCOMB_X26_Y23_N8
\vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[11]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[11]~8_combout\ = ((\vclock|Div0|auto_generated|divider|divider|StageOut[263]~21_combout\ $ (\CLOCK_ADJ|ADC_CLK\(11) $ 
-- (\vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[10]~7\)))) # (GND)
-- \vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[11]~9\ = CARRY((\vclock|Div0|auto_generated|divider|divider|StageOut[263]~21_combout\ & ((!\vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[10]~7\) # 
-- (!\CLOCK_ADJ|ADC_CLK\(11)))) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[263]~21_combout\ & (!\CLOCK_ADJ|ADC_CLK\(11) & !\vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[10]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[263]~21_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(11),
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[10]~7\,
	combout => \vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[11]~8_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[11]~9\);

-- Location: LCCOMB_X26_Y23_N10
\vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[12]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[12]~10_combout\ = (\CLOCK_ADJ|ADC_CLK\(12) & ((\vclock|Div0|auto_generated|divider|divider|StageOut[264]~20_combout\ & 
-- (!\vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[11]~9\)) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[264]~20_combout\ & ((\vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[11]~9\) # (GND))))) # 
-- (!\CLOCK_ADJ|ADC_CLK\(12) & ((\vclock|Div0|auto_generated|divider|divider|StageOut[264]~20_combout\ & (\vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[11]~9\ & VCC)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[264]~20_combout\ & (!\vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[11]~9\))))
-- \vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[12]~11\ = CARRY((\CLOCK_ADJ|ADC_CLK\(12) & ((!\vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[11]~9\) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[264]~20_combout\))) # (!\CLOCK_ADJ|ADC_CLK\(12) & (!\vclock|Div0|auto_generated|divider|divider|StageOut[264]~20_combout\ & !\vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[11]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(12),
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[264]~20_combout\,
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[11]~9\,
	combout => \vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[12]~10_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[12]~11\);

-- Location: LCCOMB_X26_Y23_N12
\vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~12_combout\ = \vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[12]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[12]~11\,
	combout => \vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~12_combout\);

-- Location: LCCOMB_X26_Y23_N14
\vclock|Equal0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Equal0~19_combout\ = ((\vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~12_combout\ & ((\vclock|Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~10_combout\) # (\CLOCK_ADJ|ADC_CLK\(12))))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|selnose[324]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~12_combout\,
	datab => \vclock|Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~10_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|selnose[324]~1_combout\,
	datad => \CLOCK_ADJ|ADC_CLK\(12),
	combout => \vclock|Equal0~19_combout\);

-- Location: LCCOMB_X27_Y23_N18
\vclock|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Equal0~9_combout\ = (\vclock|Equal0~19_combout\ & ((\vclock|Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~8_combout\) # (!\vclock|Div0|auto_generated|divider|divider|selnose[270]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vclock|Div0|auto_generated|divider|divider|selnose[270]~4_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~8_combout\,
	datad => \vclock|Equal0~19_combout\,
	combout => \vclock|Equal0~9_combout\);

-- Location: LCCOMB_X28_Y20_N28
\vclock|Div0|auto_generated|divider|divider|selnose[432]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|selnose[432]~7_combout\ = (\vclock|Div0|auto_generated|divider|divider|selnose[459]~0_combout\ & !\CLOCK_ADJ|ADC_CLK\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vclock|Div0|auto_generated|divider|divider|selnose[459]~0_combout\,
	datad => \CLOCK_ADJ|ADC_CLK\(17),
	combout => \vclock|Div0|auto_generated|divider|divider|selnose[432]~7_combout\);

-- Location: LCCOMB_X29_Y20_N26
\vclock|Div0|auto_generated|divider|divider|selnose[405]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|selnose[405]~6_combout\ = (\vclock|Div0|auto_generated|divider|divider|selnose[459]~0_combout\ & (!\CLOCK_ADJ|ADC_CLK\(16) & !\CLOCK_ADJ|ADC_CLK\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|selnose[459]~0_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(16),
	datad => \CLOCK_ADJ|ADC_CLK\(17),
	combout => \vclock|Div0|auto_generated|divider|divider|selnose[405]~6_combout\);

-- Location: LCCOMB_X29_Y20_N4
\vclock|Div0|auto_generated|divider|divider|sel[145]\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|sel\(145) = ((\CLOCK_ADJ|ADC_CLK\(17)) # (!\CLOCK_ADJ|LessThan1~0_combout\)) # (!\vclock|Div0|auto_generated|divider|divider|selnose[459]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|selnose[459]~0_combout\,
	datac => \CLOCK_ADJ|LessThan1~0_combout\,
	datad => \CLOCK_ADJ|ADC_CLK\(17),
	combout => \vclock|Div0|auto_generated|divider|divider|sel\(145));

-- Location: LCCOMB_X25_Y23_N28
\vclock|Div0|auto_generated|divider|divider|StageOut[288]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[288]~25_combout\ = (\vclock|Div0|auto_generated|divider|divider|selnose[324]~1_combout\ & ((\vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~12_combout\ & 
-- ((\vclock|Div0|auto_generated|divider|divider|StageOut[264]~20_combout\))) # (!\vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~12_combout\ & (\vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[12]~10_combout\)))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|selnose[324]~1_combout\ & (((\vclock|Div0|auto_generated|divider|divider|StageOut[264]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|selnose[324]~1_combout\,
	datab => \vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[12]~10_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~12_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|StageOut[264]~20_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[288]~25_combout\);

-- Location: LCCOMB_X26_Y23_N20
\vclock|Div0|auto_generated|divider|divider|StageOut[287]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[287]~26_combout\ = (\vclock|Div0|auto_generated|divider|divider|selnose[324]~1_combout\ & ((\vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~12_combout\ & 
-- (\vclock|Div0|auto_generated|divider|divider|StageOut[263]~21_combout\)) # (!\vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~12_combout\ & ((\vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[11]~8_combout\))))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|selnose[324]~1_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut[263]~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[263]~21_combout\,
	datab => \vclock|Div0|auto_generated|divider|divider|selnose[324]~1_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[11]~8_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~12_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[287]~26_combout\);

-- Location: LCCOMB_X25_Y23_N20
\vclock|Div0|auto_generated|divider|divider|StageOut[286]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[286]~27_combout\ = (\vclock|Div0|auto_generated|divider|divider|selnose[324]~1_combout\ & ((\vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~12_combout\ & 
-- (\vclock|Div0|auto_generated|divider|divider|StageOut[262]~22_combout\)) # (!\vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~12_combout\ & ((\vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[10]~6_combout\))))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|selnose[324]~1_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut[262]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[262]~22_combout\,
	datab => \vclock|Div0|auto_generated|divider|divider|selnose[324]~1_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~12_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[10]~6_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[286]~27_combout\);

-- Location: LCCOMB_X26_Y23_N30
\vclock|Div0|auto_generated|divider|divider|StageOut[285]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[285]~28_combout\ = (\vclock|Div0|auto_generated|divider|divider|selnose[324]~1_combout\ & ((\vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~12_combout\ & 
-- (\vclock|Div0|auto_generated|divider|divider|StageOut[261]~23_combout\)) # (!\vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~12_combout\ & ((\vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~4_combout\))))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|selnose[324]~1_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut[261]~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[261]~23_combout\,
	datab => \vclock|Div0|auto_generated|divider|divider|selnose[324]~1_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~4_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~12_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[285]~28_combout\);

-- Location: LCCOMB_X26_Y23_N28
\vclock|Div0|auto_generated|divider|divider|StageOut[284]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[284]~29_combout\ = (\vclock|Div0|auto_generated|divider|divider|selnose[324]~1_combout\ & ((\vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~12_combout\ & 
-- ((\vclock|Div0|auto_generated|divider|divider|StageOut[260]~24_combout\))) # (!\vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~12_combout\ & (\vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~2_combout\)))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|selnose[324]~1_combout\ & (((\vclock|Div0|auto_generated|divider|divider|StageOut[260]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|selnose[324]~1_combout\,
	datab => \vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~2_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|StageOut[260]~24_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~12_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[284]~29_combout\);

-- Location: LCCOMB_X26_Y23_N18
\vclock|Div0|auto_generated|divider|divider|StageOut[283]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[283]~30_combout\ = (\vclock|Div0|auto_generated|divider|divider|selnose[324]~1_combout\ & ((\vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~12_combout\ & 
-- ((\vclock|Div0|auto_generated|divider|divider|StageOut\(259)))) # (!\vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~12_combout\ & (\vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~0_combout\)))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|selnose[324]~1_combout\ & (((\vclock|Div0|auto_generated|divider|divider|StageOut\(259)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|selnose[324]~1_combout\,
	datab => \vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~0_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|StageOut\(259),
	datad => \vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~12_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[283]~30_combout\);

-- Location: LCCOMB_X26_Y23_N16
\vclock|Div0|auto_generated|divider|divider|StageOut[282]\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut\(282) = ((\vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~12_combout\) # (!\CLOCK_ADJ|ADC_CLK\(6))) # (!\vclock|Div0|auto_generated|divider|divider|selnose[324]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vclock|Div0|auto_generated|divider|divider|selnose[324]~1_combout\,
	datac => \CLOCK_ADJ|ADC_CLK\(6),
	datad => \vclock|Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~12_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut\(282));

-- Location: LCCOMB_X25_Y23_N2
\vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~1_cout\ = CARRY(!\CLOCK_ADJ|ADC_CLK\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(6),
	datad => VCC,
	cout => \vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~1_cout\);

-- Location: LCCOMB_X25_Y23_N4
\vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~2_combout\ = (\CLOCK_ADJ|ADC_CLK\(7) & ((\vclock|Div0|auto_generated|divider|divider|StageOut\(282) & (!\vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~1_cout\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut\(282) & ((\vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~1_cout\) # (GND))))) # (!\CLOCK_ADJ|ADC_CLK\(7) & ((\vclock|Div0|auto_generated|divider|divider|StageOut\(282) & 
-- (\vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~1_cout\ & VCC)) # (!\vclock|Div0|auto_generated|divider|divider|StageOut\(282) & (!\vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~1_cout\))))
-- \vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~3\ = CARRY((\CLOCK_ADJ|ADC_CLK\(7) & ((!\vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~1_cout\) # (!\vclock|Div0|auto_generated|divider|divider|StageOut\(282)))) # 
-- (!\CLOCK_ADJ|ADC_CLK\(7) & (!\vclock|Div0|auto_generated|divider|divider|StageOut\(282) & !\vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(7),
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut\(282),
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~1_cout\,
	combout => \vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~2_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~3\);

-- Location: LCCOMB_X25_Y23_N6
\vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~4_combout\ = ((\CLOCK_ADJ|ADC_CLK\(8) $ (\vclock|Div0|auto_generated|divider|divider|StageOut[283]~30_combout\ $ 
-- (\vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~3\)))) # (GND)
-- \vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~5\ = CARRY((\CLOCK_ADJ|ADC_CLK\(8) & (\vclock|Div0|auto_generated|divider|divider|StageOut[283]~30_combout\ & !\vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~3\)) # 
-- (!\CLOCK_ADJ|ADC_CLK\(8) & ((\vclock|Div0|auto_generated|divider|divider|StageOut[283]~30_combout\) # (!\vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(8),
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[283]~30_combout\,
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~3\,
	combout => \vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~4_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~5\);

-- Location: LCCOMB_X25_Y23_N8
\vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~6_combout\ = (\CLOCK_ADJ|ADC_CLK\(9) & ((\vclock|Div0|auto_generated|divider|divider|StageOut[284]~29_combout\ & 
-- (!\vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~5\)) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[284]~29_combout\ & ((\vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~5\) # (GND))))) # 
-- (!\CLOCK_ADJ|ADC_CLK\(9) & ((\vclock|Div0|auto_generated|divider|divider|StageOut[284]~29_combout\ & (\vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~5\ & VCC)) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[284]~29_combout\ 
-- & (!\vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~5\))))
-- \vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~7\ = CARRY((\CLOCK_ADJ|ADC_CLK\(9) & ((!\vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~5\) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[284]~29_combout\))) # (!\CLOCK_ADJ|ADC_CLK\(9) & (!\vclock|Div0|auto_generated|divider|divider|StageOut[284]~29_combout\ & !\vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(9),
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[284]~29_combout\,
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~5\,
	combout => \vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~6_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~7\);

-- Location: LCCOMB_X25_Y23_N10
\vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[10]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[10]~8_combout\ = ((\vclock|Div0|auto_generated|divider|divider|StageOut[285]~28_combout\ $ (\CLOCK_ADJ|ADC_CLK\(10) $ 
-- (\vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~7\)))) # (GND)
-- \vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[10]~9\ = CARRY((\vclock|Div0|auto_generated|divider|divider|StageOut[285]~28_combout\ & ((!\vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~7\) # 
-- (!\CLOCK_ADJ|ADC_CLK\(10)))) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[285]~28_combout\ & (!\CLOCK_ADJ|ADC_CLK\(10) & !\vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[285]~28_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(10),
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~7\,
	combout => \vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[10]~8_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[10]~9\);

-- Location: LCCOMB_X25_Y23_N12
\vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[11]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[11]~10_combout\ = (\CLOCK_ADJ|ADC_CLK\(11) & ((\vclock|Div0|auto_generated|divider|divider|StageOut[286]~27_combout\ & 
-- (!\vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[10]~9\)) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[286]~27_combout\ & ((\vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[10]~9\) # (GND))))) # 
-- (!\CLOCK_ADJ|ADC_CLK\(11) & ((\vclock|Div0|auto_generated|divider|divider|StageOut[286]~27_combout\ & (\vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[10]~9\ & VCC)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[286]~27_combout\ & (!\vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[10]~9\))))
-- \vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[11]~11\ = CARRY((\CLOCK_ADJ|ADC_CLK\(11) & ((!\vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[10]~9\) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[286]~27_combout\))) # (!\CLOCK_ADJ|ADC_CLK\(11) & (!\vclock|Div0|auto_generated|divider|divider|StageOut[286]~27_combout\ & !\vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[10]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(11),
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[286]~27_combout\,
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[10]~9\,
	combout => \vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[11]~10_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[11]~11\);

-- Location: LCCOMB_X25_Y23_N14
\vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[12]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[12]~12_combout\ = ((\vclock|Div0|auto_generated|divider|divider|StageOut[287]~26_combout\ $ (\CLOCK_ADJ|ADC_CLK\(12) $ 
-- (\vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[11]~11\)))) # (GND)
-- \vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[12]~13\ = CARRY((\vclock|Div0|auto_generated|divider|divider|StageOut[287]~26_combout\ & ((!\vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[11]~11\) # 
-- (!\CLOCK_ADJ|ADC_CLK\(12)))) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[287]~26_combout\ & (!\CLOCK_ADJ|ADC_CLK\(12) & !\vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[11]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[287]~26_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(12),
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[11]~11\,
	combout => \vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[12]~12_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[12]~13\);

-- Location: LCCOMB_X25_Y23_N16
\vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[13]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[13]~14_combout\ = (\CLOCK_ADJ|ADC_CLK\(13) & ((\vclock|Div0|auto_generated|divider|divider|StageOut[288]~25_combout\ & 
-- (!\vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[12]~13\)) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[288]~25_combout\ & ((\vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[12]~13\) # (GND))))) # 
-- (!\CLOCK_ADJ|ADC_CLK\(13) & ((\vclock|Div0|auto_generated|divider|divider|StageOut[288]~25_combout\ & (\vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[12]~13\ & VCC)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[288]~25_combout\ & (!\vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[12]~13\))))
-- \vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[13]~15\ = CARRY((\CLOCK_ADJ|ADC_CLK\(13) & ((!\vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[12]~13\) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[288]~25_combout\))) # (!\CLOCK_ADJ|ADC_CLK\(13) & (!\vclock|Div0|auto_generated|divider|divider|StageOut[288]~25_combout\ & 
-- !\vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[12]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(13),
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[288]~25_combout\,
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[12]~13\,
	combout => \vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[13]~14_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[13]~15\);

-- Location: LCCOMB_X25_Y23_N18
\vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~16_combout\ = \vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[13]~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[13]~15\,
	combout => \vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~16_combout\);

-- Location: LCCOMB_X25_Y23_N26
\vclock|Div0|auto_generated|divider|divider|StageOut[312]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[312]~31_combout\ = (\vclock|Div0|auto_generated|divider|divider|sel\(145) & (((\vclock|Div0|auto_generated|divider|divider|StageOut[288]~25_combout\)))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|sel\(145) & ((\vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~16_combout\ & ((\vclock|Div0|auto_generated|divider|divider|StageOut[288]~25_combout\))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~16_combout\ & (\vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[13]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|sel\(145),
	datab => \vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[13]~14_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|StageOut[288]~25_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~16_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[312]~31_combout\);

-- Location: LCCOMB_X26_Y20_N4
\vclock|Div0|auto_generated|divider|divider|StageOut[311]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[311]~32_combout\ = (\vclock|Div0|auto_generated|divider|divider|sel\(145) & (((\vclock|Div0|auto_generated|divider|divider|StageOut[287]~26_combout\)))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|sel\(145) & ((\vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~16_combout\ & ((\vclock|Div0|auto_generated|divider|divider|StageOut[287]~26_combout\))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~16_combout\ & (\vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[12]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[12]~12_combout\,
	datab => \vclock|Div0|auto_generated|divider|divider|sel\(145),
	datac => \vclock|Div0|auto_generated|divider|divider|StageOut[287]~26_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~16_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[311]~32_combout\);

-- Location: LCCOMB_X25_Y23_N24
\vclock|Div0|auto_generated|divider|divider|StageOut[310]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[310]~33_combout\ = (\vclock|Div0|auto_generated|divider|divider|sel\(145) & (((\vclock|Div0|auto_generated|divider|divider|StageOut[286]~27_combout\)))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|sel\(145) & ((\vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~16_combout\ & ((\vclock|Div0|auto_generated|divider|divider|StageOut[286]~27_combout\))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~16_combout\ & (\vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[11]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[11]~10_combout\,
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[286]~27_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|sel\(145),
	datad => \vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~16_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[310]~33_combout\);

-- Location: LCCOMB_X26_Y20_N26
\vclock|Div0|auto_generated|divider|divider|StageOut[309]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[309]~34_combout\ = (\vclock|Div0|auto_generated|divider|divider|sel\(145) & (\vclock|Div0|auto_generated|divider|divider|StageOut[285]~28_combout\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|sel\(145) & ((\vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~16_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut[285]~28_combout\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~16_combout\ & ((\vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[10]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[285]~28_combout\,
	datab => \vclock|Div0|auto_generated|divider|divider|sel\(145),
	datac => \vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[10]~8_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~16_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[309]~34_combout\);

-- Location: LCCOMB_X25_Y23_N22
\vclock|Div0|auto_generated|divider|divider|StageOut[308]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[308]~35_combout\ = (\vclock|Div0|auto_generated|divider|divider|sel\(145) & (\vclock|Div0|auto_generated|divider|divider|StageOut[284]~29_combout\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|sel\(145) & ((\vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~16_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut[284]~29_combout\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~16_combout\ & ((\vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|sel\(145),
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[284]~29_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~6_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~16_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[308]~35_combout\);

-- Location: LCCOMB_X26_Y20_N28
\vclock|Div0|auto_generated|divider|divider|StageOut[307]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[307]~36_combout\ = (\vclock|Div0|auto_generated|divider|divider|sel\(145) & (\vclock|Div0|auto_generated|divider|divider|StageOut[283]~30_combout\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|sel\(145) & ((\vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~16_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut[283]~30_combout\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~16_combout\ & ((\vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|sel\(145),
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[283]~30_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~4_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~16_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[307]~36_combout\);

-- Location: LCCOMB_X25_Y23_N0
\vclock|Div0|auto_generated|divider|divider|StageOut[306]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[306]~37_combout\ = (\vclock|Div0|auto_generated|divider|divider|sel\(145) & (\vclock|Div0|auto_generated|divider|divider|StageOut\(282))) # (!\vclock|Div0|auto_generated|divider|divider|sel\(145) & 
-- ((\vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~16_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut\(282))) # (!\vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~16_combout\ & 
-- ((\vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|sel\(145),
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut\(282),
	datac => \vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~2_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~16_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[306]~37_combout\);

-- Location: LCCOMB_X25_Y23_N30
\vclock|Div0|auto_generated|divider|divider|StageOut[305]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[305]~38_combout\ = (\CLOCK_ADJ|ADC_CLK\(6) & (!\vclock|Div0|auto_generated|divider|divider|sel\(145) & !\vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(6),
	datac => \vclock|Div0|auto_generated|divider|divider|sel\(145),
	datad => \vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~16_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[305]~38_combout\);

-- Location: LCCOMB_X26_Y20_N8
\vclock|Div0|auto_generated|divider|divider|op_5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_5~0_combout\ = (\CLOCK_ADJ|ADC_CLK\(7) & (\vclock|Div0|auto_generated|divider|divider|StageOut[305]~38_combout\ $ (VCC))) # (!\CLOCK_ADJ|ADC_CLK\(7) & 
-- ((\vclock|Div0|auto_generated|divider|divider|StageOut[305]~38_combout\) # (GND)))
-- \vclock|Div0|auto_generated|divider|divider|op_5~1\ = CARRY((\vclock|Div0|auto_generated|divider|divider|StageOut[305]~38_combout\) # (!\CLOCK_ADJ|ADC_CLK\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(7),
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[305]~38_combout\,
	datad => VCC,
	combout => \vclock|Div0|auto_generated|divider|divider|op_5~0_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_5~1\);

-- Location: LCCOMB_X26_Y20_N10
\vclock|Div0|auto_generated|divider|divider|op_5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_5~2_combout\ = (\vclock|Div0|auto_generated|divider|divider|StageOut[306]~37_combout\ & ((\CLOCK_ADJ|ADC_CLK\(8) & (!\vclock|Div0|auto_generated|divider|divider|op_5~1\)) # (!\CLOCK_ADJ|ADC_CLK\(8) & 
-- (\vclock|Div0|auto_generated|divider|divider|op_5~1\ & VCC)))) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[306]~37_combout\ & ((\CLOCK_ADJ|ADC_CLK\(8) & ((\vclock|Div0|auto_generated|divider|divider|op_5~1\) # (GND))) # 
-- (!\CLOCK_ADJ|ADC_CLK\(8) & (!\vclock|Div0|auto_generated|divider|divider|op_5~1\))))
-- \vclock|Div0|auto_generated|divider|divider|op_5~3\ = CARRY((\vclock|Div0|auto_generated|divider|divider|StageOut[306]~37_combout\ & (\CLOCK_ADJ|ADC_CLK\(8) & !\vclock|Div0|auto_generated|divider|divider|op_5~1\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[306]~37_combout\ & ((\CLOCK_ADJ|ADC_CLK\(8)) # (!\vclock|Div0|auto_generated|divider|divider|op_5~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[306]~37_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(8),
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_5~1\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_5~2_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_5~3\);

-- Location: LCCOMB_X26_Y20_N12
\vclock|Div0|auto_generated|divider|divider|op_5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_5~4_combout\ = ((\CLOCK_ADJ|ADC_CLK\(9) $ (\vclock|Div0|auto_generated|divider|divider|StageOut[307]~36_combout\ $ (\vclock|Div0|auto_generated|divider|divider|op_5~3\)))) # (GND)
-- \vclock|Div0|auto_generated|divider|divider|op_5~5\ = CARRY((\CLOCK_ADJ|ADC_CLK\(9) & (\vclock|Div0|auto_generated|divider|divider|StageOut[307]~36_combout\ & !\vclock|Div0|auto_generated|divider|divider|op_5~3\)) # (!\CLOCK_ADJ|ADC_CLK\(9) & 
-- ((\vclock|Div0|auto_generated|divider|divider|StageOut[307]~36_combout\) # (!\vclock|Div0|auto_generated|divider|divider|op_5~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(9),
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[307]~36_combout\,
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_5~3\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_5~4_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_5~5\);

-- Location: LCCOMB_X26_Y20_N14
\vclock|Div0|auto_generated|divider|divider|op_5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_5~6_combout\ = (\vclock|Div0|auto_generated|divider|divider|StageOut[308]~35_combout\ & ((\CLOCK_ADJ|ADC_CLK\(10) & (!\vclock|Div0|auto_generated|divider|divider|op_5~5\)) # (!\CLOCK_ADJ|ADC_CLK\(10) & 
-- (\vclock|Div0|auto_generated|divider|divider|op_5~5\ & VCC)))) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[308]~35_combout\ & ((\CLOCK_ADJ|ADC_CLK\(10) & ((\vclock|Div0|auto_generated|divider|divider|op_5~5\) # (GND))) # 
-- (!\CLOCK_ADJ|ADC_CLK\(10) & (!\vclock|Div0|auto_generated|divider|divider|op_5~5\))))
-- \vclock|Div0|auto_generated|divider|divider|op_5~7\ = CARRY((\vclock|Div0|auto_generated|divider|divider|StageOut[308]~35_combout\ & (\CLOCK_ADJ|ADC_CLK\(10) & !\vclock|Div0|auto_generated|divider|divider|op_5~5\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[308]~35_combout\ & ((\CLOCK_ADJ|ADC_CLK\(10)) # (!\vclock|Div0|auto_generated|divider|divider|op_5~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[308]~35_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(10),
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_5~5\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_5~6_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_5~7\);

-- Location: LCCOMB_X26_Y20_N16
\vclock|Div0|auto_generated|divider|divider|op_5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_5~8_combout\ = ((\vclock|Div0|auto_generated|divider|divider|StageOut[309]~34_combout\ $ (\CLOCK_ADJ|ADC_CLK\(11) $ (\vclock|Div0|auto_generated|divider|divider|op_5~7\)))) # (GND)
-- \vclock|Div0|auto_generated|divider|divider|op_5~9\ = CARRY((\vclock|Div0|auto_generated|divider|divider|StageOut[309]~34_combout\ & ((!\vclock|Div0|auto_generated|divider|divider|op_5~7\) # (!\CLOCK_ADJ|ADC_CLK\(11)))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[309]~34_combout\ & (!\CLOCK_ADJ|ADC_CLK\(11) & !\vclock|Div0|auto_generated|divider|divider|op_5~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[309]~34_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(11),
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_5~7\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_5~8_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_5~9\);

-- Location: LCCOMB_X26_Y20_N18
\vclock|Div0|auto_generated|divider|divider|op_5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_5~10_combout\ = (\CLOCK_ADJ|ADC_CLK\(12) & ((\vclock|Div0|auto_generated|divider|divider|StageOut[310]~33_combout\ & (!\vclock|Div0|auto_generated|divider|divider|op_5~9\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[310]~33_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_5~9\) # (GND))))) # (!\CLOCK_ADJ|ADC_CLK\(12) & ((\vclock|Div0|auto_generated|divider|divider|StageOut[310]~33_combout\ & 
-- (\vclock|Div0|auto_generated|divider|divider|op_5~9\ & VCC)) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[310]~33_combout\ & (!\vclock|Div0|auto_generated|divider|divider|op_5~9\))))
-- \vclock|Div0|auto_generated|divider|divider|op_5~11\ = CARRY((\CLOCK_ADJ|ADC_CLK\(12) & ((!\vclock|Div0|auto_generated|divider|divider|op_5~9\) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[310]~33_combout\))) # (!\CLOCK_ADJ|ADC_CLK\(12) & 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[310]~33_combout\ & !\vclock|Div0|auto_generated|divider|divider|op_5~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(12),
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[310]~33_combout\,
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_5~9\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_5~10_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_5~11\);

-- Location: LCCOMB_X26_Y20_N20
\vclock|Div0|auto_generated|divider|divider|op_5~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_5~12_combout\ = ((\CLOCK_ADJ|ADC_CLK\(13) $ (\vclock|Div0|auto_generated|divider|divider|StageOut[311]~32_combout\ $ (\vclock|Div0|auto_generated|divider|divider|op_5~11\)))) # (GND)
-- \vclock|Div0|auto_generated|divider|divider|op_5~13\ = CARRY((\CLOCK_ADJ|ADC_CLK\(13) & (\vclock|Div0|auto_generated|divider|divider|StageOut[311]~32_combout\ & !\vclock|Div0|auto_generated|divider|divider|op_5~11\)) # (!\CLOCK_ADJ|ADC_CLK\(13) & 
-- ((\vclock|Div0|auto_generated|divider|divider|StageOut[311]~32_combout\) # (!\vclock|Div0|auto_generated|divider|divider|op_5~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(13),
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[311]~32_combout\,
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_5~11\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_5~12_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_5~13\);

-- Location: LCCOMB_X26_Y20_N22
\vclock|Div0|auto_generated|divider|divider|op_5~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_5~14_combout\ = (\CLOCK_ADJ|ADC_CLK\(14) & ((\vclock|Div0|auto_generated|divider|divider|StageOut[312]~31_combout\ & (!\vclock|Div0|auto_generated|divider|divider|op_5~13\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[312]~31_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_5~13\) # (GND))))) # (!\CLOCK_ADJ|ADC_CLK\(14) & ((\vclock|Div0|auto_generated|divider|divider|StageOut[312]~31_combout\ & 
-- (\vclock|Div0|auto_generated|divider|divider|op_5~13\ & VCC)) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[312]~31_combout\ & (!\vclock|Div0|auto_generated|divider|divider|op_5~13\))))
-- \vclock|Div0|auto_generated|divider|divider|op_5~15\ = CARRY((\CLOCK_ADJ|ADC_CLK\(14) & ((!\vclock|Div0|auto_generated|divider|divider|op_5~13\) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[312]~31_combout\))) # (!\CLOCK_ADJ|ADC_CLK\(14) & 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[312]~31_combout\ & !\vclock|Div0|auto_generated|divider|divider|op_5~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(14),
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[312]~31_combout\,
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_5~13\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_5~14_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_5~15\);

-- Location: LCCOMB_X26_Y20_N24
\vclock|Div0|auto_generated|divider|divider|op_5~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_5~16_combout\ = \vclock|Div0|auto_generated|divider|divider|op_5~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \vclock|Div0|auto_generated|divider|divider|op_5~15\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_5~16_combout\);

-- Location: LCCOMB_X26_Y20_N2
\vclock|Div0|auto_generated|divider|divider|selnose[378]\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|selnose\(378) = (\CLOCK_ADJ|ADC_CLK\(15)) # ((\vclock|Div0|auto_generated|divider|divider|op_5~16_combout\) # (!\vclock|Div0|auto_generated|divider|divider|selnose[405]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLOCK_ADJ|ADC_CLK\(15),
	datac => \vclock|Div0|auto_generated|divider|divider|selnose[405]~6_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_5~16_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|selnose\(378));

-- Location: LCCOMB_X27_Y20_N22
\vclock|Div0|auto_generated|divider|divider|StageOut[336]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[336]~39_combout\ = (\vclock|Div0|auto_generated|divider|divider|selnose\(378) & ((\vclock|Div0|auto_generated|divider|divider|StageOut[312]~31_combout\))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|selnose\(378) & (\vclock|Div0|auto_generated|divider|divider|op_5~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vclock|Div0|auto_generated|divider|divider|op_5~14_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|StageOut[312]~31_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|selnose\(378),
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[336]~39_combout\);

-- Location: LCCOMB_X27_Y20_N24
\vclock|Div0|auto_generated|divider|divider|StageOut[335]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[335]~40_combout\ = (\vclock|Div0|auto_generated|divider|divider|selnose\(378) & ((\vclock|Div0|auto_generated|divider|divider|StageOut[311]~32_combout\))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|selnose\(378) & (\vclock|Div0|auto_generated|divider|divider|op_5~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vclock|Div0|auto_generated|divider|divider|op_5~12_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|StageOut[311]~32_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|selnose\(378),
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[335]~40_combout\);

-- Location: LCCOMB_X27_Y20_N26
\vclock|Div0|auto_generated|divider|divider|StageOut[334]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[334]~41_combout\ = (\vclock|Div0|auto_generated|divider|divider|selnose\(378) & ((\vclock|Div0|auto_generated|divider|divider|StageOut[310]~33_combout\))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|selnose\(378) & (\vclock|Div0|auto_generated|divider|divider|op_5~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vclock|Div0|auto_generated|divider|divider|op_5~10_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|StageOut[310]~33_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|selnose\(378),
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[334]~41_combout\);

-- Location: LCCOMB_X26_Y20_N30
\vclock|Div0|auto_generated|divider|divider|StageOut[333]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[333]~42_combout\ = (\vclock|Div0|auto_generated|divider|divider|selnose\(378) & ((\vclock|Div0|auto_generated|divider|divider|StageOut[309]~34_combout\))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|selnose\(378) & (\vclock|Div0|auto_generated|divider|divider|op_5~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vclock|Div0|auto_generated|divider|divider|op_5~8_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|StageOut[309]~34_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|selnose\(378),
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[333]~42_combout\);

-- Location: LCCOMB_X27_Y20_N28
\vclock|Div0|auto_generated|divider|divider|StageOut[332]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[332]~43_combout\ = (\vclock|Div0|auto_generated|divider|divider|selnose\(378) & ((\vclock|Div0|auto_generated|divider|divider|StageOut[308]~35_combout\))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|selnose\(378) & (\vclock|Div0|auto_generated|divider|divider|op_5~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|op_5~6_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|StageOut[308]~35_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|selnose\(378),
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[332]~43_combout\);

-- Location: LCCOMB_X26_Y20_N0
\vclock|Div0|auto_generated|divider|divider|StageOut[331]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[331]~44_combout\ = (\vclock|Div0|auto_generated|divider|divider|selnose\(378) & ((\vclock|Div0|auto_generated|divider|divider|StageOut[307]~36_combout\))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|selnose\(378) & (\vclock|Div0|auto_generated|divider|divider|op_5~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|op_5~4_combout\,
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[307]~36_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|selnose\(378),
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[331]~44_combout\);

-- Location: LCCOMB_X26_Y20_N6
\vclock|Div0|auto_generated|divider|divider|StageOut[330]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[330]~45_combout\ = (\vclock|Div0|auto_generated|divider|divider|selnose\(378) & ((\vclock|Div0|auto_generated|divider|divider|StageOut[306]~37_combout\))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|selnose\(378) & (\vclock|Div0|auto_generated|divider|divider|op_5~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|op_5~2_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|StageOut[306]~37_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|selnose\(378),
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[330]~45_combout\);

-- Location: LCCOMB_X28_Y20_N4
\vclock|Div0|auto_generated|divider|divider|StageOut[329]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[329]~46_combout\ = (\vclock|Div0|auto_generated|divider|divider|selnose\(378) & (\vclock|Div0|auto_generated|divider|divider|StageOut[305]~38_combout\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|selnose\(378) & ((\vclock|Div0|auto_generated|divider|divider|op_5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[305]~38_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|op_5~0_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|selnose\(378),
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[329]~46_combout\);

-- Location: LCCOMB_X27_Y22_N28
\vclock|Div0|auto_generated|divider|divider|op_5~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_5~18_combout\ = !\CLOCK_ADJ|ADC_CLK\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CLOCK_ADJ|ADC_CLK\(6),
	combout => \vclock|Div0|auto_generated|divider|divider|op_5~18_combout\);

-- Location: LCCOMB_X27_Y20_N30
\vclock|Div0|auto_generated|divider|divider|StageOut[328]\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut\(328) = (\CLOCK_ADJ|ADC_CLK\(15)) # ((\vclock|Div0|auto_generated|divider|divider|op_5~18_combout\) # ((\vclock|Div0|auto_generated|divider|divider|op_5~16_combout\) # 
-- (!\vclock|Div0|auto_generated|divider|divider|selnose[405]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(15),
	datab => \vclock|Div0|auto_generated|divider|divider|op_5~18_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|selnose[405]~6_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_5~16_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut\(328));

-- Location: LCCOMB_X27_Y20_N0
\vclock|Div0|auto_generated|divider|divider|op_6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_6~1_cout\ = CARRY(!\CLOCK_ADJ|ADC_CLK\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLOCK_ADJ|ADC_CLK\(6),
	datad => VCC,
	cout => \vclock|Div0|auto_generated|divider|divider|op_6~1_cout\);

-- Location: LCCOMB_X27_Y20_N2
\vclock|Div0|auto_generated|divider|divider|op_6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_6~2_combout\ = (\vclock|Div0|auto_generated|divider|divider|StageOut\(328) & ((\CLOCK_ADJ|ADC_CLK\(7) & (!\vclock|Div0|auto_generated|divider|divider|op_6~1_cout\)) # (!\CLOCK_ADJ|ADC_CLK\(7) & 
-- (\vclock|Div0|auto_generated|divider|divider|op_6~1_cout\ & VCC)))) # (!\vclock|Div0|auto_generated|divider|divider|StageOut\(328) & ((\CLOCK_ADJ|ADC_CLK\(7) & ((\vclock|Div0|auto_generated|divider|divider|op_6~1_cout\) # (GND))) # 
-- (!\CLOCK_ADJ|ADC_CLK\(7) & (!\vclock|Div0|auto_generated|divider|divider|op_6~1_cout\))))
-- \vclock|Div0|auto_generated|divider|divider|op_6~3\ = CARRY((\vclock|Div0|auto_generated|divider|divider|StageOut\(328) & (\CLOCK_ADJ|ADC_CLK\(7) & !\vclock|Div0|auto_generated|divider|divider|op_6~1_cout\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut\(328) & ((\CLOCK_ADJ|ADC_CLK\(7)) # (!\vclock|Div0|auto_generated|divider|divider|op_6~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut\(328),
	datab => \CLOCK_ADJ|ADC_CLK\(7),
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_6~1_cout\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_6~2_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_6~3\);

-- Location: LCCOMB_X27_Y20_N4
\vclock|Div0|auto_generated|divider|divider|op_6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_6~4_combout\ = ((\vclock|Div0|auto_generated|divider|divider|StageOut[329]~46_combout\ $ (\CLOCK_ADJ|ADC_CLK\(8) $ (\vclock|Div0|auto_generated|divider|divider|op_6~3\)))) # (GND)
-- \vclock|Div0|auto_generated|divider|divider|op_6~5\ = CARRY((\vclock|Div0|auto_generated|divider|divider|StageOut[329]~46_combout\ & ((!\vclock|Div0|auto_generated|divider|divider|op_6~3\) # (!\CLOCK_ADJ|ADC_CLK\(8)))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[329]~46_combout\ & (!\CLOCK_ADJ|ADC_CLK\(8) & !\vclock|Div0|auto_generated|divider|divider|op_6~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[329]~46_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(8),
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_6~3\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_6~4_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_6~5\);

-- Location: LCCOMB_X27_Y20_N6
\vclock|Div0|auto_generated|divider|divider|op_6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_6~6_combout\ = (\CLOCK_ADJ|ADC_CLK\(9) & ((\vclock|Div0|auto_generated|divider|divider|StageOut[330]~45_combout\ & (!\vclock|Div0|auto_generated|divider|divider|op_6~5\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[330]~45_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_6~5\) # (GND))))) # (!\CLOCK_ADJ|ADC_CLK\(9) & ((\vclock|Div0|auto_generated|divider|divider|StageOut[330]~45_combout\ & 
-- (\vclock|Div0|auto_generated|divider|divider|op_6~5\ & VCC)) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[330]~45_combout\ & (!\vclock|Div0|auto_generated|divider|divider|op_6~5\))))
-- \vclock|Div0|auto_generated|divider|divider|op_6~7\ = CARRY((\CLOCK_ADJ|ADC_CLK\(9) & ((!\vclock|Div0|auto_generated|divider|divider|op_6~5\) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[330]~45_combout\))) # (!\CLOCK_ADJ|ADC_CLK\(9) & 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[330]~45_combout\ & !\vclock|Div0|auto_generated|divider|divider|op_6~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(9),
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[330]~45_combout\,
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_6~5\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_6~6_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_6~7\);

-- Location: LCCOMB_X27_Y20_N8
\vclock|Div0|auto_generated|divider|divider|op_6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_6~8_combout\ = ((\vclock|Div0|auto_generated|divider|divider|StageOut[331]~44_combout\ $ (\CLOCK_ADJ|ADC_CLK\(10) $ (\vclock|Div0|auto_generated|divider|divider|op_6~7\)))) # (GND)
-- \vclock|Div0|auto_generated|divider|divider|op_6~9\ = CARRY((\vclock|Div0|auto_generated|divider|divider|StageOut[331]~44_combout\ & ((!\vclock|Div0|auto_generated|divider|divider|op_6~7\) # (!\CLOCK_ADJ|ADC_CLK\(10)))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[331]~44_combout\ & (!\CLOCK_ADJ|ADC_CLK\(10) & !\vclock|Div0|auto_generated|divider|divider|op_6~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[331]~44_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(10),
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_6~7\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_6~8_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_6~9\);

-- Location: LCCOMB_X27_Y20_N10
\vclock|Div0|auto_generated|divider|divider|op_6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_6~10_combout\ = (\CLOCK_ADJ|ADC_CLK\(11) & ((\vclock|Div0|auto_generated|divider|divider|StageOut[332]~43_combout\ & (!\vclock|Div0|auto_generated|divider|divider|op_6~9\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[332]~43_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_6~9\) # (GND))))) # (!\CLOCK_ADJ|ADC_CLK\(11) & ((\vclock|Div0|auto_generated|divider|divider|StageOut[332]~43_combout\ & 
-- (\vclock|Div0|auto_generated|divider|divider|op_6~9\ & VCC)) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[332]~43_combout\ & (!\vclock|Div0|auto_generated|divider|divider|op_6~9\))))
-- \vclock|Div0|auto_generated|divider|divider|op_6~11\ = CARRY((\CLOCK_ADJ|ADC_CLK\(11) & ((!\vclock|Div0|auto_generated|divider|divider|op_6~9\) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[332]~43_combout\))) # (!\CLOCK_ADJ|ADC_CLK\(11) & 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[332]~43_combout\ & !\vclock|Div0|auto_generated|divider|divider|op_6~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(11),
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[332]~43_combout\,
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_6~9\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_6~10_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_6~11\);

-- Location: LCCOMB_X27_Y20_N12
\vclock|Div0|auto_generated|divider|divider|op_6~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_6~12_combout\ = ((\CLOCK_ADJ|ADC_CLK\(12) $ (\vclock|Div0|auto_generated|divider|divider|StageOut[333]~42_combout\ $ (\vclock|Div0|auto_generated|divider|divider|op_6~11\)))) # (GND)
-- \vclock|Div0|auto_generated|divider|divider|op_6~13\ = CARRY((\CLOCK_ADJ|ADC_CLK\(12) & (\vclock|Div0|auto_generated|divider|divider|StageOut[333]~42_combout\ & !\vclock|Div0|auto_generated|divider|divider|op_6~11\)) # (!\CLOCK_ADJ|ADC_CLK\(12) & 
-- ((\vclock|Div0|auto_generated|divider|divider|StageOut[333]~42_combout\) # (!\vclock|Div0|auto_generated|divider|divider|op_6~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(12),
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[333]~42_combout\,
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_6~11\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_6~12_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_6~13\);

-- Location: LCCOMB_X27_Y20_N14
\vclock|Div0|auto_generated|divider|divider|op_6~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_6~14_combout\ = (\vclock|Div0|auto_generated|divider|divider|StageOut[334]~41_combout\ & ((\CLOCK_ADJ|ADC_CLK\(13) & (!\vclock|Div0|auto_generated|divider|divider|op_6~13\)) # (!\CLOCK_ADJ|ADC_CLK\(13) & 
-- (\vclock|Div0|auto_generated|divider|divider|op_6~13\ & VCC)))) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[334]~41_combout\ & ((\CLOCK_ADJ|ADC_CLK\(13) & ((\vclock|Div0|auto_generated|divider|divider|op_6~13\) # (GND))) # 
-- (!\CLOCK_ADJ|ADC_CLK\(13) & (!\vclock|Div0|auto_generated|divider|divider|op_6~13\))))
-- \vclock|Div0|auto_generated|divider|divider|op_6~15\ = CARRY((\vclock|Div0|auto_generated|divider|divider|StageOut[334]~41_combout\ & (\CLOCK_ADJ|ADC_CLK\(13) & !\vclock|Div0|auto_generated|divider|divider|op_6~13\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[334]~41_combout\ & ((\CLOCK_ADJ|ADC_CLK\(13)) # (!\vclock|Div0|auto_generated|divider|divider|op_6~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[334]~41_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(13),
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_6~13\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_6~14_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_6~15\);

-- Location: LCCOMB_X27_Y20_N16
\vclock|Div0|auto_generated|divider|divider|op_6~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_6~16_combout\ = ((\CLOCK_ADJ|ADC_CLK\(14) $ (\vclock|Div0|auto_generated|divider|divider|StageOut[335]~40_combout\ $ (\vclock|Div0|auto_generated|divider|divider|op_6~15\)))) # (GND)
-- \vclock|Div0|auto_generated|divider|divider|op_6~17\ = CARRY((\CLOCK_ADJ|ADC_CLK\(14) & (\vclock|Div0|auto_generated|divider|divider|StageOut[335]~40_combout\ & !\vclock|Div0|auto_generated|divider|divider|op_6~15\)) # (!\CLOCK_ADJ|ADC_CLK\(14) & 
-- ((\vclock|Div0|auto_generated|divider|divider|StageOut[335]~40_combout\) # (!\vclock|Div0|auto_generated|divider|divider|op_6~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(14),
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[335]~40_combout\,
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_6~15\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_6~16_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_6~17\);

-- Location: LCCOMB_X27_Y20_N18
\vclock|Div0|auto_generated|divider|divider|op_6~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_6~18_combout\ = (\vclock|Div0|auto_generated|divider|divider|StageOut[336]~39_combout\ & ((\CLOCK_ADJ|ADC_CLK\(15) & (!\vclock|Div0|auto_generated|divider|divider|op_6~17\)) # (!\CLOCK_ADJ|ADC_CLK\(15) & 
-- (\vclock|Div0|auto_generated|divider|divider|op_6~17\ & VCC)))) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[336]~39_combout\ & ((\CLOCK_ADJ|ADC_CLK\(15) & ((\vclock|Div0|auto_generated|divider|divider|op_6~17\) # (GND))) # 
-- (!\CLOCK_ADJ|ADC_CLK\(15) & (!\vclock|Div0|auto_generated|divider|divider|op_6~17\))))
-- \vclock|Div0|auto_generated|divider|divider|op_6~19\ = CARRY((\vclock|Div0|auto_generated|divider|divider|StageOut[336]~39_combout\ & (\CLOCK_ADJ|ADC_CLK\(15) & !\vclock|Div0|auto_generated|divider|divider|op_6~17\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[336]~39_combout\ & ((\CLOCK_ADJ|ADC_CLK\(15)) # (!\vclock|Div0|auto_generated|divider|divider|op_6~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[336]~39_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(15),
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_6~17\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_6~18_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_6~19\);

-- Location: LCCOMB_X27_Y20_N20
\vclock|Div0|auto_generated|divider|divider|op_6~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_6~20_combout\ = \vclock|Div0|auto_generated|divider|divider|op_6~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \vclock|Div0|auto_generated|divider|divider|op_6~19\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_6~20_combout\);

-- Location: LCCOMB_X28_Y19_N26
\vclock|Div0|auto_generated|divider|divider|StageOut[360]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[360]~47_combout\ = (\vclock|Div0|auto_generated|divider|divider|selnose[405]~6_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_6~20_combout\ & 
-- (\vclock|Div0|auto_generated|divider|divider|StageOut[336]~39_combout\)) # (!\vclock|Div0|auto_generated|divider|divider|op_6~20_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_6~18_combout\))))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|selnose[405]~6_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut[336]~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|selnose[405]~6_combout\,
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[336]~39_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|op_6~20_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_6~18_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[360]~47_combout\);

-- Location: LCCOMB_X28_Y19_N28
\vclock|Div0|auto_generated|divider|divider|StageOut[359]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[359]~48_combout\ = (\vclock|Div0|auto_generated|divider|divider|selnose[405]~6_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_6~20_combout\ & 
-- (\vclock|Div0|auto_generated|divider|divider|StageOut[335]~40_combout\)) # (!\vclock|Div0|auto_generated|divider|divider|op_6~20_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_6~16_combout\))))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|selnose[405]~6_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut[335]~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|selnose[405]~6_combout\,
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[335]~40_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|op_6~20_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_6~16_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[359]~48_combout\);

-- Location: LCCOMB_X28_Y19_N30
\vclock|Div0|auto_generated|divider|divider|StageOut[358]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[358]~49_combout\ = (\vclock|Div0|auto_generated|divider|divider|selnose[405]~6_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_6~20_combout\ & 
-- ((\vclock|Div0|auto_generated|divider|divider|StageOut[334]~41_combout\))) # (!\vclock|Div0|auto_generated|divider|divider|op_6~20_combout\ & (\vclock|Div0|auto_generated|divider|divider|op_6~14_combout\)))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|selnose[405]~6_combout\ & (((\vclock|Div0|auto_generated|divider|divider|StageOut[334]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|op_6~14_combout\,
	datab => \vclock|Div0|auto_generated|divider|divider|selnose[405]~6_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|op_6~20_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|StageOut[334]~41_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[358]~49_combout\);

-- Location: LCCOMB_X28_Y19_N24
\vclock|Div0|auto_generated|divider|divider|StageOut[357]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[357]~50_combout\ = (\vclock|Div0|auto_generated|divider|divider|selnose[405]~6_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_6~20_combout\ & 
-- (\vclock|Div0|auto_generated|divider|divider|StageOut[333]~42_combout\)) # (!\vclock|Div0|auto_generated|divider|divider|op_6~20_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_6~12_combout\))))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|selnose[405]~6_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut[333]~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[333]~42_combout\,
	datab => \vclock|Div0|auto_generated|divider|divider|selnose[405]~6_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|op_6~20_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_6~12_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[357]~50_combout\);

-- Location: LCCOMB_X27_Y19_N12
\vclock|Div0|auto_generated|divider|divider|StageOut[356]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[356]~51_combout\ = (\vclock|Div0|auto_generated|divider|divider|selnose[405]~6_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_6~20_combout\ & 
-- ((\vclock|Div0|auto_generated|divider|divider|StageOut[332]~43_combout\))) # (!\vclock|Div0|auto_generated|divider|divider|op_6~20_combout\ & (\vclock|Div0|auto_generated|divider|divider|op_6~10_combout\)))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|selnose[405]~6_combout\ & (((\vclock|Div0|auto_generated|divider|divider|StageOut[332]~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|selnose[405]~6_combout\,
	datab => \vclock|Div0|auto_generated|divider|divider|op_6~10_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|StageOut[332]~43_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_6~20_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[356]~51_combout\);

-- Location: LCCOMB_X25_Y19_N28
\vclock|Div0|auto_generated|divider|divider|StageOut[355]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[355]~52_combout\ = (\vclock|Div0|auto_generated|divider|divider|selnose[405]~6_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_6~20_combout\ & 
-- (\vclock|Div0|auto_generated|divider|divider|StageOut[331]~44_combout\)) # (!\vclock|Div0|auto_generated|divider|divider|op_6~20_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_6~8_combout\))))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|selnose[405]~6_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut[331]~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[331]~44_combout\,
	datab => \vclock|Div0|auto_generated|divider|divider|selnose[405]~6_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|op_6~8_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_6~20_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[355]~52_combout\);

-- Location: LCCOMB_X28_Y21_N0
\vclock|Div0|auto_generated|divider|divider|StageOut[354]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[354]~53_combout\ = (\vclock|Div0|auto_generated|divider|divider|selnose[405]~6_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_6~20_combout\ & 
-- ((\vclock|Div0|auto_generated|divider|divider|StageOut[330]~45_combout\))) # (!\vclock|Div0|auto_generated|divider|divider|op_6~20_combout\ & (\vclock|Div0|auto_generated|divider|divider|op_6~6_combout\)))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|selnose[405]~6_combout\ & (((\vclock|Div0|auto_generated|divider|divider|StageOut[330]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|op_6~6_combout\,
	datab => \vclock|Div0|auto_generated|divider|divider|selnose[405]~6_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|op_6~20_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|StageOut[330]~45_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[354]~53_combout\);

-- Location: LCCOMB_X28_Y20_N30
\vclock|Div0|auto_generated|divider|divider|StageOut[353]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[353]~54_combout\ = (\vclock|Div0|auto_generated|divider|divider|selnose[405]~6_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_6~20_combout\ & 
-- (\vclock|Div0|auto_generated|divider|divider|StageOut[329]~46_combout\)) # (!\vclock|Div0|auto_generated|divider|divider|op_6~20_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_6~4_combout\))))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|selnose[405]~6_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut[329]~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|selnose[405]~6_combout\,
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[329]~46_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|op_6~4_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_6~20_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[353]~54_combout\);

-- Location: LCCOMB_X27_Y19_N26
\vclock|Div0|auto_generated|divider|divider|StageOut[352]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[352]~55_combout\ = (\vclock|Div0|auto_generated|divider|divider|selnose[405]~6_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_6~20_combout\ & 
-- (\vclock|Div0|auto_generated|divider|divider|StageOut\(328))) # (!\vclock|Div0|auto_generated|divider|divider|op_6~20_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_6~2_combout\))))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|selnose[405]~6_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut\(328)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut\(328),
	datab => \vclock|Div0|auto_generated|divider|divider|selnose[405]~6_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|op_6~2_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_6~20_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[352]~55_combout\);

-- Location: LCCOMB_X27_Y19_N16
\vclock|Div0|auto_generated|divider|divider|StageOut[351]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[351]~56_combout\ = (\vclock|Div0|auto_generated|divider|divider|selnose[405]~6_combout\ & (\CLOCK_ADJ|ADC_CLK\(6) & !\vclock|Div0|auto_generated|divider|divider|op_6~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|selnose[405]~6_combout\,
	datac => \CLOCK_ADJ|ADC_CLK\(6),
	datad => \vclock|Div0|auto_generated|divider|divider|op_6~20_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[351]~56_combout\);

-- Location: LCCOMB_X28_Y19_N0
\vclock|Div0|auto_generated|divider|divider|op_7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_7~0_combout\ = (\vclock|Div0|auto_generated|divider|divider|StageOut[351]~56_combout\ & ((GND) # (!\CLOCK_ADJ|ADC_CLK\(7)))) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[351]~56_combout\ & 
-- (\CLOCK_ADJ|ADC_CLK\(7) $ (GND)))
-- \vclock|Div0|auto_generated|divider|divider|op_7~1\ = CARRY((\vclock|Div0|auto_generated|divider|divider|StageOut[351]~56_combout\) # (!\CLOCK_ADJ|ADC_CLK\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[351]~56_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(7),
	datad => VCC,
	combout => \vclock|Div0|auto_generated|divider|divider|op_7~0_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_7~1\);

-- Location: LCCOMB_X28_Y19_N2
\vclock|Div0|auto_generated|divider|divider|op_7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_7~2_combout\ = (\vclock|Div0|auto_generated|divider|divider|StageOut[352]~55_combout\ & ((\CLOCK_ADJ|ADC_CLK\(8) & (!\vclock|Div0|auto_generated|divider|divider|op_7~1\)) # (!\CLOCK_ADJ|ADC_CLK\(8) & 
-- (\vclock|Div0|auto_generated|divider|divider|op_7~1\ & VCC)))) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[352]~55_combout\ & ((\CLOCK_ADJ|ADC_CLK\(8) & ((\vclock|Div0|auto_generated|divider|divider|op_7~1\) # (GND))) # 
-- (!\CLOCK_ADJ|ADC_CLK\(8) & (!\vclock|Div0|auto_generated|divider|divider|op_7~1\))))
-- \vclock|Div0|auto_generated|divider|divider|op_7~3\ = CARRY((\vclock|Div0|auto_generated|divider|divider|StageOut[352]~55_combout\ & (\CLOCK_ADJ|ADC_CLK\(8) & !\vclock|Div0|auto_generated|divider|divider|op_7~1\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[352]~55_combout\ & ((\CLOCK_ADJ|ADC_CLK\(8)) # (!\vclock|Div0|auto_generated|divider|divider|op_7~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[352]~55_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(8),
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_7~1\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_7~2_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_7~3\);

-- Location: LCCOMB_X28_Y19_N4
\vclock|Div0|auto_generated|divider|divider|op_7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_7~4_combout\ = ((\vclock|Div0|auto_generated|divider|divider|StageOut[353]~54_combout\ $ (\CLOCK_ADJ|ADC_CLK\(9) $ (\vclock|Div0|auto_generated|divider|divider|op_7~3\)))) # (GND)
-- \vclock|Div0|auto_generated|divider|divider|op_7~5\ = CARRY((\vclock|Div0|auto_generated|divider|divider|StageOut[353]~54_combout\ & ((!\vclock|Div0|auto_generated|divider|divider|op_7~3\) # (!\CLOCK_ADJ|ADC_CLK\(9)))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[353]~54_combout\ & (!\CLOCK_ADJ|ADC_CLK\(9) & !\vclock|Div0|auto_generated|divider|divider|op_7~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[353]~54_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(9),
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_7~3\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_7~4_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_7~5\);

-- Location: LCCOMB_X28_Y19_N6
\vclock|Div0|auto_generated|divider|divider|op_7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_7~6_combout\ = (\vclock|Div0|auto_generated|divider|divider|StageOut[354]~53_combout\ & ((\CLOCK_ADJ|ADC_CLK\(10) & (!\vclock|Div0|auto_generated|divider|divider|op_7~5\)) # (!\CLOCK_ADJ|ADC_CLK\(10) & 
-- (\vclock|Div0|auto_generated|divider|divider|op_7~5\ & VCC)))) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[354]~53_combout\ & ((\CLOCK_ADJ|ADC_CLK\(10) & ((\vclock|Div0|auto_generated|divider|divider|op_7~5\) # (GND))) # 
-- (!\CLOCK_ADJ|ADC_CLK\(10) & (!\vclock|Div0|auto_generated|divider|divider|op_7~5\))))
-- \vclock|Div0|auto_generated|divider|divider|op_7~7\ = CARRY((\vclock|Div0|auto_generated|divider|divider|StageOut[354]~53_combout\ & (\CLOCK_ADJ|ADC_CLK\(10) & !\vclock|Div0|auto_generated|divider|divider|op_7~5\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[354]~53_combout\ & ((\CLOCK_ADJ|ADC_CLK\(10)) # (!\vclock|Div0|auto_generated|divider|divider|op_7~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[354]~53_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(10),
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_7~5\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_7~6_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_7~7\);

-- Location: LCCOMB_X28_Y19_N8
\vclock|Div0|auto_generated|divider|divider|op_7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_7~8_combout\ = ((\vclock|Div0|auto_generated|divider|divider|StageOut[355]~52_combout\ $ (\CLOCK_ADJ|ADC_CLK\(11) $ (\vclock|Div0|auto_generated|divider|divider|op_7~7\)))) # (GND)
-- \vclock|Div0|auto_generated|divider|divider|op_7~9\ = CARRY((\vclock|Div0|auto_generated|divider|divider|StageOut[355]~52_combout\ & ((!\vclock|Div0|auto_generated|divider|divider|op_7~7\) # (!\CLOCK_ADJ|ADC_CLK\(11)))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[355]~52_combout\ & (!\CLOCK_ADJ|ADC_CLK\(11) & !\vclock|Div0|auto_generated|divider|divider|op_7~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[355]~52_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(11),
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_7~7\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_7~8_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_7~9\);

-- Location: LCCOMB_X28_Y19_N10
\vclock|Div0|auto_generated|divider|divider|op_7~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_7~10_combout\ = (\vclock|Div0|auto_generated|divider|divider|StageOut[356]~51_combout\ & ((\CLOCK_ADJ|ADC_CLK\(12) & (!\vclock|Div0|auto_generated|divider|divider|op_7~9\)) # (!\CLOCK_ADJ|ADC_CLK\(12) & 
-- (\vclock|Div0|auto_generated|divider|divider|op_7~9\ & VCC)))) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[356]~51_combout\ & ((\CLOCK_ADJ|ADC_CLK\(12) & ((\vclock|Div0|auto_generated|divider|divider|op_7~9\) # (GND))) # 
-- (!\CLOCK_ADJ|ADC_CLK\(12) & (!\vclock|Div0|auto_generated|divider|divider|op_7~9\))))
-- \vclock|Div0|auto_generated|divider|divider|op_7~11\ = CARRY((\vclock|Div0|auto_generated|divider|divider|StageOut[356]~51_combout\ & (\CLOCK_ADJ|ADC_CLK\(12) & !\vclock|Div0|auto_generated|divider|divider|op_7~9\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[356]~51_combout\ & ((\CLOCK_ADJ|ADC_CLK\(12)) # (!\vclock|Div0|auto_generated|divider|divider|op_7~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[356]~51_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(12),
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_7~9\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_7~10_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_7~11\);

-- Location: LCCOMB_X28_Y19_N12
\vclock|Div0|auto_generated|divider|divider|op_7~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_7~12_combout\ = ((\CLOCK_ADJ|ADC_CLK\(13) $ (\vclock|Div0|auto_generated|divider|divider|StageOut[357]~50_combout\ $ (\vclock|Div0|auto_generated|divider|divider|op_7~11\)))) # (GND)
-- \vclock|Div0|auto_generated|divider|divider|op_7~13\ = CARRY((\CLOCK_ADJ|ADC_CLK\(13) & (\vclock|Div0|auto_generated|divider|divider|StageOut[357]~50_combout\ & !\vclock|Div0|auto_generated|divider|divider|op_7~11\)) # (!\CLOCK_ADJ|ADC_CLK\(13) & 
-- ((\vclock|Div0|auto_generated|divider|divider|StageOut[357]~50_combout\) # (!\vclock|Div0|auto_generated|divider|divider|op_7~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(13),
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[357]~50_combout\,
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_7~11\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_7~12_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_7~13\);

-- Location: LCCOMB_X28_Y19_N14
\vclock|Div0|auto_generated|divider|divider|op_7~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_7~14_combout\ = (\vclock|Div0|auto_generated|divider|divider|StageOut[358]~49_combout\ & ((\CLOCK_ADJ|ADC_CLK\(14) & (!\vclock|Div0|auto_generated|divider|divider|op_7~13\)) # (!\CLOCK_ADJ|ADC_CLK\(14) & 
-- (\vclock|Div0|auto_generated|divider|divider|op_7~13\ & VCC)))) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[358]~49_combout\ & ((\CLOCK_ADJ|ADC_CLK\(14) & ((\vclock|Div0|auto_generated|divider|divider|op_7~13\) # (GND))) # 
-- (!\CLOCK_ADJ|ADC_CLK\(14) & (!\vclock|Div0|auto_generated|divider|divider|op_7~13\))))
-- \vclock|Div0|auto_generated|divider|divider|op_7~15\ = CARRY((\vclock|Div0|auto_generated|divider|divider|StageOut[358]~49_combout\ & (\CLOCK_ADJ|ADC_CLK\(14) & !\vclock|Div0|auto_generated|divider|divider|op_7~13\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[358]~49_combout\ & ((\CLOCK_ADJ|ADC_CLK\(14)) # (!\vclock|Div0|auto_generated|divider|divider|op_7~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[358]~49_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(14),
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_7~13\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_7~14_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_7~15\);

-- Location: LCCOMB_X28_Y19_N16
\vclock|Div0|auto_generated|divider|divider|op_7~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_7~16_combout\ = ((\CLOCK_ADJ|ADC_CLK\(15) $ (\vclock|Div0|auto_generated|divider|divider|StageOut[359]~48_combout\ $ (\vclock|Div0|auto_generated|divider|divider|op_7~15\)))) # (GND)
-- \vclock|Div0|auto_generated|divider|divider|op_7~17\ = CARRY((\CLOCK_ADJ|ADC_CLK\(15) & (\vclock|Div0|auto_generated|divider|divider|StageOut[359]~48_combout\ & !\vclock|Div0|auto_generated|divider|divider|op_7~15\)) # (!\CLOCK_ADJ|ADC_CLK\(15) & 
-- ((\vclock|Div0|auto_generated|divider|divider|StageOut[359]~48_combout\) # (!\vclock|Div0|auto_generated|divider|divider|op_7~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(15),
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[359]~48_combout\,
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_7~15\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_7~16_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_7~17\);

-- Location: LCCOMB_X28_Y19_N18
\vclock|Div0|auto_generated|divider|divider|op_7~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_7~18_combout\ = (\vclock|Div0|auto_generated|divider|divider|StageOut[360]~47_combout\ & ((\CLOCK_ADJ|ADC_CLK\(16) & (!\vclock|Div0|auto_generated|divider|divider|op_7~17\)) # (!\CLOCK_ADJ|ADC_CLK\(16) & 
-- (\vclock|Div0|auto_generated|divider|divider|op_7~17\ & VCC)))) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[360]~47_combout\ & ((\CLOCK_ADJ|ADC_CLK\(16) & ((\vclock|Div0|auto_generated|divider|divider|op_7~17\) # (GND))) # 
-- (!\CLOCK_ADJ|ADC_CLK\(16) & (!\vclock|Div0|auto_generated|divider|divider|op_7~17\))))
-- \vclock|Div0|auto_generated|divider|divider|op_7~19\ = CARRY((\vclock|Div0|auto_generated|divider|divider|StageOut[360]~47_combout\ & (\CLOCK_ADJ|ADC_CLK\(16) & !\vclock|Div0|auto_generated|divider|divider|op_7~17\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[360]~47_combout\ & ((\CLOCK_ADJ|ADC_CLK\(16)) # (!\vclock|Div0|auto_generated|divider|divider|op_7~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[360]~47_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(16),
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_7~17\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_7~18_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_7~19\);

-- Location: LCCOMB_X28_Y19_N20
\vclock|Div0|auto_generated|divider|divider|op_7~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_7~20_combout\ = \vclock|Div0|auto_generated|divider|divider|op_7~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \vclock|Div0|auto_generated|divider|divider|op_7~19\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_7~20_combout\);

-- Location: LCCOMB_X29_Y19_N28
\vclock|Div0|auto_generated|divider|divider|StageOut[384]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[384]~57_combout\ = (\vclock|Div0|auto_generated|divider|divider|selnose[432]~7_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_7~20_combout\ & 
-- ((\vclock|Div0|auto_generated|divider|divider|StageOut[360]~47_combout\))) # (!\vclock|Div0|auto_generated|divider|divider|op_7~20_combout\ & (\vclock|Div0|auto_generated|divider|divider|op_7~18_combout\)))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|selnose[432]~7_combout\ & (((\vclock|Div0|auto_generated|divider|divider|StageOut[360]~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|selnose[432]~7_combout\,
	datab => \vclock|Div0|auto_generated|divider|divider|op_7~18_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|StageOut[360]~47_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_7~20_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[384]~57_combout\);

-- Location: LCCOMB_X29_Y19_N30
\vclock|Div0|auto_generated|divider|divider|StageOut[383]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[383]~58_combout\ = (\vclock|Div0|auto_generated|divider|divider|selnose[432]~7_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_7~20_combout\ & 
-- (\vclock|Div0|auto_generated|divider|divider|StageOut[359]~48_combout\)) # (!\vclock|Div0|auto_generated|divider|divider|op_7~20_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_7~16_combout\))))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|selnose[432]~7_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut[359]~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|selnose[432]~7_combout\,
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[359]~48_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|op_7~16_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_7~20_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[383]~58_combout\);

-- Location: LCCOMB_X29_Y19_N0
\vclock|Div0|auto_generated|divider|divider|StageOut[382]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[382]~59_combout\ = (\vclock|Div0|auto_generated|divider|divider|selnose[432]~7_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_7~20_combout\ & 
-- ((\vclock|Div0|auto_generated|divider|divider|StageOut[358]~49_combout\))) # (!\vclock|Div0|auto_generated|divider|divider|op_7~20_combout\ & (\vclock|Div0|auto_generated|divider|divider|op_7~14_combout\)))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|selnose[432]~7_combout\ & (((\vclock|Div0|auto_generated|divider|divider|StageOut[358]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|op_7~14_combout\,
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[358]~49_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|selnose[432]~7_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_7~20_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[382]~59_combout\);

-- Location: LCCOMB_X28_Y19_N22
\vclock|Div0|auto_generated|divider|divider|StageOut[381]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[381]~60_combout\ = (\vclock|Div0|auto_generated|divider|divider|selnose[432]~7_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_7~20_combout\ & 
-- ((\vclock|Div0|auto_generated|divider|divider|StageOut[357]~50_combout\))) # (!\vclock|Div0|auto_generated|divider|divider|op_7~20_combout\ & (\vclock|Div0|auto_generated|divider|divider|op_7~12_combout\)))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|selnose[432]~7_combout\ & (((\vclock|Div0|auto_generated|divider|divider|StageOut[357]~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|op_7~12_combout\,
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[357]~50_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|selnose[432]~7_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_7~20_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[381]~60_combout\);

-- Location: LCCOMB_X27_Y19_N10
\vclock|Div0|auto_generated|divider|divider|StageOut[380]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[380]~61_combout\ = (\vclock|Div0|auto_generated|divider|divider|selnose[432]~7_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_7~20_combout\ & 
-- ((\vclock|Div0|auto_generated|divider|divider|StageOut[356]~51_combout\))) # (!\vclock|Div0|auto_generated|divider|divider|op_7~20_combout\ & (\vclock|Div0|auto_generated|divider|divider|op_7~10_combout\)))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|selnose[432]~7_combout\ & (((\vclock|Div0|auto_generated|divider|divider|StageOut[356]~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|selnose[432]~7_combout\,
	datab => \vclock|Div0|auto_generated|divider|divider|op_7~10_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|op_7~20_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|StageOut[356]~51_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[380]~61_combout\);

-- Location: LCCOMB_X25_Y19_N30
\vclock|Div0|auto_generated|divider|divider|StageOut[379]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[379]~62_combout\ = (\vclock|Div0|auto_generated|divider|divider|selnose[432]~7_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_7~20_combout\ & 
-- (\vclock|Div0|auto_generated|divider|divider|StageOut[355]~52_combout\)) # (!\vclock|Div0|auto_generated|divider|divider|op_7~20_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_7~8_combout\))))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|selnose[432]~7_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut[355]~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|selnose[432]~7_combout\,
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[355]~52_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|op_7~8_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_7~20_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[379]~62_combout\);

-- Location: LCCOMB_X28_Y21_N10
\vclock|Div0|auto_generated|divider|divider|StageOut[378]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[378]~63_combout\ = (\vclock|Div0|auto_generated|divider|divider|selnose[432]~7_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_7~20_combout\ & 
-- (\vclock|Div0|auto_generated|divider|divider|StageOut[354]~53_combout\)) # (!\vclock|Div0|auto_generated|divider|divider|op_7~20_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_7~6_combout\))))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|selnose[432]~7_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut[354]~53_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|selnose[432]~7_combout\,
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[354]~53_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|op_7~20_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_7~6_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[378]~63_combout\);

-- Location: LCCOMB_X28_Y20_N26
\vclock|Div0|auto_generated|divider|divider|StageOut[377]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[377]~64_combout\ = (\vclock|Div0|auto_generated|divider|divider|selnose[432]~7_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_7~20_combout\ & 
-- (\vclock|Div0|auto_generated|divider|divider|StageOut[353]~54_combout\)) # (!\vclock|Div0|auto_generated|divider|divider|op_7~20_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_7~4_combout\))))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|selnose[432]~7_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut[353]~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[353]~54_combout\,
	datab => \vclock|Div0|auto_generated|divider|divider|selnose[432]~7_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|op_7~4_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_7~20_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[377]~64_combout\);

-- Location: LCCOMB_X27_Y19_N20
\vclock|Div0|auto_generated|divider|divider|StageOut[376]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[376]~65_combout\ = (\vclock|Div0|auto_generated|divider|divider|selnose[432]~7_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_7~20_combout\ & 
-- (\vclock|Div0|auto_generated|divider|divider|StageOut[352]~55_combout\)) # (!\vclock|Div0|auto_generated|divider|divider|op_7~20_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_7~2_combout\))))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|selnose[432]~7_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut[352]~55_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[352]~55_combout\,
	datab => \vclock|Div0|auto_generated|divider|divider|selnose[432]~7_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|op_7~20_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_7~2_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[376]~65_combout\);

-- Location: LCCOMB_X27_Y19_N30
\vclock|Div0|auto_generated|divider|divider|StageOut[375]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[375]~66_combout\ = (\vclock|Div0|auto_generated|divider|divider|selnose[432]~7_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_7~20_combout\ & 
-- ((\vclock|Div0|auto_generated|divider|divider|StageOut[351]~56_combout\))) # (!\vclock|Div0|auto_generated|divider|divider|op_7~20_combout\ & (\vclock|Div0|auto_generated|divider|divider|op_7~0_combout\)))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|selnose[432]~7_combout\ & (((\vclock|Div0|auto_generated|divider|divider|StageOut[351]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|selnose[432]~7_combout\,
	datab => \vclock|Div0|auto_generated|divider|divider|op_7~0_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|op_7~20_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|StageOut[351]~56_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[375]~66_combout\);

-- Location: LCCOMB_X30_Y19_N20
\vclock|Div0|auto_generated|divider|divider|StageOut[374]\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut\(374) = (((\CLOCK_ADJ|ADC_CLK\(17)) # (\vclock|Div0|auto_generated|divider|divider|op_7~20_combout\)) # (!\vclock|Div0|auto_generated|divider|divider|selnose[459]~0_combout\)) # 
-- (!\CLOCK_ADJ|ADC_CLK\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(6),
	datab => \vclock|Div0|auto_generated|divider|divider|selnose[459]~0_combout\,
	datac => \CLOCK_ADJ|ADC_CLK\(17),
	datad => \vclock|Div0|auto_generated|divider|divider|op_7~20_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut\(374));

-- Location: LCCOMB_X29_Y19_N4
\vclock|Div0|auto_generated|divider|divider|op_8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_8~0_combout\ = (\vclock|Div0|auto_generated|divider|divider|StageOut\(374) & ((GND) # (!\CLOCK_ADJ|ADC_CLK\(7)))) # (!\vclock|Div0|auto_generated|divider|divider|StageOut\(374) & (\CLOCK_ADJ|ADC_CLK\(7) $ 
-- (GND)))
-- \vclock|Div0|auto_generated|divider|divider|op_8~1\ = CARRY((\vclock|Div0|auto_generated|divider|divider|StageOut\(374)) # (!\CLOCK_ADJ|ADC_CLK\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut\(374),
	datab => \CLOCK_ADJ|ADC_CLK\(7),
	datad => VCC,
	combout => \vclock|Div0|auto_generated|divider|divider|op_8~0_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_8~1\);

-- Location: LCCOMB_X29_Y19_N6
\vclock|Div0|auto_generated|divider|divider|op_8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_8~2_combout\ = (\vclock|Div0|auto_generated|divider|divider|StageOut[375]~66_combout\ & ((\CLOCK_ADJ|ADC_CLK\(8) & (!\vclock|Div0|auto_generated|divider|divider|op_8~1\)) # (!\CLOCK_ADJ|ADC_CLK\(8) & 
-- (\vclock|Div0|auto_generated|divider|divider|op_8~1\ & VCC)))) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[375]~66_combout\ & ((\CLOCK_ADJ|ADC_CLK\(8) & ((\vclock|Div0|auto_generated|divider|divider|op_8~1\) # (GND))) # 
-- (!\CLOCK_ADJ|ADC_CLK\(8) & (!\vclock|Div0|auto_generated|divider|divider|op_8~1\))))
-- \vclock|Div0|auto_generated|divider|divider|op_8~3\ = CARRY((\vclock|Div0|auto_generated|divider|divider|StageOut[375]~66_combout\ & (\CLOCK_ADJ|ADC_CLK\(8) & !\vclock|Div0|auto_generated|divider|divider|op_8~1\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[375]~66_combout\ & ((\CLOCK_ADJ|ADC_CLK\(8)) # (!\vclock|Div0|auto_generated|divider|divider|op_8~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[375]~66_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(8),
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_8~1\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_8~2_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_8~3\);

-- Location: LCCOMB_X29_Y19_N8
\vclock|Div0|auto_generated|divider|divider|op_8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_8~4_combout\ = ((\vclock|Div0|auto_generated|divider|divider|StageOut[376]~65_combout\ $ (\CLOCK_ADJ|ADC_CLK\(9) $ (\vclock|Div0|auto_generated|divider|divider|op_8~3\)))) # (GND)
-- \vclock|Div0|auto_generated|divider|divider|op_8~5\ = CARRY((\vclock|Div0|auto_generated|divider|divider|StageOut[376]~65_combout\ & ((!\vclock|Div0|auto_generated|divider|divider|op_8~3\) # (!\CLOCK_ADJ|ADC_CLK\(9)))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[376]~65_combout\ & (!\CLOCK_ADJ|ADC_CLK\(9) & !\vclock|Div0|auto_generated|divider|divider|op_8~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[376]~65_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(9),
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_8~3\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_8~4_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_8~5\);

-- Location: LCCOMB_X29_Y19_N10
\vclock|Div0|auto_generated|divider|divider|op_8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_8~6_combout\ = (\vclock|Div0|auto_generated|divider|divider|StageOut[377]~64_combout\ & ((\CLOCK_ADJ|ADC_CLK\(10) & (!\vclock|Div0|auto_generated|divider|divider|op_8~5\)) # (!\CLOCK_ADJ|ADC_CLK\(10) & 
-- (\vclock|Div0|auto_generated|divider|divider|op_8~5\ & VCC)))) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[377]~64_combout\ & ((\CLOCK_ADJ|ADC_CLK\(10) & ((\vclock|Div0|auto_generated|divider|divider|op_8~5\) # (GND))) # 
-- (!\CLOCK_ADJ|ADC_CLK\(10) & (!\vclock|Div0|auto_generated|divider|divider|op_8~5\))))
-- \vclock|Div0|auto_generated|divider|divider|op_8~7\ = CARRY((\vclock|Div0|auto_generated|divider|divider|StageOut[377]~64_combout\ & (\CLOCK_ADJ|ADC_CLK\(10) & !\vclock|Div0|auto_generated|divider|divider|op_8~5\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[377]~64_combout\ & ((\CLOCK_ADJ|ADC_CLK\(10)) # (!\vclock|Div0|auto_generated|divider|divider|op_8~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[377]~64_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(10),
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_8~5\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_8~6_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_8~7\);

-- Location: LCCOMB_X29_Y19_N12
\vclock|Div0|auto_generated|divider|divider|op_8~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_8~8_combout\ = ((\vclock|Div0|auto_generated|divider|divider|StageOut[378]~63_combout\ $ (\CLOCK_ADJ|ADC_CLK\(11) $ (\vclock|Div0|auto_generated|divider|divider|op_8~7\)))) # (GND)
-- \vclock|Div0|auto_generated|divider|divider|op_8~9\ = CARRY((\vclock|Div0|auto_generated|divider|divider|StageOut[378]~63_combout\ & ((!\vclock|Div0|auto_generated|divider|divider|op_8~7\) # (!\CLOCK_ADJ|ADC_CLK\(11)))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[378]~63_combout\ & (!\CLOCK_ADJ|ADC_CLK\(11) & !\vclock|Div0|auto_generated|divider|divider|op_8~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[378]~63_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(11),
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_8~7\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_8~8_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_8~9\);

-- Location: LCCOMB_X29_Y19_N14
\vclock|Div0|auto_generated|divider|divider|op_8~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_8~10_combout\ = (\vclock|Div0|auto_generated|divider|divider|StageOut[379]~62_combout\ & ((\CLOCK_ADJ|ADC_CLK\(12) & (!\vclock|Div0|auto_generated|divider|divider|op_8~9\)) # (!\CLOCK_ADJ|ADC_CLK\(12) & 
-- (\vclock|Div0|auto_generated|divider|divider|op_8~9\ & VCC)))) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[379]~62_combout\ & ((\CLOCK_ADJ|ADC_CLK\(12) & ((\vclock|Div0|auto_generated|divider|divider|op_8~9\) # (GND))) # 
-- (!\CLOCK_ADJ|ADC_CLK\(12) & (!\vclock|Div0|auto_generated|divider|divider|op_8~9\))))
-- \vclock|Div0|auto_generated|divider|divider|op_8~11\ = CARRY((\vclock|Div0|auto_generated|divider|divider|StageOut[379]~62_combout\ & (\CLOCK_ADJ|ADC_CLK\(12) & !\vclock|Div0|auto_generated|divider|divider|op_8~9\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[379]~62_combout\ & ((\CLOCK_ADJ|ADC_CLK\(12)) # (!\vclock|Div0|auto_generated|divider|divider|op_8~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[379]~62_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(12),
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_8~9\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_8~10_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_8~11\);

-- Location: LCCOMB_X29_Y19_N16
\vclock|Div0|auto_generated|divider|divider|op_8~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_8~12_combout\ = ((\CLOCK_ADJ|ADC_CLK\(13) $ (\vclock|Div0|auto_generated|divider|divider|StageOut[380]~61_combout\ $ (\vclock|Div0|auto_generated|divider|divider|op_8~11\)))) # (GND)
-- \vclock|Div0|auto_generated|divider|divider|op_8~13\ = CARRY((\CLOCK_ADJ|ADC_CLK\(13) & (\vclock|Div0|auto_generated|divider|divider|StageOut[380]~61_combout\ & !\vclock|Div0|auto_generated|divider|divider|op_8~11\)) # (!\CLOCK_ADJ|ADC_CLK\(13) & 
-- ((\vclock|Div0|auto_generated|divider|divider|StageOut[380]~61_combout\) # (!\vclock|Div0|auto_generated|divider|divider|op_8~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(13),
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[380]~61_combout\,
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_8~11\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_8~12_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_8~13\);

-- Location: LCCOMB_X29_Y19_N18
\vclock|Div0|auto_generated|divider|divider|op_8~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_8~14_combout\ = (\CLOCK_ADJ|ADC_CLK\(14) & ((\vclock|Div0|auto_generated|divider|divider|StageOut[381]~60_combout\ & (!\vclock|Div0|auto_generated|divider|divider|op_8~13\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[381]~60_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_8~13\) # (GND))))) # (!\CLOCK_ADJ|ADC_CLK\(14) & ((\vclock|Div0|auto_generated|divider|divider|StageOut[381]~60_combout\ & 
-- (\vclock|Div0|auto_generated|divider|divider|op_8~13\ & VCC)) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[381]~60_combout\ & (!\vclock|Div0|auto_generated|divider|divider|op_8~13\))))
-- \vclock|Div0|auto_generated|divider|divider|op_8~15\ = CARRY((\CLOCK_ADJ|ADC_CLK\(14) & ((!\vclock|Div0|auto_generated|divider|divider|op_8~13\) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[381]~60_combout\))) # (!\CLOCK_ADJ|ADC_CLK\(14) & 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[381]~60_combout\ & !\vclock|Div0|auto_generated|divider|divider|op_8~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(14),
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[381]~60_combout\,
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_8~13\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_8~14_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_8~15\);

-- Location: LCCOMB_X29_Y19_N20
\vclock|Div0|auto_generated|divider|divider|op_8~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_8~16_combout\ = ((\CLOCK_ADJ|ADC_CLK\(15) $ (\vclock|Div0|auto_generated|divider|divider|StageOut[382]~59_combout\ $ (\vclock|Div0|auto_generated|divider|divider|op_8~15\)))) # (GND)
-- \vclock|Div0|auto_generated|divider|divider|op_8~17\ = CARRY((\CLOCK_ADJ|ADC_CLK\(15) & (\vclock|Div0|auto_generated|divider|divider|StageOut[382]~59_combout\ & !\vclock|Div0|auto_generated|divider|divider|op_8~15\)) # (!\CLOCK_ADJ|ADC_CLK\(15) & 
-- ((\vclock|Div0|auto_generated|divider|divider|StageOut[382]~59_combout\) # (!\vclock|Div0|auto_generated|divider|divider|op_8~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(15),
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[382]~59_combout\,
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_8~15\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_8~16_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_8~17\);

-- Location: LCCOMB_X29_Y19_N22
\vclock|Div0|auto_generated|divider|divider|op_8~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_8~18_combout\ = (\vclock|Div0|auto_generated|divider|divider|StageOut[383]~58_combout\ & ((\CLOCK_ADJ|ADC_CLK\(16) & (!\vclock|Div0|auto_generated|divider|divider|op_8~17\)) # (!\CLOCK_ADJ|ADC_CLK\(16) & 
-- (\vclock|Div0|auto_generated|divider|divider|op_8~17\ & VCC)))) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[383]~58_combout\ & ((\CLOCK_ADJ|ADC_CLK\(16) & ((\vclock|Div0|auto_generated|divider|divider|op_8~17\) # (GND))) # 
-- (!\CLOCK_ADJ|ADC_CLK\(16) & (!\vclock|Div0|auto_generated|divider|divider|op_8~17\))))
-- \vclock|Div0|auto_generated|divider|divider|op_8~19\ = CARRY((\vclock|Div0|auto_generated|divider|divider|StageOut[383]~58_combout\ & (\CLOCK_ADJ|ADC_CLK\(16) & !\vclock|Div0|auto_generated|divider|divider|op_8~17\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[383]~58_combout\ & ((\CLOCK_ADJ|ADC_CLK\(16)) # (!\vclock|Div0|auto_generated|divider|divider|op_8~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[383]~58_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(16),
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_8~17\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_8~18_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_8~19\);

-- Location: LCCOMB_X29_Y19_N24
\vclock|Div0|auto_generated|divider|divider|op_8~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_8~20_combout\ = ((\CLOCK_ADJ|ADC_CLK\(17) $ (\vclock|Div0|auto_generated|divider|divider|StageOut[384]~57_combout\ $ (\vclock|Div0|auto_generated|divider|divider|op_8~19\)))) # (GND)
-- \vclock|Div0|auto_generated|divider|divider|op_8~21\ = CARRY((\CLOCK_ADJ|ADC_CLK\(17) & (\vclock|Div0|auto_generated|divider|divider|StageOut[384]~57_combout\ & !\vclock|Div0|auto_generated|divider|divider|op_8~19\)) # (!\CLOCK_ADJ|ADC_CLK\(17) & 
-- ((\vclock|Div0|auto_generated|divider|divider|StageOut[384]~57_combout\) # (!\vclock|Div0|auto_generated|divider|divider|op_8~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(17),
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[384]~57_combout\,
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_8~19\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_8~20_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_8~21\);

-- Location: LCCOMB_X29_Y19_N26
\vclock|Div0|auto_generated|divider|divider|op_8~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_8~22_combout\ = !\vclock|Div0|auto_generated|divider|divider|op_8~21\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \vclock|Div0|auto_generated|divider|divider|op_8~21\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_8~22_combout\);

-- Location: LCCOMB_X29_Y20_N22
\vclock|Equal0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Equal0~20_combout\ = ((\vclock|Div0|auto_generated|divider|divider|op_8~22_combout\ & ((\CLOCK_ADJ|ADC_CLK\(17)) # (\vclock|Div0|auto_generated|divider|divider|op_7~20_combout\)))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|selnose[459]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(17),
	datab => \vclock|Div0|auto_generated|divider|divider|op_8~22_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|selnose[459]~0_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_7~20_combout\,
	combout => \vclock|Equal0~20_combout\);

-- Location: LCCOMB_X30_Y21_N24
\vclock|vclk_cnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|vclk_cnt~7_combout\ = (!\vclock|vclk_cnt\(0) & !\vclock|Equal0~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vclock|vclk_cnt\(0),
	datad => \vclock|Equal0~17_combout\,
	combout => \vclock|vclk_cnt~7_combout\);

-- Location: FF_X30_Y21_N25
\vclock|vclk_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \vclock|vclk_cnt~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vclock|vclk_cnt\(0));

-- Location: LCCOMB_X29_Y21_N22
\vclock|vclk_cnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|vclk_cnt~6_combout\ = (!\vclock|Equal0~17_combout\ & (\vclock|vclk_cnt\(0) $ (\vclock|vclk_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vclock|vclk_cnt\(0),
	datac => \vclock|vclk_cnt\(1),
	datad => \vclock|Equal0~17_combout\,
	combout => \vclock|vclk_cnt~6_combout\);

-- Location: FF_X29_Y21_N23
\vclock|vclk_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \vclock|vclk_cnt~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vclock|vclk_cnt\(1));

-- Location: LCCOMB_X30_Y21_N22
\vclock|vclk_cnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|vclk_cnt~8_combout\ = (!\vclock|Equal0~17_combout\ & (\vclock|vclk_cnt\(2) $ (((\vclock|vclk_cnt\(0) & \vclock|vclk_cnt\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|vclk_cnt\(0),
	datab => \vclock|vclk_cnt\(1),
	datac => \vclock|vclk_cnt\(2),
	datad => \vclock|Equal0~17_combout\,
	combout => \vclock|vclk_cnt~8_combout\);

-- Location: FF_X30_Y21_N23
\vclock|vclk_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \vclock|vclk_cnt~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vclock|vclk_cnt\(2));

-- Location: LCCOMB_X31_Y21_N0
\vclock|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Add0~1_combout\ = \vclock|vclk_cnt\(3) $ (((\vclock|vclk_cnt\(1) & (\vclock|vclk_cnt\(2) & \vclock|vclk_cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|vclk_cnt\(1),
	datab => \vclock|vclk_cnt\(2),
	datac => \vclock|vclk_cnt\(0),
	datad => \vclock|vclk_cnt\(3),
	combout => \vclock|Add0~1_combout\);

-- Location: LCCOMB_X30_Y21_N12
\vclock|vclk_cnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|vclk_cnt~5_combout\ = (\vclock|Add0~1_combout\ & !\vclock|Equal0~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vclock|Add0~1_combout\,
	datad => \vclock|Equal0~17_combout\,
	combout => \vclock|vclk_cnt~5_combout\);

-- Location: FF_X30_Y21_N13
\vclock|vclk_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \vclock|vclk_cnt~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vclock|vclk_cnt\(3));

-- Location: LCCOMB_X30_Y21_N18
\vclock|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Add0~0_combout\ = (\vclock|vclk_cnt\(3) & (\vclock|vclk_cnt\(0) & (\vclock|vclk_cnt\(2) & \vclock|vclk_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|vclk_cnt\(3),
	datab => \vclock|vclk_cnt\(0),
	datac => \vclock|vclk_cnt\(2),
	datad => \vclock|vclk_cnt\(1),
	combout => \vclock|Add0~0_combout\);

-- Location: LCCOMB_X29_Y21_N30
\vclock|vclk_cnt~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|vclk_cnt~4_combout\ = (!\vclock|Equal0~17_combout\ & (\vclock|Add0~0_combout\ $ (\vclock|vclk_cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vclock|Add0~0_combout\,
	datac => \vclock|vclk_cnt\(4),
	datad => \vclock|Equal0~17_combout\,
	combout => \vclock|vclk_cnt~4_combout\);

-- Location: FF_X29_Y21_N31
\vclock|vclk_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \vclock|vclk_cnt~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vclock|vclk_cnt\(4));

-- Location: LCCOMB_X29_Y21_N26
\vclock|vclk_cnt~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|vclk_cnt~9_combout\ = (!\vclock|Equal0~17_combout\ & (\vclock|vclk_cnt\(5) $ (((\vclock|vclk_cnt\(4) & \vclock|Add0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|vclk_cnt\(4),
	datab => \vclock|Add0~0_combout\,
	datac => \vclock|vclk_cnt\(5),
	datad => \vclock|Equal0~17_combout\,
	combout => \vclock|vclk_cnt~9_combout\);

-- Location: FF_X29_Y21_N27
\vclock|vclk_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \vclock|vclk_cnt~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vclock|vclk_cnt\(5));

-- Location: LCCOMB_X30_Y21_N28
\vclock|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Add0~2_combout\ = \vclock|vclk_cnt\(5) $ (((\vclock|vclk_cnt\(4) & \vclock|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vclock|vclk_cnt\(4),
	datac => \vclock|vclk_cnt\(5),
	datad => \vclock|Add0~0_combout\,
	combout => \vclock|Add0~2_combout\);

-- Location: LCCOMB_X30_Y22_N30
\vclock|Div0|auto_generated|divider|divider|selnose[486]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|selnose[486]~8_combout\ = (!\CLOCK_ADJ|ADC_CLK\(21) & (!\CLOCK_ADJ|ADC_CLK\(20) & !\CLOCK_ADJ|ADC_CLK\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(21),
	datab => \CLOCK_ADJ|ADC_CLK\(20),
	datac => \CLOCK_ADJ|ADC_CLK\(19),
	combout => \vclock|Div0|auto_generated|divider|divider|selnose[486]~8_combout\);

-- Location: LCCOMB_X24_Y19_N0
\vclock|Div0|auto_generated|divider|divider|StageOut[408]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[408]~67_combout\ = (\vclock|Div0|auto_generated|divider|divider|selnose[459]~0_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_8~22_combout\ & 
-- (\vclock|Div0|auto_generated|divider|divider|StageOut[384]~57_combout\)) # (!\vclock|Div0|auto_generated|divider|divider|op_8~22_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_8~20_combout\))))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|selnose[459]~0_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut[384]~57_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[384]~57_combout\,
	datab => \vclock|Div0|auto_generated|divider|divider|selnose[459]~0_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|op_8~22_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_8~20_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[408]~67_combout\);

-- Location: LCCOMB_X24_Y19_N30
\vclock|Div0|auto_generated|divider|divider|StageOut[407]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[407]~68_combout\ = (\vclock|Div0|auto_generated|divider|divider|selnose[459]~0_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_8~22_combout\ & 
-- (\vclock|Div0|auto_generated|divider|divider|StageOut[383]~58_combout\)) # (!\vclock|Div0|auto_generated|divider|divider|op_8~22_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_8~18_combout\))))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|selnose[459]~0_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut[383]~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|selnose[459]~0_combout\,
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[383]~58_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|op_8~22_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_8~18_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[407]~68_combout\);

-- Location: LCCOMB_X29_Y19_N2
\vclock|Div0|auto_generated|divider|divider|StageOut[406]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[406]~69_combout\ = (\vclock|Div0|auto_generated|divider|divider|selnose[459]~0_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_8~22_combout\ & 
-- (\vclock|Div0|auto_generated|divider|divider|StageOut[382]~59_combout\)) # (!\vclock|Div0|auto_generated|divider|divider|op_8~22_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_8~16_combout\))))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|selnose[459]~0_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut[382]~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|selnose[459]~0_combout\,
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[382]~59_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|op_8~22_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_8~16_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[406]~69_combout\);

-- Location: LCCOMB_X25_Y19_N4
\vclock|Div0|auto_generated|divider|divider|StageOut[405]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[405]~70_combout\ = (\vclock|Div0|auto_generated|divider|divider|selnose[459]~0_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_8~22_combout\ & 
-- (\vclock|Div0|auto_generated|divider|divider|StageOut[381]~60_combout\)) # (!\vclock|Div0|auto_generated|divider|divider|op_8~22_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_8~14_combout\))))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|selnose[459]~0_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut[381]~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|selnose[459]~0_combout\,
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[381]~60_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|op_8~22_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_8~14_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[405]~70_combout\);

-- Location: LCCOMB_X27_Y19_N4
\vclock|Div0|auto_generated|divider|divider|StageOut[404]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[404]~71_combout\ = (\vclock|Div0|auto_generated|divider|divider|selnose[459]~0_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_8~22_combout\ & 
-- (\vclock|Div0|auto_generated|divider|divider|StageOut[380]~61_combout\)) # (!\vclock|Div0|auto_generated|divider|divider|op_8~22_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_8~12_combout\))))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|selnose[459]~0_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut[380]~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[380]~61_combout\,
	datab => \vclock|Div0|auto_generated|divider|divider|selnose[459]~0_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|op_8~12_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_8~22_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[404]~71_combout\);

-- Location: LCCOMB_X25_Y19_N22
\vclock|Div0|auto_generated|divider|divider|StageOut[403]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[403]~72_combout\ = (\vclock|Div0|auto_generated|divider|divider|selnose[459]~0_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_8~22_combout\ & 
-- (\vclock|Div0|auto_generated|divider|divider|StageOut[379]~62_combout\)) # (!\vclock|Div0|auto_generated|divider|divider|op_8~22_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_8~10_combout\))))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|selnose[459]~0_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut[379]~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[379]~62_combout\,
	datab => \vclock|Div0|auto_generated|divider|divider|selnose[459]~0_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|op_8~22_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_8~10_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[403]~72_combout\);

-- Location: LCCOMB_X28_Y21_N8
\vclock|Div0|auto_generated|divider|divider|StageOut[402]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[402]~73_combout\ = (\vclock|Div0|auto_generated|divider|divider|selnose[459]~0_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_8~22_combout\ & 
-- ((\vclock|Div0|auto_generated|divider|divider|StageOut[378]~63_combout\))) # (!\vclock|Div0|auto_generated|divider|divider|op_8~22_combout\ & (\vclock|Div0|auto_generated|divider|divider|op_8~8_combout\)))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|selnose[459]~0_combout\ & (((\vclock|Div0|auto_generated|divider|divider|StageOut[378]~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|selnose[459]~0_combout\,
	datab => \vclock|Div0|auto_generated|divider|divider|op_8~8_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|op_8~22_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|StageOut[378]~63_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[402]~73_combout\);

-- Location: LCCOMB_X28_Y21_N18
\vclock|Div0|auto_generated|divider|divider|StageOut[401]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[401]~74_combout\ = (\vclock|Div0|auto_generated|divider|divider|selnose[459]~0_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_8~22_combout\ & 
-- ((\vclock|Div0|auto_generated|divider|divider|StageOut[377]~64_combout\))) # (!\vclock|Div0|auto_generated|divider|divider|op_8~22_combout\ & (\vclock|Div0|auto_generated|divider|divider|op_8~6_combout\)))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|selnose[459]~0_combout\ & (((\vclock|Div0|auto_generated|divider|divider|StageOut[377]~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|selnose[459]~0_combout\,
	datab => \vclock|Div0|auto_generated|divider|divider|op_8~6_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|op_8~22_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|StageOut[377]~64_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[401]~74_combout\);

-- Location: LCCOMB_X27_Y19_N22
\vclock|Div0|auto_generated|divider|divider|StageOut[400]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[400]~75_combout\ = (\vclock|Div0|auto_generated|divider|divider|selnose[459]~0_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_8~22_combout\ & 
-- (\vclock|Div0|auto_generated|divider|divider|StageOut[376]~65_combout\)) # (!\vclock|Div0|auto_generated|divider|divider|op_8~22_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_8~4_combout\))))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|selnose[459]~0_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut[376]~65_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|selnose[459]~0_combout\,
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[376]~65_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|op_8~4_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_8~22_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[400]~75_combout\);

-- Location: LCCOMB_X27_Y19_N8
\vclock|Div0|auto_generated|divider|divider|StageOut[399]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[399]~76_combout\ = (\vclock|Div0|auto_generated|divider|divider|selnose[459]~0_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_8~22_combout\ & 
-- (\vclock|Div0|auto_generated|divider|divider|StageOut[375]~66_combout\)) # (!\vclock|Div0|auto_generated|divider|divider|op_8~22_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_8~2_combout\))))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|selnose[459]~0_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut[375]~66_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[375]~66_combout\,
	datab => \vclock|Div0|auto_generated|divider|divider|selnose[459]~0_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|op_8~2_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_8~22_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[399]~76_combout\);

-- Location: LCCOMB_X25_Y19_N20
\vclock|Div0|auto_generated|divider|divider|StageOut[398]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[398]~77_combout\ = (\vclock|Div0|auto_generated|divider|divider|selnose[459]~0_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_8~22_combout\ & 
-- ((\vclock|Div0|auto_generated|divider|divider|StageOut\(374)))) # (!\vclock|Div0|auto_generated|divider|divider|op_8~22_combout\ & (\vclock|Div0|auto_generated|divider|divider|op_8~0_combout\)))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|selnose[459]~0_combout\ & (((\vclock|Div0|auto_generated|divider|divider|StageOut\(374)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|selnose[459]~0_combout\,
	datab => \vclock|Div0|auto_generated|divider|divider|op_8~0_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|op_8~22_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|StageOut\(374),
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[398]~77_combout\);

-- Location: LCCOMB_X30_Y21_N4
\vclock|Div0|auto_generated|divider|divider|StageOut[397]\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut\(397) = ((\vclock|Div0|auto_generated|divider|divider|op_8~22_combout\) # (!\vclock|Div0|auto_generated|divider|divider|selnose[459]~0_combout\)) # (!\CLOCK_ADJ|ADC_CLK\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLOCK_ADJ|ADC_CLK\(6),
	datac => \vclock|Div0|auto_generated|divider|divider|selnose[459]~0_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_8~22_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut\(397));

-- Location: LCCOMB_X24_Y19_N4
\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[7]~0_combout\ = (\vclock|Div0|auto_generated|divider|divider|StageOut\(397) & ((GND) # (!\CLOCK_ADJ|ADC_CLK\(7)))) # (!\vclock|Div0|auto_generated|divider|divider|StageOut\(397) & 
-- (\CLOCK_ADJ|ADC_CLK\(7) $ (GND)))
-- \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[7]~1\ = CARRY((\vclock|Div0|auto_generated|divider|divider|StageOut\(397)) # (!\CLOCK_ADJ|ADC_CLK\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut\(397),
	datab => \CLOCK_ADJ|ADC_CLK\(7),
	datad => VCC,
	combout => \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[7]~0_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[7]~1\);

-- Location: LCCOMB_X24_Y19_N6
\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[8]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[8]~2_combout\ = (\vclock|Div0|auto_generated|divider|divider|StageOut[398]~77_combout\ & ((\CLOCK_ADJ|ADC_CLK\(8) & 
-- (!\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[7]~1\)) # (!\CLOCK_ADJ|ADC_CLK\(8) & (\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[7]~1\ & VCC)))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[398]~77_combout\ & ((\CLOCK_ADJ|ADC_CLK\(8) & ((\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[7]~1\) # (GND))) # (!\CLOCK_ADJ|ADC_CLK\(8) & 
-- (!\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[7]~1\))))
-- \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[8]~3\ = CARRY((\vclock|Div0|auto_generated|divider|divider|StageOut[398]~77_combout\ & (\CLOCK_ADJ|ADC_CLK\(8) & !\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[7]~1\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[398]~77_combout\ & ((\CLOCK_ADJ|ADC_CLK\(8)) # (!\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[7]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[398]~77_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(8),
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[7]~1\,
	combout => \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[8]~2_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[8]~3\);

-- Location: LCCOMB_X24_Y19_N8
\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[9]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[9]~4_combout\ = ((\CLOCK_ADJ|ADC_CLK\(9) $ (\vclock|Div0|auto_generated|divider|divider|StageOut[399]~76_combout\ $ 
-- (\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[8]~3\)))) # (GND)
-- \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[9]~5\ = CARRY((\CLOCK_ADJ|ADC_CLK\(9) & (\vclock|Div0|auto_generated|divider|divider|StageOut[399]~76_combout\ & !\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[8]~3\)) # 
-- (!\CLOCK_ADJ|ADC_CLK\(9) & ((\vclock|Div0|auto_generated|divider|divider|StageOut[399]~76_combout\) # (!\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[8]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(9),
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[399]~76_combout\,
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[8]~3\,
	combout => \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[9]~4_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[9]~5\);

-- Location: LCCOMB_X24_Y19_N10
\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[10]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[10]~6_combout\ = (\vclock|Div0|auto_generated|divider|divider|StageOut[400]~75_combout\ & ((\CLOCK_ADJ|ADC_CLK\(10) & 
-- (!\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[9]~5\)) # (!\CLOCK_ADJ|ADC_CLK\(10) & (\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[9]~5\ & VCC)))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[400]~75_combout\ & ((\CLOCK_ADJ|ADC_CLK\(10) & ((\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[9]~5\) # (GND))) # (!\CLOCK_ADJ|ADC_CLK\(10) & 
-- (!\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[9]~5\))))
-- \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[10]~7\ = CARRY((\vclock|Div0|auto_generated|divider|divider|StageOut[400]~75_combout\ & (\CLOCK_ADJ|ADC_CLK\(10) & !\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[9]~5\)) 
-- # (!\vclock|Div0|auto_generated|divider|divider|StageOut[400]~75_combout\ & ((\CLOCK_ADJ|ADC_CLK\(10)) # (!\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[9]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[400]~75_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(10),
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[9]~5\,
	combout => \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[10]~6_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[10]~7\);

-- Location: LCCOMB_X24_Y19_N12
\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[11]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[11]~8_combout\ = ((\CLOCK_ADJ|ADC_CLK\(11) $ (\vclock|Div0|auto_generated|divider|divider|StageOut[401]~74_combout\ $ 
-- (\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[10]~7\)))) # (GND)
-- \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[11]~9\ = CARRY((\CLOCK_ADJ|ADC_CLK\(11) & (\vclock|Div0|auto_generated|divider|divider|StageOut[401]~74_combout\ & 
-- !\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[10]~7\)) # (!\CLOCK_ADJ|ADC_CLK\(11) & ((\vclock|Div0|auto_generated|divider|divider|StageOut[401]~74_combout\) # 
-- (!\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[10]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(11),
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[401]~74_combout\,
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[10]~7\,
	combout => \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[11]~8_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[11]~9\);

-- Location: LCCOMB_X24_Y19_N14
\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[12]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[12]~10_combout\ = (\vclock|Div0|auto_generated|divider|divider|StageOut[402]~73_combout\ & ((\CLOCK_ADJ|ADC_CLK\(12) & 
-- (!\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[11]~9\)) # (!\CLOCK_ADJ|ADC_CLK\(12) & (\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[11]~9\ & VCC)))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[402]~73_combout\ & ((\CLOCK_ADJ|ADC_CLK\(12) & ((\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[11]~9\) # (GND))) # (!\CLOCK_ADJ|ADC_CLK\(12) & 
-- (!\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[11]~9\))))
-- \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[12]~11\ = CARRY((\vclock|Div0|auto_generated|divider|divider|StageOut[402]~73_combout\ & (\CLOCK_ADJ|ADC_CLK\(12) & 
-- !\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[11]~9\)) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[402]~73_combout\ & ((\CLOCK_ADJ|ADC_CLK\(12)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[11]~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[402]~73_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(12),
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[11]~9\,
	combout => \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[12]~10_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[12]~11\);

-- Location: LCCOMB_X24_Y19_N16
\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[13]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[13]~12_combout\ = ((\CLOCK_ADJ|ADC_CLK\(13) $ (\vclock|Div0|auto_generated|divider|divider|StageOut[403]~72_combout\ $ 
-- (\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[12]~11\)))) # (GND)
-- \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[13]~13\ = CARRY((\CLOCK_ADJ|ADC_CLK\(13) & (\vclock|Div0|auto_generated|divider|divider|StageOut[403]~72_combout\ & 
-- !\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[12]~11\)) # (!\CLOCK_ADJ|ADC_CLK\(13) & ((\vclock|Div0|auto_generated|divider|divider|StageOut[403]~72_combout\) # 
-- (!\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[12]~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(13),
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[403]~72_combout\,
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[12]~11\,
	combout => \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[13]~12_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[13]~13\);

-- Location: LCCOMB_X24_Y19_N18
\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[14]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[14]~14_combout\ = (\CLOCK_ADJ|ADC_CLK\(14) & ((\vclock|Div0|auto_generated|divider|divider|StageOut[404]~71_combout\ & 
-- (!\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[13]~13\)) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[404]~71_combout\ & ((\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[13]~13\) # (GND))))) # 
-- (!\CLOCK_ADJ|ADC_CLK\(14) & ((\vclock|Div0|auto_generated|divider|divider|StageOut[404]~71_combout\ & (\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[13]~13\ & VCC)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[404]~71_combout\ & (!\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[13]~13\))))
-- \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[14]~15\ = CARRY((\CLOCK_ADJ|ADC_CLK\(14) & ((!\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[13]~13\) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[404]~71_combout\))) # (!\CLOCK_ADJ|ADC_CLK\(14) & (!\vclock|Div0|auto_generated|divider|divider|StageOut[404]~71_combout\ & 
-- !\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[13]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(14),
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[404]~71_combout\,
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[13]~13\,
	combout => \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[14]~14_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[14]~15\);

-- Location: LCCOMB_X24_Y19_N20
\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[15]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[15]~16_combout\ = ((\vclock|Div0|auto_generated|divider|divider|StageOut[405]~70_combout\ $ (\CLOCK_ADJ|ADC_CLK\(15) $ 
-- (\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[14]~15\)))) # (GND)
-- \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[15]~17\ = CARRY((\vclock|Div0|auto_generated|divider|divider|StageOut[405]~70_combout\ & ((!\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[14]~15\) # 
-- (!\CLOCK_ADJ|ADC_CLK\(15)))) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[405]~70_combout\ & (!\CLOCK_ADJ|ADC_CLK\(15) & !\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[14]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[405]~70_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(15),
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[14]~15\,
	combout => \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[15]~16_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[15]~17\);

-- Location: LCCOMB_X24_Y19_N22
\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[16]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[16]~18_combout\ = (\CLOCK_ADJ|ADC_CLK\(16) & ((\vclock|Div0|auto_generated|divider|divider|StageOut[406]~69_combout\ & 
-- (!\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[15]~17\)) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[406]~69_combout\ & ((\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[15]~17\) # (GND))))) # 
-- (!\CLOCK_ADJ|ADC_CLK\(16) & ((\vclock|Div0|auto_generated|divider|divider|StageOut[406]~69_combout\ & (\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[15]~17\ & VCC)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[406]~69_combout\ & (!\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[15]~17\))))
-- \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[16]~19\ = CARRY((\CLOCK_ADJ|ADC_CLK\(16) & ((!\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[15]~17\) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[406]~69_combout\))) # (!\CLOCK_ADJ|ADC_CLK\(16) & (!\vclock|Div0|auto_generated|divider|divider|StageOut[406]~69_combout\ & 
-- !\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[15]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(16),
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[406]~69_combout\,
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[15]~17\,
	combout => \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[16]~18_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[16]~19\);

-- Location: LCCOMB_X24_Y19_N24
\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[17]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[17]~20_combout\ = ((\vclock|Div0|auto_generated|divider|divider|StageOut[407]~68_combout\ $ (\CLOCK_ADJ|ADC_CLK\(17) $ 
-- (\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[16]~19\)))) # (GND)
-- \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[17]~21\ = CARRY((\vclock|Div0|auto_generated|divider|divider|StageOut[407]~68_combout\ & ((!\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[16]~19\) # 
-- (!\CLOCK_ADJ|ADC_CLK\(17)))) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[407]~68_combout\ & (!\CLOCK_ADJ|ADC_CLK\(17) & !\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[16]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[407]~68_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(17),
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[16]~19\,
	combout => \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[17]~20_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[17]~21\);

-- Location: LCCOMB_X24_Y19_N26
\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[18]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[18]~22_combout\ = (\CLOCK_ADJ|ADC_CLK\(18) & ((\vclock|Div0|auto_generated|divider|divider|StageOut[408]~67_combout\ & 
-- (!\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[17]~21\)) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[408]~67_combout\ & ((\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[17]~21\) # (GND))))) # 
-- (!\CLOCK_ADJ|ADC_CLK\(18) & ((\vclock|Div0|auto_generated|divider|divider|StageOut[408]~67_combout\ & (\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[17]~21\ & VCC)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[408]~67_combout\ & (!\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[17]~21\))))
-- \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[18]~23\ = CARRY((\CLOCK_ADJ|ADC_CLK\(18) & ((!\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[17]~21\) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[408]~67_combout\))) # (!\CLOCK_ADJ|ADC_CLK\(18) & (!\vclock|Div0|auto_generated|divider|divider|StageOut[408]~67_combout\ & 
-- !\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[17]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(18),
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[408]~67_combout\,
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[17]~21\,
	combout => \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[18]~22_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[18]~23\);

-- Location: LCCOMB_X24_Y19_N28
\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~24_combout\ = \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[18]~23\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[18]~23\,
	combout => \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~24_combout\);

-- Location: LCCOMB_X26_Y19_N28
\vclock|Div0|auto_generated|divider|divider|StageOut[432]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[432]~78_combout\ = (\vclock|Div0|auto_generated|divider|divider|selnose[486]~8_combout\ & ((\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~24_combout\ & 
-- (\vclock|Div0|auto_generated|divider|divider|StageOut[408]~67_combout\)) # (!\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~24_combout\ & ((\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[18]~22_combout\))))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|selnose[486]~8_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut[408]~67_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|selnose[486]~8_combout\,
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[408]~67_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[18]~22_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~24_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[432]~78_combout\);

-- Location: LCCOMB_X24_Y19_N2
\vclock|Div0|auto_generated|divider|divider|StageOut[431]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[431]~79_combout\ = (\vclock|Div0|auto_generated|divider|divider|selnose[486]~8_combout\ & ((\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~24_combout\ & 
-- (\vclock|Div0|auto_generated|divider|divider|StageOut[407]~68_combout\)) # (!\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~24_combout\ & ((\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[17]~20_combout\))))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|selnose[486]~8_combout\ & (((\vclock|Div0|auto_generated|divider|divider|StageOut[407]~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|selnose[486]~8_combout\,
	datab => \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~24_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|StageOut[407]~68_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[17]~20_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[431]~79_combout\);

-- Location: LCCOMB_X25_Y19_N26
\vclock|Div0|auto_generated|divider|divider|StageOut[430]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[430]~80_combout\ = (\vclock|Div0|auto_generated|divider|divider|selnose[486]~8_combout\ & ((\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~24_combout\ & 
-- ((\vclock|Div0|auto_generated|divider|divider|StageOut[406]~69_combout\))) # (!\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~24_combout\ & (\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[16]~18_combout\)))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|selnose[486]~8_combout\ & (((\vclock|Div0|auto_generated|divider|divider|StageOut[406]~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|selnose[486]~8_combout\,
	datab => \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[16]~18_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|StageOut[406]~69_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~24_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[430]~80_combout\);

-- Location: LCCOMB_X25_Y19_N16
\vclock|Div0|auto_generated|divider|divider|StageOut[429]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[429]~81_combout\ = (\vclock|Div0|auto_generated|divider|divider|selnose[486]~8_combout\ & ((\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~24_combout\ & 
-- (\vclock|Div0|auto_generated|divider|divider|StageOut[405]~70_combout\)) # (!\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~24_combout\ & ((\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[15]~16_combout\))))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|selnose[486]~8_combout\ & (((\vclock|Div0|auto_generated|divider|divider|StageOut[405]~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|selnose[486]~8_combout\,
	datab => \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~24_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|StageOut[405]~70_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[15]~16_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[429]~81_combout\);

-- Location: LCCOMB_X27_Y19_N6
\vclock|Div0|auto_generated|divider|divider|StageOut[428]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[428]~82_combout\ = (\vclock|Div0|auto_generated|divider|divider|selnose[486]~8_combout\ & ((\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~24_combout\ & 
-- (\vclock|Div0|auto_generated|divider|divider|StageOut[404]~71_combout\)) # (!\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~24_combout\ & ((\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[14]~14_combout\))))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|selnose[486]~8_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut[404]~71_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|selnose[486]~8_combout\,
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[404]~71_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~24_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[14]~14_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[428]~82_combout\);

-- Location: LCCOMB_X25_Y19_N10
\vclock|Div0|auto_generated|divider|divider|StageOut[427]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[427]~83_combout\ = (\vclock|Div0|auto_generated|divider|divider|selnose[486]~8_combout\ & ((\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~24_combout\ & 
-- (\vclock|Div0|auto_generated|divider|divider|StageOut[403]~72_combout\)) # (!\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~24_combout\ & ((\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[13]~12_combout\))))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|selnose[486]~8_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut[403]~72_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[403]~72_combout\,
	datab => \vclock|Div0|auto_generated|divider|divider|selnose[486]~8_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[13]~12_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~24_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[427]~83_combout\);

-- Location: LCCOMB_X28_Y21_N12
\vclock|Div0|auto_generated|divider|divider|StageOut[426]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[426]~84_combout\ = (\vclock|Div0|auto_generated|divider|divider|selnose[486]~8_combout\ & ((\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~24_combout\ & 
-- ((\vclock|Div0|auto_generated|divider|divider|StageOut[402]~73_combout\))) # (!\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~24_combout\ & (\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[12]~10_combout\)))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|selnose[486]~8_combout\ & (((\vclock|Div0|auto_generated|divider|divider|StageOut[402]~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[12]~10_combout\,
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[402]~73_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|selnose[486]~8_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~24_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[426]~84_combout\);

-- Location: LCCOMB_X28_Y21_N30
\vclock|Div0|auto_generated|divider|divider|StageOut[425]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[425]~85_combout\ = (\vclock|Div0|auto_generated|divider|divider|selnose[486]~8_combout\ & ((\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~24_combout\ & 
-- (\vclock|Div0|auto_generated|divider|divider|StageOut[401]~74_combout\)) # (!\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~24_combout\ & ((\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[11]~8_combout\))))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|selnose[486]~8_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut[401]~74_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|selnose[486]~8_combout\,
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[401]~74_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[11]~8_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~24_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[425]~85_combout\);

-- Location: LCCOMB_X27_Y19_N28
\vclock|Div0|auto_generated|divider|divider|StageOut[424]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[424]~86_combout\ = (\vclock|Div0|auto_generated|divider|divider|selnose[486]~8_combout\ & ((\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~24_combout\ & 
-- (\vclock|Div0|auto_generated|divider|divider|StageOut[400]~75_combout\)) # (!\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~24_combout\ & ((\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[10]~6_combout\))))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|selnose[486]~8_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut[400]~75_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[400]~75_combout\,
	datab => \vclock|Div0|auto_generated|divider|divider|selnose[486]~8_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[10]~6_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~24_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[424]~86_combout\);

-- Location: LCCOMB_X27_Y19_N2
\vclock|Div0|auto_generated|divider|divider|StageOut[423]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[423]~87_combout\ = (\vclock|Div0|auto_generated|divider|divider|selnose[486]~8_combout\ & ((\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~24_combout\ & 
-- (\vclock|Div0|auto_generated|divider|divider|StageOut[399]~76_combout\)) # (!\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~24_combout\ & ((\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[9]~4_combout\))))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|selnose[486]~8_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut[399]~76_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|selnose[486]~8_combout\,
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[399]~76_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~24_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[9]~4_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[423]~87_combout\);

-- Location: LCCOMB_X25_Y19_N8
\vclock|Div0|auto_generated|divider|divider|StageOut[422]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[422]~88_combout\ = (\vclock|Div0|auto_generated|divider|divider|selnose[486]~8_combout\ & ((\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~24_combout\ & 
-- (\vclock|Div0|auto_generated|divider|divider|StageOut[398]~77_combout\)) # (!\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~24_combout\ & ((\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[8]~2_combout\))))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|selnose[486]~8_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut[398]~77_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|selnose[486]~8_combout\,
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[398]~77_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[8]~2_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~24_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[422]~88_combout\);

-- Location: LCCOMB_X30_Y21_N26
\vclock|Div0|auto_generated|divider|divider|StageOut[421]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[421]~89_combout\ = (\vclock|Div0|auto_generated|divider|divider|selnose[486]~8_combout\ & ((\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~24_combout\ & 
-- (\vclock|Div0|auto_generated|divider|divider|StageOut\(397))) # (!\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~24_combout\ & ((\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[7]~0_combout\))))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|selnose[486]~8_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut\(397)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|selnose[486]~8_combout\,
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut\(397),
	datac => \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[7]~0_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~24_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[421]~89_combout\);

-- Location: LCCOMB_X25_Y19_N14
\vclock|Div0|auto_generated|divider|divider|StageOut[420]\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut\(420) = ((\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~24_combout\) # (!\CLOCK_ADJ|ADC_CLK\(6))) # (!\vclock|Div0|auto_generated|divider|divider|selnose[486]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|selnose[486]~8_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(6),
	datad => \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~24_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut\(420));

-- Location: LCCOMB_X26_Y19_N0
\vclock|Div0|auto_generated|divider|divider|op_10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_10~0_combout\ = (\vclock|Div0|auto_generated|divider|divider|StageOut\(420) & ((GND) # (!\CLOCK_ADJ|ADC_CLK\(7)))) # (!\vclock|Div0|auto_generated|divider|divider|StageOut\(420) & (\CLOCK_ADJ|ADC_CLK\(7) $ 
-- (GND)))
-- \vclock|Div0|auto_generated|divider|divider|op_10~1\ = CARRY((\vclock|Div0|auto_generated|divider|divider|StageOut\(420)) # (!\CLOCK_ADJ|ADC_CLK\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut\(420),
	datab => \CLOCK_ADJ|ADC_CLK\(7),
	datad => VCC,
	combout => \vclock|Div0|auto_generated|divider|divider|op_10~0_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_10~1\);

-- Location: LCCOMB_X26_Y19_N2
\vclock|Div0|auto_generated|divider|divider|op_10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_10~2_combout\ = (\CLOCK_ADJ|ADC_CLK\(8) & ((\vclock|Div0|auto_generated|divider|divider|StageOut[421]~89_combout\ & (!\vclock|Div0|auto_generated|divider|divider|op_10~1\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[421]~89_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_10~1\) # (GND))))) # (!\CLOCK_ADJ|ADC_CLK\(8) & ((\vclock|Div0|auto_generated|divider|divider|StageOut[421]~89_combout\ & 
-- (\vclock|Div0|auto_generated|divider|divider|op_10~1\ & VCC)) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[421]~89_combout\ & (!\vclock|Div0|auto_generated|divider|divider|op_10~1\))))
-- \vclock|Div0|auto_generated|divider|divider|op_10~3\ = CARRY((\CLOCK_ADJ|ADC_CLK\(8) & ((!\vclock|Div0|auto_generated|divider|divider|op_10~1\) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[421]~89_combout\))) # (!\CLOCK_ADJ|ADC_CLK\(8) & 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[421]~89_combout\ & !\vclock|Div0|auto_generated|divider|divider|op_10~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(8),
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[421]~89_combout\,
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_10~1\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_10~2_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_10~3\);

-- Location: LCCOMB_X26_Y19_N4
\vclock|Div0|auto_generated|divider|divider|op_10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_10~4_combout\ = ((\vclock|Div0|auto_generated|divider|divider|StageOut[422]~88_combout\ $ (\CLOCK_ADJ|ADC_CLK\(9) $ (\vclock|Div0|auto_generated|divider|divider|op_10~3\)))) # (GND)
-- \vclock|Div0|auto_generated|divider|divider|op_10~5\ = CARRY((\vclock|Div0|auto_generated|divider|divider|StageOut[422]~88_combout\ & ((!\vclock|Div0|auto_generated|divider|divider|op_10~3\) # (!\CLOCK_ADJ|ADC_CLK\(9)))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[422]~88_combout\ & (!\CLOCK_ADJ|ADC_CLK\(9) & !\vclock|Div0|auto_generated|divider|divider|op_10~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[422]~88_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(9),
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_10~3\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_10~4_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_10~5\);

-- Location: LCCOMB_X26_Y19_N6
\vclock|Div0|auto_generated|divider|divider|op_10~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_10~6_combout\ = (\vclock|Div0|auto_generated|divider|divider|StageOut[423]~87_combout\ & ((\CLOCK_ADJ|ADC_CLK\(10) & (!\vclock|Div0|auto_generated|divider|divider|op_10~5\)) # (!\CLOCK_ADJ|ADC_CLK\(10) & 
-- (\vclock|Div0|auto_generated|divider|divider|op_10~5\ & VCC)))) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[423]~87_combout\ & ((\CLOCK_ADJ|ADC_CLK\(10) & ((\vclock|Div0|auto_generated|divider|divider|op_10~5\) # (GND))) # 
-- (!\CLOCK_ADJ|ADC_CLK\(10) & (!\vclock|Div0|auto_generated|divider|divider|op_10~5\))))
-- \vclock|Div0|auto_generated|divider|divider|op_10~7\ = CARRY((\vclock|Div0|auto_generated|divider|divider|StageOut[423]~87_combout\ & (\CLOCK_ADJ|ADC_CLK\(10) & !\vclock|Div0|auto_generated|divider|divider|op_10~5\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[423]~87_combout\ & ((\CLOCK_ADJ|ADC_CLK\(10)) # (!\vclock|Div0|auto_generated|divider|divider|op_10~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[423]~87_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(10),
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_10~5\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_10~6_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_10~7\);

-- Location: LCCOMB_X26_Y19_N8
\vclock|Div0|auto_generated|divider|divider|op_10~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_10~8_combout\ = ((\CLOCK_ADJ|ADC_CLK\(11) $ (\vclock|Div0|auto_generated|divider|divider|StageOut[424]~86_combout\ $ (\vclock|Div0|auto_generated|divider|divider|op_10~7\)))) # (GND)
-- \vclock|Div0|auto_generated|divider|divider|op_10~9\ = CARRY((\CLOCK_ADJ|ADC_CLK\(11) & (\vclock|Div0|auto_generated|divider|divider|StageOut[424]~86_combout\ & !\vclock|Div0|auto_generated|divider|divider|op_10~7\)) # (!\CLOCK_ADJ|ADC_CLK\(11) & 
-- ((\vclock|Div0|auto_generated|divider|divider|StageOut[424]~86_combout\) # (!\vclock|Div0|auto_generated|divider|divider|op_10~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(11),
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[424]~86_combout\,
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_10~7\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_10~8_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_10~9\);

-- Location: LCCOMB_X26_Y19_N10
\vclock|Div0|auto_generated|divider|divider|op_10~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_10~10_combout\ = (\CLOCK_ADJ|ADC_CLK\(12) & ((\vclock|Div0|auto_generated|divider|divider|StageOut[425]~85_combout\ & (!\vclock|Div0|auto_generated|divider|divider|op_10~9\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[425]~85_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_10~9\) # (GND))))) # (!\CLOCK_ADJ|ADC_CLK\(12) & ((\vclock|Div0|auto_generated|divider|divider|StageOut[425]~85_combout\ & 
-- (\vclock|Div0|auto_generated|divider|divider|op_10~9\ & VCC)) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[425]~85_combout\ & (!\vclock|Div0|auto_generated|divider|divider|op_10~9\))))
-- \vclock|Div0|auto_generated|divider|divider|op_10~11\ = CARRY((\CLOCK_ADJ|ADC_CLK\(12) & ((!\vclock|Div0|auto_generated|divider|divider|op_10~9\) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[425]~85_combout\))) # (!\CLOCK_ADJ|ADC_CLK\(12) & 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[425]~85_combout\ & !\vclock|Div0|auto_generated|divider|divider|op_10~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(12),
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[425]~85_combout\,
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_10~9\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_10~10_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_10~11\);

-- Location: LCCOMB_X26_Y19_N12
\vclock|Div0|auto_generated|divider|divider|op_10~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_10~12_combout\ = ((\vclock|Div0|auto_generated|divider|divider|StageOut[426]~84_combout\ $ (\CLOCK_ADJ|ADC_CLK\(13) $ (\vclock|Div0|auto_generated|divider|divider|op_10~11\)))) # (GND)
-- \vclock|Div0|auto_generated|divider|divider|op_10~13\ = CARRY((\vclock|Div0|auto_generated|divider|divider|StageOut[426]~84_combout\ & ((!\vclock|Div0|auto_generated|divider|divider|op_10~11\) # (!\CLOCK_ADJ|ADC_CLK\(13)))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[426]~84_combout\ & (!\CLOCK_ADJ|ADC_CLK\(13) & !\vclock|Div0|auto_generated|divider|divider|op_10~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[426]~84_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(13),
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_10~11\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_10~12_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_10~13\);

-- Location: LCCOMB_X26_Y19_N14
\vclock|Div0|auto_generated|divider|divider|op_10~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_10~14_combout\ = (\vclock|Div0|auto_generated|divider|divider|StageOut[427]~83_combout\ & ((\CLOCK_ADJ|ADC_CLK\(14) & (!\vclock|Div0|auto_generated|divider|divider|op_10~13\)) # (!\CLOCK_ADJ|ADC_CLK\(14) & 
-- (\vclock|Div0|auto_generated|divider|divider|op_10~13\ & VCC)))) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[427]~83_combout\ & ((\CLOCK_ADJ|ADC_CLK\(14) & ((\vclock|Div0|auto_generated|divider|divider|op_10~13\) # (GND))) # 
-- (!\CLOCK_ADJ|ADC_CLK\(14) & (!\vclock|Div0|auto_generated|divider|divider|op_10~13\))))
-- \vclock|Div0|auto_generated|divider|divider|op_10~15\ = CARRY((\vclock|Div0|auto_generated|divider|divider|StageOut[427]~83_combout\ & (\CLOCK_ADJ|ADC_CLK\(14) & !\vclock|Div0|auto_generated|divider|divider|op_10~13\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[427]~83_combout\ & ((\CLOCK_ADJ|ADC_CLK\(14)) # (!\vclock|Div0|auto_generated|divider|divider|op_10~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[427]~83_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(14),
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_10~13\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_10~14_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_10~15\);

-- Location: LCCOMB_X26_Y19_N16
\vclock|Div0|auto_generated|divider|divider|op_10~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_10~16_combout\ = ((\vclock|Div0|auto_generated|divider|divider|StageOut[428]~82_combout\ $ (\CLOCK_ADJ|ADC_CLK\(15) $ (\vclock|Div0|auto_generated|divider|divider|op_10~15\)))) # (GND)
-- \vclock|Div0|auto_generated|divider|divider|op_10~17\ = CARRY((\vclock|Div0|auto_generated|divider|divider|StageOut[428]~82_combout\ & ((!\vclock|Div0|auto_generated|divider|divider|op_10~15\) # (!\CLOCK_ADJ|ADC_CLK\(15)))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[428]~82_combout\ & (!\CLOCK_ADJ|ADC_CLK\(15) & !\vclock|Div0|auto_generated|divider|divider|op_10~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[428]~82_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(15),
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_10~15\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_10~16_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_10~17\);

-- Location: LCCOMB_X26_Y19_N18
\vclock|Div0|auto_generated|divider|divider|op_10~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_10~18_combout\ = (\vclock|Div0|auto_generated|divider|divider|StageOut[429]~81_combout\ & ((\CLOCK_ADJ|ADC_CLK\(16) & (!\vclock|Div0|auto_generated|divider|divider|op_10~17\)) # (!\CLOCK_ADJ|ADC_CLK\(16) & 
-- (\vclock|Div0|auto_generated|divider|divider|op_10~17\ & VCC)))) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[429]~81_combout\ & ((\CLOCK_ADJ|ADC_CLK\(16) & ((\vclock|Div0|auto_generated|divider|divider|op_10~17\) # (GND))) # 
-- (!\CLOCK_ADJ|ADC_CLK\(16) & (!\vclock|Div0|auto_generated|divider|divider|op_10~17\))))
-- \vclock|Div0|auto_generated|divider|divider|op_10~19\ = CARRY((\vclock|Div0|auto_generated|divider|divider|StageOut[429]~81_combout\ & (\CLOCK_ADJ|ADC_CLK\(16) & !\vclock|Div0|auto_generated|divider|divider|op_10~17\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[429]~81_combout\ & ((\CLOCK_ADJ|ADC_CLK\(16)) # (!\vclock|Div0|auto_generated|divider|divider|op_10~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[429]~81_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(16),
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_10~17\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_10~18_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_10~19\);

-- Location: LCCOMB_X26_Y19_N20
\vclock|Div0|auto_generated|divider|divider|op_10~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_10~20_combout\ = ((\vclock|Div0|auto_generated|divider|divider|StageOut[430]~80_combout\ $ (\CLOCK_ADJ|ADC_CLK\(17) $ (\vclock|Div0|auto_generated|divider|divider|op_10~19\)))) # (GND)
-- \vclock|Div0|auto_generated|divider|divider|op_10~21\ = CARRY((\vclock|Div0|auto_generated|divider|divider|StageOut[430]~80_combout\ & ((!\vclock|Div0|auto_generated|divider|divider|op_10~19\) # (!\CLOCK_ADJ|ADC_CLK\(17)))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[430]~80_combout\ & (!\CLOCK_ADJ|ADC_CLK\(17) & !\vclock|Div0|auto_generated|divider|divider|op_10~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[430]~80_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(17),
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_10~19\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_10~20_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_10~21\);

-- Location: LCCOMB_X26_Y19_N22
\vclock|Div0|auto_generated|divider|divider|op_10~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_10~22_combout\ = (\CLOCK_ADJ|ADC_CLK\(18) & ((\vclock|Div0|auto_generated|divider|divider|StageOut[431]~79_combout\ & (!\vclock|Div0|auto_generated|divider|divider|op_10~21\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[431]~79_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_10~21\) # (GND))))) # (!\CLOCK_ADJ|ADC_CLK\(18) & ((\vclock|Div0|auto_generated|divider|divider|StageOut[431]~79_combout\ & 
-- (\vclock|Div0|auto_generated|divider|divider|op_10~21\ & VCC)) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[431]~79_combout\ & (!\vclock|Div0|auto_generated|divider|divider|op_10~21\))))
-- \vclock|Div0|auto_generated|divider|divider|op_10~23\ = CARRY((\CLOCK_ADJ|ADC_CLK\(18) & ((!\vclock|Div0|auto_generated|divider|divider|op_10~21\) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[431]~79_combout\))) # (!\CLOCK_ADJ|ADC_CLK\(18) & 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[431]~79_combout\ & !\vclock|Div0|auto_generated|divider|divider|op_10~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(18),
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[431]~79_combout\,
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_10~21\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_10~22_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_10~23\);

-- Location: LCCOMB_X26_Y19_N24
\vclock|Div0|auto_generated|divider|divider|op_10~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_10~24_combout\ = ((\CLOCK_ADJ|ADC_CLK\(19) $ (\vclock|Div0|auto_generated|divider|divider|StageOut[432]~78_combout\ $ (\vclock|Div0|auto_generated|divider|divider|op_10~23\)))) # (GND)
-- \vclock|Div0|auto_generated|divider|divider|op_10~25\ = CARRY((\CLOCK_ADJ|ADC_CLK\(19) & (\vclock|Div0|auto_generated|divider|divider|StageOut[432]~78_combout\ & !\vclock|Div0|auto_generated|divider|divider|op_10~23\)) # (!\CLOCK_ADJ|ADC_CLK\(19) & 
-- ((\vclock|Div0|auto_generated|divider|divider|StageOut[432]~78_combout\) # (!\vclock|Div0|auto_generated|divider|divider|op_10~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(19),
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[432]~78_combout\,
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_10~23\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_10~24_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_10~25\);

-- Location: LCCOMB_X26_Y19_N26
\vclock|Div0|auto_generated|divider|divider|op_10~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_10~26_combout\ = !\vclock|Div0|auto_generated|divider|divider|op_10~25\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \vclock|Div0|auto_generated|divider|divider|op_10~25\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_10~26_combout\);

-- Location: LCCOMB_X31_Y21_N18
\vclock|Equal0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Equal0~21_combout\ = \vclock|Add0~2_combout\ $ (((\CLOCK_ADJ|ADC_CLK\(20)) # ((\CLOCK_ADJ|ADC_CLK\(21)) # (\vclock|Div0|auto_generated|divider|divider|op_10~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(20),
	datab => \vclock|Add0~2_combout\,
	datac => \CLOCK_ADJ|ADC_CLK\(21),
	datad => \vclock|Div0|auto_generated|divider|divider|op_10~26_combout\,
	combout => \vclock|Equal0~21_combout\);

-- Location: LCCOMB_X26_Y19_N30
\vclock|Div0|auto_generated|divider|divider|StageOut[456]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[456]~90_combout\ = (\CLOCK_ADJ|LessThan1~1_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_10~26_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut[432]~78_combout\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|op_10~26_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_10~24_combout\))))) # (!\CLOCK_ADJ|LessThan1~1_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut[432]~78_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|LessThan1~1_combout\,
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[432]~78_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|op_10~26_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_10~24_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[456]~90_combout\);

-- Location: LCCOMB_X27_Y19_N24
\vclock|Div0|auto_generated|divider|divider|StageOut[455]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[455]~91_combout\ = (\CLOCK_ADJ|LessThan1~1_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_10~26_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut[431]~79_combout\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|op_10~26_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_10~22_combout\))))) # (!\CLOCK_ADJ|LessThan1~1_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut[431]~79_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|LessThan1~1_combout\,
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[431]~79_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|op_10~26_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_10~22_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[455]~91_combout\);

-- Location: LCCOMB_X25_Y19_N12
\vclock|Div0|auto_generated|divider|divider|StageOut[454]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[454]~92_combout\ = (\CLOCK_ADJ|LessThan1~1_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_10~26_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut[430]~80_combout\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|op_10~26_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_10~20_combout\))))) # (!\CLOCK_ADJ|LessThan1~1_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut[430]~80_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[430]~80_combout\,
	datab => \CLOCK_ADJ|LessThan1~1_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|op_10~20_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_10~26_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[454]~92_combout\);

-- Location: LCCOMB_X25_Y19_N6
\vclock|Div0|auto_generated|divider|divider|StageOut[453]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[453]~93_combout\ = (\CLOCK_ADJ|LessThan1~1_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_10~26_combout\ & ((\vclock|Div0|auto_generated|divider|divider|StageOut[429]~81_combout\))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|op_10~26_combout\ & (\vclock|Div0|auto_generated|divider|divider|op_10~18_combout\)))) # (!\CLOCK_ADJ|LessThan1~1_combout\ & (((\vclock|Div0|auto_generated|divider|divider|StageOut[429]~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|LessThan1~1_combout\,
	datab => \vclock|Div0|auto_generated|divider|divider|op_10~18_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|StageOut[429]~81_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_10~26_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[453]~93_combout\);

-- Location: LCCOMB_X27_Y19_N14
\vclock|Div0|auto_generated|divider|divider|StageOut[452]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[452]~94_combout\ = (\CLOCK_ADJ|LessThan1~1_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_10~26_combout\ & ((\vclock|Div0|auto_generated|divider|divider|StageOut[428]~82_combout\))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|op_10~26_combout\ & (\vclock|Div0|auto_generated|divider|divider|op_10~16_combout\)))) # (!\CLOCK_ADJ|LessThan1~1_combout\ & (((\vclock|Div0|auto_generated|divider|divider|StageOut[428]~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|op_10~16_combout\,
	datab => \CLOCK_ADJ|LessThan1~1_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|op_10~26_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|StageOut[428]~82_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[452]~94_combout\);

-- Location: LCCOMB_X25_Y19_N0
\vclock|Div0|auto_generated|divider|divider|StageOut[451]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[451]~95_combout\ = (\CLOCK_ADJ|LessThan1~1_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_10~26_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut[427]~83_combout\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|op_10~26_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_10~14_combout\))))) # (!\CLOCK_ADJ|LessThan1~1_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut[427]~83_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[427]~83_combout\,
	datab => \CLOCK_ADJ|LessThan1~1_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|op_10~14_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_10~26_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[451]~95_combout\);

-- Location: LCCOMB_X28_Y21_N28
\vclock|Div0|auto_generated|divider|divider|StageOut[450]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[450]~96_combout\ = (\CLOCK_ADJ|LessThan1~1_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_10~26_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut[426]~84_combout\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|op_10~26_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_10~12_combout\))))) # (!\CLOCK_ADJ|LessThan1~1_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut[426]~84_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[426]~84_combout\,
	datab => \CLOCK_ADJ|LessThan1~1_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|op_10~12_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_10~26_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[450]~96_combout\);

-- Location: LCCOMB_X28_Y21_N26
\vclock|Div0|auto_generated|divider|divider|StageOut[449]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[449]~97_combout\ = (\CLOCK_ADJ|LessThan1~1_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_10~26_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut[425]~85_combout\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|op_10~26_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_10~10_combout\))))) # (!\CLOCK_ADJ|LessThan1~1_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut[425]~85_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[425]~85_combout\,
	datab => \CLOCK_ADJ|LessThan1~1_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|op_10~10_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_10~26_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[449]~97_combout\);

-- Location: LCCOMB_X27_Y19_N0
\vclock|Div0|auto_generated|divider|divider|StageOut[448]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[448]~98_combout\ = (\CLOCK_ADJ|LessThan1~1_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_10~26_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut[424]~86_combout\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|op_10~26_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_10~8_combout\))))) # (!\CLOCK_ADJ|LessThan1~1_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut[424]~86_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|LessThan1~1_combout\,
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[424]~86_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|op_10~26_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_10~8_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[448]~98_combout\);

-- Location: LCCOMB_X27_Y19_N18
\vclock|Div0|auto_generated|divider|divider|StageOut[447]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[447]~99_combout\ = (\CLOCK_ADJ|LessThan1~1_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_10~26_combout\ & ((\vclock|Div0|auto_generated|divider|divider|StageOut[423]~87_combout\))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|op_10~26_combout\ & (\vclock|Div0|auto_generated|divider|divider|op_10~6_combout\)))) # (!\CLOCK_ADJ|LessThan1~1_combout\ & (((\vclock|Div0|auto_generated|divider|divider|StageOut[423]~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|LessThan1~1_combout\,
	datab => \vclock|Div0|auto_generated|divider|divider|op_10~6_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|op_10~26_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|StageOut[423]~87_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[447]~99_combout\);

-- Location: LCCOMB_X25_Y19_N18
\vclock|Div0|auto_generated|divider|divider|StageOut[446]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[446]~100_combout\ = (\CLOCK_ADJ|LessThan1~1_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_10~26_combout\ & ((\vclock|Div0|auto_generated|divider|divider|StageOut[422]~88_combout\))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|op_10~26_combout\ & (\vclock|Div0|auto_generated|divider|divider|op_10~4_combout\)))) # (!\CLOCK_ADJ|LessThan1~1_combout\ & (((\vclock|Div0|auto_generated|divider|divider|StageOut[422]~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|op_10~4_combout\,
	datab => \CLOCK_ADJ|LessThan1~1_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|StageOut[422]~88_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_10~26_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[446]~100_combout\);

-- Location: LCCOMB_X30_Y21_N0
\vclock|Div0|auto_generated|divider|divider|StageOut[445]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[445]~101_combout\ = (\CLOCK_ADJ|LessThan1~1_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_10~26_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut[421]~89_combout\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|op_10~26_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_10~2_combout\))))) # (!\CLOCK_ADJ|LessThan1~1_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut[421]~89_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[421]~89_combout\,
	datab => \CLOCK_ADJ|LessThan1~1_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|op_10~2_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_10~26_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[445]~101_combout\);

-- Location: LCCOMB_X25_Y19_N24
\vclock|Div0|auto_generated|divider|divider|StageOut[444]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[444]~102_combout\ = (\CLOCK_ADJ|LessThan1~1_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_10~26_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut\(420))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|op_10~26_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_10~0_combout\))))) # (!\CLOCK_ADJ|LessThan1~1_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut\(420)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|LessThan1~1_combout\,
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut\(420),
	datac => \vclock|Div0|auto_generated|divider|divider|op_10~0_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_10~26_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[444]~102_combout\);

-- Location: LCCOMB_X28_Y21_N4
\vclock|Div0|auto_generated|divider|divider|StageOut[443]\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut\(443) = (\CLOCK_ADJ|ADC_CLK\(21)) # ((\CLOCK_ADJ|ADC_CLK\(20)) # ((\vclock|Div0|auto_generated|divider|divider|op_10~26_combout\) # (!\CLOCK_ADJ|ADC_CLK\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(21),
	datab => \CLOCK_ADJ|ADC_CLK\(20),
	datac => \CLOCK_ADJ|ADC_CLK\(6),
	datad => \vclock|Div0|auto_generated|divider|divider|op_10~26_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut\(443));

-- Location: LCCOMB_X27_Y21_N0
\vclock|Div0|auto_generated|divider|divider|op_12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_12~1_cout\ = CARRY(!\CLOCK_ADJ|ADC_CLK\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(6),
	datad => VCC,
	cout => \vclock|Div0|auto_generated|divider|divider|op_12~1_cout\);

-- Location: LCCOMB_X27_Y21_N2
\vclock|Div0|auto_generated|divider|divider|op_12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_12~2_combout\ = (\vclock|Div0|auto_generated|divider|divider|StageOut\(443) & ((\CLOCK_ADJ|ADC_CLK\(7) & (!\vclock|Div0|auto_generated|divider|divider|op_12~1_cout\)) # (!\CLOCK_ADJ|ADC_CLK\(7) & 
-- (\vclock|Div0|auto_generated|divider|divider|op_12~1_cout\ & VCC)))) # (!\vclock|Div0|auto_generated|divider|divider|StageOut\(443) & ((\CLOCK_ADJ|ADC_CLK\(7) & ((\vclock|Div0|auto_generated|divider|divider|op_12~1_cout\) # (GND))) # 
-- (!\CLOCK_ADJ|ADC_CLK\(7) & (!\vclock|Div0|auto_generated|divider|divider|op_12~1_cout\))))
-- \vclock|Div0|auto_generated|divider|divider|op_12~3\ = CARRY((\vclock|Div0|auto_generated|divider|divider|StageOut\(443) & (\CLOCK_ADJ|ADC_CLK\(7) & !\vclock|Div0|auto_generated|divider|divider|op_12~1_cout\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut\(443) & ((\CLOCK_ADJ|ADC_CLK\(7)) # (!\vclock|Div0|auto_generated|divider|divider|op_12~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut\(443),
	datab => \CLOCK_ADJ|ADC_CLK\(7),
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_12~1_cout\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_12~2_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_12~3\);

-- Location: LCCOMB_X27_Y21_N4
\vclock|Div0|auto_generated|divider|divider|op_12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_12~4_combout\ = ((\CLOCK_ADJ|ADC_CLK\(8) $ (\vclock|Div0|auto_generated|divider|divider|StageOut[444]~102_combout\ $ (\vclock|Div0|auto_generated|divider|divider|op_12~3\)))) # (GND)
-- \vclock|Div0|auto_generated|divider|divider|op_12~5\ = CARRY((\CLOCK_ADJ|ADC_CLK\(8) & (\vclock|Div0|auto_generated|divider|divider|StageOut[444]~102_combout\ & !\vclock|Div0|auto_generated|divider|divider|op_12~3\)) # (!\CLOCK_ADJ|ADC_CLK\(8) & 
-- ((\vclock|Div0|auto_generated|divider|divider|StageOut[444]~102_combout\) # (!\vclock|Div0|auto_generated|divider|divider|op_12~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(8),
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[444]~102_combout\,
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_12~3\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_12~4_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_12~5\);

-- Location: LCCOMB_X27_Y21_N6
\vclock|Div0|auto_generated|divider|divider|op_12~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_12~6_combout\ = (\CLOCK_ADJ|ADC_CLK\(9) & ((\vclock|Div0|auto_generated|divider|divider|StageOut[445]~101_combout\ & (!\vclock|Div0|auto_generated|divider|divider|op_12~5\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[445]~101_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_12~5\) # (GND))))) # (!\CLOCK_ADJ|ADC_CLK\(9) & ((\vclock|Div0|auto_generated|divider|divider|StageOut[445]~101_combout\ & 
-- (\vclock|Div0|auto_generated|divider|divider|op_12~5\ & VCC)) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[445]~101_combout\ & (!\vclock|Div0|auto_generated|divider|divider|op_12~5\))))
-- \vclock|Div0|auto_generated|divider|divider|op_12~7\ = CARRY((\CLOCK_ADJ|ADC_CLK\(9) & ((!\vclock|Div0|auto_generated|divider|divider|op_12~5\) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[445]~101_combout\))) # (!\CLOCK_ADJ|ADC_CLK\(9) & 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[445]~101_combout\ & !\vclock|Div0|auto_generated|divider|divider|op_12~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(9),
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[445]~101_combout\,
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_12~5\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_12~6_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_12~7\);

-- Location: LCCOMB_X27_Y21_N8
\vclock|Div0|auto_generated|divider|divider|op_12~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_12~8_combout\ = ((\CLOCK_ADJ|ADC_CLK\(10) $ (\vclock|Div0|auto_generated|divider|divider|StageOut[446]~100_combout\ $ (\vclock|Div0|auto_generated|divider|divider|op_12~7\)))) # (GND)
-- \vclock|Div0|auto_generated|divider|divider|op_12~9\ = CARRY((\CLOCK_ADJ|ADC_CLK\(10) & (\vclock|Div0|auto_generated|divider|divider|StageOut[446]~100_combout\ & !\vclock|Div0|auto_generated|divider|divider|op_12~7\)) # (!\CLOCK_ADJ|ADC_CLK\(10) & 
-- ((\vclock|Div0|auto_generated|divider|divider|StageOut[446]~100_combout\) # (!\vclock|Div0|auto_generated|divider|divider|op_12~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(10),
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[446]~100_combout\,
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_12~7\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_12~8_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_12~9\);

-- Location: LCCOMB_X27_Y21_N10
\vclock|Div0|auto_generated|divider|divider|op_12~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_12~10_combout\ = (\vclock|Div0|auto_generated|divider|divider|StageOut[447]~99_combout\ & ((\CLOCK_ADJ|ADC_CLK\(11) & (!\vclock|Div0|auto_generated|divider|divider|op_12~9\)) # (!\CLOCK_ADJ|ADC_CLK\(11) & 
-- (\vclock|Div0|auto_generated|divider|divider|op_12~9\ & VCC)))) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[447]~99_combout\ & ((\CLOCK_ADJ|ADC_CLK\(11) & ((\vclock|Div0|auto_generated|divider|divider|op_12~9\) # (GND))) # 
-- (!\CLOCK_ADJ|ADC_CLK\(11) & (!\vclock|Div0|auto_generated|divider|divider|op_12~9\))))
-- \vclock|Div0|auto_generated|divider|divider|op_12~11\ = CARRY((\vclock|Div0|auto_generated|divider|divider|StageOut[447]~99_combout\ & (\CLOCK_ADJ|ADC_CLK\(11) & !\vclock|Div0|auto_generated|divider|divider|op_12~9\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[447]~99_combout\ & ((\CLOCK_ADJ|ADC_CLK\(11)) # (!\vclock|Div0|auto_generated|divider|divider|op_12~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[447]~99_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(11),
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_12~9\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_12~10_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_12~11\);

-- Location: LCCOMB_X27_Y21_N12
\vclock|Div0|auto_generated|divider|divider|op_12~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_12~12_combout\ = ((\CLOCK_ADJ|ADC_CLK\(12) $ (\vclock|Div0|auto_generated|divider|divider|StageOut[448]~98_combout\ $ (\vclock|Div0|auto_generated|divider|divider|op_12~11\)))) # (GND)
-- \vclock|Div0|auto_generated|divider|divider|op_12~13\ = CARRY((\CLOCK_ADJ|ADC_CLK\(12) & (\vclock|Div0|auto_generated|divider|divider|StageOut[448]~98_combout\ & !\vclock|Div0|auto_generated|divider|divider|op_12~11\)) # (!\CLOCK_ADJ|ADC_CLK\(12) & 
-- ((\vclock|Div0|auto_generated|divider|divider|StageOut[448]~98_combout\) # (!\vclock|Div0|auto_generated|divider|divider|op_12~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(12),
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[448]~98_combout\,
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_12~11\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_12~12_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_12~13\);

-- Location: LCCOMB_X27_Y21_N14
\vclock|Div0|auto_generated|divider|divider|op_12~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_12~14_combout\ = (\CLOCK_ADJ|ADC_CLK\(13) & ((\vclock|Div0|auto_generated|divider|divider|StageOut[449]~97_combout\ & (!\vclock|Div0|auto_generated|divider|divider|op_12~13\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[449]~97_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_12~13\) # (GND))))) # (!\CLOCK_ADJ|ADC_CLK\(13) & ((\vclock|Div0|auto_generated|divider|divider|StageOut[449]~97_combout\ & 
-- (\vclock|Div0|auto_generated|divider|divider|op_12~13\ & VCC)) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[449]~97_combout\ & (!\vclock|Div0|auto_generated|divider|divider|op_12~13\))))
-- \vclock|Div0|auto_generated|divider|divider|op_12~15\ = CARRY((\CLOCK_ADJ|ADC_CLK\(13) & ((!\vclock|Div0|auto_generated|divider|divider|op_12~13\) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[449]~97_combout\))) # (!\CLOCK_ADJ|ADC_CLK\(13) & 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[449]~97_combout\ & !\vclock|Div0|auto_generated|divider|divider|op_12~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(13),
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[449]~97_combout\,
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_12~13\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_12~14_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_12~15\);

-- Location: LCCOMB_X27_Y21_N16
\vclock|Div0|auto_generated|divider|divider|op_12~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_12~16_combout\ = ((\CLOCK_ADJ|ADC_CLK\(14) $ (\vclock|Div0|auto_generated|divider|divider|StageOut[450]~96_combout\ $ (\vclock|Div0|auto_generated|divider|divider|op_12~15\)))) # (GND)
-- \vclock|Div0|auto_generated|divider|divider|op_12~17\ = CARRY((\CLOCK_ADJ|ADC_CLK\(14) & (\vclock|Div0|auto_generated|divider|divider|StageOut[450]~96_combout\ & !\vclock|Div0|auto_generated|divider|divider|op_12~15\)) # (!\CLOCK_ADJ|ADC_CLK\(14) & 
-- ((\vclock|Div0|auto_generated|divider|divider|StageOut[450]~96_combout\) # (!\vclock|Div0|auto_generated|divider|divider|op_12~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(14),
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[450]~96_combout\,
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_12~15\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_12~16_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_12~17\);

-- Location: LCCOMB_X27_Y21_N18
\vclock|Div0|auto_generated|divider|divider|op_12~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_12~18_combout\ = (\CLOCK_ADJ|ADC_CLK\(15) & ((\vclock|Div0|auto_generated|divider|divider|StageOut[451]~95_combout\ & (!\vclock|Div0|auto_generated|divider|divider|op_12~17\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[451]~95_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_12~17\) # (GND))))) # (!\CLOCK_ADJ|ADC_CLK\(15) & ((\vclock|Div0|auto_generated|divider|divider|StageOut[451]~95_combout\ & 
-- (\vclock|Div0|auto_generated|divider|divider|op_12~17\ & VCC)) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[451]~95_combout\ & (!\vclock|Div0|auto_generated|divider|divider|op_12~17\))))
-- \vclock|Div0|auto_generated|divider|divider|op_12~19\ = CARRY((\CLOCK_ADJ|ADC_CLK\(15) & ((!\vclock|Div0|auto_generated|divider|divider|op_12~17\) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[451]~95_combout\))) # (!\CLOCK_ADJ|ADC_CLK\(15) & 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[451]~95_combout\ & !\vclock|Div0|auto_generated|divider|divider|op_12~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(15),
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[451]~95_combout\,
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_12~17\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_12~18_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_12~19\);

-- Location: LCCOMB_X27_Y21_N20
\vclock|Div0|auto_generated|divider|divider|op_12~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_12~20_combout\ = ((\CLOCK_ADJ|ADC_CLK\(16) $ (\vclock|Div0|auto_generated|divider|divider|StageOut[452]~94_combout\ $ (\vclock|Div0|auto_generated|divider|divider|op_12~19\)))) # (GND)
-- \vclock|Div0|auto_generated|divider|divider|op_12~21\ = CARRY((\CLOCK_ADJ|ADC_CLK\(16) & (\vclock|Div0|auto_generated|divider|divider|StageOut[452]~94_combout\ & !\vclock|Div0|auto_generated|divider|divider|op_12~19\)) # (!\CLOCK_ADJ|ADC_CLK\(16) & 
-- ((\vclock|Div0|auto_generated|divider|divider|StageOut[452]~94_combout\) # (!\vclock|Div0|auto_generated|divider|divider|op_12~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(16),
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[452]~94_combout\,
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_12~19\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_12~20_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_12~21\);

-- Location: LCCOMB_X27_Y21_N22
\vclock|Div0|auto_generated|divider|divider|op_12~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_12~22_combout\ = (\vclock|Div0|auto_generated|divider|divider|StageOut[453]~93_combout\ & ((\CLOCK_ADJ|ADC_CLK\(17) & (!\vclock|Div0|auto_generated|divider|divider|op_12~21\)) # (!\CLOCK_ADJ|ADC_CLK\(17) & 
-- (\vclock|Div0|auto_generated|divider|divider|op_12~21\ & VCC)))) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[453]~93_combout\ & ((\CLOCK_ADJ|ADC_CLK\(17) & ((\vclock|Div0|auto_generated|divider|divider|op_12~21\) # (GND))) # 
-- (!\CLOCK_ADJ|ADC_CLK\(17) & (!\vclock|Div0|auto_generated|divider|divider|op_12~21\))))
-- \vclock|Div0|auto_generated|divider|divider|op_12~23\ = CARRY((\vclock|Div0|auto_generated|divider|divider|StageOut[453]~93_combout\ & (\CLOCK_ADJ|ADC_CLK\(17) & !\vclock|Div0|auto_generated|divider|divider|op_12~21\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[453]~93_combout\ & ((\CLOCK_ADJ|ADC_CLK\(17)) # (!\vclock|Div0|auto_generated|divider|divider|op_12~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[453]~93_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(17),
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_12~21\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_12~22_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_12~23\);

-- Location: LCCOMB_X27_Y21_N24
\vclock|Div0|auto_generated|divider|divider|op_12~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_12~24_combout\ = ((\vclock|Div0|auto_generated|divider|divider|StageOut[454]~92_combout\ $ (\CLOCK_ADJ|ADC_CLK\(18) $ (\vclock|Div0|auto_generated|divider|divider|op_12~23\)))) # (GND)
-- \vclock|Div0|auto_generated|divider|divider|op_12~25\ = CARRY((\vclock|Div0|auto_generated|divider|divider|StageOut[454]~92_combout\ & ((!\vclock|Div0|auto_generated|divider|divider|op_12~23\) # (!\CLOCK_ADJ|ADC_CLK\(18)))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[454]~92_combout\ & (!\CLOCK_ADJ|ADC_CLK\(18) & !\vclock|Div0|auto_generated|divider|divider|op_12~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[454]~92_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(18),
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_12~23\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_12~24_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_12~25\);

-- Location: LCCOMB_X27_Y21_N26
\vclock|Div0|auto_generated|divider|divider|op_12~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_12~26_combout\ = (\vclock|Div0|auto_generated|divider|divider|StageOut[455]~91_combout\ & ((\CLOCK_ADJ|ADC_CLK\(19) & (!\vclock|Div0|auto_generated|divider|divider|op_12~25\)) # (!\CLOCK_ADJ|ADC_CLK\(19) & 
-- (\vclock|Div0|auto_generated|divider|divider|op_12~25\ & VCC)))) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[455]~91_combout\ & ((\CLOCK_ADJ|ADC_CLK\(19) & ((\vclock|Div0|auto_generated|divider|divider|op_12~25\) # (GND))) # 
-- (!\CLOCK_ADJ|ADC_CLK\(19) & (!\vclock|Div0|auto_generated|divider|divider|op_12~25\))))
-- \vclock|Div0|auto_generated|divider|divider|op_12~27\ = CARRY((\vclock|Div0|auto_generated|divider|divider|StageOut[455]~91_combout\ & (\CLOCK_ADJ|ADC_CLK\(19) & !\vclock|Div0|auto_generated|divider|divider|op_12~25\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[455]~91_combout\ & ((\CLOCK_ADJ|ADC_CLK\(19)) # (!\vclock|Div0|auto_generated|divider|divider|op_12~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[455]~91_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(19),
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_12~25\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_12~26_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_12~27\);

-- Location: LCCOMB_X27_Y21_N28
\vclock|Div0|auto_generated|divider|divider|op_12~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_12~28_combout\ = ((\vclock|Div0|auto_generated|divider|divider|StageOut[456]~90_combout\ $ (\CLOCK_ADJ|ADC_CLK\(20) $ (\vclock|Div0|auto_generated|divider|divider|op_12~27\)))) # (GND)
-- \vclock|Div0|auto_generated|divider|divider|op_12~29\ = CARRY((\vclock|Div0|auto_generated|divider|divider|StageOut[456]~90_combout\ & ((!\vclock|Div0|auto_generated|divider|divider|op_12~27\) # (!\CLOCK_ADJ|ADC_CLK\(20)))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[456]~90_combout\ & (!\CLOCK_ADJ|ADC_CLK\(20) & !\vclock|Div0|auto_generated|divider|divider|op_12~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[456]~90_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(20),
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_12~27\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_12~28_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_12~29\);

-- Location: LCCOMB_X27_Y21_N30
\vclock|Div0|auto_generated|divider|divider|op_12~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_12~30_combout\ = !\vclock|Div0|auto_generated|divider|divider|op_12~29\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \vclock|Div0|auto_generated|divider|divider|op_12~29\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_12~30_combout\);

-- Location: LCCOMB_X26_Y21_N22
\vclock|Div0|auto_generated|divider|divider|StageOut[480]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[480]~103_combout\ = (\CLOCK_ADJ|ADC_CLK\(21) & (\vclock|Div0|auto_generated|divider|divider|StageOut[456]~90_combout\)) # (!\CLOCK_ADJ|ADC_CLK\(21) & 
-- ((\vclock|Div0|auto_generated|divider|divider|op_12~30_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut[456]~90_combout\)) # (!\vclock|Div0|auto_generated|divider|divider|op_12~30_combout\ & 
-- ((\vclock|Div0|auto_generated|divider|divider|op_12~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[456]~90_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(21),
	datac => \vclock|Div0|auto_generated|divider|divider|op_12~30_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_12~28_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[480]~103_combout\);

-- Location: LCCOMB_X26_Y21_N28
\vclock|Div0|auto_generated|divider|divider|StageOut[479]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[479]~104_combout\ = (\CLOCK_ADJ|ADC_CLK\(21) & (\vclock|Div0|auto_generated|divider|divider|StageOut[455]~91_combout\)) # (!\CLOCK_ADJ|ADC_CLK\(21) & 
-- ((\vclock|Div0|auto_generated|divider|divider|op_12~30_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut[455]~91_combout\)) # (!\vclock|Div0|auto_generated|divider|divider|op_12~30_combout\ & 
-- ((\vclock|Div0|auto_generated|divider|divider|op_12~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(21),
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[455]~91_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|op_12~30_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_12~26_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[479]~104_combout\);

-- Location: LCCOMB_X26_Y21_N30
\vclock|Div0|auto_generated|divider|divider|StageOut[478]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[478]~105_combout\ = (\CLOCK_ADJ|ADC_CLK\(21) & (\vclock|Div0|auto_generated|divider|divider|StageOut[454]~92_combout\)) # (!\CLOCK_ADJ|ADC_CLK\(21) & 
-- ((\vclock|Div0|auto_generated|divider|divider|op_12~30_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut[454]~92_combout\)) # (!\vclock|Div0|auto_generated|divider|divider|op_12~30_combout\ & 
-- ((\vclock|Div0|auto_generated|divider|divider|op_12~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[454]~92_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(21),
	datac => \vclock|Div0|auto_generated|divider|divider|op_12~30_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_12~24_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[478]~105_combout\);

-- Location: LCCOMB_X26_Y21_N20
\vclock|Div0|auto_generated|divider|divider|StageOut[477]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[477]~106_combout\ = (\CLOCK_ADJ|ADC_CLK\(21) & (\vclock|Div0|auto_generated|divider|divider|StageOut[453]~93_combout\)) # (!\CLOCK_ADJ|ADC_CLK\(21) & 
-- ((\vclock|Div0|auto_generated|divider|divider|op_12~30_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut[453]~93_combout\)) # (!\vclock|Div0|auto_generated|divider|divider|op_12~30_combout\ & 
-- ((\vclock|Div0|auto_generated|divider|divider|op_12~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[453]~93_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(21),
	datac => \vclock|Div0|auto_generated|divider|divider|op_12~30_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_12~22_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[477]~106_combout\);

-- Location: LCCOMB_X26_Y21_N26
\vclock|Div0|auto_generated|divider|divider|StageOut[476]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[476]~107_combout\ = (\vclock|Div0|auto_generated|divider|divider|op_12~30_combout\ & (((\vclock|Div0|auto_generated|divider|divider|StageOut[452]~94_combout\)))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|op_12~30_combout\ & ((\CLOCK_ADJ|ADC_CLK\(21) & ((\vclock|Div0|auto_generated|divider|divider|StageOut[452]~94_combout\))) # (!\CLOCK_ADJ|ADC_CLK\(21) & 
-- (\vclock|Div0|auto_generated|divider|divider|op_12~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|op_12~30_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(21),
	datac => \vclock|Div0|auto_generated|divider|divider|op_12~20_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|StageOut[452]~94_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[476]~107_combout\);

-- Location: LCCOMB_X25_Y19_N2
\vclock|Div0|auto_generated|divider|divider|StageOut[475]~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[475]~108_combout\ = (\CLOCK_ADJ|ADC_CLK\(21) & (\vclock|Div0|auto_generated|divider|divider|StageOut[451]~95_combout\)) # (!\CLOCK_ADJ|ADC_CLK\(21) & 
-- ((\vclock|Div0|auto_generated|divider|divider|op_12~30_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut[451]~95_combout\)) # (!\vclock|Div0|auto_generated|divider|divider|op_12~30_combout\ & 
-- ((\vclock|Div0|auto_generated|divider|divider|op_12~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(21),
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[451]~95_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|op_12~18_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_12~30_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[475]~108_combout\);

-- Location: LCCOMB_X28_Y21_N22
\vclock|Div0|auto_generated|divider|divider|StageOut[474]~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[474]~109_combout\ = (\CLOCK_ADJ|ADC_CLK\(21) & (\vclock|Div0|auto_generated|divider|divider|StageOut[450]~96_combout\)) # (!\CLOCK_ADJ|ADC_CLK\(21) & 
-- ((\vclock|Div0|auto_generated|divider|divider|op_12~30_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut[450]~96_combout\)) # (!\vclock|Div0|auto_generated|divider|divider|op_12~30_combout\ & 
-- ((\vclock|Div0|auto_generated|divider|divider|op_12~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(21),
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[450]~96_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|op_12~16_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_12~30_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[474]~109_combout\);

-- Location: LCCOMB_X28_Y21_N20
\vclock|Div0|auto_generated|divider|divider|StageOut[473]~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[473]~110_combout\ = (\CLOCK_ADJ|ADC_CLK\(21) & (((\vclock|Div0|auto_generated|divider|divider|StageOut[449]~97_combout\)))) # (!\CLOCK_ADJ|ADC_CLK\(21) & 
-- ((\vclock|Div0|auto_generated|divider|divider|op_12~30_combout\ & ((\vclock|Div0|auto_generated|divider|divider|StageOut[449]~97_combout\))) # (!\vclock|Div0|auto_generated|divider|divider|op_12~30_combout\ & 
-- (\vclock|Div0|auto_generated|divider|divider|op_12~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|op_12~14_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(21),
	datac => \vclock|Div0|auto_generated|divider|divider|StageOut[449]~97_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_12~30_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[473]~110_combout\);

-- Location: LCCOMB_X26_Y22_N12
\vclock|Div0|auto_generated|divider|divider|StageOut[472]~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[472]~111_combout\ = (\CLOCK_ADJ|ADC_CLK\(21) & (\vclock|Div0|auto_generated|divider|divider|StageOut[448]~98_combout\)) # (!\CLOCK_ADJ|ADC_CLK\(21) & 
-- ((\vclock|Div0|auto_generated|divider|divider|op_12~30_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut[448]~98_combout\)) # (!\vclock|Div0|auto_generated|divider|divider|op_12~30_combout\ & 
-- ((\vclock|Div0|auto_generated|divider|divider|op_12~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(21),
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[448]~98_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|op_12~12_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_12~30_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[472]~111_combout\);

-- Location: LCCOMB_X26_Y22_N14
\vclock|Div0|auto_generated|divider|divider|StageOut[471]~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[471]~112_combout\ = (\CLOCK_ADJ|ADC_CLK\(21) & (\vclock|Div0|auto_generated|divider|divider|StageOut[447]~99_combout\)) # (!\CLOCK_ADJ|ADC_CLK\(21) & 
-- ((\vclock|Div0|auto_generated|divider|divider|op_12~30_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut[447]~99_combout\)) # (!\vclock|Div0|auto_generated|divider|divider|op_12~30_combout\ & 
-- ((\vclock|Div0|auto_generated|divider|divider|op_12~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(21),
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[447]~99_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|op_12~10_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_12~30_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[471]~112_combout\);

-- Location: LCCOMB_X26_Y22_N8
\vclock|Div0|auto_generated|divider|divider|StageOut[470]~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[470]~113_combout\ = (\CLOCK_ADJ|ADC_CLK\(21) & (\vclock|Div0|auto_generated|divider|divider|StageOut[446]~100_combout\)) # (!\CLOCK_ADJ|ADC_CLK\(21) & 
-- ((\vclock|Div0|auto_generated|divider|divider|op_12~30_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut[446]~100_combout\)) # (!\vclock|Div0|auto_generated|divider|divider|op_12~30_combout\ & 
-- ((\vclock|Div0|auto_generated|divider|divider|op_12~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(21),
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[446]~100_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|op_12~8_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_12~30_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[470]~113_combout\);

-- Location: LCCOMB_X26_Y22_N10
\vclock|Div0|auto_generated|divider|divider|StageOut[469]~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[469]~114_combout\ = (\CLOCK_ADJ|ADC_CLK\(21) & (\vclock|Div0|auto_generated|divider|divider|StageOut[445]~101_combout\)) # (!\CLOCK_ADJ|ADC_CLK\(21) & 
-- ((\vclock|Div0|auto_generated|divider|divider|op_12~30_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut[445]~101_combout\)) # (!\vclock|Div0|auto_generated|divider|divider|op_12~30_combout\ & 
-- ((\vclock|Div0|auto_generated|divider|divider|op_12~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[445]~101_combout\,
	datab => \vclock|Div0|auto_generated|divider|divider|op_12~6_combout\,
	datac => \CLOCK_ADJ|ADC_CLK\(21),
	datad => \vclock|Div0|auto_generated|divider|divider|op_12~30_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[469]~114_combout\);

-- Location: LCCOMB_X26_Y22_N0
\vclock|Div0|auto_generated|divider|divider|StageOut[468]~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[468]~115_combout\ = (\CLOCK_ADJ|ADC_CLK\(21) & (\vclock|Div0|auto_generated|divider|divider|StageOut[444]~102_combout\)) # (!\CLOCK_ADJ|ADC_CLK\(21) & 
-- ((\vclock|Div0|auto_generated|divider|divider|op_12~30_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut[444]~102_combout\)) # (!\vclock|Div0|auto_generated|divider|divider|op_12~30_combout\ & 
-- ((\vclock|Div0|auto_generated|divider|divider|op_12~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[444]~102_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(21),
	datac => \vclock|Div0|auto_generated|divider|divider|op_12~4_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_12~30_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[468]~115_combout\);

-- Location: LCCOMB_X26_Y22_N6
\vclock|Div0|auto_generated|divider|divider|StageOut[467]~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[467]~116_combout\ = (\CLOCK_ADJ|ADC_CLK\(21) & (\vclock|Div0|auto_generated|divider|divider|StageOut\(443))) # (!\CLOCK_ADJ|ADC_CLK\(21) & ((\vclock|Div0|auto_generated|divider|divider|op_12~30_combout\ 
-- & (\vclock|Div0|auto_generated|divider|divider|StageOut\(443))) # (!\vclock|Div0|auto_generated|divider|divider|op_12~30_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_12~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(21),
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut\(443),
	datac => \vclock|Div0|auto_generated|divider|divider|op_12~2_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_12~30_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[467]~116_combout\);

-- Location: LCCOMB_X26_Y22_N4
\vclock|Div0|auto_generated|divider|divider|StageOut[466]~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[466]~117_combout\ = (!\CLOCK_ADJ|ADC_CLK\(21) & (\CLOCK_ADJ|ADC_CLK\(6) & !\vclock|Div0|auto_generated|divider|divider|op_12~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(21),
	datac => \CLOCK_ADJ|ADC_CLK\(6),
	datad => \vclock|Div0|auto_generated|divider|divider|op_12~30_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[466]~117_combout\);

-- Location: LCCOMB_X26_Y22_N16
\vclock|Div0|auto_generated|divider|divider|op_13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_13~1_cout\ = CARRY(!\CLOCK_ADJ|ADC_CLK\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(6),
	datad => VCC,
	cout => \vclock|Div0|auto_generated|divider|divider|op_13~1_cout\);

-- Location: LCCOMB_X26_Y22_N18
\vclock|Div0|auto_generated|divider|divider|op_13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_13~2_combout\ = (\CLOCK_ADJ|ADC_CLK\(7) & ((\vclock|Div0|auto_generated|divider|divider|StageOut[466]~117_combout\ & (!\vclock|Div0|auto_generated|divider|divider|op_13~1_cout\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[466]~117_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_13~1_cout\) # (GND))))) # (!\CLOCK_ADJ|ADC_CLK\(7) & ((\vclock|Div0|auto_generated|divider|divider|StageOut[466]~117_combout\ & 
-- (\vclock|Div0|auto_generated|divider|divider|op_13~1_cout\ & VCC)) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[466]~117_combout\ & (!\vclock|Div0|auto_generated|divider|divider|op_13~1_cout\))))
-- \vclock|Div0|auto_generated|divider|divider|op_13~3\ = CARRY((\CLOCK_ADJ|ADC_CLK\(7) & ((!\vclock|Div0|auto_generated|divider|divider|op_13~1_cout\) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[466]~117_combout\))) # (!\CLOCK_ADJ|ADC_CLK\(7) & 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[466]~117_combout\ & !\vclock|Div0|auto_generated|divider|divider|op_13~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(7),
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[466]~117_combout\,
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_13~1_cout\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_13~2_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_13~3\);

-- Location: LCCOMB_X26_Y22_N20
\vclock|Div0|auto_generated|divider|divider|op_13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_13~4_combout\ = ((\vclock|Div0|auto_generated|divider|divider|StageOut[467]~116_combout\ $ (\CLOCK_ADJ|ADC_CLK\(8) $ (\vclock|Div0|auto_generated|divider|divider|op_13~3\)))) # (GND)
-- \vclock|Div0|auto_generated|divider|divider|op_13~5\ = CARRY((\vclock|Div0|auto_generated|divider|divider|StageOut[467]~116_combout\ & ((!\vclock|Div0|auto_generated|divider|divider|op_13~3\) # (!\CLOCK_ADJ|ADC_CLK\(8)))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[467]~116_combout\ & (!\CLOCK_ADJ|ADC_CLK\(8) & !\vclock|Div0|auto_generated|divider|divider|op_13~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[467]~116_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(8),
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_13~3\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_13~4_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_13~5\);

-- Location: LCCOMB_X26_Y22_N22
\vclock|Div0|auto_generated|divider|divider|op_13~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_13~6_combout\ = (\CLOCK_ADJ|ADC_CLK\(9) & ((\vclock|Div0|auto_generated|divider|divider|StageOut[468]~115_combout\ & (!\vclock|Div0|auto_generated|divider|divider|op_13~5\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[468]~115_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_13~5\) # (GND))))) # (!\CLOCK_ADJ|ADC_CLK\(9) & ((\vclock|Div0|auto_generated|divider|divider|StageOut[468]~115_combout\ & 
-- (\vclock|Div0|auto_generated|divider|divider|op_13~5\ & VCC)) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[468]~115_combout\ & (!\vclock|Div0|auto_generated|divider|divider|op_13~5\))))
-- \vclock|Div0|auto_generated|divider|divider|op_13~7\ = CARRY((\CLOCK_ADJ|ADC_CLK\(9) & ((!\vclock|Div0|auto_generated|divider|divider|op_13~5\) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[468]~115_combout\))) # (!\CLOCK_ADJ|ADC_CLK\(9) & 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[468]~115_combout\ & !\vclock|Div0|auto_generated|divider|divider|op_13~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(9),
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[468]~115_combout\,
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_13~5\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_13~6_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_13~7\);

-- Location: LCCOMB_X26_Y22_N24
\vclock|Div0|auto_generated|divider|divider|op_13~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_13~8_combout\ = ((\vclock|Div0|auto_generated|divider|divider|StageOut[469]~114_combout\ $ (\CLOCK_ADJ|ADC_CLK\(10) $ (\vclock|Div0|auto_generated|divider|divider|op_13~7\)))) # (GND)
-- \vclock|Div0|auto_generated|divider|divider|op_13~9\ = CARRY((\vclock|Div0|auto_generated|divider|divider|StageOut[469]~114_combout\ & ((!\vclock|Div0|auto_generated|divider|divider|op_13~7\) # (!\CLOCK_ADJ|ADC_CLK\(10)))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[469]~114_combout\ & (!\CLOCK_ADJ|ADC_CLK\(10) & !\vclock|Div0|auto_generated|divider|divider|op_13~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[469]~114_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(10),
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_13~7\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_13~8_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_13~9\);

-- Location: LCCOMB_X26_Y22_N26
\vclock|Div0|auto_generated|divider|divider|op_13~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_13~10_combout\ = (\CLOCK_ADJ|ADC_CLK\(11) & ((\vclock|Div0|auto_generated|divider|divider|StageOut[470]~113_combout\ & (!\vclock|Div0|auto_generated|divider|divider|op_13~9\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[470]~113_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_13~9\) # (GND))))) # (!\CLOCK_ADJ|ADC_CLK\(11) & ((\vclock|Div0|auto_generated|divider|divider|StageOut[470]~113_combout\ & 
-- (\vclock|Div0|auto_generated|divider|divider|op_13~9\ & VCC)) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[470]~113_combout\ & (!\vclock|Div0|auto_generated|divider|divider|op_13~9\))))
-- \vclock|Div0|auto_generated|divider|divider|op_13~11\ = CARRY((\CLOCK_ADJ|ADC_CLK\(11) & ((!\vclock|Div0|auto_generated|divider|divider|op_13~9\) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[470]~113_combout\))) # (!\CLOCK_ADJ|ADC_CLK\(11) & 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[470]~113_combout\ & !\vclock|Div0|auto_generated|divider|divider|op_13~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(11),
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[470]~113_combout\,
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_13~9\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_13~10_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_13~11\);

-- Location: LCCOMB_X26_Y22_N28
\vclock|Div0|auto_generated|divider|divider|op_13~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_13~12_combout\ = ((\CLOCK_ADJ|ADC_CLK\(12) $ (\vclock|Div0|auto_generated|divider|divider|StageOut[471]~112_combout\ $ (\vclock|Div0|auto_generated|divider|divider|op_13~11\)))) # (GND)
-- \vclock|Div0|auto_generated|divider|divider|op_13~13\ = CARRY((\CLOCK_ADJ|ADC_CLK\(12) & (\vclock|Div0|auto_generated|divider|divider|StageOut[471]~112_combout\ & !\vclock|Div0|auto_generated|divider|divider|op_13~11\)) # (!\CLOCK_ADJ|ADC_CLK\(12) & 
-- ((\vclock|Div0|auto_generated|divider|divider|StageOut[471]~112_combout\) # (!\vclock|Div0|auto_generated|divider|divider|op_13~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(12),
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[471]~112_combout\,
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_13~11\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_13~12_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_13~13\);

-- Location: LCCOMB_X26_Y22_N30
\vclock|Div0|auto_generated|divider|divider|op_13~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_13~14_combout\ = (\vclock|Div0|auto_generated|divider|divider|StageOut[472]~111_combout\ & ((\CLOCK_ADJ|ADC_CLK\(13) & (!\vclock|Div0|auto_generated|divider|divider|op_13~13\)) # (!\CLOCK_ADJ|ADC_CLK\(13) & 
-- (\vclock|Div0|auto_generated|divider|divider|op_13~13\ & VCC)))) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[472]~111_combout\ & ((\CLOCK_ADJ|ADC_CLK\(13) & ((\vclock|Div0|auto_generated|divider|divider|op_13~13\) # (GND))) # 
-- (!\CLOCK_ADJ|ADC_CLK\(13) & (!\vclock|Div0|auto_generated|divider|divider|op_13~13\))))
-- \vclock|Div0|auto_generated|divider|divider|op_13~15\ = CARRY((\vclock|Div0|auto_generated|divider|divider|StageOut[472]~111_combout\ & (\CLOCK_ADJ|ADC_CLK\(13) & !\vclock|Div0|auto_generated|divider|divider|op_13~13\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[472]~111_combout\ & ((\CLOCK_ADJ|ADC_CLK\(13)) # (!\vclock|Div0|auto_generated|divider|divider|op_13~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[472]~111_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(13),
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_13~13\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_13~14_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_13~15\);

-- Location: LCCOMB_X26_Y21_N0
\vclock|Div0|auto_generated|divider|divider|op_13~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_13~16_combout\ = ((\CLOCK_ADJ|ADC_CLK\(14) $ (\vclock|Div0|auto_generated|divider|divider|StageOut[473]~110_combout\ $ (\vclock|Div0|auto_generated|divider|divider|op_13~15\)))) # (GND)
-- \vclock|Div0|auto_generated|divider|divider|op_13~17\ = CARRY((\CLOCK_ADJ|ADC_CLK\(14) & (\vclock|Div0|auto_generated|divider|divider|StageOut[473]~110_combout\ & !\vclock|Div0|auto_generated|divider|divider|op_13~15\)) # (!\CLOCK_ADJ|ADC_CLK\(14) & 
-- ((\vclock|Div0|auto_generated|divider|divider|StageOut[473]~110_combout\) # (!\vclock|Div0|auto_generated|divider|divider|op_13~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(14),
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[473]~110_combout\,
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_13~15\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_13~16_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_13~17\);

-- Location: LCCOMB_X26_Y21_N2
\vclock|Div0|auto_generated|divider|divider|op_13~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_13~18_combout\ = (\vclock|Div0|auto_generated|divider|divider|StageOut[474]~109_combout\ & ((\CLOCK_ADJ|ADC_CLK\(15) & (!\vclock|Div0|auto_generated|divider|divider|op_13~17\)) # (!\CLOCK_ADJ|ADC_CLK\(15) & 
-- (\vclock|Div0|auto_generated|divider|divider|op_13~17\ & VCC)))) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[474]~109_combout\ & ((\CLOCK_ADJ|ADC_CLK\(15) & ((\vclock|Div0|auto_generated|divider|divider|op_13~17\) # (GND))) # 
-- (!\CLOCK_ADJ|ADC_CLK\(15) & (!\vclock|Div0|auto_generated|divider|divider|op_13~17\))))
-- \vclock|Div0|auto_generated|divider|divider|op_13~19\ = CARRY((\vclock|Div0|auto_generated|divider|divider|StageOut[474]~109_combout\ & (\CLOCK_ADJ|ADC_CLK\(15) & !\vclock|Div0|auto_generated|divider|divider|op_13~17\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[474]~109_combout\ & ((\CLOCK_ADJ|ADC_CLK\(15)) # (!\vclock|Div0|auto_generated|divider|divider|op_13~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[474]~109_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(15),
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_13~17\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_13~18_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_13~19\);

-- Location: LCCOMB_X26_Y21_N4
\vclock|Div0|auto_generated|divider|divider|op_13~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_13~20_combout\ = ((\vclock|Div0|auto_generated|divider|divider|StageOut[475]~108_combout\ $ (\CLOCK_ADJ|ADC_CLK\(16) $ (\vclock|Div0|auto_generated|divider|divider|op_13~19\)))) # (GND)
-- \vclock|Div0|auto_generated|divider|divider|op_13~21\ = CARRY((\vclock|Div0|auto_generated|divider|divider|StageOut[475]~108_combout\ & ((!\vclock|Div0|auto_generated|divider|divider|op_13~19\) # (!\CLOCK_ADJ|ADC_CLK\(16)))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[475]~108_combout\ & (!\CLOCK_ADJ|ADC_CLK\(16) & !\vclock|Div0|auto_generated|divider|divider|op_13~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[475]~108_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(16),
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_13~19\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_13~20_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_13~21\);

-- Location: LCCOMB_X26_Y21_N6
\vclock|Div0|auto_generated|divider|divider|op_13~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_13~22_combout\ = (\vclock|Div0|auto_generated|divider|divider|StageOut[476]~107_combout\ & ((\CLOCK_ADJ|ADC_CLK\(17) & (!\vclock|Div0|auto_generated|divider|divider|op_13~21\)) # (!\CLOCK_ADJ|ADC_CLK\(17) & 
-- (\vclock|Div0|auto_generated|divider|divider|op_13~21\ & VCC)))) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[476]~107_combout\ & ((\CLOCK_ADJ|ADC_CLK\(17) & ((\vclock|Div0|auto_generated|divider|divider|op_13~21\) # (GND))) # 
-- (!\CLOCK_ADJ|ADC_CLK\(17) & (!\vclock|Div0|auto_generated|divider|divider|op_13~21\))))
-- \vclock|Div0|auto_generated|divider|divider|op_13~23\ = CARRY((\vclock|Div0|auto_generated|divider|divider|StageOut[476]~107_combout\ & (\CLOCK_ADJ|ADC_CLK\(17) & !\vclock|Div0|auto_generated|divider|divider|op_13~21\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[476]~107_combout\ & ((\CLOCK_ADJ|ADC_CLK\(17)) # (!\vclock|Div0|auto_generated|divider|divider|op_13~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[476]~107_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(17),
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_13~21\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_13~22_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_13~23\);

-- Location: LCCOMB_X26_Y21_N8
\vclock|Div0|auto_generated|divider|divider|op_13~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_13~24_combout\ = ((\CLOCK_ADJ|ADC_CLK\(18) $ (\vclock|Div0|auto_generated|divider|divider|StageOut[477]~106_combout\ $ (\vclock|Div0|auto_generated|divider|divider|op_13~23\)))) # (GND)
-- \vclock|Div0|auto_generated|divider|divider|op_13~25\ = CARRY((\CLOCK_ADJ|ADC_CLK\(18) & (\vclock|Div0|auto_generated|divider|divider|StageOut[477]~106_combout\ & !\vclock|Div0|auto_generated|divider|divider|op_13~23\)) # (!\CLOCK_ADJ|ADC_CLK\(18) & 
-- ((\vclock|Div0|auto_generated|divider|divider|StageOut[477]~106_combout\) # (!\vclock|Div0|auto_generated|divider|divider|op_13~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(18),
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[477]~106_combout\,
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_13~23\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_13~24_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_13~25\);

-- Location: LCCOMB_X26_Y21_N10
\vclock|Div0|auto_generated|divider|divider|op_13~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_13~26_combout\ = (\vclock|Div0|auto_generated|divider|divider|StageOut[478]~105_combout\ & ((\CLOCK_ADJ|ADC_CLK\(19) & (!\vclock|Div0|auto_generated|divider|divider|op_13~25\)) # (!\CLOCK_ADJ|ADC_CLK\(19) & 
-- (\vclock|Div0|auto_generated|divider|divider|op_13~25\ & VCC)))) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[478]~105_combout\ & ((\CLOCK_ADJ|ADC_CLK\(19) & ((\vclock|Div0|auto_generated|divider|divider|op_13~25\) # (GND))) # 
-- (!\CLOCK_ADJ|ADC_CLK\(19) & (!\vclock|Div0|auto_generated|divider|divider|op_13~25\))))
-- \vclock|Div0|auto_generated|divider|divider|op_13~27\ = CARRY((\vclock|Div0|auto_generated|divider|divider|StageOut[478]~105_combout\ & (\CLOCK_ADJ|ADC_CLK\(19) & !\vclock|Div0|auto_generated|divider|divider|op_13~25\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[478]~105_combout\ & ((\CLOCK_ADJ|ADC_CLK\(19)) # (!\vclock|Div0|auto_generated|divider|divider|op_13~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[478]~105_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(19),
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_13~25\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_13~26_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_13~27\);

-- Location: LCCOMB_X26_Y21_N12
\vclock|Div0|auto_generated|divider|divider|op_13~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_13~28_combout\ = ((\CLOCK_ADJ|ADC_CLK\(20) $ (\vclock|Div0|auto_generated|divider|divider|StageOut[479]~104_combout\ $ (\vclock|Div0|auto_generated|divider|divider|op_13~27\)))) # (GND)
-- \vclock|Div0|auto_generated|divider|divider|op_13~29\ = CARRY((\CLOCK_ADJ|ADC_CLK\(20) & (\vclock|Div0|auto_generated|divider|divider|StageOut[479]~104_combout\ & !\vclock|Div0|auto_generated|divider|divider|op_13~27\)) # (!\CLOCK_ADJ|ADC_CLK\(20) & 
-- ((\vclock|Div0|auto_generated|divider|divider|StageOut[479]~104_combout\) # (!\vclock|Div0|auto_generated|divider|divider|op_13~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(20),
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[479]~104_combout\,
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_13~27\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_13~28_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_13~29\);

-- Location: LCCOMB_X26_Y21_N14
\vclock|Div0|auto_generated|divider|divider|op_13~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_13~30_combout\ = (\vclock|Div0|auto_generated|divider|divider|StageOut[480]~103_combout\ & ((\CLOCK_ADJ|ADC_CLK\(21) & (!\vclock|Div0|auto_generated|divider|divider|op_13~29\)) # (!\CLOCK_ADJ|ADC_CLK\(21) & 
-- (\vclock|Div0|auto_generated|divider|divider|op_13~29\ & VCC)))) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[480]~103_combout\ & ((\CLOCK_ADJ|ADC_CLK\(21) & ((\vclock|Div0|auto_generated|divider|divider|op_13~29\) # (GND))) # 
-- (!\CLOCK_ADJ|ADC_CLK\(21) & (!\vclock|Div0|auto_generated|divider|divider|op_13~29\))))
-- \vclock|Div0|auto_generated|divider|divider|op_13~31\ = CARRY((\vclock|Div0|auto_generated|divider|divider|StageOut[480]~103_combout\ & (\CLOCK_ADJ|ADC_CLK\(21) & !\vclock|Div0|auto_generated|divider|divider|op_13~29\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[480]~103_combout\ & ((\CLOCK_ADJ|ADC_CLK\(21)) # (!\vclock|Div0|auto_generated|divider|divider|op_13~29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[480]~103_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(21),
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_13~29\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_13~30_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_13~31\);

-- Location: LCCOMB_X26_Y21_N16
\vclock|Div0|auto_generated|divider|divider|op_13~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_13~32_combout\ = \vclock|Div0|auto_generated|divider|divider|op_13~31\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \vclock|Div0|auto_generated|divider|divider|op_13~31\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_13~32_combout\);

-- Location: LCCOMB_X30_Y21_N14
\vclock|Equal0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Equal0~11_combout\ = (\vclock|Equal0~20_combout\ & (\vclock|Equal0~21_combout\ & (\vclock|Add0~1_combout\ $ (\vclock|Div0|auto_generated|divider|divider|op_13~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Equal0~20_combout\,
	datab => \vclock|Equal0~21_combout\,
	datac => \vclock|Add0~1_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_13~32_combout\,
	combout => \vclock|Equal0~11_combout\);

-- Location: LCCOMB_X30_Y21_N10
\vclock|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Equal0~10_combout\ = \vclock|Add0~0_combout\ $ (\vclock|vclk_cnt\(4) $ (((\CLOCK_ADJ|ADC_CLK\(21)) # (\vclock|Div0|auto_generated|divider|divider|op_12~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Add0~0_combout\,
	datab => \vclock|vclk_cnt\(4),
	datac => \CLOCK_ADJ|ADC_CLK\(21),
	datad => \vclock|Div0|auto_generated|divider|divider|op_12~30_combout\,
	combout => \vclock|Equal0~10_combout\);

-- Location: LCCOMB_X31_Y21_N6
\vclock|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Add0~3_combout\ = \vclock|vclk_cnt\(2) $ (((\vclock|vclk_cnt\(0) & \vclock|vclk_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|vclk_cnt\(0),
	datac => \vclock|vclk_cnt\(1),
	datad => \vclock|vclk_cnt\(2),
	combout => \vclock|Add0~3_combout\);

-- Location: LCCOMB_X29_Y20_N24
\vclock|Equal0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Equal0~13_combout\ = (\vclock|Div0|auto_generated|divider|divider|selnose\(378) & ((\vclock|Div0|auto_generated|divider|divider|sel\(145)) # (\vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vclock|Div0|auto_generated|divider|divider|sel\(145),
	datac => \vclock|Div0|auto_generated|divider|divider|selnose\(378),
	datad => \vclock|Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~16_combout\,
	combout => \vclock|Equal0~13_combout\);

-- Location: LCCOMB_X31_Y21_N28
\vclock|Div0|auto_generated|divider|divider|selnose[486]\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|selnose\(486) = (\CLOCK_ADJ|ADC_CLK\(21)) # ((\CLOCK_ADJ|ADC_CLK\(19)) # ((\CLOCK_ADJ|ADC_CLK\(20)) # (\vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(21),
	datab => \CLOCK_ADJ|ADC_CLK\(19),
	datac => \CLOCK_ADJ|ADC_CLK\(20),
	datad => \vclock|Div0|auto_generated|divider|divider|add_sub_18_result_int[19]~24_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|selnose\(486));

-- Location: LCCOMB_X30_Y21_N30
\vclock|Equal0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Equal0~14_combout\ = (\vclock|Equal0~13_combout\ & (\vclock|Div0|auto_generated|divider|divider|selnose\(486) & ((\vclock|Div0|auto_generated|divider|divider|op_6~20_combout\) # 
-- (!\vclock|Div0|auto_generated|divider|divider|selnose[405]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Equal0~13_combout\,
	datab => \vclock|Div0|auto_generated|divider|divider|selnose[405]~6_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|op_6~20_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|selnose\(486),
	combout => \vclock|Equal0~14_combout\);

-- Location: LCCOMB_X25_Y21_N30
\vclock|Div0|auto_generated|divider|divider|StageOut[504]~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[504]~132_combout\ = (\vclock|Div0|auto_generated|divider|divider|StageOut[480]~103_combout\ & \vclock|Div0|auto_generated|divider|divider|op_13~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[480]~103_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_13~32_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[504]~132_combout\);

-- Location: LCCOMB_X25_Y21_N24
\vclock|Div0|auto_generated|divider|divider|StageOut[504]~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[504]~133_combout\ = (\vclock|Div0|auto_generated|divider|divider|op_13~30_combout\ & !\vclock|Div0|auto_generated|divider|divider|op_13~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vclock|Div0|auto_generated|divider|divider|op_13~30_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_13~32_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[504]~133_combout\);

-- Location: LCCOMB_X25_Y21_N18
\vclock|Div0|auto_generated|divider|divider|StageOut[503]~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[503]~134_combout\ = (\vclock|Div0|auto_generated|divider|divider|op_13~32_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut[479]~104_combout\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|op_13~32_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_13~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[479]~104_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_13~32_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[503]~134_combout\);

-- Location: LCCOMB_X26_Y21_N24
\vclock|Div0|auto_generated|divider|divider|StageOut[502]~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[502]~118_combout\ = (\vclock|Div0|auto_generated|divider|divider|op_13~32_combout\ & ((\vclock|Div0|auto_generated|divider|divider|StageOut[478]~105_combout\))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|op_13~32_combout\ & (\vclock|Div0|auto_generated|divider|divider|op_13~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|op_13~26_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|StageOut[478]~105_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_13~32_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[502]~118_combout\);

-- Location: LCCOMB_X25_Y21_N26
\vclock|Div0|auto_generated|divider|divider|StageOut[501]~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[501]~119_combout\ = (\vclock|Div0|auto_generated|divider|divider|op_13~32_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut[477]~106_combout\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|op_13~32_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_13~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[477]~106_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|op_13~24_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_13~32_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[501]~119_combout\);

-- Location: LCCOMB_X26_Y21_N18
\vclock|Div0|auto_generated|divider|divider|StageOut[500]~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[500]~120_combout\ = (\vclock|Div0|auto_generated|divider|divider|op_13~32_combout\ & ((\vclock|Div0|auto_generated|divider|divider|StageOut[476]~107_combout\))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|op_13~32_combout\ & (\vclock|Div0|auto_generated|divider|divider|op_13~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|op_13~22_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|StageOut[476]~107_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_13~32_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[500]~120_combout\);

-- Location: LCCOMB_X25_Y21_N28
\vclock|Div0|auto_generated|divider|divider|StageOut[499]~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[499]~121_combout\ = (\vclock|Div0|auto_generated|divider|divider|op_13~32_combout\ & ((\vclock|Div0|auto_generated|divider|divider|StageOut[475]~108_combout\))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|op_13~32_combout\ & (\vclock|Div0|auto_generated|divider|divider|op_13~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|op_13~20_combout\,
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[475]~108_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_13~32_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[499]~121_combout\);

-- Location: LCCOMB_X28_Y21_N6
\vclock|Div0|auto_generated|divider|divider|StageOut[498]~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[498]~122_combout\ = (\vclock|Div0|auto_generated|divider|divider|op_13~32_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut[474]~109_combout\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|op_13~32_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_13~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[474]~109_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|op_13~18_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_13~32_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[498]~122_combout\);

-- Location: LCCOMB_X28_Y21_N24
\vclock|Div0|auto_generated|divider|divider|StageOut[497]~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[497]~123_combout\ = (\vclock|Div0|auto_generated|divider|divider|op_13~32_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut[473]~110_combout\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|op_13~32_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_13~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[473]~110_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|op_13~16_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_13~32_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[497]~123_combout\);

-- Location: LCCOMB_X25_Y22_N12
\vclock|Div0|auto_generated|divider|divider|StageOut[496]~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[496]~124_combout\ = (\vclock|Div0|auto_generated|divider|divider|op_13~32_combout\ & ((\vclock|Div0|auto_generated|divider|divider|StageOut[472]~111_combout\))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|op_13~32_combout\ & (\vclock|Div0|auto_generated|divider|divider|op_13~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|op_13~14_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|op_13~32_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|StageOut[472]~111_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[496]~124_combout\);

-- Location: LCCOMB_X26_Y22_N2
\vclock|Div0|auto_generated|divider|divider|StageOut[495]~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[495]~125_combout\ = (\vclock|Div0|auto_generated|divider|divider|op_13~32_combout\ & ((\vclock|Div0|auto_generated|divider|divider|StageOut[471]~112_combout\))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|op_13~32_combout\ & (\vclock|Div0|auto_generated|divider|divider|op_13~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vclock|Div0|auto_generated|divider|divider|op_13~12_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|StageOut[471]~112_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_13~32_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[495]~125_combout\);

-- Location: LCCOMB_X25_Y22_N6
\vclock|Div0|auto_generated|divider|divider|StageOut[494]~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[494]~126_combout\ = (\vclock|Div0|auto_generated|divider|divider|op_13~32_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut[470]~113_combout\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|op_13~32_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_13~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[470]~113_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|op_13~32_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_13~10_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[494]~126_combout\);

-- Location: LCCOMB_X25_Y22_N0
\vclock|Div0|auto_generated|divider|divider|StageOut[493]~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[493]~127_combout\ = (\vclock|Div0|auto_generated|divider|divider|op_13~32_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut[469]~114_combout\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|op_13~32_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_13~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[469]~114_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|op_13~32_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_13~8_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[493]~127_combout\);

-- Location: LCCOMB_X25_Y22_N2
\vclock|Div0|auto_generated|divider|divider|StageOut[492]~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[492]~128_combout\ = (\vclock|Div0|auto_generated|divider|divider|op_13~32_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut[468]~115_combout\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|op_13~32_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_13~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[468]~115_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|op_13~32_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_13~6_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[492]~128_combout\);

-- Location: LCCOMB_X25_Y22_N8
\vclock|Div0|auto_generated|divider|divider|StageOut[491]~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[491]~129_combout\ = (\vclock|Div0|auto_generated|divider|divider|op_13~32_combout\ & ((\vclock|Div0|auto_generated|divider|divider|StageOut[467]~116_combout\))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|op_13~32_combout\ & (\vclock|Div0|auto_generated|divider|divider|op_13~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|op_13~4_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|op_13~32_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|StageOut[467]~116_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[491]~129_combout\);

-- Location: LCCOMB_X23_Y22_N16
\vclock|Div0|auto_generated|divider|divider|StageOut[490]~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[490]~130_combout\ = (\vclock|Div0|auto_generated|divider|divider|op_13~32_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut[466]~117_combout\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|op_13~32_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_13~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[466]~117_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|op_13~2_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_13~32_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[490]~130_combout\);

-- Location: LCCOMB_X25_Y22_N10
\vclock|Div0|auto_generated|divider|divider|StageOut[489]~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[489]~131_combout\ = (!\vclock|Div0|auto_generated|divider|divider|op_13~32_combout\ & \CLOCK_ADJ|ADC_CLK\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vclock|Div0|auto_generated|divider|divider|op_13~32_combout\,
	datad => \CLOCK_ADJ|ADC_CLK\(6),
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[489]~131_combout\);

-- Location: LCCOMB_X25_Y22_N14
\vclock|Div0|auto_generated|divider|divider|op_14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_14~1_cout\ = CARRY(!\CLOCK_ADJ|ADC_CLK\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLOCK_ADJ|ADC_CLK\(6),
	datad => VCC,
	cout => \vclock|Div0|auto_generated|divider|divider|op_14~1_cout\);

-- Location: LCCOMB_X25_Y22_N16
\vclock|Div0|auto_generated|divider|divider|op_14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_14~2_combout\ = (\vclock|Div0|auto_generated|divider|divider|StageOut[489]~131_combout\ & ((\CLOCK_ADJ|ADC_CLK\(7) & (!\vclock|Div0|auto_generated|divider|divider|op_14~1_cout\)) # (!\CLOCK_ADJ|ADC_CLK\(7) & 
-- (\vclock|Div0|auto_generated|divider|divider|op_14~1_cout\ & VCC)))) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[489]~131_combout\ & ((\CLOCK_ADJ|ADC_CLK\(7) & ((\vclock|Div0|auto_generated|divider|divider|op_14~1_cout\) # (GND))) # 
-- (!\CLOCK_ADJ|ADC_CLK\(7) & (!\vclock|Div0|auto_generated|divider|divider|op_14~1_cout\))))
-- \vclock|Div0|auto_generated|divider|divider|op_14~3\ = CARRY((\vclock|Div0|auto_generated|divider|divider|StageOut[489]~131_combout\ & (\CLOCK_ADJ|ADC_CLK\(7) & !\vclock|Div0|auto_generated|divider|divider|op_14~1_cout\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[489]~131_combout\ & ((\CLOCK_ADJ|ADC_CLK\(7)) # (!\vclock|Div0|auto_generated|divider|divider|op_14~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[489]~131_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(7),
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_14~1_cout\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_14~2_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_14~3\);

-- Location: LCCOMB_X25_Y22_N18
\vclock|Div0|auto_generated|divider|divider|op_14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_14~4_combout\ = ((\CLOCK_ADJ|ADC_CLK\(8) $ (\vclock|Div0|auto_generated|divider|divider|StageOut[490]~130_combout\ $ (\vclock|Div0|auto_generated|divider|divider|op_14~3\)))) # (GND)
-- \vclock|Div0|auto_generated|divider|divider|op_14~5\ = CARRY((\CLOCK_ADJ|ADC_CLK\(8) & (\vclock|Div0|auto_generated|divider|divider|StageOut[490]~130_combout\ & !\vclock|Div0|auto_generated|divider|divider|op_14~3\)) # (!\CLOCK_ADJ|ADC_CLK\(8) & 
-- ((\vclock|Div0|auto_generated|divider|divider|StageOut[490]~130_combout\) # (!\vclock|Div0|auto_generated|divider|divider|op_14~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(8),
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[490]~130_combout\,
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_14~3\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_14~4_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_14~5\);

-- Location: LCCOMB_X25_Y22_N20
\vclock|Div0|auto_generated|divider|divider|op_14~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_14~6_combout\ = (\CLOCK_ADJ|ADC_CLK\(9) & ((\vclock|Div0|auto_generated|divider|divider|StageOut[491]~129_combout\ & (!\vclock|Div0|auto_generated|divider|divider|op_14~5\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[491]~129_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_14~5\) # (GND))))) # (!\CLOCK_ADJ|ADC_CLK\(9) & ((\vclock|Div0|auto_generated|divider|divider|StageOut[491]~129_combout\ & 
-- (\vclock|Div0|auto_generated|divider|divider|op_14~5\ & VCC)) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[491]~129_combout\ & (!\vclock|Div0|auto_generated|divider|divider|op_14~5\))))
-- \vclock|Div0|auto_generated|divider|divider|op_14~7\ = CARRY((\CLOCK_ADJ|ADC_CLK\(9) & ((!\vclock|Div0|auto_generated|divider|divider|op_14~5\) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[491]~129_combout\))) # (!\CLOCK_ADJ|ADC_CLK\(9) & 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[491]~129_combout\ & !\vclock|Div0|auto_generated|divider|divider|op_14~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(9),
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[491]~129_combout\,
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_14~5\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_14~6_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_14~7\);

-- Location: LCCOMB_X25_Y22_N22
\vclock|Div0|auto_generated|divider|divider|op_14~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_14~8_combout\ = ((\CLOCK_ADJ|ADC_CLK\(10) $ (\vclock|Div0|auto_generated|divider|divider|StageOut[492]~128_combout\ $ (\vclock|Div0|auto_generated|divider|divider|op_14~7\)))) # (GND)
-- \vclock|Div0|auto_generated|divider|divider|op_14~9\ = CARRY((\CLOCK_ADJ|ADC_CLK\(10) & (\vclock|Div0|auto_generated|divider|divider|StageOut[492]~128_combout\ & !\vclock|Div0|auto_generated|divider|divider|op_14~7\)) # (!\CLOCK_ADJ|ADC_CLK\(10) & 
-- ((\vclock|Div0|auto_generated|divider|divider|StageOut[492]~128_combout\) # (!\vclock|Div0|auto_generated|divider|divider|op_14~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(10),
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[492]~128_combout\,
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_14~7\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_14~8_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_14~9\);

-- Location: LCCOMB_X25_Y22_N24
\vclock|Div0|auto_generated|divider|divider|op_14~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_14~10_combout\ = (\CLOCK_ADJ|ADC_CLK\(11) & ((\vclock|Div0|auto_generated|divider|divider|StageOut[493]~127_combout\ & (!\vclock|Div0|auto_generated|divider|divider|op_14~9\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[493]~127_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_14~9\) # (GND))))) # (!\CLOCK_ADJ|ADC_CLK\(11) & ((\vclock|Div0|auto_generated|divider|divider|StageOut[493]~127_combout\ & 
-- (\vclock|Div0|auto_generated|divider|divider|op_14~9\ & VCC)) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[493]~127_combout\ & (!\vclock|Div0|auto_generated|divider|divider|op_14~9\))))
-- \vclock|Div0|auto_generated|divider|divider|op_14~11\ = CARRY((\CLOCK_ADJ|ADC_CLK\(11) & ((!\vclock|Div0|auto_generated|divider|divider|op_14~9\) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[493]~127_combout\))) # (!\CLOCK_ADJ|ADC_CLK\(11) & 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[493]~127_combout\ & !\vclock|Div0|auto_generated|divider|divider|op_14~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(11),
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[493]~127_combout\,
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_14~9\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_14~10_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_14~11\);

-- Location: LCCOMB_X25_Y22_N26
\vclock|Div0|auto_generated|divider|divider|op_14~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_14~12_combout\ = ((\vclock|Div0|auto_generated|divider|divider|StageOut[494]~126_combout\ $ (\CLOCK_ADJ|ADC_CLK\(12) $ (\vclock|Div0|auto_generated|divider|divider|op_14~11\)))) # (GND)
-- \vclock|Div0|auto_generated|divider|divider|op_14~13\ = CARRY((\vclock|Div0|auto_generated|divider|divider|StageOut[494]~126_combout\ & ((!\vclock|Div0|auto_generated|divider|divider|op_14~11\) # (!\CLOCK_ADJ|ADC_CLK\(12)))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[494]~126_combout\ & (!\CLOCK_ADJ|ADC_CLK\(12) & !\vclock|Div0|auto_generated|divider|divider|op_14~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[494]~126_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(12),
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_14~11\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_14~12_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_14~13\);

-- Location: LCCOMB_X25_Y22_N28
\vclock|Div0|auto_generated|divider|divider|op_14~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_14~14_combout\ = (\vclock|Div0|auto_generated|divider|divider|StageOut[495]~125_combout\ & ((\CLOCK_ADJ|ADC_CLK\(13) & (!\vclock|Div0|auto_generated|divider|divider|op_14~13\)) # (!\CLOCK_ADJ|ADC_CLK\(13) & 
-- (\vclock|Div0|auto_generated|divider|divider|op_14~13\ & VCC)))) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[495]~125_combout\ & ((\CLOCK_ADJ|ADC_CLK\(13) & ((\vclock|Div0|auto_generated|divider|divider|op_14~13\) # (GND))) # 
-- (!\CLOCK_ADJ|ADC_CLK\(13) & (!\vclock|Div0|auto_generated|divider|divider|op_14~13\))))
-- \vclock|Div0|auto_generated|divider|divider|op_14~15\ = CARRY((\vclock|Div0|auto_generated|divider|divider|StageOut[495]~125_combout\ & (\CLOCK_ADJ|ADC_CLK\(13) & !\vclock|Div0|auto_generated|divider|divider|op_14~13\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[495]~125_combout\ & ((\CLOCK_ADJ|ADC_CLK\(13)) # (!\vclock|Div0|auto_generated|divider|divider|op_14~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[495]~125_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(13),
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_14~13\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_14~14_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_14~15\);

-- Location: LCCOMB_X25_Y22_N30
\vclock|Div0|auto_generated|divider|divider|op_14~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_14~16_combout\ = ((\vclock|Div0|auto_generated|divider|divider|StageOut[496]~124_combout\ $ (\CLOCK_ADJ|ADC_CLK\(14) $ (\vclock|Div0|auto_generated|divider|divider|op_14~15\)))) # (GND)
-- \vclock|Div0|auto_generated|divider|divider|op_14~17\ = CARRY((\vclock|Div0|auto_generated|divider|divider|StageOut[496]~124_combout\ & ((!\vclock|Div0|auto_generated|divider|divider|op_14~15\) # (!\CLOCK_ADJ|ADC_CLK\(14)))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[496]~124_combout\ & (!\CLOCK_ADJ|ADC_CLK\(14) & !\vclock|Div0|auto_generated|divider|divider|op_14~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[496]~124_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(14),
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_14~15\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_14~16_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_14~17\);

-- Location: LCCOMB_X25_Y21_N0
\vclock|Div0|auto_generated|divider|divider|op_14~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_14~18_combout\ = (\vclock|Div0|auto_generated|divider|divider|StageOut[497]~123_combout\ & ((\CLOCK_ADJ|ADC_CLK\(15) & (!\vclock|Div0|auto_generated|divider|divider|op_14~17\)) # (!\CLOCK_ADJ|ADC_CLK\(15) & 
-- (\vclock|Div0|auto_generated|divider|divider|op_14~17\ & VCC)))) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[497]~123_combout\ & ((\CLOCK_ADJ|ADC_CLK\(15) & ((\vclock|Div0|auto_generated|divider|divider|op_14~17\) # (GND))) # 
-- (!\CLOCK_ADJ|ADC_CLK\(15) & (!\vclock|Div0|auto_generated|divider|divider|op_14~17\))))
-- \vclock|Div0|auto_generated|divider|divider|op_14~19\ = CARRY((\vclock|Div0|auto_generated|divider|divider|StageOut[497]~123_combout\ & (\CLOCK_ADJ|ADC_CLK\(15) & !\vclock|Div0|auto_generated|divider|divider|op_14~17\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[497]~123_combout\ & ((\CLOCK_ADJ|ADC_CLK\(15)) # (!\vclock|Div0|auto_generated|divider|divider|op_14~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[497]~123_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(15),
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_14~17\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_14~18_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_14~19\);

-- Location: LCCOMB_X25_Y21_N2
\vclock|Div0|auto_generated|divider|divider|op_14~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_14~20_combout\ = ((\CLOCK_ADJ|ADC_CLK\(16) $ (\vclock|Div0|auto_generated|divider|divider|StageOut[498]~122_combout\ $ (\vclock|Div0|auto_generated|divider|divider|op_14~19\)))) # (GND)
-- \vclock|Div0|auto_generated|divider|divider|op_14~21\ = CARRY((\CLOCK_ADJ|ADC_CLK\(16) & (\vclock|Div0|auto_generated|divider|divider|StageOut[498]~122_combout\ & !\vclock|Div0|auto_generated|divider|divider|op_14~19\)) # (!\CLOCK_ADJ|ADC_CLK\(16) & 
-- ((\vclock|Div0|auto_generated|divider|divider|StageOut[498]~122_combout\) # (!\vclock|Div0|auto_generated|divider|divider|op_14~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(16),
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[498]~122_combout\,
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_14~19\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_14~20_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_14~21\);

-- Location: LCCOMB_X25_Y21_N4
\vclock|Div0|auto_generated|divider|divider|op_14~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_14~22_combout\ = (\CLOCK_ADJ|ADC_CLK\(17) & ((\vclock|Div0|auto_generated|divider|divider|StageOut[499]~121_combout\ & (!\vclock|Div0|auto_generated|divider|divider|op_14~21\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[499]~121_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_14~21\) # (GND))))) # (!\CLOCK_ADJ|ADC_CLK\(17) & ((\vclock|Div0|auto_generated|divider|divider|StageOut[499]~121_combout\ & 
-- (\vclock|Div0|auto_generated|divider|divider|op_14~21\ & VCC)) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[499]~121_combout\ & (!\vclock|Div0|auto_generated|divider|divider|op_14~21\))))
-- \vclock|Div0|auto_generated|divider|divider|op_14~23\ = CARRY((\CLOCK_ADJ|ADC_CLK\(17) & ((!\vclock|Div0|auto_generated|divider|divider|op_14~21\) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[499]~121_combout\))) # (!\CLOCK_ADJ|ADC_CLK\(17) & 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[499]~121_combout\ & !\vclock|Div0|auto_generated|divider|divider|op_14~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(17),
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[499]~121_combout\,
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_14~21\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_14~22_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_14~23\);

-- Location: LCCOMB_X25_Y21_N6
\vclock|Div0|auto_generated|divider|divider|op_14~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_14~24_combout\ = ((\CLOCK_ADJ|ADC_CLK\(18) $ (\vclock|Div0|auto_generated|divider|divider|StageOut[500]~120_combout\ $ (\vclock|Div0|auto_generated|divider|divider|op_14~23\)))) # (GND)
-- \vclock|Div0|auto_generated|divider|divider|op_14~25\ = CARRY((\CLOCK_ADJ|ADC_CLK\(18) & (\vclock|Div0|auto_generated|divider|divider|StageOut[500]~120_combout\ & !\vclock|Div0|auto_generated|divider|divider|op_14~23\)) # (!\CLOCK_ADJ|ADC_CLK\(18) & 
-- ((\vclock|Div0|auto_generated|divider|divider|StageOut[500]~120_combout\) # (!\vclock|Div0|auto_generated|divider|divider|op_14~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(18),
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[500]~120_combout\,
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_14~23\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_14~24_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_14~25\);

-- Location: LCCOMB_X25_Y21_N8
\vclock|Div0|auto_generated|divider|divider|op_14~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_14~26_combout\ = (\vclock|Div0|auto_generated|divider|divider|StageOut[501]~119_combout\ & ((\CLOCK_ADJ|ADC_CLK\(19) & (!\vclock|Div0|auto_generated|divider|divider|op_14~25\)) # (!\CLOCK_ADJ|ADC_CLK\(19) & 
-- (\vclock|Div0|auto_generated|divider|divider|op_14~25\ & VCC)))) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[501]~119_combout\ & ((\CLOCK_ADJ|ADC_CLK\(19) & ((\vclock|Div0|auto_generated|divider|divider|op_14~25\) # (GND))) # 
-- (!\CLOCK_ADJ|ADC_CLK\(19) & (!\vclock|Div0|auto_generated|divider|divider|op_14~25\))))
-- \vclock|Div0|auto_generated|divider|divider|op_14~27\ = CARRY((\vclock|Div0|auto_generated|divider|divider|StageOut[501]~119_combout\ & (\CLOCK_ADJ|ADC_CLK\(19) & !\vclock|Div0|auto_generated|divider|divider|op_14~25\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[501]~119_combout\ & ((\CLOCK_ADJ|ADC_CLK\(19)) # (!\vclock|Div0|auto_generated|divider|divider|op_14~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[501]~119_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(19),
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_14~25\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_14~26_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_14~27\);

-- Location: LCCOMB_X25_Y21_N10
\vclock|Div0|auto_generated|divider|divider|op_14~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_14~28_combout\ = ((\CLOCK_ADJ|ADC_CLK\(20) $ (\vclock|Div0|auto_generated|divider|divider|StageOut[502]~118_combout\ $ (\vclock|Div0|auto_generated|divider|divider|op_14~27\)))) # (GND)
-- \vclock|Div0|auto_generated|divider|divider|op_14~29\ = CARRY((\CLOCK_ADJ|ADC_CLK\(20) & (\vclock|Div0|auto_generated|divider|divider|StageOut[502]~118_combout\ & !\vclock|Div0|auto_generated|divider|divider|op_14~27\)) # (!\CLOCK_ADJ|ADC_CLK\(20) & 
-- ((\vclock|Div0|auto_generated|divider|divider|StageOut[502]~118_combout\) # (!\vclock|Div0|auto_generated|divider|divider|op_14~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(20),
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[502]~118_combout\,
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_14~27\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_14~28_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_14~29\);

-- Location: LCCOMB_X25_Y21_N12
\vclock|Div0|auto_generated|divider|divider|op_14~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_14~30_combout\ = (\CLOCK_ADJ|ADC_CLK\(21) & ((\vclock|Div0|auto_generated|divider|divider|StageOut[503]~134_combout\ & (!\vclock|Div0|auto_generated|divider|divider|op_14~29\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[503]~134_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_14~29\) # (GND))))) # (!\CLOCK_ADJ|ADC_CLK\(21) & ((\vclock|Div0|auto_generated|divider|divider|StageOut[503]~134_combout\ & 
-- (\vclock|Div0|auto_generated|divider|divider|op_14~29\ & VCC)) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[503]~134_combout\ & (!\vclock|Div0|auto_generated|divider|divider|op_14~29\))))
-- \vclock|Div0|auto_generated|divider|divider|op_14~31\ = CARRY((\CLOCK_ADJ|ADC_CLK\(21) & ((!\vclock|Div0|auto_generated|divider|divider|op_14~29\) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[503]~134_combout\))) # (!\CLOCK_ADJ|ADC_CLK\(21) & 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[503]~134_combout\ & !\vclock|Div0|auto_generated|divider|divider|op_14~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(21),
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[503]~134_combout\,
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_14~29\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_14~30_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_14~31\);

-- Location: LCCOMB_X25_Y21_N14
\vclock|Div0|auto_generated|divider|divider|op_14~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_14~33_cout\ = CARRY((\vclock|Div0|auto_generated|divider|divider|StageOut[504]~132_combout\) # ((\vclock|Div0|auto_generated|divider|divider|StageOut[504]~133_combout\) # 
-- (!\vclock|Div0|auto_generated|divider|divider|op_14~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[504]~132_combout\,
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[504]~133_combout\,
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_14~31\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_14~33_cout\);

-- Location: LCCOMB_X25_Y21_N16
\vclock|Div0|auto_generated|divider|divider|op_14~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_14~34_combout\ = !\vclock|Div0|auto_generated|divider|divider|op_14~33_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \vclock|Div0|auto_generated|divider|divider|op_14~33_cout\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_14~34_combout\);

-- Location: LCCOMB_X30_Y21_N8
\vclock|Equal0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Equal0~15_combout\ = (\vclock|Equal0~14_combout\ & (\vclock|Add0~3_combout\ $ (\vclock|Div0|auto_generated|divider|divider|op_14~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Add0~3_combout\,
	datac => \vclock|Equal0~14_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_14~34_combout\,
	combout => \vclock|Equal0~15_combout\);

-- Location: LCCOMB_X25_Y21_N20
\vclock|Div0|auto_generated|divider|divider|StageOut[527]~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[527]~136_combout\ = (\vclock|Div0|auto_generated|divider|divider|op_14~30_combout\ & !\vclock|Div0|auto_generated|divider|divider|op_14~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|op_14~30_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_14~34_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[527]~136_combout\);

-- Location: LCCOMB_X24_Y21_N18
\vclock|Div0|auto_generated|divider|divider|StageOut[527]~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[527]~165_combout\ = (\vclock|Div0|auto_generated|divider|divider|op_14~34_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_13~32_combout\ & 
-- ((\vclock|Div0|auto_generated|divider|divider|StageOut[479]~104_combout\))) # (!\vclock|Div0|auto_generated|divider|divider|op_13~32_combout\ & (\vclock|Div0|auto_generated|divider|divider|op_13~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|op_13~28_combout\,
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[479]~104_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|op_13~32_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_14~34_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[527]~165_combout\);

-- Location: LCCOMB_X24_Y21_N26
\vclock|Div0|auto_generated|divider|divider|StageOut[526]~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[526]~135_combout\ = (\vclock|Div0|auto_generated|divider|divider|op_14~34_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut[502]~118_combout\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|op_14~34_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_14~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[502]~118_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|op_14~28_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_14~34_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[526]~135_combout\);

-- Location: LCCOMB_X24_Y21_N24
\vclock|Div0|auto_generated|divider|divider|StageOut[525]~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[525]~137_combout\ = (\vclock|Div0|auto_generated|divider|divider|op_14~34_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut[501]~119_combout\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|op_14~34_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_14~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[501]~119_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|op_14~26_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_14~34_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[525]~137_combout\);

-- Location: LCCOMB_X24_Y21_N30
\vclock|Div0|auto_generated|divider|divider|StageOut[524]~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[524]~138_combout\ = (\vclock|Div0|auto_generated|divider|divider|op_14~34_combout\ & ((\vclock|Div0|auto_generated|divider|divider|StageOut[500]~120_combout\))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|op_14~34_combout\ & (\vclock|Div0|auto_generated|divider|divider|op_14~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|op_14~24_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|StageOut[500]~120_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_14~34_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[524]~138_combout\);

-- Location: LCCOMB_X25_Y21_N22
\vclock|Div0|auto_generated|divider|divider|StageOut[523]~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[523]~139_combout\ = (\vclock|Div0|auto_generated|divider|divider|op_14~34_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut[499]~121_combout\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|op_14~34_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_14~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[499]~121_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|op_14~22_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_14~34_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[523]~139_combout\);

-- Location: LCCOMB_X30_Y21_N16
\vclock|Div0|auto_generated|divider|divider|StageOut[522]~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[522]~140_combout\ = (\vclock|Div0|auto_generated|divider|divider|op_14~34_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut[498]~122_combout\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|op_14~34_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_14~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[498]~122_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|op_14~20_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_14~34_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[522]~140_combout\);

-- Location: LCCOMB_X28_Y21_N2
\vclock|Div0|auto_generated|divider|divider|StageOut[521]~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[521]~141_combout\ = (\vclock|Div0|auto_generated|divider|divider|op_14~34_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut[497]~123_combout\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|op_14~34_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_14~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[497]~123_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|op_14~34_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_14~18_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[521]~141_combout\);

-- Location: LCCOMB_X25_Y22_N4
\vclock|Div0|auto_generated|divider|divider|StageOut[520]~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[520]~142_combout\ = (\vclock|Div0|auto_generated|divider|divider|op_14~34_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut[496]~124_combout\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|op_14~34_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_14~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[496]~124_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|op_14~16_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_14~34_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[520]~142_combout\);

-- Location: LCCOMB_X24_Y22_N0
\vclock|Div0|auto_generated|divider|divider|StageOut[519]~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[519]~143_combout\ = (\vclock|Div0|auto_generated|divider|divider|op_14~34_combout\ & ((\vclock|Div0|auto_generated|divider|divider|StageOut[495]~125_combout\))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|op_14~34_combout\ & (\vclock|Div0|auto_generated|divider|divider|op_14~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vclock|Div0|auto_generated|divider|divider|op_14~14_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|StageOut[495]~125_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_14~34_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[519]~143_combout\);

-- Location: LCCOMB_X24_Y22_N10
\vclock|Div0|auto_generated|divider|divider|StageOut[518]~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[518]~144_combout\ = (\vclock|Div0|auto_generated|divider|divider|op_14~34_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut[494]~126_combout\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|op_14~34_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_14~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[494]~126_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|op_14~12_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_14~34_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[518]~144_combout\);

-- Location: LCCOMB_X24_Y22_N8
\vclock|Div0|auto_generated|divider|divider|StageOut[517]~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[517]~145_combout\ = (\vclock|Div0|auto_generated|divider|divider|op_14~34_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut[493]~127_combout\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|op_14~34_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_14~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[493]~127_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|op_14~10_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_14~34_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[517]~145_combout\);

-- Location: LCCOMB_X24_Y22_N2
\vclock|Div0|auto_generated|divider|divider|StageOut[516]~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[516]~146_combout\ = (\vclock|Div0|auto_generated|divider|divider|op_14~34_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut[492]~128_combout\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|op_14~34_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_14~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[492]~128_combout\,
	datab => \vclock|Div0|auto_generated|divider|divider|op_14~8_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_14~34_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[516]~146_combout\);

-- Location: LCCOMB_X29_Y22_N2
\vclock|Div0|auto_generated|divider|divider|StageOut[515]~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[515]~147_combout\ = (\vclock|Div0|auto_generated|divider|divider|op_14~34_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut[491]~129_combout\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|op_14~34_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_14~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[491]~129_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|op_14~6_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_14~34_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[515]~147_combout\);

-- Location: LCCOMB_X24_Y22_N4
\vclock|Div0|auto_generated|divider|divider|StageOut[514]~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[514]~148_combout\ = (\vclock|Div0|auto_generated|divider|divider|op_14~34_combout\ & ((\vclock|Div0|auto_generated|divider|divider|StageOut[490]~130_combout\))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|op_14~34_combout\ & (\vclock|Div0|auto_generated|divider|divider|op_14~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vclock|Div0|auto_generated|divider|divider|op_14~4_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|StageOut[490]~130_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_14~34_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[514]~148_combout\);

-- Location: LCCOMB_X28_Y22_N4
\vclock|Div0|auto_generated|divider|divider|StageOut[513]~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[513]~166_combout\ = (\vclock|Div0|auto_generated|divider|divider|op_14~34_combout\ & (!\vclock|Div0|auto_generated|divider|divider|op_13~32_combout\ & (\CLOCK_ADJ|ADC_CLK\(6)))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|op_14~34_combout\ & (((\vclock|Div0|auto_generated|divider|divider|op_14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|op_13~32_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(6),
	datac => \vclock|Div0|auto_generated|divider|divider|op_14~2_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_14~34_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[513]~166_combout\);

-- Location: LCCOMB_X23_Y22_N6
\vclock|Div0|auto_generated|divider|divider|StageOut[512]~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[512]~149_combout\ = (\CLOCK_ADJ|ADC_CLK\(6) & !\vclock|Div0|auto_generated|divider|divider|op_14~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CLOCK_ADJ|ADC_CLK\(6),
	datad => \vclock|Div0|auto_generated|divider|divider|op_14~34_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[512]~149_combout\);

-- Location: LCCOMB_X24_Y22_N14
\vclock|Div0|auto_generated|divider|divider|op_15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_15~1_cout\ = CARRY(!\CLOCK_ADJ|ADC_CLK\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLOCK_ADJ|ADC_CLK\(6),
	datad => VCC,
	cout => \vclock|Div0|auto_generated|divider|divider|op_15~1_cout\);

-- Location: LCCOMB_X24_Y22_N16
\vclock|Div0|auto_generated|divider|divider|op_15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_15~2_combout\ = (\CLOCK_ADJ|ADC_CLK\(7) & ((\vclock|Div0|auto_generated|divider|divider|StageOut[512]~149_combout\ & (!\vclock|Div0|auto_generated|divider|divider|op_15~1_cout\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[512]~149_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_15~1_cout\) # (GND))))) # (!\CLOCK_ADJ|ADC_CLK\(7) & ((\vclock|Div0|auto_generated|divider|divider|StageOut[512]~149_combout\ & 
-- (\vclock|Div0|auto_generated|divider|divider|op_15~1_cout\ & VCC)) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[512]~149_combout\ & (!\vclock|Div0|auto_generated|divider|divider|op_15~1_cout\))))
-- \vclock|Div0|auto_generated|divider|divider|op_15~3\ = CARRY((\CLOCK_ADJ|ADC_CLK\(7) & ((!\vclock|Div0|auto_generated|divider|divider|op_15~1_cout\) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[512]~149_combout\))) # (!\CLOCK_ADJ|ADC_CLK\(7) & 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[512]~149_combout\ & !\vclock|Div0|auto_generated|divider|divider|op_15~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(7),
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[512]~149_combout\,
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_15~1_cout\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_15~2_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_15~3\);

-- Location: LCCOMB_X24_Y22_N18
\vclock|Div0|auto_generated|divider|divider|op_15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_15~4_combout\ = ((\CLOCK_ADJ|ADC_CLK\(8) $ (\vclock|Div0|auto_generated|divider|divider|StageOut[513]~166_combout\ $ (\vclock|Div0|auto_generated|divider|divider|op_15~3\)))) # (GND)
-- \vclock|Div0|auto_generated|divider|divider|op_15~5\ = CARRY((\CLOCK_ADJ|ADC_CLK\(8) & (\vclock|Div0|auto_generated|divider|divider|StageOut[513]~166_combout\ & !\vclock|Div0|auto_generated|divider|divider|op_15~3\)) # (!\CLOCK_ADJ|ADC_CLK\(8) & 
-- ((\vclock|Div0|auto_generated|divider|divider|StageOut[513]~166_combout\) # (!\vclock|Div0|auto_generated|divider|divider|op_15~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(8),
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[513]~166_combout\,
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_15~3\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_15~4_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_15~5\);

-- Location: LCCOMB_X24_Y22_N20
\vclock|Div0|auto_generated|divider|divider|op_15~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_15~6_combout\ = (\CLOCK_ADJ|ADC_CLK\(9) & ((\vclock|Div0|auto_generated|divider|divider|StageOut[514]~148_combout\ & (!\vclock|Div0|auto_generated|divider|divider|op_15~5\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[514]~148_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_15~5\) # (GND))))) # (!\CLOCK_ADJ|ADC_CLK\(9) & ((\vclock|Div0|auto_generated|divider|divider|StageOut[514]~148_combout\ & 
-- (\vclock|Div0|auto_generated|divider|divider|op_15~5\ & VCC)) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[514]~148_combout\ & (!\vclock|Div0|auto_generated|divider|divider|op_15~5\))))
-- \vclock|Div0|auto_generated|divider|divider|op_15~7\ = CARRY((\CLOCK_ADJ|ADC_CLK\(9) & ((!\vclock|Div0|auto_generated|divider|divider|op_15~5\) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[514]~148_combout\))) # (!\CLOCK_ADJ|ADC_CLK\(9) & 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[514]~148_combout\ & !\vclock|Div0|auto_generated|divider|divider|op_15~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(9),
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[514]~148_combout\,
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_15~5\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_15~6_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_15~7\);

-- Location: LCCOMB_X24_Y22_N22
\vclock|Div0|auto_generated|divider|divider|op_15~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_15~8_combout\ = ((\vclock|Div0|auto_generated|divider|divider|StageOut[515]~147_combout\ $ (\CLOCK_ADJ|ADC_CLK\(10) $ (\vclock|Div0|auto_generated|divider|divider|op_15~7\)))) # (GND)
-- \vclock|Div0|auto_generated|divider|divider|op_15~9\ = CARRY((\vclock|Div0|auto_generated|divider|divider|StageOut[515]~147_combout\ & ((!\vclock|Div0|auto_generated|divider|divider|op_15~7\) # (!\CLOCK_ADJ|ADC_CLK\(10)))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[515]~147_combout\ & (!\CLOCK_ADJ|ADC_CLK\(10) & !\vclock|Div0|auto_generated|divider|divider|op_15~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[515]~147_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(10),
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_15~7\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_15~8_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_15~9\);

-- Location: LCCOMB_X24_Y22_N24
\vclock|Div0|auto_generated|divider|divider|op_15~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_15~10_combout\ = (\CLOCK_ADJ|ADC_CLK\(11) & ((\vclock|Div0|auto_generated|divider|divider|StageOut[516]~146_combout\ & (!\vclock|Div0|auto_generated|divider|divider|op_15~9\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[516]~146_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_15~9\) # (GND))))) # (!\CLOCK_ADJ|ADC_CLK\(11) & ((\vclock|Div0|auto_generated|divider|divider|StageOut[516]~146_combout\ & 
-- (\vclock|Div0|auto_generated|divider|divider|op_15~9\ & VCC)) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[516]~146_combout\ & (!\vclock|Div0|auto_generated|divider|divider|op_15~9\))))
-- \vclock|Div0|auto_generated|divider|divider|op_15~11\ = CARRY((\CLOCK_ADJ|ADC_CLK\(11) & ((!\vclock|Div0|auto_generated|divider|divider|op_15~9\) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[516]~146_combout\))) # (!\CLOCK_ADJ|ADC_CLK\(11) & 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[516]~146_combout\ & !\vclock|Div0|auto_generated|divider|divider|op_15~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(11),
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[516]~146_combout\,
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_15~9\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_15~10_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_15~11\);

-- Location: LCCOMB_X24_Y22_N26
\vclock|Div0|auto_generated|divider|divider|op_15~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_15~12_combout\ = ((\CLOCK_ADJ|ADC_CLK\(12) $ (\vclock|Div0|auto_generated|divider|divider|StageOut[517]~145_combout\ $ (\vclock|Div0|auto_generated|divider|divider|op_15~11\)))) # (GND)
-- \vclock|Div0|auto_generated|divider|divider|op_15~13\ = CARRY((\CLOCK_ADJ|ADC_CLK\(12) & (\vclock|Div0|auto_generated|divider|divider|StageOut[517]~145_combout\ & !\vclock|Div0|auto_generated|divider|divider|op_15~11\)) # (!\CLOCK_ADJ|ADC_CLK\(12) & 
-- ((\vclock|Div0|auto_generated|divider|divider|StageOut[517]~145_combout\) # (!\vclock|Div0|auto_generated|divider|divider|op_15~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(12),
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[517]~145_combout\,
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_15~11\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_15~12_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_15~13\);

-- Location: LCCOMB_X24_Y22_N28
\vclock|Div0|auto_generated|divider|divider|op_15~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_15~14_combout\ = (\vclock|Div0|auto_generated|divider|divider|StageOut[518]~144_combout\ & ((\CLOCK_ADJ|ADC_CLK\(13) & (!\vclock|Div0|auto_generated|divider|divider|op_15~13\)) # (!\CLOCK_ADJ|ADC_CLK\(13) & 
-- (\vclock|Div0|auto_generated|divider|divider|op_15~13\ & VCC)))) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[518]~144_combout\ & ((\CLOCK_ADJ|ADC_CLK\(13) & ((\vclock|Div0|auto_generated|divider|divider|op_15~13\) # (GND))) # 
-- (!\CLOCK_ADJ|ADC_CLK\(13) & (!\vclock|Div0|auto_generated|divider|divider|op_15~13\))))
-- \vclock|Div0|auto_generated|divider|divider|op_15~15\ = CARRY((\vclock|Div0|auto_generated|divider|divider|StageOut[518]~144_combout\ & (\CLOCK_ADJ|ADC_CLK\(13) & !\vclock|Div0|auto_generated|divider|divider|op_15~13\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[518]~144_combout\ & ((\CLOCK_ADJ|ADC_CLK\(13)) # (!\vclock|Div0|auto_generated|divider|divider|op_15~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[518]~144_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(13),
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_15~13\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_15~14_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_15~15\);

-- Location: LCCOMB_X24_Y22_N30
\vclock|Div0|auto_generated|divider|divider|op_15~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_15~16_combout\ = ((\CLOCK_ADJ|ADC_CLK\(14) $ (\vclock|Div0|auto_generated|divider|divider|StageOut[519]~143_combout\ $ (\vclock|Div0|auto_generated|divider|divider|op_15~15\)))) # (GND)
-- \vclock|Div0|auto_generated|divider|divider|op_15~17\ = CARRY((\CLOCK_ADJ|ADC_CLK\(14) & (\vclock|Div0|auto_generated|divider|divider|StageOut[519]~143_combout\ & !\vclock|Div0|auto_generated|divider|divider|op_15~15\)) # (!\CLOCK_ADJ|ADC_CLK\(14) & 
-- ((\vclock|Div0|auto_generated|divider|divider|StageOut[519]~143_combout\) # (!\vclock|Div0|auto_generated|divider|divider|op_15~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(14),
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[519]~143_combout\,
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_15~15\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_15~16_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_15~17\);

-- Location: LCCOMB_X24_Y21_N0
\vclock|Div0|auto_generated|divider|divider|op_15~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_15~18_combout\ = (\vclock|Div0|auto_generated|divider|divider|StageOut[520]~142_combout\ & ((\CLOCK_ADJ|ADC_CLK\(15) & (!\vclock|Div0|auto_generated|divider|divider|op_15~17\)) # (!\CLOCK_ADJ|ADC_CLK\(15) & 
-- (\vclock|Div0|auto_generated|divider|divider|op_15~17\ & VCC)))) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[520]~142_combout\ & ((\CLOCK_ADJ|ADC_CLK\(15) & ((\vclock|Div0|auto_generated|divider|divider|op_15~17\) # (GND))) # 
-- (!\CLOCK_ADJ|ADC_CLK\(15) & (!\vclock|Div0|auto_generated|divider|divider|op_15~17\))))
-- \vclock|Div0|auto_generated|divider|divider|op_15~19\ = CARRY((\vclock|Div0|auto_generated|divider|divider|StageOut[520]~142_combout\ & (\CLOCK_ADJ|ADC_CLK\(15) & !\vclock|Div0|auto_generated|divider|divider|op_15~17\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[520]~142_combout\ & ((\CLOCK_ADJ|ADC_CLK\(15)) # (!\vclock|Div0|auto_generated|divider|divider|op_15~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[520]~142_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(15),
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_15~17\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_15~18_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_15~19\);

-- Location: LCCOMB_X24_Y21_N2
\vclock|Div0|auto_generated|divider|divider|op_15~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_15~20_combout\ = ((\CLOCK_ADJ|ADC_CLK\(16) $ (\vclock|Div0|auto_generated|divider|divider|StageOut[521]~141_combout\ $ (\vclock|Div0|auto_generated|divider|divider|op_15~19\)))) # (GND)
-- \vclock|Div0|auto_generated|divider|divider|op_15~21\ = CARRY((\CLOCK_ADJ|ADC_CLK\(16) & (\vclock|Div0|auto_generated|divider|divider|StageOut[521]~141_combout\ & !\vclock|Div0|auto_generated|divider|divider|op_15~19\)) # (!\CLOCK_ADJ|ADC_CLK\(16) & 
-- ((\vclock|Div0|auto_generated|divider|divider|StageOut[521]~141_combout\) # (!\vclock|Div0|auto_generated|divider|divider|op_15~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(16),
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[521]~141_combout\,
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_15~19\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_15~20_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_15~21\);

-- Location: LCCOMB_X24_Y21_N4
\vclock|Div0|auto_generated|divider|divider|op_15~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_15~22_combout\ = (\vclock|Div0|auto_generated|divider|divider|StageOut[522]~140_combout\ & ((\CLOCK_ADJ|ADC_CLK\(17) & (!\vclock|Div0|auto_generated|divider|divider|op_15~21\)) # (!\CLOCK_ADJ|ADC_CLK\(17) & 
-- (\vclock|Div0|auto_generated|divider|divider|op_15~21\ & VCC)))) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[522]~140_combout\ & ((\CLOCK_ADJ|ADC_CLK\(17) & ((\vclock|Div0|auto_generated|divider|divider|op_15~21\) # (GND))) # 
-- (!\CLOCK_ADJ|ADC_CLK\(17) & (!\vclock|Div0|auto_generated|divider|divider|op_15~21\))))
-- \vclock|Div0|auto_generated|divider|divider|op_15~23\ = CARRY((\vclock|Div0|auto_generated|divider|divider|StageOut[522]~140_combout\ & (\CLOCK_ADJ|ADC_CLK\(17) & !\vclock|Div0|auto_generated|divider|divider|op_15~21\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[522]~140_combout\ & ((\CLOCK_ADJ|ADC_CLK\(17)) # (!\vclock|Div0|auto_generated|divider|divider|op_15~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[522]~140_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(17),
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_15~21\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_15~22_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_15~23\);

-- Location: LCCOMB_X24_Y21_N6
\vclock|Div0|auto_generated|divider|divider|op_15~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_15~24_combout\ = ((\CLOCK_ADJ|ADC_CLK\(18) $ (\vclock|Div0|auto_generated|divider|divider|StageOut[523]~139_combout\ $ (\vclock|Div0|auto_generated|divider|divider|op_15~23\)))) # (GND)
-- \vclock|Div0|auto_generated|divider|divider|op_15~25\ = CARRY((\CLOCK_ADJ|ADC_CLK\(18) & (\vclock|Div0|auto_generated|divider|divider|StageOut[523]~139_combout\ & !\vclock|Div0|auto_generated|divider|divider|op_15~23\)) # (!\CLOCK_ADJ|ADC_CLK\(18) & 
-- ((\vclock|Div0|auto_generated|divider|divider|StageOut[523]~139_combout\) # (!\vclock|Div0|auto_generated|divider|divider|op_15~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(18),
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[523]~139_combout\,
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_15~23\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_15~24_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_15~25\);

-- Location: LCCOMB_X24_Y21_N8
\vclock|Div0|auto_generated|divider|divider|op_15~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_15~26_combout\ = (\vclock|Div0|auto_generated|divider|divider|StageOut[524]~138_combout\ & ((\CLOCK_ADJ|ADC_CLK\(19) & (!\vclock|Div0|auto_generated|divider|divider|op_15~25\)) # (!\CLOCK_ADJ|ADC_CLK\(19) & 
-- (\vclock|Div0|auto_generated|divider|divider|op_15~25\ & VCC)))) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[524]~138_combout\ & ((\CLOCK_ADJ|ADC_CLK\(19) & ((\vclock|Div0|auto_generated|divider|divider|op_15~25\) # (GND))) # 
-- (!\CLOCK_ADJ|ADC_CLK\(19) & (!\vclock|Div0|auto_generated|divider|divider|op_15~25\))))
-- \vclock|Div0|auto_generated|divider|divider|op_15~27\ = CARRY((\vclock|Div0|auto_generated|divider|divider|StageOut[524]~138_combout\ & (\CLOCK_ADJ|ADC_CLK\(19) & !\vclock|Div0|auto_generated|divider|divider|op_15~25\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[524]~138_combout\ & ((\CLOCK_ADJ|ADC_CLK\(19)) # (!\vclock|Div0|auto_generated|divider|divider|op_15~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[524]~138_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(19),
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_15~25\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_15~26_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_15~27\);

-- Location: LCCOMB_X24_Y21_N10
\vclock|Div0|auto_generated|divider|divider|op_15~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_15~28_combout\ = ((\CLOCK_ADJ|ADC_CLK\(20) $ (\vclock|Div0|auto_generated|divider|divider|StageOut[525]~137_combout\ $ (\vclock|Div0|auto_generated|divider|divider|op_15~27\)))) # (GND)
-- \vclock|Div0|auto_generated|divider|divider|op_15~29\ = CARRY((\CLOCK_ADJ|ADC_CLK\(20) & (\vclock|Div0|auto_generated|divider|divider|StageOut[525]~137_combout\ & !\vclock|Div0|auto_generated|divider|divider|op_15~27\)) # (!\CLOCK_ADJ|ADC_CLK\(20) & 
-- ((\vclock|Div0|auto_generated|divider|divider|StageOut[525]~137_combout\) # (!\vclock|Div0|auto_generated|divider|divider|op_15~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(20),
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[525]~137_combout\,
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_15~27\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_15~28_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_15~29\);

-- Location: LCCOMB_X24_Y21_N12
\vclock|Div0|auto_generated|divider|divider|op_15~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_15~30_combout\ = (\vclock|Div0|auto_generated|divider|divider|StageOut[526]~135_combout\ & ((\CLOCK_ADJ|ADC_CLK\(21) & (!\vclock|Div0|auto_generated|divider|divider|op_15~29\)) # (!\CLOCK_ADJ|ADC_CLK\(21) & 
-- (\vclock|Div0|auto_generated|divider|divider|op_15~29\ & VCC)))) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[526]~135_combout\ & ((\CLOCK_ADJ|ADC_CLK\(21) & ((\vclock|Div0|auto_generated|divider|divider|op_15~29\) # (GND))) # 
-- (!\CLOCK_ADJ|ADC_CLK\(21) & (!\vclock|Div0|auto_generated|divider|divider|op_15~29\))))
-- \vclock|Div0|auto_generated|divider|divider|op_15~31\ = CARRY((\vclock|Div0|auto_generated|divider|divider|StageOut[526]~135_combout\ & (\CLOCK_ADJ|ADC_CLK\(21) & !\vclock|Div0|auto_generated|divider|divider|op_15~29\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[526]~135_combout\ & ((\CLOCK_ADJ|ADC_CLK\(21)) # (!\vclock|Div0|auto_generated|divider|divider|op_15~29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[526]~135_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(21),
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_15~29\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_15~30_combout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_15~31\);

-- Location: LCCOMB_X24_Y21_N14
\vclock|Div0|auto_generated|divider|divider|op_15~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_15~33_cout\ = CARRY((\vclock|Div0|auto_generated|divider|divider|StageOut[527]~136_combout\) # ((\vclock|Div0|auto_generated|divider|divider|StageOut[527]~165_combout\) # 
-- (!\vclock|Div0|auto_generated|divider|divider|op_15~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[527]~136_combout\,
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[527]~165_combout\,
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_15~31\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_15~33_cout\);

-- Location: LCCOMB_X24_Y21_N16
\vclock|Div0|auto_generated|divider|divider|op_15~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_15~34_combout\ = !\vclock|Div0|auto_generated|divider|divider|op_15~33_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \vclock|Div0|auto_generated|divider|divider|op_15~33_cout\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_15~34_combout\);

-- Location: LCCOMB_X30_Y21_N2
\vclock|Div0|auto_generated|divider|divider|StageOut[550]~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[550]~167_combout\ = (\vclock|Div0|auto_generated|divider|divider|op_15~34_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_14~34_combout\ & 
-- ((\vclock|Div0|auto_generated|divider|divider|StageOut[502]~118_combout\))) # (!\vclock|Div0|auto_generated|divider|divider|op_14~34_combout\ & (\vclock|Div0|auto_generated|divider|divider|op_14~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|op_14~34_combout\,
	datab => \vclock|Div0|auto_generated|divider|divider|op_14~28_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|StageOut[502]~118_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_15~34_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[550]~167_combout\);

-- Location: LCCOMB_X24_Y21_N28
\vclock|Div0|auto_generated|divider|divider|StageOut[550]~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[550]~150_combout\ = (!\vclock|Div0|auto_generated|divider|divider|op_15~34_combout\ & \vclock|Div0|auto_generated|divider|divider|op_15~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vclock|Div0|auto_generated|divider|divider|op_15~34_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_15~30_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[550]~150_combout\);

-- Location: LCCOMB_X24_Y21_N22
\vclock|Div0|auto_generated|divider|divider|StageOut[549]~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[549]~151_combout\ = (\vclock|Div0|auto_generated|divider|divider|op_15~34_combout\ & ((\vclock|Div0|auto_generated|divider|divider|StageOut[525]~137_combout\))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|op_15~34_combout\ & (\vclock|Div0|auto_generated|divider|divider|op_15~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|op_15~28_combout\,
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[525]~137_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_15~34_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[549]~151_combout\);

-- Location: LCCOMB_X24_Y21_N20
\vclock|Div0|auto_generated|divider|divider|StageOut[548]~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[548]~152_combout\ = (\vclock|Div0|auto_generated|divider|divider|op_15~34_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut[524]~138_combout\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|op_15~34_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_15~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[524]~138_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|op_15~26_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_15~34_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[548]~152_combout\);

-- Location: LCCOMB_X30_Y21_N6
\vclock|Div0|auto_generated|divider|divider|StageOut[547]~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[547]~153_combout\ = (\vclock|Div0|auto_generated|divider|divider|op_15~34_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut[523]~139_combout\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|op_15~34_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_15~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[523]~139_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|op_15~34_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_15~24_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[547]~153_combout\);

-- Location: LCCOMB_X30_Y21_N20
\vclock|Div0|auto_generated|divider|divider|StageOut[546]~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[546]~154_combout\ = (\vclock|Div0|auto_generated|divider|divider|op_15~34_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut[522]~140_combout\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|op_15~34_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_15~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[522]~140_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|op_15~22_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_15~34_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[546]~154_combout\);

-- Location: LCCOMB_X28_Y21_N16
\vclock|Div0|auto_generated|divider|divider|StageOut[545]~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[545]~155_combout\ = (\vclock|Div0|auto_generated|divider|divider|op_15~34_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut[521]~141_combout\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|op_15~34_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_15~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[521]~141_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|op_15~20_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_15~34_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[545]~155_combout\);

-- Location: LCCOMB_X28_Y21_N14
\vclock|Div0|auto_generated|divider|divider|StageOut[544]~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[544]~156_combout\ = (\vclock|Div0|auto_generated|divider|divider|op_15~34_combout\ & ((\vclock|Div0|auto_generated|divider|divider|StageOut[520]~142_combout\))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|op_15~34_combout\ & (\vclock|Div0|auto_generated|divider|divider|op_15~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|op_15~18_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|StageOut[520]~142_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_15~34_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[544]~156_combout\);

-- Location: LCCOMB_X24_Y22_N6
\vclock|Div0|auto_generated|divider|divider|StageOut[543]~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[543]~157_combout\ = (\vclock|Div0|auto_generated|divider|divider|op_15~34_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut[519]~143_combout\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|op_15~34_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_15~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[519]~143_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|op_15~16_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_15~34_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[543]~157_combout\);

-- Location: LCCOMB_X24_Y22_N12
\vclock|Div0|auto_generated|divider|divider|StageOut[542]~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[542]~158_combout\ = (\vclock|Div0|auto_generated|divider|divider|op_15~34_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut[518]~144_combout\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|op_15~34_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_15~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[518]~144_combout\,
	datab => \vclock|Div0|auto_generated|divider|divider|op_15~14_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_15~34_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[542]~158_combout\);

-- Location: LCCOMB_X29_Y22_N4
\vclock|Div0|auto_generated|divider|divider|StageOut[541]~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[541]~159_combout\ = (\vclock|Div0|auto_generated|divider|divider|op_15~34_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut[517]~145_combout\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|op_15~34_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_15~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[517]~145_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|op_15~12_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_15~34_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[541]~159_combout\);

-- Location: LCCOMB_X29_Y22_N8
\vclock|Div0|auto_generated|divider|divider|StageOut[540]~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[540]~160_combout\ = (\vclock|Div0|auto_generated|divider|divider|op_15~34_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut[516]~146_combout\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|op_15~34_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_15~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[516]~146_combout\,
	datab => \vclock|Div0|auto_generated|divider|divider|op_15~10_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_15~34_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[540]~160_combout\);

-- Location: LCCOMB_X29_Y22_N10
\vclock|Div0|auto_generated|divider|divider|StageOut[539]~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[539]~161_combout\ = (\vclock|Div0|auto_generated|divider|divider|op_15~34_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut[515]~147_combout\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|op_15~34_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_15~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[515]~147_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|op_15~8_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_15~34_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[539]~161_combout\);

-- Location: LCCOMB_X29_Y22_N0
\vclock|Div0|auto_generated|divider|divider|StageOut[538]~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[538]~162_combout\ = (\vclock|Div0|auto_generated|divider|divider|op_15~34_combout\ & (\vclock|Div0|auto_generated|divider|divider|StageOut[514]~148_combout\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|op_15~34_combout\ & ((\vclock|Div0|auto_generated|divider|divider|op_15~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[514]~148_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|op_15~6_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_15~34_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[538]~162_combout\);

-- Location: LCCOMB_X29_Y22_N14
\vclock|Div0|auto_generated|divider|divider|StageOut[537]~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[537]~163_combout\ = (\vclock|Div0|auto_generated|divider|divider|op_15~34_combout\ & ((\vclock|Div0|auto_generated|divider|divider|StageOut[513]~166_combout\))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|op_15~34_combout\ & (\vclock|Div0|auto_generated|divider|divider|op_15~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|op_15~4_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|StageOut[513]~166_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_15~34_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[537]~163_combout\);

-- Location: LCCOMB_X29_Y22_N6
\vclock|Div0|auto_generated|divider|divider|StageOut[536]~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[536]~168_combout\ = (\vclock|Div0|auto_generated|divider|divider|op_15~34_combout\ & (\CLOCK_ADJ|ADC_CLK\(6) & (!\vclock|Div0|auto_generated|divider|divider|op_14~34_combout\))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|op_15~34_combout\ & (((\vclock|Div0|auto_generated|divider|divider|op_15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(6),
	datab => \vclock|Div0|auto_generated|divider|divider|op_14~34_combout\,
	datac => \vclock|Div0|auto_generated|divider|divider|op_15~2_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_15~34_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[536]~168_combout\);

-- Location: LCCOMB_X29_Y22_N12
\vclock|Div0|auto_generated|divider|divider|StageOut[535]~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|StageOut[535]~164_combout\ = (\CLOCK_ADJ|ADC_CLK\(6) & !\vclock|Div0|auto_generated|divider|divider|op_15~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CLOCK_ADJ|ADC_CLK\(6),
	datad => \vclock|Div0|auto_generated|divider|divider|op_15~34_combout\,
	combout => \vclock|Div0|auto_generated|divider|divider|StageOut[535]~164_combout\);

-- Location: LCCOMB_X29_Y22_N16
\vclock|Div0|auto_generated|divider|divider|op_16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_16~1_cout\ = CARRY((\vclock|Div0|auto_generated|divider|divider|StageOut[535]~164_combout\) # (!\CLOCK_ADJ|ADC_CLK\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[535]~164_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(7),
	datad => VCC,
	cout => \vclock|Div0|auto_generated|divider|divider|op_16~1_cout\);

-- Location: LCCOMB_X29_Y22_N18
\vclock|Div0|auto_generated|divider|divider|op_16~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_16~3_cout\ = CARRY((\vclock|Div0|auto_generated|divider|divider|StageOut[536]~168_combout\ & (\CLOCK_ADJ|ADC_CLK\(8) & !\vclock|Div0|auto_generated|divider|divider|op_16~1_cout\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[536]~168_combout\ & ((\CLOCK_ADJ|ADC_CLK\(8)) # (!\vclock|Div0|auto_generated|divider|divider|op_16~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[536]~168_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(8),
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_16~1_cout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_16~3_cout\);

-- Location: LCCOMB_X29_Y22_N20
\vclock|Div0|auto_generated|divider|divider|op_16~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_16~5_cout\ = CARRY((\CLOCK_ADJ|ADC_CLK\(9) & (\vclock|Div0|auto_generated|divider|divider|StageOut[537]~163_combout\ & !\vclock|Div0|auto_generated|divider|divider|op_16~3_cout\)) # (!\CLOCK_ADJ|ADC_CLK\(9) & 
-- ((\vclock|Div0|auto_generated|divider|divider|StageOut[537]~163_combout\) # (!\vclock|Div0|auto_generated|divider|divider|op_16~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(9),
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[537]~163_combout\,
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_16~3_cout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_16~5_cout\);

-- Location: LCCOMB_X29_Y22_N22
\vclock|Div0|auto_generated|divider|divider|op_16~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_16~7_cout\ = CARRY((\CLOCK_ADJ|ADC_CLK\(10) & ((!\vclock|Div0|auto_generated|divider|divider|op_16~5_cout\) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[538]~162_combout\))) # 
-- (!\CLOCK_ADJ|ADC_CLK\(10) & (!\vclock|Div0|auto_generated|divider|divider|StageOut[538]~162_combout\ & !\vclock|Div0|auto_generated|divider|divider|op_16~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(10),
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[538]~162_combout\,
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_16~5_cout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_16~7_cout\);

-- Location: LCCOMB_X29_Y22_N24
\vclock|Div0|auto_generated|divider|divider|op_16~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_16~9_cout\ = CARRY((\vclock|Div0|auto_generated|divider|divider|StageOut[539]~161_combout\ & ((!\vclock|Div0|auto_generated|divider|divider|op_16~7_cout\) # (!\CLOCK_ADJ|ADC_CLK\(11)))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[539]~161_combout\ & (!\CLOCK_ADJ|ADC_CLK\(11) & !\vclock|Div0|auto_generated|divider|divider|op_16~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[539]~161_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(11),
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_16~7_cout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_16~9_cout\);

-- Location: LCCOMB_X29_Y22_N26
\vclock|Div0|auto_generated|divider|divider|op_16~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_16~11_cout\ = CARRY((\CLOCK_ADJ|ADC_CLK\(12) & ((!\vclock|Div0|auto_generated|divider|divider|op_16~9_cout\) # (!\vclock|Div0|auto_generated|divider|divider|StageOut[540]~160_combout\))) # 
-- (!\CLOCK_ADJ|ADC_CLK\(12) & (!\vclock|Div0|auto_generated|divider|divider|StageOut[540]~160_combout\ & !\vclock|Div0|auto_generated|divider|divider|op_16~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(12),
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[540]~160_combout\,
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_16~9_cout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_16~11_cout\);

-- Location: LCCOMB_X29_Y22_N28
\vclock|Div0|auto_generated|divider|divider|op_16~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_16~13_cout\ = CARRY((\CLOCK_ADJ|ADC_CLK\(13) & (\vclock|Div0|auto_generated|divider|divider|StageOut[541]~159_combout\ & !\vclock|Div0|auto_generated|divider|divider|op_16~11_cout\)) # 
-- (!\CLOCK_ADJ|ADC_CLK\(13) & ((\vclock|Div0|auto_generated|divider|divider|StageOut[541]~159_combout\) # (!\vclock|Div0|auto_generated|divider|divider|op_16~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(13),
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[541]~159_combout\,
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_16~11_cout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_16~13_cout\);

-- Location: LCCOMB_X29_Y22_N30
\vclock|Div0|auto_generated|divider|divider|op_16~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_16~15_cout\ = CARRY((\vclock|Div0|auto_generated|divider|divider|StageOut[542]~158_combout\ & (\CLOCK_ADJ|ADC_CLK\(14) & !\vclock|Div0|auto_generated|divider|divider|op_16~13_cout\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[542]~158_combout\ & ((\CLOCK_ADJ|ADC_CLK\(14)) # (!\vclock|Div0|auto_generated|divider|divider|op_16~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[542]~158_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(14),
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_16~13_cout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_16~15_cout\);

-- Location: LCCOMB_X29_Y21_N0
\vclock|Div0|auto_generated|divider|divider|op_16~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_16~17_cout\ = CARRY((\CLOCK_ADJ|ADC_CLK\(15) & (\vclock|Div0|auto_generated|divider|divider|StageOut[543]~157_combout\ & !\vclock|Div0|auto_generated|divider|divider|op_16~15_cout\)) # 
-- (!\CLOCK_ADJ|ADC_CLK\(15) & ((\vclock|Div0|auto_generated|divider|divider|StageOut[543]~157_combout\) # (!\vclock|Div0|auto_generated|divider|divider|op_16~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(15),
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[543]~157_combout\,
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_16~15_cout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_16~17_cout\);

-- Location: LCCOMB_X29_Y21_N2
\vclock|Div0|auto_generated|divider|divider|op_16~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_16~19_cout\ = CARRY((\vclock|Div0|auto_generated|divider|divider|StageOut[544]~156_combout\ & (\CLOCK_ADJ|ADC_CLK\(16) & !\vclock|Div0|auto_generated|divider|divider|op_16~17_cout\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[544]~156_combout\ & ((\CLOCK_ADJ|ADC_CLK\(16)) # (!\vclock|Div0|auto_generated|divider|divider|op_16~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[544]~156_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(16),
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_16~17_cout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_16~19_cout\);

-- Location: LCCOMB_X29_Y21_N4
\vclock|Div0|auto_generated|divider|divider|op_16~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_16~21_cout\ = CARRY((\vclock|Div0|auto_generated|divider|divider|StageOut[545]~155_combout\ & ((!\vclock|Div0|auto_generated|divider|divider|op_16~19_cout\) # (!\CLOCK_ADJ|ADC_CLK\(17)))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[545]~155_combout\ & (!\CLOCK_ADJ|ADC_CLK\(17) & !\vclock|Div0|auto_generated|divider|divider|op_16~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[545]~155_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(17),
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_16~19_cout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_16~21_cout\);

-- Location: LCCOMB_X29_Y21_N6
\vclock|Div0|auto_generated|divider|divider|op_16~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_16~23_cout\ = CARRY((\vclock|Div0|auto_generated|divider|divider|StageOut[546]~154_combout\ & (\CLOCK_ADJ|ADC_CLK\(18) & !\vclock|Div0|auto_generated|divider|divider|op_16~21_cout\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[546]~154_combout\ & ((\CLOCK_ADJ|ADC_CLK\(18)) # (!\vclock|Div0|auto_generated|divider|divider|op_16~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[546]~154_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(18),
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_16~21_cout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_16~23_cout\);

-- Location: LCCOMB_X29_Y21_N8
\vclock|Div0|auto_generated|divider|divider|op_16~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_16~25_cout\ = CARRY((\vclock|Div0|auto_generated|divider|divider|StageOut[547]~153_combout\ & ((!\vclock|Div0|auto_generated|divider|divider|op_16~23_cout\) # (!\CLOCK_ADJ|ADC_CLK\(19)))) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[547]~153_combout\ & (!\CLOCK_ADJ|ADC_CLK\(19) & !\vclock|Div0|auto_generated|divider|divider|op_16~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[547]~153_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(19),
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_16~23_cout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_16~25_cout\);

-- Location: LCCOMB_X29_Y21_N10
\vclock|Div0|auto_generated|divider|divider|op_16~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_16~27_cout\ = CARRY((\vclock|Div0|auto_generated|divider|divider|StageOut[548]~152_combout\ & (\CLOCK_ADJ|ADC_CLK\(20) & !\vclock|Div0|auto_generated|divider|divider|op_16~25_cout\)) # 
-- (!\vclock|Div0|auto_generated|divider|divider|StageOut[548]~152_combout\ & ((\CLOCK_ADJ|ADC_CLK\(20)) # (!\vclock|Div0|auto_generated|divider|divider|op_16~25_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[548]~152_combout\,
	datab => \CLOCK_ADJ|ADC_CLK\(20),
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_16~25_cout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_16~27_cout\);

-- Location: LCCOMB_X29_Y21_N12
\vclock|Div0|auto_generated|divider|divider|op_16~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_16~29_cout\ = CARRY((\CLOCK_ADJ|ADC_CLK\(21) & (\vclock|Div0|auto_generated|divider|divider|StageOut[549]~151_combout\ & !\vclock|Div0|auto_generated|divider|divider|op_16~27_cout\)) # 
-- (!\CLOCK_ADJ|ADC_CLK\(21) & ((\vclock|Div0|auto_generated|divider|divider|StageOut[549]~151_combout\) # (!\vclock|Div0|auto_generated|divider|divider|op_16~27_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_ADJ|ADC_CLK\(21),
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[549]~151_combout\,
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_16~27_cout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_16~29_cout\);

-- Location: LCCOMB_X29_Y21_N14
\vclock|Div0|auto_generated|divider|divider|op_16~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_16~31_cout\ = CARRY((!\vclock|Div0|auto_generated|divider|divider|StageOut[550]~167_combout\ & (!\vclock|Div0|auto_generated|divider|divider|StageOut[550]~150_combout\ & 
-- !\vclock|Div0|auto_generated|divider|divider|op_16~29_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Div0|auto_generated|divider|divider|StageOut[550]~167_combout\,
	datab => \vclock|Div0|auto_generated|divider|divider|StageOut[550]~150_combout\,
	datad => VCC,
	cin => \vclock|Div0|auto_generated|divider|divider|op_16~29_cout\,
	cout => \vclock|Div0|auto_generated|divider|divider|op_16~31_cout\);

-- Location: LCCOMB_X29_Y21_N16
\vclock|Div0|auto_generated|divider|divider|op_16~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Div0|auto_generated|divider|divider|op_16~32_combout\ = \vclock|Div0|auto_generated|divider|divider|op_16~31_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \vclock|Div0|auto_generated|divider|divider|op_16~31_cout\,
	combout => \vclock|Div0|auto_generated|divider|divider|op_16~32_combout\);

-- Location: LCCOMB_X29_Y21_N24
\vclock|Equal0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Equal0~12_combout\ = (\vclock|vclk_cnt\(0) & (\vclock|Div0|auto_generated|divider|divider|op_16~32_combout\ & (\vclock|vclk_cnt\(1) $ (!\vclock|Div0|auto_generated|divider|divider|op_15~34_combout\)))) # (!\vclock|vclk_cnt\(0) & 
-- (!\vclock|Div0|auto_generated|divider|divider|op_16~32_combout\ & (\vclock|vclk_cnt\(1) $ (\vclock|Div0|auto_generated|divider|divider|op_15~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|vclk_cnt\(1),
	datab => \vclock|vclk_cnt\(0),
	datac => \vclock|Div0|auto_generated|divider|divider|op_15~34_combout\,
	datad => \vclock|Div0|auto_generated|divider|divider|op_16~32_combout\,
	combout => \vclock|Equal0~12_combout\);

-- Location: LCCOMB_X29_Y21_N28
\vclock|Equal0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Equal0~16_combout\ = (\vclock|Equal0~11_combout\ & (\vclock|Equal0~10_combout\ & (\vclock|Equal0~15_combout\ & \vclock|Equal0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Equal0~11_combout\,
	datab => \vclock|Equal0~10_combout\,
	datac => \vclock|Equal0~15_combout\,
	datad => \vclock|Equal0~12_combout\,
	combout => \vclock|Equal0~16_combout\);

-- Location: LCCOMB_X29_Y21_N20
\vclock|Equal0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Equal0~17_combout\ = (\vclock|Equal0~18_combout\ & (\vclock|Equal0~8_combout\ & (\vclock|Equal0~9_combout\ & \vclock|Equal0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Equal0~18_combout\,
	datab => \vclock|Equal0~8_combout\,
	datac => \vclock|Equal0~9_combout\,
	datad => \vclock|Equal0~16_combout\,
	combout => \vclock|Equal0~17_combout\);

-- Location: LCCOMB_X29_Y21_N18
\vclock|virt_clk~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|virt_clk~0_combout\ = \vclock|virt_clk~q\ $ (\vclock|Equal0~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|virt_clk~q\,
	datad => \vclock|Equal0~17_combout\,
	combout => \vclock|virt_clk~0_combout\);

-- Location: FF_X29_Y21_N3
\vclock|virt_clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \vclock|virt_clk~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vclock|virt_clk~q\);

-- Location: CLKCTRL_G12
\vclock|virt_clk~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \vclock|virt_clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \vclock|virt_clk~clkctrl_outclk\);

-- Location: LCCOMB_X36_Y29_N30
\adc|Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|Add1~1_combout\ = \adc|spi_comm_delay\(3) $ (((\adc|spi_comm_delay\(0) & (\adc|spi_comm_delay\(1) & \adc|spi_comm_delay\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_comm_delay\(0),
	datab => \adc|spi_comm_delay\(1),
	datac => \adc|spi_comm_delay\(3),
	datad => \adc|spi_comm_delay\(2),
	combout => \adc|Add1~1_combout\);

-- Location: LCCOMB_X36_Y29_N16
\adc|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|Add1~0_combout\ = \adc|spi_comm_delay\(2) $ (((\adc|spi_comm_delay\(1) & \adc|spi_comm_delay\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc|spi_comm_delay\(2),
	datac => \adc|spi_comm_delay\(1),
	datad => \adc|spi_comm_delay\(0),
	combout => \adc|Add1~0_combout\);

-- Location: LCCOMB_X36_Y29_N28
\adc|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|Selector0~0_combout\ = (!\adc|spi_comm_delay\(0) & (\adc|Add1~0_combout\ & (\adc|Equal2~1_combout\ & \adc|state.execute~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_comm_delay\(0),
	datab => \adc|Add1~0_combout\,
	datac => \adc|Equal2~1_combout\,
	datad => \adc|state.execute~reg0_q\,
	combout => \adc|Selector0~0_combout\);

-- Location: LCCOMB_X38_Y31_N20
\adc|init_delay[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|init_delay[0]~0_combout\ = !\adc|init_delay\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc|init_delay\(0),
	combout => \adc|init_delay[0]~0_combout\);

-- Location: FF_X38_Y31_N21
\adc|init_delay[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vclock|virt_clk~clkctrl_outclk\,
	d => \adc|init_delay[0]~0_combout\,
	ena => \adc|ALT_INV_state.initialize~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|init_delay\(0));

-- Location: LCCOMB_X38_Y31_N26
\adc|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|Add0~1_combout\ = \adc|init_delay\(1) $ (\adc|init_delay\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc|init_delay\(1),
	datad => \adc|init_delay\(0),
	combout => \adc|Add0~1_combout\);

-- Location: FF_X38_Y31_N27
\adc|init_delay[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vclock|virt_clk~clkctrl_outclk\,
	d => \adc|Add0~1_combout\,
	ena => \adc|ALT_INV_state.initialize~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|init_delay\(1));

-- Location: LCCOMB_X38_Y31_N30
\adc|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|Add0~0_combout\ = \adc|init_delay\(2) $ (((\adc|init_delay\(1) & \adc|init_delay\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|init_delay\(1),
	datac => \adc|init_delay\(2),
	datad => \adc|init_delay\(0),
	combout => \adc|Add0~0_combout\);

-- Location: FF_X38_Y31_N31
\adc|init_delay[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vclock|virt_clk~clkctrl_outclk\,
	d => \adc|Add0~0_combout\,
	ena => \adc|ALT_INV_state.initialize~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|init_delay\(2));

-- Location: LCCOMB_X38_Y31_N16
\adc|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|Selector0~1_combout\ = (\adc|init_delay\(1) & (\adc|init_delay\(0) & (\adc|init_delay\(2) & !\adc|state.execute~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|init_delay\(1),
	datab => \adc|init_delay\(0),
	datac => \adc|init_delay\(2),
	datad => \adc|state.execute~reg0_q\,
	combout => \adc|Selector0~1_combout\);

-- Location: LCCOMB_X37_Y28_N20
\adc|state.ready~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|state.ready~0_combout\ = (!\adc|state.ready~reg0_q\ & ((\adc|Selector0~0_combout\) # (\adc|Selector0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc|state.ready~reg0_q\,
	datac => \adc|Selector0~0_combout\,
	datad => \adc|Selector0~1_combout\,
	combout => \adc|state.ready~0_combout\);

-- Location: LCCOMB_X37_Y28_N18
\adc|state.initialize~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|state.initialize~0_combout\ = (\adc|state.initialize~reg0_q\) # ((\adc|state.ready~0_combout\) # ((\adc_run~q\ & \adc|state.ready~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_run~q\,
	datab => \adc|state.ready~reg0_q\,
	datac => \adc|state.initialize~reg0_q\,
	datad => \adc|state.ready~0_combout\,
	combout => \adc|state.initialize~0_combout\);

-- Location: FF_X37_Y28_N19
\adc|state.initialize~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vclock|virt_clk~clkctrl_outclk\,
	d => \adc|state.initialize~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|state.initialize~reg0_q\);

-- Location: LCCOMB_X37_Y28_N16
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\adc|state.ready~reg0_q\) # ((\adc_run~q\ & !\adc|state.initialize~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc|state.ready~reg0_q\,
	datac => \adc_run~q\,
	datad => \adc|state.initialize~reg0_q\,
	combout => \Selector0~0_combout\);

-- Location: FF_X37_Y28_N17
adc_run : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Selector0~0_combout\,
	ena => \ALT_INV_RST~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_run~q\);

-- Location: LCCOMB_X37_Y28_N6
\adc|state.ready~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|state.ready~1_combout\ = (\adc|state.ready~reg0_q\ & (((!\adc_run~q\)))) # (!\adc|state.ready~reg0_q\ & ((\adc|Selector0~0_combout\) # ((\adc|Selector0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|Selector0~0_combout\,
	datab => \adc_run~q\,
	datac => \adc|state.ready~reg0_q\,
	datad => \adc|Selector0~1_combout\,
	combout => \adc|state.ready~1_combout\);

-- Location: FF_X37_Y28_N7
\adc|state.ready~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vclock|virt_clk~clkctrl_outclk\,
	d => \adc|state.ready~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|state.ready~reg0_q\);

-- Location: LCCOMB_X37_Y28_N24
\adc|state.execute~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|state.execute~0_combout\ = (\adc|state.ready~reg0_q\ & ((\adc_run~q\) # ((\adc|state.execute~reg0_q\ & !\adc|state.ready~0_combout\)))) # (!\adc|state.ready~reg0_q\ & (((\adc|state.execute~reg0_q\ & !\adc|state.ready~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|state.ready~reg0_q\,
	datab => \adc_run~q\,
	datac => \adc|state.execute~reg0_q\,
	datad => \adc|state.ready~0_combout\,
	combout => \adc|state.execute~0_combout\);

-- Location: FF_X37_Y28_N25
\adc|state.execute~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vclock|virt_clk~clkctrl_outclk\,
	d => \adc|state.execute~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|state.execute~reg0_q\);

-- Location: FF_X36_Y29_N31
\adc|spi_comm_delay[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vclock|virt_clk~clkctrl_outclk\,
	d => \adc|Add1~1_combout\,
	ena => \adc|state.execute~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_comm_delay\(3));

-- Location: LCCOMB_X36_Y29_N24
\adc|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|Add1~4_combout\ = \adc|Add1~2_combout\ $ (\adc|spi_comm_delay\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|Add1~2_combout\,
	datac => \adc|spi_comm_delay\(4),
	combout => \adc|Add1~4_combout\);

-- Location: FF_X36_Y29_N25
\adc|spi_comm_delay[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vclock|virt_clk~clkctrl_outclk\,
	d => \adc|Add1~4_combout\,
	ena => \adc|state.execute~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_comm_delay\(4));

-- Location: LCCOMB_X36_Y29_N10
\adc|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|Equal2~0_combout\ = (!\adc|spi_comm_delay\(5) & !\adc|spi_comm_delay\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc|spi_comm_delay\(5),
	datad => \adc|spi_comm_delay\(4),
	combout => \adc|Equal2~0_combout\);

-- Location: LCCOMB_X36_Y29_N8
\adc|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|Equal2~1_combout\ = (!\adc|spi_comm_delay\(3) & (\adc|Equal2~0_combout\ & (\adc|spi_comm_delay\(0) $ (\adc|spi_comm_delay\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_comm_delay\(0),
	datab => \adc|spi_comm_delay\(1),
	datac => \adc|spi_comm_delay\(3),
	datad => \adc|Equal2~0_combout\,
	combout => \adc|Equal2~1_combout\);

-- Location: LCCOMB_X36_Y29_N4
\adc|spi_comm_delay~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_comm_delay~8_combout\ = (\adc|spi_comm_delay\(0) & (((!\adc|spi_comm_delay\(1))))) # (!\adc|spi_comm_delay\(0) & (\adc|spi_comm_delay\(1) & ((!\adc|spi_comm_delay\(2)) # (!\adc|Equal2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_comm_delay\(0),
	datab => \adc|Equal2~1_combout\,
	datac => \adc|spi_comm_delay\(1),
	datad => \adc|spi_comm_delay\(2),
	combout => \adc|spi_comm_delay~8_combout\);

-- Location: FF_X36_Y29_N5
\adc|spi_comm_delay[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vclock|virt_clk~clkctrl_outclk\,
	d => \adc|spi_comm_delay~8_combout\,
	ena => \adc|state.execute~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_comm_delay\(1));

-- Location: LCCOMB_X36_Y29_N0
\adc|spi_comm_delay~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_comm_delay~6_combout\ = (\adc|spi_comm_delay\(0) & (\adc|spi_comm_delay\(1) $ ((\adc|spi_comm_delay\(2))))) # (!\adc|spi_comm_delay\(0) & (((\adc|spi_comm_delay\(2) & !\adc|Equal2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_comm_delay\(0),
	datab => \adc|spi_comm_delay\(1),
	datac => \adc|spi_comm_delay\(2),
	datad => \adc|Equal2~1_combout\,
	combout => \adc|spi_comm_delay~6_combout\);

-- Location: FF_X36_Y29_N1
\adc|spi_comm_delay[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vclock|virt_clk~clkctrl_outclk\,
	d => \adc|spi_comm_delay~6_combout\,
	ena => \adc|state.execute~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_comm_delay\(2));

-- Location: LCCOMB_X36_Y29_N6
\adc|spi_comm_delay~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_comm_delay~7_combout\ = (!\adc|spi_comm_delay\(0) & ((!\adc|Equal2~1_combout\) # (!\adc|spi_comm_delay\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc|spi_comm_delay\(2),
	datac => \adc|spi_comm_delay\(0),
	datad => \adc|Equal2~1_combout\,
	combout => \adc|spi_comm_delay~7_combout\);

-- Location: FF_X36_Y29_N7
\adc|spi_comm_delay[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vclock|virt_clk~clkctrl_outclk\,
	d => \adc|spi_comm_delay~7_combout\,
	ena => \adc|state.execute~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_comm_delay\(0));

-- Location: LCCOMB_X36_Y29_N22
\adc|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|Add1~2_combout\ = (\adc|spi_comm_delay\(0) & (\adc|spi_comm_delay\(1) & (\adc|spi_comm_delay\(3) & \adc|spi_comm_delay\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_comm_delay\(0),
	datab => \adc|spi_comm_delay\(1),
	datac => \adc|spi_comm_delay\(3),
	datad => \adc|spi_comm_delay\(2),
	combout => \adc|Add1~2_combout\);

-- Location: LCCOMB_X36_Y29_N26
\adc|Add1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|Add1~3_combout\ = \adc|spi_comm_delay\(5) $ (((\adc|Add1~2_combout\ & \adc|spi_comm_delay\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|Add1~2_combout\,
	datac => \adc|spi_comm_delay\(5),
	datad => \adc|spi_comm_delay\(4),
	combout => \adc|Add1~3_combout\);

-- Location: FF_X36_Y29_N27
\adc|spi_comm_delay[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vclock|virt_clk~clkctrl_outclk\,
	d => \adc|Add1~3_combout\,
	ena => \adc|state.execute~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_comm_delay\(5));

-- Location: LCCOMB_X36_Y29_N20
\adc|enable~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|enable~0_combout\ = (!\adc|spi_comm_delay\(3) & (!\adc|spi_comm_delay\(2) & (!\adc|spi_comm_delay\(1) & !\adc|spi_comm_delay\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_comm_delay\(3),
	datab => \adc|spi_comm_delay\(2),
	datac => \adc|spi_comm_delay\(1),
	datad => \adc|spi_comm_delay\(0),
	combout => \adc|enable~0_combout\);

-- Location: LCCOMB_X36_Y29_N2
\adc|enable~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|enable~1_combout\ = (\adc|enable~q\) # ((!\adc|spi_comm_delay\(5) & (!\adc|spi_comm_delay\(4) & \adc|enable~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_comm_delay\(5),
	datab => \adc|spi_comm_delay\(4),
	datac => \adc|enable~q\,
	datad => \adc|enable~0_combout\,
	combout => \adc|enable~1_combout\);

-- Location: LCCOMB_X37_Y29_N12
\adc|enable~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|enable~2_combout\ = (\adc|enable~1_combout\ & ((\adc|spi_comm_delay\(0)) # ((\adc|Add1~0_combout\) # (!\adc|Equal2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|enable~1_combout\,
	datab => \adc|spi_comm_delay\(0),
	datac => \adc|Equal2~1_combout\,
	datad => \adc|Add1~0_combout\,
	combout => \adc|enable~2_combout\);

-- Location: FF_X37_Y29_N13
\adc|enable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vclock|virt_clk~clkctrl_outclk\,
	d => \adc|enable~2_combout\,
	ena => \adc|state.execute~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|enable~q\);

-- Location: LCCOMB_X38_Y31_N28
\adc|reset~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|reset~0_combout\ = (\adc|init_delay\(1) & (\adc|init_delay\(0) & (\adc|init_delay\(2) & !\adc|state.initialize~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|init_delay\(1),
	datab => \adc|init_delay\(0),
	datac => \adc|init_delay\(2),
	datad => \adc|state.initialize~reg0_q\,
	combout => \adc|reset~0_combout\);

-- Location: LCCOMB_X38_Y31_N18
\adc|reset~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|reset~1_combout\ = (\adc|reset~q\) # (\adc|reset~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc|reset~q\,
	datad => \adc|reset~0_combout\,
	combout => \adc|reset~1_combout\);

-- Location: LCCOMB_X38_Y31_N8
\adc|reset~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|reset~feeder_combout\ = \adc|reset~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc|reset~1_combout\,
	combout => \adc|reset~feeder_combout\);

-- Location: FF_X38_Y31_N9
\adc|reset\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vclock|virt_clk~clkctrl_outclk\,
	d => \adc|reset~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|reset~q\);

-- Location: LCCOMB_X37_Y30_N6
\adc|spi_driver|clk_toggles[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|clk_toggles[5]~10_combout\ = (\adc|reset~q\ & ((\adc|spi_driver|state~q\ & ((\adc|spi_driver|Equal1~10_combout\))) # (!\adc|spi_driver|state~q\ & (\adc|enable~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|enable~q\,
	datab => \adc|spi_driver|state~q\,
	datac => \adc|spi_driver|Equal1~10_combout\,
	datad => \adc|reset~q\,
	combout => \adc|spi_driver|clk_toggles[5]~10_combout\);

-- Location: FF_X37_Y30_N15
\adc|spi_driver|clk_toggles[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|clk_toggles[3]~13_combout\,
	sclr => \adc|spi_driver|mosi~5_combout\,
	ena => \adc|spi_driver|clk_toggles[5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|clk_toggles\(3));

-- Location: LCCOMB_X37_Y30_N16
\adc|spi_driver|clk_toggles[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|clk_toggles[4]~15_combout\ = (\adc|spi_driver|clk_toggles\(4) & (\adc|spi_driver|clk_toggles[3]~14\ $ (GND))) # (!\adc|spi_driver|clk_toggles\(4) & (!\adc|spi_driver|clk_toggles[3]~14\ & VCC))
-- \adc|spi_driver|clk_toggles[4]~16\ = CARRY((\adc|spi_driver|clk_toggles\(4) & !\adc|spi_driver|clk_toggles[3]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc|spi_driver|clk_toggles\(4),
	datad => VCC,
	cin => \adc|spi_driver|clk_toggles[3]~14\,
	combout => \adc|spi_driver|clk_toggles[4]~15_combout\,
	cout => \adc|spi_driver|clk_toggles[4]~16\);

-- Location: FF_X37_Y30_N17
\adc|spi_driver|clk_toggles[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|clk_toggles[4]~15_combout\,
	sclr => \adc|spi_driver|mosi~5_combout\,
	ena => \adc|spi_driver|clk_toggles[5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|clk_toggles\(4));

-- Location: LCCOMB_X37_Y30_N18
\adc|spi_driver|clk_toggles[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|clk_toggles[5]~17_combout\ = \adc|spi_driver|clk_toggles[4]~16\ $ (\adc|spi_driver|clk_toggles\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \adc|spi_driver|clk_toggles\(5),
	cin => \adc|spi_driver|clk_toggles[4]~16\,
	combout => \adc|spi_driver|clk_toggles[5]~17_combout\);

-- Location: FF_X37_Y30_N19
\adc|spi_driver|clk_toggles[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|clk_toggles[5]~17_combout\,
	sclr => \adc|spi_driver|mosi~5_combout\,
	ena => \adc|spi_driver|clk_toggles[5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|clk_toggles\(5));

-- Location: LCCOMB_X37_Y30_N28
\adc|spi_driver|mosi~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|mosi~5_combout\ = ((\adc|spi_driver|clk_toggles\(5) & (\adc|spi_driver|clk_toggles\(0) & \adc|spi_driver|Equal3~0_combout\))) # (!\adc|spi_driver|state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|clk_toggles\(5),
	datab => \adc|spi_driver|clk_toggles\(0),
	datac => \adc|spi_driver|state~q\,
	datad => \adc|spi_driver|Equal3~0_combout\,
	combout => \adc|spi_driver|mosi~5_combout\);

-- Location: FF_X37_Y30_N9
\adc|spi_driver|clk_toggles[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|clk_toggles[0]~6_combout\,
	sclr => \adc|spi_driver|mosi~5_combout\,
	ena => \adc|spi_driver|clk_toggles[5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|clk_toggles\(0));

-- Location: LCCOMB_X37_Y30_N10
\adc|spi_driver|clk_toggles[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|clk_toggles[1]~8_combout\ = (\adc|spi_driver|clk_toggles\(1) & (!\adc|spi_driver|clk_toggles[0]~7\)) # (!\adc|spi_driver|clk_toggles\(1) & ((\adc|spi_driver|clk_toggles[0]~7\) # (GND)))
-- \adc|spi_driver|clk_toggles[1]~9\ = CARRY((!\adc|spi_driver|clk_toggles[0]~7\) # (!\adc|spi_driver|clk_toggles\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|clk_toggles\(1),
	datad => VCC,
	cin => \adc|spi_driver|clk_toggles[0]~7\,
	combout => \adc|spi_driver|clk_toggles[1]~8_combout\,
	cout => \adc|spi_driver|clk_toggles[1]~9\);

-- Location: FF_X37_Y30_N11
\adc|spi_driver|clk_toggles[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|clk_toggles[1]~8_combout\,
	sclr => \adc|spi_driver|mosi~5_combout\,
	ena => \adc|spi_driver|clk_toggles[5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|clk_toggles\(1));

-- Location: FF_X37_Y30_N13
\adc|spi_driver|clk_toggles[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|clk_toggles[2]~11_combout\,
	sclr => \adc|spi_driver|mosi~5_combout\,
	ena => \adc|spi_driver|clk_toggles[5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|clk_toggles\(2));

-- Location: LCCOMB_X37_Y30_N24
\adc|spi_driver|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Equal3~0_combout\ = (!\adc|spi_driver|clk_toggles\(2) & (!\adc|spi_driver|clk_toggles\(4) & (!\adc|spi_driver|clk_toggles\(3) & !\adc|spi_driver|clk_toggles\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|clk_toggles\(2),
	datab => \adc|spi_driver|clk_toggles\(4),
	datac => \adc|spi_driver|clk_toggles\(3),
	datad => \adc|spi_driver|clk_toggles\(1),
	combout => \adc|spi_driver|Equal3~0_combout\);

-- Location: LCCOMB_X37_Y30_N2
\adc|spi_driver|Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Equal3~1_combout\ = ((!\adc|spi_driver|clk_toggles\(5)) # (!\adc|spi_driver|clk_toggles\(0))) # (!\adc|spi_driver|Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc|spi_driver|Equal3~0_combout\,
	datac => \adc|spi_driver|clk_toggles\(0),
	datad => \adc|spi_driver|clk_toggles\(5),
	combout => \adc|spi_driver|Equal3~1_combout\);

-- Location: LCCOMB_X39_Y30_N18
\adc|spi_driver|busy~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|busy~0_combout\ = (\adc|spi_driver|state~q\ & ((\adc|spi_driver|Equal3~1_combout\) # ((!\adc|spi_driver|Equal1~10_combout\)))) # (!\adc|spi_driver|state~q\ & (((\adc|enable~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|Equal3~1_combout\,
	datab => \adc|spi_driver|Equal1~10_combout\,
	datac => \adc|enable~q\,
	datad => \adc|spi_driver|state~q\,
	combout => \adc|spi_driver|busy~0_combout\);

-- Location: LCCOMB_X39_Y30_N6
\adc|spi_driver|state~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|state~feeder_combout\ = \adc|spi_driver|busy~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc|spi_driver|busy~0_combout\,
	combout => \adc|spi_driver|state~feeder_combout\);

-- Location: FF_X39_Y30_N7
\adc|spi_driver|state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|state~feeder_combout\,
	clrn => \adc|reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|state~q\);

-- Location: LCCOMB_X40_Y30_N0
\adc|spi_driver|Add5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Add5~0_combout\ = \adc|spi_driver|count\(0) $ (GND)
-- \adc|spi_driver|Add5~1\ = CARRY(!\adc|spi_driver|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc|spi_driver|count\(0),
	datad => VCC,
	combout => \adc|spi_driver|Add5~0_combout\,
	cout => \adc|spi_driver|Add5~1\);

-- Location: LCCOMB_X37_Y29_N14
\adc|spi_driver|count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~1_combout\ = (\adc|spi_driver|count[3]~0_combout\ & (!\adc|spi_driver|state~q\)) # (!\adc|spi_driver|count[3]~0_combout\ & ((!\adc|spi_driver|Add5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|count[3]~0_combout\,
	datac => \adc|spi_driver|state~q\,
	datad => \adc|spi_driver|Add5~0_combout\,
	combout => \adc|spi_driver|count~1_combout\);

-- Location: LCCOMB_X38_Y29_N24
\adc|spi_driver|count[30]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count[30]~2_combout\ = (\adc|reset~q\ & ((\adc|enable~q\) # (\adc|spi_driver|state~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|enable~q\,
	datab => \adc|spi_driver|state~q\,
	datad => \adc|reset~q\,
	combout => \adc|spi_driver|count[30]~2_combout\);

-- Location: FF_X37_Y29_N15
\adc|spi_driver|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|count~1_combout\,
	ena => \adc|spi_driver|count[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|count\(0));

-- Location: LCCOMB_X40_Y30_N2
\adc|spi_driver|Add5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Add5~2_combout\ = (\adc|spi_driver|count\(1) & (!\adc|spi_driver|Add5~1\)) # (!\adc|spi_driver|count\(1) & ((\adc|spi_driver|Add5~1\) # (GND)))
-- \adc|spi_driver|Add5~3\ = CARRY((!\adc|spi_driver|Add5~1\) # (!\adc|spi_driver|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc|spi_driver|count\(1),
	datad => VCC,
	cin => \adc|spi_driver|Add5~1\,
	combout => \adc|spi_driver|Add5~2_combout\,
	cout => \adc|spi_driver|Add5~3\);

-- Location: LCCOMB_X38_Y29_N2
\adc|spi_driver|count~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~33_combout\ = (!\adc|spi_driver|count[3]~0_combout\ & \adc|spi_driver|Add5~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|count[3]~0_combout\,
	datad => \adc|spi_driver|Add5~2_combout\,
	combout => \adc|spi_driver|count~33_combout\);

-- Location: FF_X38_Y29_N3
\adc|spi_driver|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|count~33_combout\,
	ena => \adc|spi_driver|count[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|count\(1));

-- Location: LCCOMB_X40_Y30_N4
\adc|spi_driver|Add5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Add5~4_combout\ = (\adc|spi_driver|count\(2) & (\adc|spi_driver|Add5~3\ $ (GND))) # (!\adc|spi_driver|count\(2) & (!\adc|spi_driver|Add5~3\ & VCC))
-- \adc|spi_driver|Add5~5\ = CARRY((\adc|spi_driver|count\(2) & !\adc|spi_driver|Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|count\(2),
	datad => VCC,
	cin => \adc|spi_driver|Add5~3\,
	combout => \adc|spi_driver|Add5~4_combout\,
	cout => \adc|spi_driver|Add5~5\);

-- Location: LCCOMB_X38_Y29_N0
\adc|spi_driver|count~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~32_combout\ = (!\adc|spi_driver|count[3]~0_combout\ & \adc|spi_driver|Add5~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|count[3]~0_combout\,
	datad => \adc|spi_driver|Add5~4_combout\,
	combout => \adc|spi_driver|count~32_combout\);

-- Location: FF_X38_Y29_N1
\adc|spi_driver|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|count~32_combout\,
	ena => \adc|spi_driver|count[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|count\(2));

-- Location: LCCOMB_X40_Y30_N6
\adc|spi_driver|Add5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Add5~6_combout\ = (\adc|spi_driver|count\(3) & (!\adc|spi_driver|Add5~5\)) # (!\adc|spi_driver|count\(3) & ((\adc|spi_driver|Add5~5\) # (GND)))
-- \adc|spi_driver|Add5~7\ = CARRY((!\adc|spi_driver|Add5~5\) # (!\adc|spi_driver|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc|spi_driver|count\(3),
	datad => VCC,
	cin => \adc|spi_driver|Add5~5\,
	combout => \adc|spi_driver|Add5~6_combout\,
	cout => \adc|spi_driver|Add5~7\);

-- Location: LCCOMB_X37_Y29_N24
\adc|spi_driver|count~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~31_combout\ = (!\adc|spi_driver|count[3]~0_combout\ & \adc|spi_driver|Add5~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|count[3]~0_combout\,
	datad => \adc|spi_driver|Add5~6_combout\,
	combout => \adc|spi_driver|count~31_combout\);

-- Location: FF_X37_Y29_N25
\adc|spi_driver|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|count~31_combout\,
	ena => \adc|spi_driver|count[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|count\(3));

-- Location: LCCOMB_X40_Y30_N8
\adc|spi_driver|Add5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Add5~8_combout\ = (\adc|spi_driver|count\(4) & (\adc|spi_driver|Add5~7\ $ (GND))) # (!\adc|spi_driver|count\(4) & (!\adc|spi_driver|Add5~7\ & VCC))
-- \adc|spi_driver|Add5~9\ = CARRY((\adc|spi_driver|count\(4) & !\adc|spi_driver|Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|count\(4),
	datad => VCC,
	cin => \adc|spi_driver|Add5~7\,
	combout => \adc|spi_driver|Add5~8_combout\,
	cout => \adc|spi_driver|Add5~9\);

-- Location: LCCOMB_X37_Y29_N28
\adc|spi_driver|count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~3_combout\ = ((!\adc|spi_driver|Equal1~10_combout\ & \adc|spi_driver|Add5~8_combout\)) # (!\adc|spi_driver|state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|Equal1~10_combout\,
	datac => \adc|spi_driver|state~q\,
	datad => \adc|spi_driver|Add5~8_combout\,
	combout => \adc|spi_driver|count~3_combout\);

-- Location: FF_X37_Y29_N29
\adc|spi_driver|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|count~3_combout\,
	ena => \adc|spi_driver|count[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|count\(4));

-- Location: LCCOMB_X40_Y30_N10
\adc|spi_driver|Add5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Add5~10_combout\ = (\adc|spi_driver|count\(5) & (!\adc|spi_driver|Add5~9\)) # (!\adc|spi_driver|count\(5) & ((\adc|spi_driver|Add5~9\) # (GND)))
-- \adc|spi_driver|Add5~11\ = CARRY((!\adc|spi_driver|Add5~9\) # (!\adc|spi_driver|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|count\(5),
	datad => VCC,
	cin => \adc|spi_driver|Add5~9\,
	combout => \adc|spi_driver|Add5~10_combout\,
	cout => \adc|spi_driver|Add5~11\);

-- Location: LCCOMB_X38_Y30_N28
\adc|spi_driver|count~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~30_combout\ = (!\adc|spi_driver|count[3]~0_combout\ & \adc|spi_driver|Add5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|count[3]~0_combout\,
	datad => \adc|spi_driver|Add5~10_combout\,
	combout => \adc|spi_driver|count~30_combout\);

-- Location: FF_X38_Y29_N31
\adc|spi_driver|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \adc|spi_driver|count~30_combout\,
	sload => VCC,
	ena => \adc|spi_driver|count[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|count\(5));

-- Location: LCCOMB_X40_Y30_N12
\adc|spi_driver|Add5~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Add5~12_combout\ = (\adc|spi_driver|count\(6) & (\adc|spi_driver|Add5~11\ $ (GND))) # (!\adc|spi_driver|count\(6) & (!\adc|spi_driver|Add5~11\ & VCC))
-- \adc|spi_driver|Add5~13\ = CARRY((\adc|spi_driver|count\(6) & !\adc|spi_driver|Add5~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc|spi_driver|count\(6),
	datad => VCC,
	cin => \adc|spi_driver|Add5~11\,
	combout => \adc|spi_driver|Add5~12_combout\,
	cout => \adc|spi_driver|Add5~13\);

-- Location: LCCOMB_X38_Y29_N28
\adc|spi_driver|count~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~29_combout\ = (!\adc|spi_driver|count[3]~0_combout\ & \adc|spi_driver|Add5~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|count[3]~0_combout\,
	datad => \adc|spi_driver|Add5~12_combout\,
	combout => \adc|spi_driver|count~29_combout\);

-- Location: FF_X38_Y29_N29
\adc|spi_driver|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|count~29_combout\,
	ena => \adc|spi_driver|count[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|count\(6));

-- Location: LCCOMB_X40_Y30_N14
\adc|spi_driver|Add5~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Add5~14_combout\ = (\adc|spi_driver|count\(7) & (!\adc|spi_driver|Add5~13\)) # (!\adc|spi_driver|count\(7) & ((\adc|spi_driver|Add5~13\) # (GND)))
-- \adc|spi_driver|Add5~15\ = CARRY((!\adc|spi_driver|Add5~13\) # (!\adc|spi_driver|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc|spi_driver|count\(7),
	datad => VCC,
	cin => \adc|spi_driver|Add5~13\,
	combout => \adc|spi_driver|Add5~14_combout\,
	cout => \adc|spi_driver|Add5~15\);

-- Location: LCCOMB_X38_Y29_N18
\adc|spi_driver|count~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~28_combout\ = (!\adc|spi_driver|count[3]~0_combout\ & \adc|spi_driver|Add5~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|count[3]~0_combout\,
	datad => \adc|spi_driver|Add5~14_combout\,
	combout => \adc|spi_driver|count~28_combout\);

-- Location: FF_X38_Y29_N19
\adc|spi_driver|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|count~28_combout\,
	ena => \adc|spi_driver|count[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|count\(7));

-- Location: LCCOMB_X40_Y30_N16
\adc|spi_driver|Add5~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Add5~16_combout\ = (\adc|spi_driver|count\(8) & (\adc|spi_driver|Add5~15\ $ (GND))) # (!\adc|spi_driver|count\(8) & (!\adc|spi_driver|Add5~15\ & VCC))
-- \adc|spi_driver|Add5~17\ = CARRY((\adc|spi_driver|count\(8) & !\adc|spi_driver|Add5~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|count\(8),
	datad => VCC,
	cin => \adc|spi_driver|Add5~15\,
	combout => \adc|spi_driver|Add5~16_combout\,
	cout => \adc|spi_driver|Add5~17\);

-- Location: LCCOMB_X38_Y29_N4
\adc|spi_driver|count~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~27_combout\ = (!\adc|spi_driver|count[3]~0_combout\ & \adc|spi_driver|Add5~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|count[3]~0_combout\,
	datad => \adc|spi_driver|Add5~16_combout\,
	combout => \adc|spi_driver|count~27_combout\);

-- Location: FF_X38_Y29_N5
\adc|spi_driver|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|count~27_combout\,
	ena => \adc|spi_driver|count[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|count\(8));

-- Location: LCCOMB_X40_Y30_N18
\adc|spi_driver|Add5~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Add5~18_combout\ = (\adc|spi_driver|count\(9) & (!\adc|spi_driver|Add5~17\)) # (!\adc|spi_driver|count\(9) & ((\adc|spi_driver|Add5~17\) # (GND)))
-- \adc|spi_driver|Add5~19\ = CARRY((!\adc|spi_driver|Add5~17\) # (!\adc|spi_driver|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|count\(9),
	datad => VCC,
	cin => \adc|spi_driver|Add5~17\,
	combout => \adc|spi_driver|Add5~18_combout\,
	cout => \adc|spi_driver|Add5~19\);

-- Location: LCCOMB_X37_Y29_N16
\adc|spi_driver|count~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~26_combout\ = (!\adc|spi_driver|count[3]~0_combout\ & \adc|spi_driver|Add5~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|count[3]~0_combout\,
	datac => \adc|spi_driver|Add5~18_combout\,
	combout => \adc|spi_driver|count~26_combout\);

-- Location: FF_X37_Y29_N17
\adc|spi_driver|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|count~26_combout\,
	ena => \adc|spi_driver|count[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|count\(9));

-- Location: LCCOMB_X40_Y30_N20
\adc|spi_driver|Add5~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Add5~20_combout\ = (\adc|spi_driver|count\(10) & (\adc|spi_driver|Add5~19\ $ (GND))) # (!\adc|spi_driver|count\(10) & (!\adc|spi_driver|Add5~19\ & VCC))
-- \adc|spi_driver|Add5~21\ = CARRY((\adc|spi_driver|count\(10) & !\adc|spi_driver|Add5~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|count\(10),
	datad => VCC,
	cin => \adc|spi_driver|Add5~19\,
	combout => \adc|spi_driver|Add5~20_combout\,
	cout => \adc|spi_driver|Add5~21\);

-- Location: LCCOMB_X37_Y29_N22
\adc|spi_driver|count~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~25_combout\ = (\adc|spi_driver|Add5~20_combout\ & !\adc|spi_driver|count[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc|spi_driver|Add5~20_combout\,
	datad => \adc|spi_driver|count[3]~0_combout\,
	combout => \adc|spi_driver|count~25_combout\);

-- Location: FF_X37_Y29_N23
\adc|spi_driver|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|count~25_combout\,
	ena => \adc|spi_driver|count[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|count\(10));

-- Location: LCCOMB_X37_Y29_N30
\adc|spi_driver|Equal1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Equal1~7_combout\ = (!\adc|spi_driver|count\(10) & (!\adc|spi_driver|count\(9) & (!\adc|spi_driver|count\(8) & !\adc|spi_driver|count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|count\(10),
	datab => \adc|spi_driver|count\(9),
	datac => \adc|spi_driver|count\(8),
	datad => \adc|spi_driver|count\(7),
	combout => \adc|spi_driver|Equal1~7_combout\);

-- Location: LCCOMB_X40_Y30_N22
\adc|spi_driver|Add5~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Add5~22_combout\ = (\adc|spi_driver|count\(11) & (!\adc|spi_driver|Add5~21\)) # (!\adc|spi_driver|count\(11) & ((\adc|spi_driver|Add5~21\) # (GND)))
-- \adc|spi_driver|Add5~23\ = CARRY((!\adc|spi_driver|Add5~21\) # (!\adc|spi_driver|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|count\(11),
	datad => VCC,
	cin => \adc|spi_driver|Add5~21\,
	combout => \adc|spi_driver|Add5~22_combout\,
	cout => \adc|spi_driver|Add5~23\);

-- Location: LCCOMB_X38_Y29_N14
\adc|spi_driver|count~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~24_combout\ = (\adc|spi_driver|Add5~22_combout\ & !\adc|spi_driver|count[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc|spi_driver|Add5~22_combout\,
	datad => \adc|spi_driver|count[3]~0_combout\,
	combout => \adc|spi_driver|count~24_combout\);

-- Location: FF_X38_Y29_N15
\adc|spi_driver|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|count~24_combout\,
	ena => \adc|spi_driver|count[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|count\(11));

-- Location: LCCOMB_X40_Y30_N24
\adc|spi_driver|Add5~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Add5~24_combout\ = (\adc|spi_driver|count\(12) & (\adc|spi_driver|Add5~23\ $ (GND))) # (!\adc|spi_driver|count\(12) & (!\adc|spi_driver|Add5~23\ & VCC))
-- \adc|spi_driver|Add5~25\ = CARRY((\adc|spi_driver|count\(12) & !\adc|spi_driver|Add5~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|count\(12),
	datad => VCC,
	cin => \adc|spi_driver|Add5~23\,
	combout => \adc|spi_driver|Add5~24_combout\,
	cout => \adc|spi_driver|Add5~25\);

-- Location: LCCOMB_X39_Y30_N12
\adc|spi_driver|count~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~23_combout\ = (!\adc|spi_driver|count[3]~0_combout\ & \adc|spi_driver|Add5~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc|spi_driver|count[3]~0_combout\,
	datad => \adc|spi_driver|Add5~24_combout\,
	combout => \adc|spi_driver|count~23_combout\);

-- Location: FF_X38_Y29_N25
\adc|spi_driver|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \adc|spi_driver|count~23_combout\,
	sload => VCC,
	ena => \adc|spi_driver|count[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|count\(12));

-- Location: LCCOMB_X40_Y30_N26
\adc|spi_driver|Add5~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Add5~26_combout\ = (\adc|spi_driver|count\(13) & (!\adc|spi_driver|Add5~25\)) # (!\adc|spi_driver|count\(13) & ((\adc|spi_driver|Add5~25\) # (GND)))
-- \adc|spi_driver|Add5~27\ = CARRY((!\adc|spi_driver|Add5~25\) # (!\adc|spi_driver|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc|spi_driver|count\(13),
	datad => VCC,
	cin => \adc|spi_driver|Add5~25\,
	combout => \adc|spi_driver|Add5~26_combout\,
	cout => \adc|spi_driver|Add5~27\);

-- Location: LCCOMB_X39_Y30_N2
\adc|spi_driver|count~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~22_combout\ = (!\adc|spi_driver|count[3]~0_combout\ & \adc|spi_driver|Add5~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc|spi_driver|count[3]~0_combout\,
	datad => \adc|spi_driver|Add5~26_combout\,
	combout => \adc|spi_driver|count~22_combout\);

-- Location: FF_X38_Y29_N11
\adc|spi_driver|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \adc|spi_driver|count~22_combout\,
	sload => VCC,
	ena => \adc|spi_driver|count[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|count\(13));

-- Location: LCCOMB_X40_Y30_N28
\adc|spi_driver|Add5~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Add5~28_combout\ = (\adc|spi_driver|count\(14) & (\adc|spi_driver|Add5~27\ $ (GND))) # (!\adc|spi_driver|count\(14) & (!\adc|spi_driver|Add5~27\ & VCC))
-- \adc|spi_driver|Add5~29\ = CARRY((\adc|spi_driver|count\(14) & !\adc|spi_driver|Add5~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|count\(14),
	datad => VCC,
	cin => \adc|spi_driver|Add5~27\,
	combout => \adc|spi_driver|Add5~28_combout\,
	cout => \adc|spi_driver|Add5~29\);

-- Location: LCCOMB_X38_Y29_N8
\adc|spi_driver|count~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~21_combout\ = (\adc|spi_driver|Add5~28_combout\ & !\adc|spi_driver|count[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc|spi_driver|Add5~28_combout\,
	datad => \adc|spi_driver|count[3]~0_combout\,
	combout => \adc|spi_driver|count~21_combout\);

-- Location: FF_X38_Y29_N9
\adc|spi_driver|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|count~21_combout\,
	ena => \adc|spi_driver|count[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|count\(14));

-- Location: LCCOMB_X38_Y29_N10
\adc|spi_driver|Equal1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Equal1~6_combout\ = (!\adc|spi_driver|count\(12) & (!\adc|spi_driver|count\(11) & (!\adc|spi_driver|count\(13) & !\adc|spi_driver|count\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|count\(12),
	datab => \adc|spi_driver|count\(11),
	datac => \adc|spi_driver|count\(13),
	datad => \adc|spi_driver|count\(14),
	combout => \adc|spi_driver|Equal1~6_combout\);

-- Location: LCCOMB_X37_Y29_N18
\adc|spi_driver|Equal1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Equal1~8_combout\ = (!\adc|spi_driver|count\(2) & (!\adc|spi_driver|count\(3) & (!\adc|spi_driver|count\(6) & !\adc|spi_driver|count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|count\(2),
	datab => \adc|spi_driver|count\(3),
	datac => \adc|spi_driver|count\(6),
	datad => \adc|spi_driver|count\(5),
	combout => \adc|spi_driver|Equal1~8_combout\);

-- Location: LCCOMB_X40_Y30_N30
\adc|spi_driver|Add5~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Add5~30_combout\ = (\adc|spi_driver|count\(15) & (!\adc|spi_driver|Add5~29\)) # (!\adc|spi_driver|count\(15) & ((\adc|spi_driver|Add5~29\) # (GND)))
-- \adc|spi_driver|Add5~31\ = CARRY((!\adc|spi_driver|Add5~29\) # (!\adc|spi_driver|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc|spi_driver|count\(15),
	datad => VCC,
	cin => \adc|spi_driver|Add5~29\,
	combout => \adc|spi_driver|Add5~30_combout\,
	cout => \adc|spi_driver|Add5~31\);

-- Location: LCCOMB_X38_Y29_N30
\adc|spi_driver|count~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~20_combout\ = (!\adc|spi_driver|count[3]~0_combout\ & \adc|spi_driver|Add5~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|count[3]~0_combout\,
	datad => \adc|spi_driver|Add5~30_combout\,
	combout => \adc|spi_driver|count~20_combout\);

-- Location: FF_X38_Y29_N23
\adc|spi_driver|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \adc|spi_driver|count~20_combout\,
	sload => VCC,
	ena => \adc|spi_driver|count[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|count\(15));

-- Location: LCCOMB_X40_Y29_N0
\adc|spi_driver|Add5~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Add5~32_combout\ = (\adc|spi_driver|count\(16) & (\adc|spi_driver|Add5~31\ $ (GND))) # (!\adc|spi_driver|count\(16) & (!\adc|spi_driver|Add5~31\ & VCC))
-- \adc|spi_driver|Add5~33\ = CARRY((\adc|spi_driver|count\(16) & !\adc|spi_driver|Add5~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|count\(16),
	datad => VCC,
	cin => \adc|spi_driver|Add5~31\,
	combout => \adc|spi_driver|Add5~32_combout\,
	cout => \adc|spi_driver|Add5~33\);

-- Location: LCCOMB_X38_Y29_N12
\adc|spi_driver|count~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~19_combout\ = (\adc|spi_driver|Add5~32_combout\ & !\adc|spi_driver|count[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc|spi_driver|Add5~32_combout\,
	datad => \adc|spi_driver|count[3]~0_combout\,
	combout => \adc|spi_driver|count~19_combout\);

-- Location: FF_X38_Y29_N13
\adc|spi_driver|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|count~19_combout\,
	ena => \adc|spi_driver|count[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|count\(16));

-- Location: LCCOMB_X40_Y29_N2
\adc|spi_driver|Add5~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Add5~34_combout\ = (\adc|spi_driver|count\(17) & (!\adc|spi_driver|Add5~33\)) # (!\adc|spi_driver|count\(17) & ((\adc|spi_driver|Add5~33\) # (GND)))
-- \adc|spi_driver|Add5~35\ = CARRY((!\adc|spi_driver|Add5~33\) # (!\adc|spi_driver|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|count\(17),
	datad => VCC,
	cin => \adc|spi_driver|Add5~33\,
	combout => \adc|spi_driver|Add5~34_combout\,
	cout => \adc|spi_driver|Add5~35\);

-- Location: LCCOMB_X38_Y29_N26
\adc|spi_driver|count~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~18_combout\ = (\adc|spi_driver|Add5~34_combout\ & !\adc|spi_driver|count[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc|spi_driver|Add5~34_combout\,
	datad => \adc|spi_driver|count[3]~0_combout\,
	combout => \adc|spi_driver|count~18_combout\);

-- Location: FF_X38_Y29_N27
\adc|spi_driver|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|count~18_combout\,
	ena => \adc|spi_driver|count[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|count\(17));

-- Location: LCCOMB_X40_Y29_N4
\adc|spi_driver|Add5~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Add5~36_combout\ = (\adc|spi_driver|count\(18) & (\adc|spi_driver|Add5~35\ $ (GND))) # (!\adc|spi_driver|count\(18) & (!\adc|spi_driver|Add5~35\ & VCC))
-- \adc|spi_driver|Add5~37\ = CARRY((\adc|spi_driver|count\(18) & !\adc|spi_driver|Add5~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|count\(18),
	datad => VCC,
	cin => \adc|spi_driver|Add5~35\,
	combout => \adc|spi_driver|Add5~36_combout\,
	cout => \adc|spi_driver|Add5~37\);

-- Location: LCCOMB_X38_Y29_N16
\adc|spi_driver|count~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~17_combout\ = (\adc|spi_driver|Add5~36_combout\ & !\adc|spi_driver|count[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc|spi_driver|Add5~36_combout\,
	datad => \adc|spi_driver|count[3]~0_combout\,
	combout => \adc|spi_driver|count~17_combout\);

-- Location: FF_X38_Y29_N17
\adc|spi_driver|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|count~17_combout\,
	ena => \adc|spi_driver|count[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|count\(18));

-- Location: LCCOMB_X38_Y29_N22
\adc|spi_driver|Equal1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Equal1~5_combout\ = (!\adc|spi_driver|count\(17) & (!\adc|spi_driver|count\(18) & (!\adc|spi_driver|count\(15) & !\adc|spi_driver|count\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|count\(17),
	datab => \adc|spi_driver|count\(18),
	datac => \adc|spi_driver|count\(15),
	datad => \adc|spi_driver|count\(16),
	combout => \adc|spi_driver|Equal1~5_combout\);

-- Location: LCCOMB_X37_Y29_N0
\adc|spi_driver|Equal1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Equal1~9_combout\ = (\adc|spi_driver|Equal1~7_combout\ & (\adc|spi_driver|Equal1~6_combout\ & (\adc|spi_driver|Equal1~8_combout\ & \adc|spi_driver|Equal1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|Equal1~7_combout\,
	datab => \adc|spi_driver|Equal1~6_combout\,
	datac => \adc|spi_driver|Equal1~8_combout\,
	datad => \adc|spi_driver|Equal1~5_combout\,
	combout => \adc|spi_driver|Equal1~9_combout\);

-- Location: LCCOMB_X39_Y30_N20
\adc|spi_driver|count[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count[3]~0_combout\ = ((!\adc|spi_driver|count\(1) & (\adc|spi_driver|Equal1~4_combout\ & \adc|spi_driver|Equal1~9_combout\))) # (!\adc|spi_driver|state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|count\(1),
	datab => \adc|spi_driver|Equal1~4_combout\,
	datac => \adc|spi_driver|Equal1~9_combout\,
	datad => \adc|spi_driver|state~q\,
	combout => \adc|spi_driver|count[3]~0_combout\);

-- Location: LCCOMB_X40_Y29_N6
\adc|spi_driver|Add5~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Add5~38_combout\ = (\adc|spi_driver|count\(19) & (!\adc|spi_driver|Add5~37\)) # (!\adc|spi_driver|count\(19) & ((\adc|spi_driver|Add5~37\) # (GND)))
-- \adc|spi_driver|Add5~39\ = CARRY((!\adc|spi_driver|Add5~37\) # (!\adc|spi_driver|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|count\(19),
	datad => VCC,
	cin => \adc|spi_driver|Add5~37\,
	combout => \adc|spi_driver|Add5~38_combout\,
	cout => \adc|spi_driver|Add5~39\);

-- Location: LCCOMB_X38_Y29_N6
\adc|spi_driver|count~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~16_combout\ = (!\adc|spi_driver|count[3]~0_combout\ & \adc|spi_driver|Add5~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|count[3]~0_combout\,
	datad => \adc|spi_driver|Add5~38_combout\,
	combout => \adc|spi_driver|count~16_combout\);

-- Location: FF_X38_Y29_N7
\adc|spi_driver|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|count~16_combout\,
	ena => \adc|spi_driver|count[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|count\(19));

-- Location: LCCOMB_X40_Y29_N8
\adc|spi_driver|Add5~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Add5~40_combout\ = (\adc|spi_driver|count\(20) & (\adc|spi_driver|Add5~39\ $ (GND))) # (!\adc|spi_driver|count\(20) & (!\adc|spi_driver|Add5~39\ & VCC))
-- \adc|spi_driver|Add5~41\ = CARRY((\adc|spi_driver|count\(20) & !\adc|spi_driver|Add5~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|count\(20),
	datad => VCC,
	cin => \adc|spi_driver|Add5~39\,
	combout => \adc|spi_driver|Add5~40_combout\,
	cout => \adc|spi_driver|Add5~41\);

-- Location: LCCOMB_X39_Y29_N26
\adc|spi_driver|count~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~15_combout\ = (!\adc|spi_driver|count[3]~0_combout\ & \adc|spi_driver|Add5~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc|spi_driver|count[3]~0_combout\,
	datac => \adc|spi_driver|Add5~40_combout\,
	combout => \adc|spi_driver|count~15_combout\);

-- Location: FF_X39_Y29_N27
\adc|spi_driver|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|count~15_combout\,
	ena => \adc|spi_driver|count[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|count\(20));

-- Location: LCCOMB_X40_Y29_N10
\adc|spi_driver|Add5~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Add5~42_combout\ = (\adc|spi_driver|count\(21) & (!\adc|spi_driver|Add5~41\)) # (!\adc|spi_driver|count\(21) & ((\adc|spi_driver|Add5~41\) # (GND)))
-- \adc|spi_driver|Add5~43\ = CARRY((!\adc|spi_driver|Add5~41\) # (!\adc|spi_driver|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|count\(21),
	datad => VCC,
	cin => \adc|spi_driver|Add5~41\,
	combout => \adc|spi_driver|Add5~42_combout\,
	cout => \adc|spi_driver|Add5~43\);

-- Location: LCCOMB_X39_Y29_N16
\adc|spi_driver|count~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~14_combout\ = (!\adc|spi_driver|count[3]~0_combout\ & \adc|spi_driver|Add5~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc|spi_driver|count[3]~0_combout\,
	datac => \adc|spi_driver|Add5~42_combout\,
	combout => \adc|spi_driver|count~14_combout\);

-- Location: FF_X39_Y29_N17
\adc|spi_driver|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|count~14_combout\,
	ena => \adc|spi_driver|count[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|count\(21));

-- Location: LCCOMB_X40_Y29_N12
\adc|spi_driver|Add5~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Add5~44_combout\ = (\adc|spi_driver|count\(22) & (\adc|spi_driver|Add5~43\ $ (GND))) # (!\adc|spi_driver|count\(22) & (!\adc|spi_driver|Add5~43\ & VCC))
-- \adc|spi_driver|Add5~45\ = CARRY((\adc|spi_driver|count\(22) & !\adc|spi_driver|Add5~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc|spi_driver|count\(22),
	datad => VCC,
	cin => \adc|spi_driver|Add5~43\,
	combout => \adc|spi_driver|Add5~44_combout\,
	cout => \adc|spi_driver|Add5~45\);

-- Location: LCCOMB_X39_Y29_N6
\adc|spi_driver|count~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~13_combout\ = (!\adc|spi_driver|count[3]~0_combout\ & \adc|spi_driver|Add5~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc|spi_driver|count[3]~0_combout\,
	datac => \adc|spi_driver|Add5~44_combout\,
	combout => \adc|spi_driver|count~13_combout\);

-- Location: FF_X39_Y29_N7
\adc|spi_driver|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|count~13_combout\,
	ena => \adc|spi_driver|count[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|count\(22));

-- Location: LCCOMB_X40_Y29_N14
\adc|spi_driver|Add5~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Add5~46_combout\ = (\adc|spi_driver|count\(23) & (!\adc|spi_driver|Add5~45\)) # (!\adc|spi_driver|count\(23) & ((\adc|spi_driver|Add5~45\) # (GND)))
-- \adc|spi_driver|Add5~47\ = CARRY((!\adc|spi_driver|Add5~45\) # (!\adc|spi_driver|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc|spi_driver|count\(23),
	datad => VCC,
	cin => \adc|spi_driver|Add5~45\,
	combout => \adc|spi_driver|Add5~46_combout\,
	cout => \adc|spi_driver|Add5~47\);

-- Location: LCCOMB_X39_Y29_N30
\adc|spi_driver|count~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~12_combout\ = (!\adc|spi_driver|count[3]~0_combout\ & \adc|spi_driver|Add5~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc|spi_driver|count[3]~0_combout\,
	datac => \adc|spi_driver|Add5~46_combout\,
	combout => \adc|spi_driver|count~12_combout\);

-- Location: FF_X39_Y29_N31
\adc|spi_driver|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|count~12_combout\,
	ena => \adc|spi_driver|count[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|count\(23));

-- Location: LCCOMB_X40_Y29_N16
\adc|spi_driver|Add5~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Add5~48_combout\ = (\adc|spi_driver|count\(24) & (\adc|spi_driver|Add5~47\ $ (GND))) # (!\adc|spi_driver|count\(24) & (!\adc|spi_driver|Add5~47\ & VCC))
-- \adc|spi_driver|Add5~49\ = CARRY((\adc|spi_driver|count\(24) & !\adc|spi_driver|Add5~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc|spi_driver|count\(24),
	datad => VCC,
	cin => \adc|spi_driver|Add5~47\,
	combout => \adc|spi_driver|Add5~48_combout\,
	cout => \adc|spi_driver|Add5~49\);

-- Location: LCCOMB_X39_Y29_N24
\adc|spi_driver|count~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~11_combout\ = (!\adc|spi_driver|count[3]~0_combout\ & \adc|spi_driver|Add5~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc|spi_driver|count[3]~0_combout\,
	datad => \adc|spi_driver|Add5~48_combout\,
	combout => \adc|spi_driver|count~11_combout\);

-- Location: FF_X39_Y29_N25
\adc|spi_driver|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|count~11_combout\,
	ena => \adc|spi_driver|count[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|count\(24));

-- Location: LCCOMB_X40_Y29_N18
\adc|spi_driver|Add5~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Add5~50_combout\ = (\adc|spi_driver|count\(25) & (!\adc|spi_driver|Add5~49\)) # (!\adc|spi_driver|count\(25) & ((\adc|spi_driver|Add5~49\) # (GND)))
-- \adc|spi_driver|Add5~51\ = CARRY((!\adc|spi_driver|Add5~49\) # (!\adc|spi_driver|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc|spi_driver|count\(25),
	datad => VCC,
	cin => \adc|spi_driver|Add5~49\,
	combout => \adc|spi_driver|Add5~50_combout\,
	cout => \adc|spi_driver|Add5~51\);

-- Location: LCCOMB_X39_Y29_N22
\adc|spi_driver|count~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~10_combout\ = (!\adc|spi_driver|count[3]~0_combout\ & \adc|spi_driver|Add5~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc|spi_driver|count[3]~0_combout\,
	datad => \adc|spi_driver|Add5~50_combout\,
	combout => \adc|spi_driver|count~10_combout\);

-- Location: FF_X39_Y29_N23
\adc|spi_driver|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|count~10_combout\,
	ena => \adc|spi_driver|count[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|count\(25));

-- Location: LCCOMB_X40_Y29_N20
\adc|spi_driver|Add5~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Add5~52_combout\ = (\adc|spi_driver|count\(26) & (\adc|spi_driver|Add5~51\ $ (GND))) # (!\adc|spi_driver|count\(26) & (!\adc|spi_driver|Add5~51\ & VCC))
-- \adc|spi_driver|Add5~53\ = CARRY((\adc|spi_driver|count\(26) & !\adc|spi_driver|Add5~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc|spi_driver|count\(26),
	datad => VCC,
	cin => \adc|spi_driver|Add5~51\,
	combout => \adc|spi_driver|Add5~52_combout\,
	cout => \adc|spi_driver|Add5~53\);

-- Location: LCCOMB_X39_Y29_N20
\adc|spi_driver|count~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~9_combout\ = (!\adc|spi_driver|count[3]~0_combout\ & \adc|spi_driver|Add5~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc|spi_driver|count[3]~0_combout\,
	datac => \adc|spi_driver|Add5~52_combout\,
	combout => \adc|spi_driver|count~9_combout\);

-- Location: FF_X39_Y29_N21
\adc|spi_driver|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|count~9_combout\,
	ena => \adc|spi_driver|count[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|count\(26));

-- Location: LCCOMB_X39_Y29_N12
\adc|spi_driver|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Equal1~2_combout\ = (!\adc|spi_driver|count\(23) & (!\adc|spi_driver|count\(26) & (!\adc|spi_driver|count\(25) & !\adc|spi_driver|count\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|count\(23),
	datab => \adc|spi_driver|count\(26),
	datac => \adc|spi_driver|count\(25),
	datad => \adc|spi_driver|count\(24),
	combout => \adc|spi_driver|Equal1~2_combout\);

-- Location: LCCOMB_X40_Y29_N22
\adc|spi_driver|Add5~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Add5~54_combout\ = (\adc|spi_driver|count\(27) & (!\adc|spi_driver|Add5~53\)) # (!\adc|spi_driver|count\(27) & ((\adc|spi_driver|Add5~53\) # (GND)))
-- \adc|spi_driver|Add5~55\ = CARRY((!\adc|spi_driver|Add5~53\) # (!\adc|spi_driver|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc|spi_driver|count\(27),
	datad => VCC,
	cin => \adc|spi_driver|Add5~53\,
	combout => \adc|spi_driver|Add5~54_combout\,
	cout => \adc|spi_driver|Add5~55\);

-- Location: LCCOMB_X39_Y29_N4
\adc|spi_driver|count~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~8_combout\ = (!\adc|spi_driver|count[3]~0_combout\ & \adc|spi_driver|Add5~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc|spi_driver|count[3]~0_combout\,
	datad => \adc|spi_driver|Add5~54_combout\,
	combout => \adc|spi_driver|count~8_combout\);

-- Location: FF_X39_Y29_N5
\adc|spi_driver|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|count~8_combout\,
	ena => \adc|spi_driver|count[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|count\(27));

-- Location: LCCOMB_X40_Y29_N24
\adc|spi_driver|Add5~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Add5~56_combout\ = (\adc|spi_driver|count\(28) & (\adc|spi_driver|Add5~55\ $ (GND))) # (!\adc|spi_driver|count\(28) & (!\adc|spi_driver|Add5~55\ & VCC))
-- \adc|spi_driver|Add5~57\ = CARRY((\adc|spi_driver|count\(28) & !\adc|spi_driver|Add5~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc|spi_driver|count\(28),
	datad => VCC,
	cin => \adc|spi_driver|Add5~55\,
	combout => \adc|spi_driver|Add5~56_combout\,
	cout => \adc|spi_driver|Add5~57\);

-- Location: LCCOMB_X39_Y29_N18
\adc|spi_driver|count~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~7_combout\ = (!\adc|spi_driver|count[3]~0_combout\ & \adc|spi_driver|Add5~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc|spi_driver|count[3]~0_combout\,
	datad => \adc|spi_driver|Add5~56_combout\,
	combout => \adc|spi_driver|count~7_combout\);

-- Location: FF_X39_Y29_N19
\adc|spi_driver|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|count~7_combout\,
	ena => \adc|spi_driver|count[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|count\(28));

-- Location: LCCOMB_X40_Y29_N26
\adc|spi_driver|Add5~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Add5~58_combout\ = (\adc|spi_driver|count\(29) & (!\adc|spi_driver|Add5~57\)) # (!\adc|spi_driver|count\(29) & ((\adc|spi_driver|Add5~57\) # (GND)))
-- \adc|spi_driver|Add5~59\ = CARRY((!\adc|spi_driver|Add5~57\) # (!\adc|spi_driver|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc|spi_driver|count\(29),
	datad => VCC,
	cin => \adc|spi_driver|Add5~57\,
	combout => \adc|spi_driver|Add5~58_combout\,
	cout => \adc|spi_driver|Add5~59\);

-- Location: LCCOMB_X38_Y29_N20
\adc|spi_driver|count~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~6_combout\ = (!\adc|spi_driver|count[3]~0_combout\ & \adc|spi_driver|Add5~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|count[3]~0_combout\,
	datad => \adc|spi_driver|Add5~58_combout\,
	combout => \adc|spi_driver|count~6_combout\);

-- Location: FF_X38_Y29_N21
\adc|spi_driver|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|count~6_combout\,
	ena => \adc|spi_driver|count[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|count\(29));

-- Location: LCCOMB_X40_Y29_N28
\adc|spi_driver|Add5~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Add5~60_combout\ = (\adc|spi_driver|count\(30) & (\adc|spi_driver|Add5~59\ $ (GND))) # (!\adc|spi_driver|count\(30) & (!\adc|spi_driver|Add5~59\ & VCC))
-- \adc|spi_driver|Add5~61\ = CARRY((\adc|spi_driver|count\(30) & !\adc|spi_driver|Add5~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|count\(30),
	datad => VCC,
	cin => \adc|spi_driver|Add5~59\,
	combout => \adc|spi_driver|Add5~60_combout\,
	cout => \adc|spi_driver|Add5~61\);

-- Location: LCCOMB_X39_Y29_N0
\adc|spi_driver|count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~5_combout\ = (!\adc|spi_driver|count[3]~0_combout\ & \adc|spi_driver|Add5~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc|spi_driver|count[3]~0_combout\,
	datad => \adc|spi_driver|Add5~60_combout\,
	combout => \adc|spi_driver|count~5_combout\);

-- Location: FF_X39_Y29_N1
\adc|spi_driver|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|count~5_combout\,
	ena => \adc|spi_driver|count[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|count\(30));

-- Location: LCCOMB_X39_Y29_N14
\adc|spi_driver|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Equal1~1_combout\ = (!\adc|spi_driver|count\(29) & (!\adc|spi_driver|count\(28) & (!\adc|spi_driver|count\(27) & !\adc|spi_driver|count\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|count\(29),
	datab => \adc|spi_driver|count\(28),
	datac => \adc|spi_driver|count\(27),
	datad => \adc|spi_driver|count\(30),
	combout => \adc|spi_driver|Equal1~1_combout\);

-- Location: LCCOMB_X39_Y29_N8
\adc|spi_driver|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Equal1~3_combout\ = (!\adc|spi_driver|count\(22) & (!\adc|spi_driver|count\(21) & (!\adc|spi_driver|count\(20) & !\adc|spi_driver|count\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|count\(22),
	datab => \adc|spi_driver|count\(21),
	datac => \adc|spi_driver|count\(20),
	datad => \adc|spi_driver|count\(19),
	combout => \adc|spi_driver|Equal1~3_combout\);

-- Location: LCCOMB_X36_Y29_N18
\adc|spi_driver|clk_ratio[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|clk_ratio[0]~0_combout\ = (\adc|spi_driver|clk_ratio\(0)) # ((\adc|reset~q\ & (\adc|enable~q\ & !\adc|spi_driver|state~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|reset~q\,
	datab => \adc|enable~q\,
	datac => \adc|spi_driver|clk_ratio\(0),
	datad => \adc|spi_driver|state~q\,
	combout => \adc|spi_driver|clk_ratio[0]~0_combout\);

-- Location: FF_X36_Y29_N19
\adc|spi_driver|clk_ratio[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|clk_ratio[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|clk_ratio\(0));

-- Location: LCCOMB_X40_Y29_N30
\adc|spi_driver|Add5~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Add5~62_combout\ = \adc|spi_driver|Add5~61\ $ (!\adc|spi_driver|count\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \adc|spi_driver|count\(31),
	cin => \adc|spi_driver|Add5~61\,
	combout => \adc|spi_driver|Add5~62_combout\);

-- Location: LCCOMB_X39_Y29_N28
\adc|spi_driver|count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~4_combout\ = (\adc|spi_driver|count[3]~0_combout\) # (!\adc|spi_driver|Add5~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc|spi_driver|count[3]~0_combout\,
	datac => \adc|spi_driver|Add5~62_combout\,
	combout => \adc|spi_driver|count~4_combout\);

-- Location: FF_X39_Y29_N29
\adc|spi_driver|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|count~4_combout\,
	ena => \adc|spi_driver|count[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|count\(31));

-- Location: LCCOMB_X39_Y29_N10
\adc|spi_driver|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Equal1~0_combout\ = (\adc|spi_driver|count\(0) & (\adc|spi_driver|count\(4) & (\adc|spi_driver|clk_ratio\(0) & \adc|spi_driver|count\(31)))) # (!\adc|spi_driver|count\(0) & (!\adc|spi_driver|count\(4) & (!\adc|spi_driver|clk_ratio\(0) & 
-- !\adc|spi_driver|count\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|count\(0),
	datab => \adc|spi_driver|count\(4),
	datac => \adc|spi_driver|clk_ratio\(0),
	datad => \adc|spi_driver|count\(31),
	combout => \adc|spi_driver|Equal1~0_combout\);

-- Location: LCCOMB_X39_Y29_N2
\adc|spi_driver|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Equal1~4_combout\ = (\adc|spi_driver|Equal1~2_combout\ & (\adc|spi_driver|Equal1~1_combout\ & (\adc|spi_driver|Equal1~3_combout\ & \adc|spi_driver|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|Equal1~2_combout\,
	datab => \adc|spi_driver|Equal1~1_combout\,
	datac => \adc|spi_driver|Equal1~3_combout\,
	datad => \adc|spi_driver|Equal1~0_combout\,
	combout => \adc|spi_driver|Equal1~4_combout\);

-- Location: LCCOMB_X39_Y30_N8
\adc|spi_driver|Equal1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Equal1~10_combout\ = (\adc|spi_driver|Equal1~4_combout\ & (\adc|spi_driver|Equal1~9_combout\ & !\adc|spi_driver|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc|spi_driver|Equal1~4_combout\,
	datac => \adc|spi_driver|Equal1~9_combout\,
	datad => \adc|spi_driver|count\(1),
	combout => \adc|spi_driver|Equal1~10_combout\);

-- Location: LCCOMB_X37_Y30_N4
\adc|spi_driver|assert_data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|assert_data~0_combout\ = (\adc|spi_driver|assert_data~q\ & ((!\adc|spi_driver|clk_toggles[5]~10_combout\) # (!\adc|spi_driver|state~q\))) # (!\adc|spi_driver|assert_data~q\ & ((\adc|spi_driver|clk_toggles[5]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc|spi_driver|state~q\,
	datac => \adc|spi_driver|assert_data~q\,
	datad => \adc|spi_driver|clk_toggles[5]~10_combout\,
	combout => \adc|spi_driver|assert_data~0_combout\);

-- Location: FF_X37_Y30_N5
\adc|spi_driver|assert_data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|assert_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|assert_data~q\);

-- Location: LCCOMB_X37_Y30_N22
\adc|spi_driver|mosi~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|mosi~1_combout\ = (((!\adc|spi_driver|clk_toggles\(1)) # (!\adc|spi_driver|clk_toggles\(0))) # (!\adc|spi_driver|clk_toggles\(3))) # (!\adc|spi_driver|clk_toggles\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|clk_toggles\(2),
	datab => \adc|spi_driver|clk_toggles\(3),
	datac => \adc|spi_driver|clk_toggles\(0),
	datad => \adc|spi_driver|clk_toggles\(1),
	combout => \adc|spi_driver|mosi~1_combout\);

-- Location: LCCOMB_X38_Y30_N6
\adc|spi_driver|mosi~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|mosi~2_combout\ = (!\adc|spi_driver|clk_toggles\(5) & (\adc|spi_driver|assert_data~q\ & ((\adc|spi_driver|mosi~1_combout\) # (!\adc|spi_driver|clk_toggles\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|clk_toggles\(4),
	datab => \adc|spi_driver|clk_toggles\(5),
	datac => \adc|spi_driver|assert_data~q\,
	datad => \adc|spi_driver|mosi~1_combout\,
	combout => \adc|spi_driver|mosi~2_combout\);

-- Location: LCCOMB_X39_Y30_N4
\adc|spi_driver|mosi~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|mosi~3_combout\ = (\adc|spi_driver|state~q\ & ((\adc|spi_driver|mosi~en_q\) # ((\adc|spi_driver|mosi~2_combout\ & \adc|spi_driver|clk_ratio\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|mosi~en_q\,
	datab => \adc|spi_driver|mosi~2_combout\,
	datac => \adc|spi_driver|clk_ratio\(0),
	datad => \adc|spi_driver|state~q\,
	combout => \adc|spi_driver|mosi~3_combout\);

-- Location: LCCOMB_X39_Y30_N30
\adc|spi_driver|mosi~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|mosi~4_combout\ = (\adc|spi_driver|mosi~3_combout\ & ((\adc|spi_driver|Equal1~10_combout\ & ((\adc|spi_driver|Equal3~1_combout\))) # (!\adc|spi_driver|Equal1~10_combout\ & (\adc|spi_driver|mosi~en_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|mosi~en_q\,
	datab => \adc|spi_driver|Equal1~10_combout\,
	datac => \adc|spi_driver|mosi~3_combout\,
	datad => \adc|spi_driver|Equal3~1_combout\,
	combout => \adc|spi_driver|mosi~4_combout\);

-- Location: LCCOMB_X37_Y31_N0
\adc|spi_driver|mosi~enfeeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|mosi~enfeeder_combout\ = \adc|spi_driver|mosi~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc|spi_driver|mosi~4_combout\,
	combout => \adc|spi_driver|mosi~enfeeder_combout\);

-- Location: FF_X37_Y31_N1
\adc|spi_driver|mosi~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|mosi~enfeeder_combout\,
	clrn => \adc|reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|mosi~en_q\);

-- Location: LCCOMB_X37_Y25_N18
\dac|i2c_master_inst|bit_cnt[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|bit_cnt[0]~5_combout\ = !\dac|i2c_master_inst|bit_cnt\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dac|i2c_master_inst|bit_cnt\(0),
	combout => \dac|i2c_master_inst|bit_cnt[0]~5_combout\);

-- Location: FF_X35_Y24_N19
\dac|i2c_master_inst|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \dac|i2c_master_inst|count~2_combout\,
	clrn => \ALT_INV_RST~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|i2c_master_inst|count\(6));

-- Location: FF_X35_Y24_N13
\dac|i2c_master_inst|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|i2c_master_inst|count~0_combout\,
	clrn => \ALT_INV_RST~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|i2c_master_inst|count\(2));

-- Location: LCCOMB_X35_Y24_N16
\dac|i2c_master_inst|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Add0~2_combout\ = (\dac|i2c_master_inst|count\(1) & (!\dac|i2c_master_inst|Add0~1\)) # (!\dac|i2c_master_inst|count\(1) & ((\dac|i2c_master_inst|Add0~1\) # (GND)))
-- \dac|i2c_master_inst|Add0~3\ = CARRY((!\dac|i2c_master_inst|Add0~1\) # (!\dac|i2c_master_inst|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|count\(1),
	datad => VCC,
	cin => \dac|i2c_master_inst|Add0~1\,
	combout => \dac|i2c_master_inst|Add0~2_combout\,
	cout => \dac|i2c_master_inst|Add0~3\);

-- Location: LCCOMB_X35_Y24_N18
\dac|i2c_master_inst|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Add0~4_combout\ = (\dac|i2c_master_inst|count\(2) & (\dac|i2c_master_inst|Add0~3\ $ (GND))) # (!\dac|i2c_master_inst|count\(2) & (!\dac|i2c_master_inst|Add0~3\ & VCC))
-- \dac|i2c_master_inst|Add0~5\ = CARRY((\dac|i2c_master_inst|count\(2) & !\dac|i2c_master_inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|count\(2),
	datad => VCC,
	cin => \dac|i2c_master_inst|Add0~3\,
	combout => \dac|i2c_master_inst|Add0~4_combout\,
	cout => \dac|i2c_master_inst|Add0~5\);

-- Location: LCCOMB_X35_Y24_N20
\dac|i2c_master_inst|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Add0~6_combout\ = (\dac|i2c_master_inst|count\(3) & (!\dac|i2c_master_inst|Add0~5\)) # (!\dac|i2c_master_inst|count\(3) & ((\dac|i2c_master_inst|Add0~5\) # (GND)))
-- \dac|i2c_master_inst|Add0~7\ = CARRY((!\dac|i2c_master_inst|Add0~5\) # (!\dac|i2c_master_inst|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|count\(3),
	datad => VCC,
	cin => \dac|i2c_master_inst|Add0~5\,
	combout => \dac|i2c_master_inst|Add0~6_combout\,
	cout => \dac|i2c_master_inst|Add0~7\);

-- Location: LCCOMB_X36_Y24_N10
\dac|i2c_master_inst|count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|count~1_combout\ = (\dac|i2c_master_inst|Add0~6_combout\ & !\dac|i2c_master_inst|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dac|i2c_master_inst|Add0~6_combout\,
	datad => \dac|i2c_master_inst|Equal0~1_combout\,
	combout => \dac|i2c_master_inst|count~1_combout\);

-- Location: FF_X36_Y25_N17
\dac|i2c_master_inst|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \dac|i2c_master_inst|count~1_combout\,
	clrn => \ALT_INV_RST~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|i2c_master_inst|count\(3));

-- Location: LCCOMB_X35_Y24_N22
\dac|i2c_master_inst|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Add0~8_combout\ = (\dac|i2c_master_inst|count\(4) & (\dac|i2c_master_inst|Add0~7\ $ (GND))) # (!\dac|i2c_master_inst|count\(4) & (!\dac|i2c_master_inst|Add0~7\ & VCC))
-- \dac|i2c_master_inst|Add0~9\ = CARRY((\dac|i2c_master_inst|count\(4) & !\dac|i2c_master_inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|count\(4),
	datad => VCC,
	cin => \dac|i2c_master_inst|Add0~7\,
	combout => \dac|i2c_master_inst|Add0~8_combout\,
	cout => \dac|i2c_master_inst|Add0~9\);

-- Location: LCCOMB_X35_Y24_N30
\dac|i2c_master_inst|count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|count~5_combout\ = (\dac|i2c_master_inst|Add0~8_combout\ & !\dac|i2c_master_inst|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dac|i2c_master_inst|Add0~8_combout\,
	datad => \dac|i2c_master_inst|Equal0~1_combout\,
	combout => \dac|i2c_master_inst|count~5_combout\);

-- Location: FF_X35_Y24_N31
\dac|i2c_master_inst|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|i2c_master_inst|count~5_combout\,
	clrn => \ALT_INV_RST~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|i2c_master_inst|count\(4));

-- Location: LCCOMB_X35_Y24_N24
\dac|i2c_master_inst|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Add0~10_combout\ = (\dac|i2c_master_inst|count\(5) & (!\dac|i2c_master_inst|Add0~9\)) # (!\dac|i2c_master_inst|count\(5) & ((\dac|i2c_master_inst|Add0~9\) # (GND)))
-- \dac|i2c_master_inst|Add0~11\ = CARRY((!\dac|i2c_master_inst|Add0~9\) # (!\dac|i2c_master_inst|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dac|i2c_master_inst|count\(5),
	datad => VCC,
	cin => \dac|i2c_master_inst|Add0~9\,
	combout => \dac|i2c_master_inst|Add0~10_combout\,
	cout => \dac|i2c_master_inst|Add0~11\);

-- Location: LCCOMB_X35_Y24_N0
\dac|i2c_master_inst|count~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|count~6_combout\ = (!\dac|i2c_master_inst|Equal0~1_combout\ & \dac|i2c_master_inst|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dac|i2c_master_inst|Equal0~1_combout\,
	datad => \dac|i2c_master_inst|Add0~10_combout\,
	combout => \dac|i2c_master_inst|count~6_combout\);

-- Location: FF_X35_Y24_N1
\dac|i2c_master_inst|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|i2c_master_inst|count~6_combout\,
	clrn => \ALT_INV_RST~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|i2c_master_inst|count\(5));

-- Location: LCCOMB_X35_Y24_N26
\dac|i2c_master_inst|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Add0~12_combout\ = \dac|i2c_master_inst|Add0~11\ $ (!\dac|i2c_master_inst|count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \dac|i2c_master_inst|count\(6),
	cin => \dac|i2c_master_inst|Add0~11\,
	combout => \dac|i2c_master_inst|Add0~12_combout\);

-- Location: LCCOMB_X35_Y24_N8
\dac|i2c_master_inst|count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|count~2_combout\ = (\dac|i2c_master_inst|Add0~12_combout\ & !\dac|i2c_master_inst|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dac|i2c_master_inst|Add0~12_combout\,
	datad => \dac|i2c_master_inst|Equal0~1_combout\,
	combout => \dac|i2c_master_inst|count~2_combout\);

-- Location: LCCOMB_X35_Y24_N4
\dac|i2c_master_inst|count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|count~4_combout\ = (\dac|i2c_master_inst|Add0~0_combout\ & !\dac|i2c_master_inst|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dac|i2c_master_inst|Add0~0_combout\,
	datad => \dac|i2c_master_inst|Equal0~1_combout\,
	combout => \dac|i2c_master_inst|count~4_combout\);

-- Location: FF_X35_Y24_N5
\dac|i2c_master_inst|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|i2c_master_inst|count~4_combout\,
	clrn => \ALT_INV_RST~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|i2c_master_inst|count\(0));

-- Location: LCCOMB_X35_Y24_N14
\dac|i2c_master_inst|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Add0~0_combout\ = (\dac|i2c_master_inst|stretch~q\ & (\dac|i2c_master_inst|count\(0) & VCC)) # (!\dac|i2c_master_inst|stretch~q\ & (\dac|i2c_master_inst|count\(0) $ (VCC)))
-- \dac|i2c_master_inst|Add0~1\ = CARRY((!\dac|i2c_master_inst|stretch~q\ & \dac|i2c_master_inst|count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|stretch~q\,
	datab => \dac|i2c_master_inst|count\(0),
	datad => VCC,
	combout => \dac|i2c_master_inst|Add0~0_combout\,
	cout => \dac|i2c_master_inst|Add0~1\);

-- Location: LCCOMB_X36_Y24_N22
\dac|i2c_master_inst|process_0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|process_0~5_combout\ = (\dac|i2c_master_inst|Add0~2_combout\) # ((!\dac|i2c_master_inst|Add0~10_combout\ & \dac|i2c_master_inst|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dac|i2c_master_inst|Add0~10_combout\,
	datac => \dac|i2c_master_inst|Add0~2_combout\,
	datad => \dac|i2c_master_inst|Add0~0_combout\,
	combout => \dac|i2c_master_inst|process_0~5_combout\);

-- Location: LCCOMB_X36_Y24_N28
\dac|i2c_master_inst|process_0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|process_0~4_combout\ = (\dac|i2c_master_inst|Add0~6_combout\ & (!\dac|i2c_master_inst|Equal0~1_combout\ & (\dac|i2c_master_inst|Add0~4_combout\ & \dac|i2c_master_inst|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|Add0~6_combout\,
	datab => \dac|i2c_master_inst|Equal0~1_combout\,
	datac => \dac|i2c_master_inst|Add0~4_combout\,
	datad => \dac|i2c_master_inst|Add0~8_combout\,
	combout => \dac|i2c_master_inst|process_0~4_combout\);

-- Location: LCCOMB_X36_Y24_N24
\dac|i2c_master_inst|process_0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|process_0~6_combout\ = (\dac|i2c_master_inst|count~2_combout\ & ((\dac|i2c_master_inst|Add0~10_combout\) # ((\dac|i2c_master_inst|process_0~5_combout\ & \dac|i2c_master_inst|process_0~4_combout\)))) # 
-- (!\dac|i2c_master_inst|count~2_combout\ & (((!\dac|i2c_master_inst|process_0~4_combout\) # (!\dac|i2c_master_inst|process_0~5_combout\)) # (!\dac|i2c_master_inst|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|count~2_combout\,
	datab => \dac|i2c_master_inst|Add0~10_combout\,
	datac => \dac|i2c_master_inst|process_0~5_combout\,
	datad => \dac|i2c_master_inst|process_0~4_combout\,
	combout => \dac|i2c_master_inst|process_0~6_combout\);

-- Location: IOIBUF_X47_Y34_N22
\SCL~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SCL,
	o => \SCL~input_o\);

-- Location: LCCOMB_X36_Y26_N20
\dac|i2c_master_inst|stretch~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|stretch~0_combout\ = (\dac|i2c_master_inst|process_0~6_combout\ & (\dac|i2c_master_inst|stretch~q\)) # (!\dac|i2c_master_inst|process_0~6_combout\ & ((!\SCL~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|process_0~6_combout\,
	datab => \dac|i2c_master_inst|stretch~q\,
	datad => \SCL~input_o\,
	combout => \dac|i2c_master_inst|stretch~0_combout\);

-- Location: FF_X36_Y25_N23
\dac|i2c_master_inst|stretch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \dac|i2c_master_inst|stretch~0_combout\,
	clrn => \ALT_INV_RST~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|i2c_master_inst|stretch~q\);

-- Location: LCCOMB_X35_Y24_N6
\dac|i2c_master_inst|count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|count~3_combout\ = (!\dac|i2c_master_inst|Equal0~1_combout\ & \dac|i2c_master_inst|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dac|i2c_master_inst|Equal0~1_combout\,
	datad => \dac|i2c_master_inst|Add0~2_combout\,
	combout => \dac|i2c_master_inst|count~3_combout\);

-- Location: FF_X35_Y24_N7
\dac|i2c_master_inst|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|i2c_master_inst|count~3_combout\,
	clrn => \ALT_INV_RST~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|i2c_master_inst|count\(1));

-- Location: LCCOMB_X35_Y24_N2
\dac|i2c_master_inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Equal0~0_combout\ = (\dac|i2c_master_inst|count\(3) & (\dac|i2c_master_inst|count\(5) & (\dac|i2c_master_inst|count\(4) & \dac|i2c_master_inst|count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|count\(3),
	datab => \dac|i2c_master_inst|count\(5),
	datac => \dac|i2c_master_inst|count\(4),
	datad => \dac|i2c_master_inst|count\(6),
	combout => \dac|i2c_master_inst|Equal0~0_combout\);

-- Location: LCCOMB_X35_Y24_N28
\dac|i2c_master_inst|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Equal0~1_combout\ = (\dac|i2c_master_inst|count\(1) & (\dac|i2c_master_inst|Equal0~0_combout\ & (\dac|i2c_master_inst|count\(0) & !\dac|i2c_master_inst|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|count\(1),
	datab => \dac|i2c_master_inst|Equal0~0_combout\,
	datac => \dac|i2c_master_inst|count\(0),
	datad => \dac|i2c_master_inst|count\(2),
	combout => \dac|i2c_master_inst|Equal0~1_combout\);

-- Location: LCCOMB_X35_Y24_N12
\dac|i2c_master_inst|count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|count~0_combout\ = (!\dac|i2c_master_inst|Equal0~1_combout\ & \dac|i2c_master_inst|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dac|i2c_master_inst|Equal0~1_combout\,
	datac => \dac|i2c_master_inst|Add0~4_combout\,
	combout => \dac|i2c_master_inst|count~0_combout\);

-- Location: LCCOMB_X36_Y24_N8
\dac|i2c_master_inst|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|LessThan1~0_combout\ = (\dac|i2c_master_inst|Add0~8_combout\ & (\dac|i2c_master_inst|Add0~2_combout\ & \dac|i2c_master_inst|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dac|i2c_master_inst|Add0~8_combout\,
	datac => \dac|i2c_master_inst|Add0~2_combout\,
	datad => \dac|i2c_master_inst|Add0~0_combout\,
	combout => \dac|i2c_master_inst|LessThan1~0_combout\);

-- Location: LCCOMB_X36_Y24_N12
\dac|i2c_master_inst|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|process_0~0_combout\ = (!\dac|i2c_master_inst|Add0~10_combout\ & (((!\dac|i2c_master_inst|count~1_combout\) # (!\dac|i2c_master_inst|LessThan1~0_combout\)) # (!\dac|i2c_master_inst|count~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|count~0_combout\,
	datab => \dac|i2c_master_inst|Add0~10_combout\,
	datac => \dac|i2c_master_inst|LessThan1~0_combout\,
	datad => \dac|i2c_master_inst|count~1_combout\,
	combout => \dac|i2c_master_inst|process_0~0_combout\);

-- Location: LCCOMB_X36_Y24_N26
\dac|i2c_master_inst|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|process_0~1_combout\ = (\dac|i2c_master_inst|Add0~4_combout\ & (\dac|i2c_master_inst|Add0~8_combout\ & (\dac|i2c_master_inst|Add0~2_combout\ & \dac|i2c_master_inst|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|Add0~4_combout\,
	datab => \dac|i2c_master_inst|Add0~8_combout\,
	datac => \dac|i2c_master_inst|Add0~2_combout\,
	datad => \dac|i2c_master_inst|Add0~10_combout\,
	combout => \dac|i2c_master_inst|process_0~1_combout\);

-- Location: LCCOMB_X36_Y24_N20
\dac|i2c_master_inst|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|process_0~2_combout\ = (\dac|i2c_master_inst|Add0~6_combout\ & (\dac|i2c_master_inst|process_0~1_combout\ & !\dac|i2c_master_inst|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dac|i2c_master_inst|Add0~6_combout\,
	datac => \dac|i2c_master_inst|process_0~1_combout\,
	datad => \dac|i2c_master_inst|Equal0~1_combout\,
	combout => \dac|i2c_master_inst|process_0~2_combout\);

-- Location: LCCOMB_X36_Y24_N18
\dac|i2c_master_inst|process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|process_0~3_combout\ = (\dac|i2c_master_inst|process_0~0_combout\) # ((\dac|i2c_master_inst|process_0~2_combout\) # ((\dac|i2c_master_inst|Add0~12_combout\) # (\dac|i2c_master_inst|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|process_0~0_combout\,
	datab => \dac|i2c_master_inst|process_0~2_combout\,
	datac => \dac|i2c_master_inst|Add0~12_combout\,
	datad => \dac|i2c_master_inst|Equal0~1_combout\,
	combout => \dac|i2c_master_inst|process_0~3_combout\);

-- Location: LCCOMB_X36_Y24_N30
\dac|i2c_master_inst|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|LessThan1~1_combout\ = (\dac|i2c_master_inst|Add0~4_combout\ & (!\dac|i2c_master_inst|Equal0~1_combout\ & (\dac|i2c_master_inst|LessThan1~0_combout\ & \dac|i2c_master_inst|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|Add0~4_combout\,
	datab => \dac|i2c_master_inst|Equal0~1_combout\,
	datac => \dac|i2c_master_inst|LessThan1~0_combout\,
	datad => \dac|i2c_master_inst|Add0~6_combout\,
	combout => \dac|i2c_master_inst|LessThan1~1_combout\);

-- Location: LCCOMB_X36_Y24_N4
\dac|i2c_master_inst|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|LessThan1~2_combout\ = (!\dac|i2c_master_inst|Equal0~1_combout\ & ((\dac|i2c_master_inst|LessThan1~1_combout\) # ((\dac|i2c_master_inst|Add0~12_combout\) # (\dac|i2c_master_inst|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|LessThan1~1_combout\,
	datab => \dac|i2c_master_inst|Equal0~1_combout\,
	datac => \dac|i2c_master_inst|Add0~12_combout\,
	datad => \dac|i2c_master_inst|Add0~10_combout\,
	combout => \dac|i2c_master_inst|LessThan1~2_combout\);

-- Location: LCCOMB_X36_Y24_N14
\dac|i2c_master_inst|data_clk~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|data_clk~0_combout\ = (\dac|i2c_master_inst|LessThan1~2_combout\ & ((!\dac|i2c_master_inst|process_0~6_combout\) # (!\dac|i2c_master_inst|process_0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dac|i2c_master_inst|process_0~3_combout\,
	datac => \dac|i2c_master_inst|LessThan1~2_combout\,
	datad => \dac|i2c_master_inst|process_0~6_combout\,
	combout => \dac|i2c_master_inst|data_clk~0_combout\);

-- Location: FF_X36_Y24_N15
\dac|i2c_master_inst|data_clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|i2c_master_inst|data_clk~0_combout\,
	ena => \ALT_INV_RST~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|i2c_master_inst|data_clk~q\);

-- Location: FF_X39_Y25_N29
\dac|i2c_master_inst|data_clk_prev\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \dac|i2c_master_inst|data_clk~q\,
	sload => VCC,
	ena => \ALT_INV_RST~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|i2c_master_inst|data_clk_prev~q\);

-- Location: LCCOMB_X37_Y25_N28
\dac|i2c_master_inst|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Add1~0_combout\ = \dac|i2c_master_inst|bit_cnt\(2) $ (((\dac|i2c_master_inst|bit_cnt\(1) & \dac|i2c_master_inst|bit_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|bit_cnt\(1),
	datac => \dac|i2c_master_inst|bit_cnt\(2),
	datad => \dac|i2c_master_inst|bit_cnt\(0),
	combout => \dac|i2c_master_inst|Add1~0_combout\);

-- Location: FF_X37_Y25_N29
\dac|i2c_master_inst|bit_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|i2c_master_inst|Add1~0_combout\,
	clrn => \ALT_INV_RST~q\,
	ena => \dac|i2c_master_inst|bit_cnt[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|i2c_master_inst|bit_cnt\(2));

-- Location: LCCOMB_X36_Y27_N18
\dac|i2c_master_inst|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Equal1~0_combout\ = (\dac|i2c_master_inst|bit_cnt\(1) & (\dac|i2c_master_inst|bit_cnt\(0) & \dac|i2c_master_inst|bit_cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dac|i2c_master_inst|bit_cnt\(1),
	datac => \dac|i2c_master_inst|bit_cnt\(0),
	datad => \dac|i2c_master_inst|bit_cnt\(2),
	combout => \dac|i2c_master_inst|Equal1~0_combout\);

-- Location: LCCOMB_X37_Y25_N2
\dac|i2c_master_inst|process_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|process_1~0_combout\ = (\dac|i2c_master_inst|data_clk~q\ & !\dac|i2c_master_inst|data_clk_prev~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dac|i2c_master_inst|data_clk~q\,
	datac => \dac|i2c_master_inst|data_clk_prev~q\,
	combout => \dac|i2c_master_inst|process_1~0_combout\);

-- Location: FF_X37_Y25_N23
\dac|i2c_master_inst|state.mstr_ack\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|i2c_master_inst|state~13_combout\,
	clrn => \ALT_INV_RST~q\,
	ena => \dac|i2c_master_inst|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|i2c_master_inst|state.mstr_ack~q\);

-- Location: FF_X36_Y25_N29
\dac|i2c_master_inst|state.start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|i2c_master_inst|Selector18~0_combout\,
	clrn => \ALT_INV_RST~q\,
	ena => \dac|i2c_master_inst|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|i2c_master_inst|state.start~q\);

-- Location: LCCOMB_X36_Y25_N20
\dac|i2c_master_inst|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Selector19~0_combout\ = (\dac|i2c_master_inst|state.start~q\) # ((!\dac|i2c_master_inst|Equal1~0_combout\ & \dac|i2c_master_inst|state.command~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|Equal1~0_combout\,
	datab => \dac|i2c_master_inst|state.start~q\,
	datac => \dac|i2c_master_inst|state.command~q\,
	combout => \dac|i2c_master_inst|Selector19~0_combout\);

-- Location: FF_X36_Y25_N21
\dac|i2c_master_inst|state.command\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|i2c_master_inst|Selector19~0_combout\,
	clrn => \ALT_INV_RST~q\,
	ena => \dac|i2c_master_inst|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|i2c_master_inst|state.command~q\);

-- Location: LCCOMB_X37_Y25_N8
\dac|i2c_master_inst|state~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|state~15_combout\ = (\dac|i2c_master_inst|bit_cnt\(2) & (\dac|i2c_master_inst|bit_cnt\(0) & (\dac|i2c_master_inst|bit_cnt\(1) & \dac|i2c_master_inst|state.command~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|bit_cnt\(2),
	datab => \dac|i2c_master_inst|bit_cnt\(0),
	datac => \dac|i2c_master_inst|bit_cnt\(1),
	datad => \dac|i2c_master_inst|state.command~q\,
	combout => \dac|i2c_master_inst|state~15_combout\);

-- Location: FF_X37_Y25_N9
\dac|i2c_master_inst|state.slv_ack1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|i2c_master_inst|state~15_combout\,
	clrn => \ALT_INV_RST~q\,
	ena => \dac|i2c_master_inst|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|i2c_master_inst|state.slv_ack1~q\);

-- Location: LCCOMB_X36_Y25_N8
\dac|i2c_master_inst|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Selector20~0_combout\ = (\dac|ena~q\ & \dac|i2c_master_inst|state.slv_ack2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dac|ena~q\,
	datad => \dac|i2c_master_inst|state.slv_ack2~q\,
	combout => \dac|i2c_master_inst|Selector20~0_combout\);

-- Location: LCCOMB_X36_Y25_N14
\dac|i2c_master_inst|Selector20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Selector20~1_combout\ = (\dac|i2c_master_inst|state.slv_ack1~q\) # ((\dac|i2c_master_inst|Selector20~0_combout\) # ((!\dac|i2c_master_inst|Equal1~0_combout\ & \dac|i2c_master_inst|state.wr~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|Equal1~0_combout\,
	datab => \dac|i2c_master_inst|state.slv_ack1~q\,
	datac => \dac|i2c_master_inst|state.wr~q\,
	datad => \dac|i2c_master_inst|Selector20~0_combout\,
	combout => \dac|i2c_master_inst|Selector20~1_combout\);

-- Location: FF_X36_Y25_N15
\dac|i2c_master_inst|state.wr\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|i2c_master_inst|Selector20~1_combout\,
	clrn => \ALT_INV_RST~q\,
	ena => \dac|i2c_master_inst|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|i2c_master_inst|state.wr~q\);

-- Location: LCCOMB_X37_Y25_N16
\dac|i2c_master_inst|state~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|state~14_combout\ = (\dac|i2c_master_inst|bit_cnt\(1) & (\dac|i2c_master_inst|bit_cnt\(0) & (\dac|i2c_master_inst|bit_cnt\(2) & \dac|i2c_master_inst|state.wr~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|bit_cnt\(1),
	datab => \dac|i2c_master_inst|bit_cnt\(0),
	datac => \dac|i2c_master_inst|bit_cnt\(2),
	datad => \dac|i2c_master_inst|state.wr~q\,
	combout => \dac|i2c_master_inst|state~14_combout\);

-- Location: FF_X37_Y25_N17
\dac|i2c_master_inst|state.slv_ack2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|i2c_master_inst|state~14_combout\,
	clrn => \ALT_INV_RST~q\,
	ena => \dac|i2c_master_inst|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|i2c_master_inst|state.slv_ack2~q\);

-- Location: LCCOMB_X36_Y25_N18
\dac|i2c_master_inst|Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Selector22~0_combout\ = (!\dac|ena~q\ & ((\dac|i2c_master_inst|state.mstr_ack~q\) # (\dac|i2c_master_inst|state.slv_ack2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|ena~q\,
	datab => \dac|i2c_master_inst|state.mstr_ack~q\,
	datad => \dac|i2c_master_inst|state.slv_ack2~q\,
	combout => \dac|i2c_master_inst|Selector22~0_combout\);

-- Location: FF_X36_Y25_N19
\dac|i2c_master_inst|state.stop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|i2c_master_inst|Selector22~0_combout\,
	clrn => \ALT_INV_RST~q\,
	ena => \dac|i2c_master_inst|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|i2c_master_inst|state.stop~q\);

-- Location: LCCOMB_X36_Y25_N30
\dac|i2c_master_inst|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Selector17~0_combout\ = (!\dac|i2c_master_inst|state.stop~q\ & ((\dac|i2c_master_inst|state.ready~q\) # (\dac|ena~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|state.stop~q\,
	datac => \dac|i2c_master_inst|state.ready~q\,
	datad => \dac|ena~q\,
	combout => \dac|i2c_master_inst|Selector17~0_combout\);

-- Location: FF_X36_Y25_N31
\dac|i2c_master_inst|state.ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|i2c_master_inst|Selector17~0_combout\,
	clrn => \ALT_INV_RST~q\,
	ena => \dac|i2c_master_inst|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|i2c_master_inst|state.ready~q\);

-- Location: LCCOMB_X36_Y25_N28
\dac|i2c_master_inst|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Selector18~0_combout\ = (!\dac|i2c_master_inst|state.ready~q\ & \dac|ena~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dac|i2c_master_inst|state.ready~q\,
	datad => \dac|ena~q\,
	combout => \dac|i2c_master_inst|Selector18~0_combout\);

-- Location: LCCOMB_X36_Y25_N26
\dac|i2c_master_inst|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Selector0~1_combout\ = (!\dac|i2c_master_inst|busy~q\ & ((\dac|i2c_master_inst|state.command~q\) # ((\dac|i2c_master_inst|state.slv_ack1~q\) # (\dac|i2c_master_inst|Selector22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|state.command~q\,
	datab => \dac|i2c_master_inst|busy~q\,
	datac => \dac|i2c_master_inst|state.slv_ack1~q\,
	datad => \dac|i2c_master_inst|Selector22~0_combout\,
	combout => \dac|i2c_master_inst|Selector0~1_combout\);

-- Location: LCCOMB_X36_Y25_N12
\dac|i2c_master_inst|Selector0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Selector0~2_combout\ = (\dac|i2c_master_inst|Selector0~0_combout\ & (!\dac|i2c_master_inst|Selector18~0_combout\ & (!\dac|i2c_master_inst|Selector0~1_combout\ & !\dac|i2c_master_inst|state.start~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|Selector0~0_combout\,
	datab => \dac|i2c_master_inst|Selector18~0_combout\,
	datac => \dac|i2c_master_inst|Selector0~1_combout\,
	datad => \dac|i2c_master_inst|state.start~q\,
	combout => \dac|i2c_master_inst|Selector0~2_combout\);

-- Location: FF_X36_Y25_N13
\dac|i2c_master_inst|busy\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|i2c_master_inst|Selector0~2_combout\,
	clrn => \ALT_INV_RST~q\,
	ena => \dac|i2c_master_inst|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|i2c_master_inst|busy~q\);

-- Location: LCCOMB_X36_Y25_N0
\dac|busy_prev[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|busy_prev[0]~0_combout\ = !\dac|i2c_master_inst|busy~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dac|i2c_master_inst|busy~q\,
	combout => \dac|busy_prev[0]~0_combout\);

-- Location: FF_X36_Y25_N1
\dac|busy_prev[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|busy_prev[0]~0_combout\,
	clrn => \ALT_INV_RST~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|busy_prev\(0));

-- Location: FF_X36_Y26_N27
\dac|busy_prev[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \dac|busy_prev\(0),
	clrn => \ALT_INV_RST~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|busy_prev\(1));

-- Location: LCCOMB_X36_Y26_N16
\dac|ena~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|ena~0_combout\ = (\dac|busy_prev\(1) & !\dac|busy_prev\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dac|busy_prev\(1),
	datad => \dac|busy_prev\(0),
	combout => \dac|ena~0_combout\);

-- Location: LCCOMB_X36_Y25_N16
\dac|i2c_master_inst|data_tx[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|data_tx[7]~0_combout\ = (\dac|i2c_master_inst|state.ready~q\ & (!\dac|i2c_master_inst|state.mstr_ack~q\ & !\dac|i2c_master_inst|state.slv_ack2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|state.ready~q\,
	datab => \dac|i2c_master_inst|state.mstr_ack~q\,
	datad => \dac|i2c_master_inst|state.slv_ack2~q\,
	combout => \dac|i2c_master_inst|data_tx[7]~0_combout\);

-- Location: LCCOMB_X37_Y25_N12
\dac|i2c_master_inst|Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Selector27~0_combout\ = (\dac|i2c_master_inst|data_tx[7]~0_combout\ & (\dac|i2c_master_inst|Selector0~0_combout\ & (!\dac|i2c_master_inst|state.slv_ack1~q\ & !\dac|i2c_master_inst|state.command~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|data_tx[7]~0_combout\,
	datab => \dac|i2c_master_inst|Selector0~0_combout\,
	datac => \dac|i2c_master_inst|state.slv_ack1~q\,
	datad => \dac|i2c_master_inst|state.command~q\,
	combout => \dac|i2c_master_inst|Selector27~0_combout\);

-- Location: LCCOMB_X39_Y25_N4
\dac|i2c_master_inst|Selector27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Selector27~1_combout\ = (\dac|i2c_master_inst|state.start~q\) # ((!\dac|i2c_master_inst|Selector27~0_combout\ & \dac|i2c_master_inst|scl_ena~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|Selector27~0_combout\,
	datac => \dac|i2c_master_inst|scl_ena~q\,
	datad => \dac|i2c_master_inst|state.start~q\,
	combout => \dac|i2c_master_inst|Selector27~1_combout\);

-- Location: LCCOMB_X39_Y25_N12
\dac|i2c_master_inst|process_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|process_1~1_combout\ = (!\dac|i2c_master_inst|data_clk~q\ & \dac|i2c_master_inst|data_clk_prev~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dac|i2c_master_inst|data_clk~q\,
	datad => \dac|i2c_master_inst|data_clk_prev~q\,
	combout => \dac|i2c_master_inst|process_1~1_combout\);

-- Location: FF_X39_Y25_N5
\dac|i2c_master_inst|scl_ena\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|i2c_master_inst|Selector27~1_combout\,
	clrn => \ALT_INV_RST~q\,
	ena => \dac|i2c_master_inst|process_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|i2c_master_inst|scl_ena~q\);

-- Location: LCCOMB_X39_Y25_N18
\dac|i2c_master_inst|Selector28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Selector28~1_combout\ = (\dac|i2c_master_inst|state.stop~q\) # ((\dac|i2c_master_inst|scl_ena~q\ & \dac|i2c_master_inst|state.start~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dac|i2c_master_inst|state.stop~q\,
	datac => \dac|i2c_master_inst|scl_ena~q\,
	datad => \dac|i2c_master_inst|state.start~q\,
	combout => \dac|i2c_master_inst|Selector28~1_combout\);

-- Location: IOIBUF_X53_Y22_N1
\SDA~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SDA,
	o => \SDA~input_o\);

-- Location: LCCOMB_X39_Y25_N16
\dac|i2c_master_inst|Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Selector28~0_combout\ = (\SDA~input_o\ & ((\dac|i2c_master_inst|state.slv_ack2~q\) # (\dac|i2c_master_inst|state.slv_ack1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dac|i2c_master_inst|state.slv_ack2~q\,
	datac => \dac|i2c_master_inst|state.slv_ack1~q\,
	datad => \SDA~input_o\,
	combout => \dac|i2c_master_inst|Selector28~0_combout\);

-- Location: LCCOMB_X39_Y25_N10
\dac|i2c_master_inst|Selector28~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Selector28~2_combout\ = (\dac|i2c_master_inst|Selector28~0_combout\) # ((\dac|i2c_master_inst|ack_error~q\ & ((\dac|i2c_master_inst|Selector28~1_combout\) # (!\dac|i2c_master_inst|Selector27~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|Selector27~0_combout\,
	datab => \dac|i2c_master_inst|Selector28~1_combout\,
	datac => \dac|i2c_master_inst|ack_error~q\,
	datad => \dac|i2c_master_inst|Selector28~0_combout\,
	combout => \dac|i2c_master_inst|Selector28~2_combout\);

-- Location: FF_X39_Y25_N11
\dac|i2c_master_inst|ack_error\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|i2c_master_inst|Selector28~2_combout\,
	clrn => \ALT_INV_RST~q\,
	ena => \dac|i2c_master_inst|process_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|i2c_master_inst|ack_error~q\);

-- Location: LCCOMB_X36_Y26_N8
\dac|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Selector4~0_combout\ = (\dac|ena~0_combout\ & (\dac|i2c_master_inst|ack_error~q\ & ((\dac|state.ST_WR_2~q\) # (\dac|state.ST_WR_1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|state.ST_WR_2~q\,
	datab => \dac|ena~0_combout\,
	datac => \dac|state.ST_WR_1~q\,
	datad => \dac|i2c_master_inst|ack_error~q\,
	combout => \dac|Selector4~0_combout\);

-- Location: FF_X36_Y26_N9
\dac|state.ST_STOP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|Selector4~0_combout\,
	clrn => \ALT_INV_RST~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|state.ST_STOP~q\);

-- Location: LCCOMB_X36_Y26_N24
\dac|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Selector0~0_combout\ = (!\dac|state.ST_STOP~q\ & (((\dac|i2c_master_inst|ack_error~q\) # (!\dac|ena~0_combout\)) # (!\dac|state.ST_WR_2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|state.ST_WR_2~q\,
	datab => \dac|ena~0_combout\,
	datac => \dac|state.ST_STOP~q\,
	datad => \dac|i2c_master_inst|ack_error~q\,
	combout => \dac|Selector0~0_combout\);

-- Location: FF_X36_Y25_N7
\dac|state.ST_IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \dac|Selector0~0_combout\,
	clrn => \ALT_INV_RST~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|state.ST_IDLE~q\);

-- Location: LCCOMB_X36_Y26_N0
\dac|state.ST_START~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|state.ST_START~0_combout\ = !\dac|state.ST_IDLE~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dac|state.ST_IDLE~q\,
	combout => \dac|state.ST_START~0_combout\);

-- Location: FF_X36_Y26_N1
\dac|state.ST_START\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|state.ST_START~0_combout\,
	clrn => \ALT_INV_RST~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|state.ST_START~q\);

-- Location: LCCOMB_X36_Y26_N30
\dac|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Selector2~0_combout\ = (\dac|state.ST_START~q\) # ((\dac|state.ST_WR_1~q\ & ((\dac|busy_prev\(0)) # (!\dac|busy_prev\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|busy_prev\(0),
	datab => \dac|state.ST_WR_1~q\,
	datac => \dac|busy_prev\(1),
	datad => \dac|state.ST_START~q\,
	combout => \dac|Selector2~0_combout\);

-- Location: FF_X35_Y25_N27
\dac|state.ST_WR_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \dac|Selector2~0_combout\,
	clrn => \ALT_INV_RST~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|state.ST_WR_1~q\);

-- Location: LCCOMB_X36_Y26_N18
\dac|state.ST_WR_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|state.ST_WR_2~0_combout\ = (\dac|ena~0_combout\ & (((\dac|state.ST_WR_1~q\ & !\dac|i2c_master_inst|ack_error~q\)))) # (!\dac|ena~0_combout\ & (\dac|state.ST_WR_2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|state.ST_WR_2~q\,
	datab => \dac|ena~0_combout\,
	datac => \dac|state.ST_WR_1~q\,
	datad => \dac|i2c_master_inst|ack_error~q\,
	combout => \dac|state.ST_WR_2~0_combout\);

-- Location: FF_X35_Y25_N13
\dac|state.ST_WR_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \dac|state.ST_WR_2~0_combout\,
	clrn => \ALT_INV_RST~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|state.ST_WR_2~q\);

-- Location: LCCOMB_X36_Y26_N22
\dac|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Selector5~1_combout\ = (\dac|state.ST_WR_2~q\ & ((\dac|busy_prev\(1)) # (!\dac|busy_prev\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|state.ST_WR_2~q\,
	datac => \dac|busy_prev\(1),
	datad => \dac|busy_prev\(0),
	combout => \dac|Selector5~1_combout\);

-- Location: LCCOMB_X35_Y26_N0
\dac|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Add0~0_combout\ = \dac|wait_cnt\(0) $ (VCC)
-- \dac|Add0~1\ = CARRY(\dac|wait_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|wait_cnt\(0),
	datad => VCC,
	combout => \dac|Add0~0_combout\,
	cout => \dac|Add0~1\);

-- Location: LCCOMB_X36_Y26_N6
\dac|wait_cnt~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|wait_cnt~26_combout\ = (!\dac|Equal2~10_combout\ & \dac|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dac|Equal2~10_combout\,
	datac => \dac|Add0~0_combout\,
	combout => \dac|wait_cnt~26_combout\);

-- Location: FF_X35_Y25_N31
\dac|wait_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \dac|wait_cnt~26_combout\,
	clrn => \ALT_INV_RST~q\,
	sload => VCC,
	ena => \dac|state.ST_STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|wait_cnt\(0));

-- Location: LCCOMB_X35_Y26_N2
\dac|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Add0~2_combout\ = (\dac|wait_cnt\(1) & (\dac|Add0~1\ & VCC)) # (!\dac|wait_cnt\(1) & (!\dac|Add0~1\))
-- \dac|Add0~3\ = CARRY((!\dac|wait_cnt\(1) & !\dac|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dac|wait_cnt\(1),
	datad => VCC,
	cin => \dac|Add0~1\,
	combout => \dac|Add0~2_combout\,
	cout => \dac|Add0~3\);

-- Location: LCCOMB_X34_Y26_N6
\dac|wait_cnt~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|wait_cnt~25_combout\ = (!\dac|Equal2~10_combout\ & \dac|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dac|Equal2~10_combout\,
	datad => \dac|Add0~2_combout\,
	combout => \dac|wait_cnt~25_combout\);

-- Location: FF_X34_Y26_N7
\dac|wait_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|wait_cnt~25_combout\,
	clrn => \ALT_INV_RST~q\,
	ena => \dac|state.ST_STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|wait_cnt\(1));

-- Location: LCCOMB_X35_Y26_N4
\dac|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Add0~4_combout\ = (\dac|wait_cnt\(2) & ((GND) # (!\dac|Add0~3\))) # (!\dac|wait_cnt\(2) & (\dac|Add0~3\ $ (GND)))
-- \dac|Add0~5\ = CARRY((\dac|wait_cnt\(2)) # (!\dac|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dac|wait_cnt\(2),
	datad => VCC,
	cin => \dac|Add0~3\,
	combout => \dac|Add0~4_combout\,
	cout => \dac|Add0~5\);

-- Location: LCCOMB_X34_Y26_N16
\dac|wait_cnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|wait_cnt~24_combout\ = (!\dac|Equal2~10_combout\ & \dac|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dac|Equal2~10_combout\,
	datad => \dac|Add0~4_combout\,
	combout => \dac|wait_cnt~24_combout\);

-- Location: FF_X34_Y26_N17
\dac|wait_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|wait_cnt~24_combout\,
	clrn => \ALT_INV_RST~q\,
	ena => \dac|state.ST_STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|wait_cnt\(2));

-- Location: LCCOMB_X35_Y26_N6
\dac|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Add0~6_combout\ = (\dac|wait_cnt\(3) & (\dac|Add0~5\ & VCC)) # (!\dac|wait_cnt\(3) & (!\dac|Add0~5\))
-- \dac|Add0~7\ = CARRY((!\dac|wait_cnt\(3) & !\dac|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dac|wait_cnt\(3),
	datad => VCC,
	cin => \dac|Add0~5\,
	combout => \dac|Add0~6_combout\,
	cout => \dac|Add0~7\);

-- Location: LCCOMB_X34_Y26_N22
\dac|wait_cnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|wait_cnt~23_combout\ = (!\dac|Equal2~10_combout\ & \dac|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dac|Equal2~10_combout\,
	datad => \dac|Add0~6_combout\,
	combout => \dac|wait_cnt~23_combout\);

-- Location: FF_X34_Y26_N23
\dac|wait_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|wait_cnt~23_combout\,
	clrn => \ALT_INV_RST~q\,
	ena => \dac|state.ST_STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|wait_cnt\(3));

-- Location: LCCOMB_X34_Y26_N12
\dac|Equal2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Equal2~9_combout\ = (!\dac|wait_cnt\(1) & (!\dac|wait_cnt\(2) & (!\dac|wait_cnt\(3) & !\dac|wait_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|wait_cnt\(1),
	datab => \dac|wait_cnt\(2),
	datac => \dac|wait_cnt\(3),
	datad => \dac|wait_cnt\(0),
	combout => \dac|Equal2~9_combout\);

-- Location: LCCOMB_X35_Y26_N8
\dac|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Add0~8_combout\ = (\dac|wait_cnt\(4) & (\dac|Add0~7\ $ (GND))) # (!\dac|wait_cnt\(4) & ((GND) # (!\dac|Add0~7\)))
-- \dac|Add0~9\ = CARRY((!\dac|Add0~7\) # (!\dac|wait_cnt\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dac|wait_cnt\(4),
	datad => VCC,
	cin => \dac|Add0~7\,
	combout => \dac|Add0~8_combout\,
	cout => \dac|Add0~9\);

-- Location: LCCOMB_X35_Y27_N4
\dac|wait_cnt[4]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|wait_cnt[4]~31_combout\ = !\dac|Add0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dac|Add0~8_combout\,
	combout => \dac|wait_cnt[4]~31_combout\);

-- Location: FF_X34_Y25_N5
\dac|wait_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \dac|wait_cnt[4]~31_combout\,
	clrn => \ALT_INV_RST~q\,
	sload => VCC,
	ena => \dac|state.ST_STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|wait_cnt\(4));

-- Location: LCCOMB_X35_Y26_N10
\dac|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Add0~10_combout\ = (\dac|wait_cnt\(5) & (\dac|Add0~9\ & VCC)) # (!\dac|wait_cnt\(5) & (!\dac|Add0~9\))
-- \dac|Add0~11\ = CARRY((!\dac|wait_cnt\(5) & !\dac|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dac|wait_cnt\(5),
	datad => VCC,
	cin => \dac|Add0~9\,
	combout => \dac|Add0~10_combout\,
	cout => \dac|Add0~11\);

-- Location: LCCOMB_X34_Y26_N18
\dac|wait_cnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|wait_cnt~22_combout\ = (!\dac|Equal2~10_combout\ & \dac|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|Equal2~10_combout\,
	datac => \dac|Add0~10_combout\,
	combout => \dac|wait_cnt~22_combout\);

-- Location: FF_X35_Y25_N7
\dac|wait_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \dac|wait_cnt~22_combout\,
	clrn => \ALT_INV_RST~q\,
	sload => VCC,
	ena => \dac|state.ST_STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|wait_cnt\(5));

-- Location: LCCOMB_X35_Y26_N12
\dac|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Add0~12_combout\ = (\dac|wait_cnt\(6) & ((GND) # (!\dac|Add0~11\))) # (!\dac|wait_cnt\(6) & (\dac|Add0~11\ $ (GND)))
-- \dac|Add0~13\ = CARRY((\dac|wait_cnt\(6)) # (!\dac|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dac|wait_cnt\(6),
	datad => VCC,
	cin => \dac|Add0~11\,
	combout => \dac|Add0~12_combout\,
	cout => \dac|Add0~13\);

-- Location: LCCOMB_X36_Y26_N26
\dac|wait_cnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|wait_cnt~21_combout\ = (!\dac|Equal2~10_combout\ & \dac|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dac|Equal2~10_combout\,
	datad => \dac|Add0~12_combout\,
	combout => \dac|wait_cnt~21_combout\);

-- Location: FF_X35_Y26_N19
\dac|wait_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \dac|wait_cnt~21_combout\,
	clrn => \ALT_INV_RST~q\,
	sload => VCC,
	ena => \dac|state.ST_STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|wait_cnt\(6));

-- Location: LCCOMB_X35_Y26_N14
\dac|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Add0~14_combout\ = (\dac|wait_cnt\(7) & (\dac|Add0~13\ & VCC)) # (!\dac|wait_cnt\(7) & (!\dac|Add0~13\))
-- \dac|Add0~15\ = CARRY((!\dac|wait_cnt\(7) & !\dac|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dac|wait_cnt\(7),
	datad => VCC,
	cin => \dac|Add0~13\,
	combout => \dac|Add0~14_combout\,
	cout => \dac|Add0~15\);

-- Location: LCCOMB_X34_Y26_N28
\dac|wait_cnt~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|wait_cnt~20_combout\ = (!\dac|Equal2~10_combout\ & \dac|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|Equal2~10_combout\,
	datac => \dac|Add0~14_combout\,
	combout => \dac|wait_cnt~20_combout\);

-- Location: FF_X34_Y25_N27
\dac|wait_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \dac|wait_cnt~20_combout\,
	clrn => \ALT_INV_RST~q\,
	sload => VCC,
	ena => \dac|state.ST_STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|wait_cnt\(7));

-- Location: LCCOMB_X34_Y26_N0
\dac|Equal2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Equal2~8_combout\ = (!\dac|wait_cnt\(6) & (\dac|wait_cnt\(4) & (!\dac|wait_cnt\(5) & !\dac|wait_cnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|wait_cnt\(6),
	datab => \dac|wait_cnt\(4),
	datac => \dac|wait_cnt\(5),
	datad => \dac|wait_cnt\(7),
	combout => \dac|Equal2~8_combout\);

-- Location: LCCOMB_X35_Y26_N16
\dac|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Add0~16_combout\ = (\dac|wait_cnt\(8) & (\dac|Add0~15\ $ (GND))) # (!\dac|wait_cnt\(8) & ((GND) # (!\dac|Add0~15\)))
-- \dac|Add0~17\ = CARRY((!\dac|Add0~15\) # (!\dac|wait_cnt\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dac|wait_cnt\(8),
	datad => VCC,
	cin => \dac|Add0~15\,
	combout => \dac|Add0~16_combout\,
	cout => \dac|Add0~17\);

-- Location: LCCOMB_X35_Y27_N10
\dac|wait_cnt[8]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|wait_cnt[8]~30_combout\ = !\dac|Add0~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dac|Add0~16_combout\,
	combout => \dac|wait_cnt[8]~30_combout\);

-- Location: FF_X35_Y25_N29
\dac|wait_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \dac|wait_cnt[8]~30_combout\,
	clrn => \ALT_INV_RST~q\,
	sload => VCC,
	ena => \dac|state.ST_STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|wait_cnt\(8));

-- Location: LCCOMB_X35_Y26_N18
\dac|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Add0~18_combout\ = (\dac|wait_cnt\(9) & (!\dac|Add0~17\)) # (!\dac|wait_cnt\(9) & (\dac|Add0~17\ & VCC))
-- \dac|Add0~19\ = CARRY((\dac|wait_cnt\(9) & !\dac|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dac|wait_cnt\(9),
	datad => VCC,
	cin => \dac|Add0~17\,
	combout => \dac|Add0~18_combout\,
	cout => \dac|Add0~19\);

-- Location: LCCOMB_X36_Y26_N14
\dac|wait_cnt[9]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|wait_cnt[9]~29_combout\ = !\dac|Add0~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dac|Add0~18_combout\,
	combout => \dac|wait_cnt[9]~29_combout\);

-- Location: FF_X35_Y25_N21
\dac|wait_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \dac|wait_cnt[9]~29_combout\,
	clrn => \ALT_INV_RST~q\,
	sload => VCC,
	ena => \dac|state.ST_STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|wait_cnt\(9));

-- Location: LCCOMB_X35_Y26_N20
\dac|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Add0~20_combout\ = (\dac|wait_cnt\(10) & (\dac|Add0~19\ $ (GND))) # (!\dac|wait_cnt\(10) & ((GND) # (!\dac|Add0~19\)))
-- \dac|Add0~21\ = CARRY((!\dac|Add0~19\) # (!\dac|wait_cnt\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dac|wait_cnt\(10),
	datad => VCC,
	cin => \dac|Add0~19\,
	combout => \dac|Add0~20_combout\,
	cout => \dac|Add0~21\);

-- Location: LCCOMB_X34_Y26_N14
\dac|wait_cnt[10]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|wait_cnt[10]~28_combout\ = !\dac|Add0~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dac|Add0~20_combout\,
	combout => \dac|wait_cnt[10]~28_combout\);

-- Location: FF_X35_Y25_N15
\dac|wait_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \dac|wait_cnt[10]~28_combout\,
	clrn => \ALT_INV_RST~q\,
	sload => VCC,
	ena => \dac|state.ST_STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|wait_cnt\(10));

-- Location: LCCOMB_X35_Y26_N22
\dac|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Add0~22_combout\ = (\dac|wait_cnt\(11) & (\dac|Add0~21\ & VCC)) # (!\dac|wait_cnt\(11) & (!\dac|Add0~21\))
-- \dac|Add0~23\ = CARRY((!\dac|wait_cnt\(11) & !\dac|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dac|wait_cnt\(11),
	datad => VCC,
	cin => \dac|Add0~21\,
	combout => \dac|Add0~22_combout\,
	cout => \dac|Add0~23\);

-- Location: LCCOMB_X36_Y26_N4
\dac|wait_cnt~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|wait_cnt~19_combout\ = (!\dac|Equal2~10_combout\ & \dac|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dac|Equal2~10_combout\,
	datad => \dac|Add0~22_combout\,
	combout => \dac|wait_cnt~19_combout\);

-- Location: FF_X35_Y25_N23
\dac|wait_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \dac|wait_cnt~19_combout\,
	clrn => \ALT_INV_RST~q\,
	sload => VCC,
	ena => \dac|state.ST_STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|wait_cnt\(11));

-- Location: LCCOMB_X35_Y28_N4
\dac|Equal2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Equal2~6_combout\ = (!\dac|wait_cnt\(11) & \dac|wait_cnt\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|wait_cnt\(11),
	datad => \dac|wait_cnt\(10),
	combout => \dac|Equal2~6_combout\);

-- Location: LCCOMB_X35_Y26_N24
\dac|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Add0~24_combout\ = (\dac|wait_cnt\(12) & ((GND) # (!\dac|Add0~23\))) # (!\dac|wait_cnt\(12) & (\dac|Add0~23\ $ (GND)))
-- \dac|Add0~25\ = CARRY((\dac|wait_cnt\(12)) # (!\dac|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dac|wait_cnt\(12),
	datad => VCC,
	cin => \dac|Add0~23\,
	combout => \dac|Add0~24_combout\,
	cout => \dac|Add0~25\);

-- Location: LCCOMB_X34_Y26_N26
\dac|wait_cnt~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|wait_cnt~18_combout\ = (\dac|Add0~24_combout\ & !\dac|Equal2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|Add0~24_combout\,
	datac => \dac|Equal2~10_combout\,
	combout => \dac|wait_cnt~18_combout\);

-- Location: FF_X35_Y25_N19
\dac|wait_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \dac|wait_cnt~18_combout\,
	clrn => \ALT_INV_RST~q\,
	sload => VCC,
	ena => \dac|state.ST_STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|wait_cnt\(12));

-- Location: LCCOMB_X35_Y26_N26
\dac|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Add0~26_combout\ = (\dac|wait_cnt\(13) & (!\dac|Add0~25\)) # (!\dac|wait_cnt\(13) & (\dac|Add0~25\ & VCC))
-- \dac|Add0~27\ = CARRY((\dac|wait_cnt\(13) & !\dac|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dac|wait_cnt\(13),
	datad => VCC,
	cin => \dac|Add0~25\,
	combout => \dac|Add0~26_combout\,
	cout => \dac|Add0~27\);

-- Location: LCCOMB_X34_Y26_N8
\dac|wait_cnt[13]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|wait_cnt[13]~27_combout\ = !\dac|Add0~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dac|Add0~26_combout\,
	combout => \dac|wait_cnt[13]~27_combout\);

-- Location: FF_X34_Y25_N1
\dac|wait_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \dac|wait_cnt[13]~27_combout\,
	clrn => \ALT_INV_RST~q\,
	sload => VCC,
	ena => \dac|state.ST_STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|wait_cnt\(13));

-- Location: LCCOMB_X35_Y26_N28
\dac|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Add0~28_combout\ = (\dac|wait_cnt\(14) & ((GND) # (!\dac|Add0~27\))) # (!\dac|wait_cnt\(14) & (\dac|Add0~27\ $ (GND)))
-- \dac|Add0~29\ = CARRY((\dac|wait_cnt\(14)) # (!\dac|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dac|wait_cnt\(14),
	datad => VCC,
	cin => \dac|Add0~27\,
	combout => \dac|Add0~28_combout\,
	cout => \dac|Add0~29\);

-- Location: LCCOMB_X34_Y26_N4
\dac|wait_cnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|wait_cnt~17_combout\ = (!\dac|Equal2~10_combout\ & \dac|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dac|Equal2~10_combout\,
	datad => \dac|Add0~28_combout\,
	combout => \dac|wait_cnt~17_combout\);

-- Location: FF_X34_Y25_N23
\dac|wait_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \dac|wait_cnt~17_combout\,
	clrn => \ALT_INV_RST~q\,
	sload => VCC,
	ena => \dac|state.ST_STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|wait_cnt\(14));

-- Location: LCCOMB_X35_Y26_N30
\dac|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Add0~30_combout\ = (\dac|wait_cnt\(15) & (\dac|Add0~29\ & VCC)) # (!\dac|wait_cnt\(15) & (!\dac|Add0~29\))
-- \dac|Add0~31\ = CARRY((!\dac|wait_cnt\(15) & !\dac|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dac|wait_cnt\(15),
	datad => VCC,
	cin => \dac|Add0~29\,
	combout => \dac|Add0~30_combout\,
	cout => \dac|Add0~31\);

-- Location: LCCOMB_X34_Y26_N2
\dac|wait_cnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|wait_cnt~16_combout\ = (!\dac|Equal2~10_combout\ & \dac|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|Equal2~10_combout\,
	datac => \dac|Add0~30_combout\,
	combout => \dac|wait_cnt~16_combout\);

-- Location: FF_X35_Y25_N25
\dac|wait_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \dac|wait_cnt~16_combout\,
	clrn => \ALT_INV_RST~q\,
	sload => VCC,
	ena => \dac|state.ST_STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|wait_cnt\(15));

-- Location: LCCOMB_X34_Y28_N28
\dac|Equal2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Equal2~5_combout\ = (!\dac|wait_cnt\(15) & (!\dac|wait_cnt\(14) & (\dac|wait_cnt\(13) & !\dac|wait_cnt\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|wait_cnt\(15),
	datab => \dac|wait_cnt\(14),
	datac => \dac|wait_cnt\(13),
	datad => \dac|wait_cnt\(12),
	combout => \dac|Equal2~5_combout\);

-- Location: LCCOMB_X34_Y28_N14
\dac|Equal2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Equal2~7_combout\ = (\dac|Equal2~6_combout\ & (\dac|wait_cnt\(9) & (\dac|wait_cnt\(8) & \dac|Equal2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|Equal2~6_combout\,
	datab => \dac|wait_cnt\(9),
	datac => \dac|wait_cnt\(8),
	datad => \dac|Equal2~5_combout\,
	combout => \dac|Equal2~7_combout\);

-- Location: LCCOMB_X35_Y25_N0
\dac|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Add0~32_combout\ = (\dac|wait_cnt\(16) & ((GND) # (!\dac|Add0~31\))) # (!\dac|wait_cnt\(16) & (\dac|Add0~31\ $ (GND)))
-- \dac|Add0~33\ = CARRY((\dac|wait_cnt\(16)) # (!\dac|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dac|wait_cnt\(16),
	datad => VCC,
	cin => \dac|Add0~31\,
	combout => \dac|Add0~32_combout\,
	cout => \dac|Add0~33\);

-- Location: LCCOMB_X34_Y25_N28
\dac|wait_cnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|wait_cnt~15_combout\ = (!\dac|Equal2~10_combout\ & \dac|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dac|Equal2~10_combout\,
	datad => \dac|Add0~32_combout\,
	combout => \dac|wait_cnt~15_combout\);

-- Location: FF_X34_Y25_N29
\dac|wait_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|wait_cnt~15_combout\,
	clrn => \ALT_INV_RST~q\,
	ena => \dac|state.ST_STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|wait_cnt\(16));

-- Location: LCCOMB_X35_Y25_N2
\dac|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Add0~34_combout\ = (\dac|wait_cnt\(17) & (\dac|Add0~33\ & VCC)) # (!\dac|wait_cnt\(17) & (!\dac|Add0~33\))
-- \dac|Add0~35\ = CARRY((!\dac|wait_cnt\(17) & !\dac|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dac|wait_cnt\(17),
	datad => VCC,
	cin => \dac|Add0~33\,
	combout => \dac|Add0~34_combout\,
	cout => \dac|Add0~35\);

-- Location: LCCOMB_X34_Y25_N14
\dac|wait_cnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|wait_cnt~14_combout\ = (\dac|Add0~34_combout\ & !\dac|Equal2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dac|Add0~34_combout\,
	datac => \dac|Equal2~10_combout\,
	combout => \dac|wait_cnt~14_combout\);

-- Location: FF_X34_Y25_N15
\dac|wait_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|wait_cnt~14_combout\,
	clrn => \ALT_INV_RST~q\,
	ena => \dac|state.ST_STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|wait_cnt\(17));

-- Location: LCCOMB_X35_Y25_N4
\dac|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Add0~36_combout\ = (\dac|wait_cnt\(18) & ((GND) # (!\dac|Add0~35\))) # (!\dac|wait_cnt\(18) & (\dac|Add0~35\ $ (GND)))
-- \dac|Add0~37\ = CARRY((\dac|wait_cnt\(18)) # (!\dac|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dac|wait_cnt\(18),
	datad => VCC,
	cin => \dac|Add0~35\,
	combout => \dac|Add0~36_combout\,
	cout => \dac|Add0~37\);

-- Location: LCCOMB_X34_Y26_N24
\dac|wait_cnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|wait_cnt~13_combout\ = (!\dac|Equal2~10_combout\ & \dac|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dac|Equal2~10_combout\,
	datad => \dac|Add0~36_combout\,
	combout => \dac|wait_cnt~13_combout\);

-- Location: FF_X34_Y25_N17
\dac|wait_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \dac|wait_cnt~13_combout\,
	clrn => \ALT_INV_RST~q\,
	sload => VCC,
	ena => \dac|state.ST_STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|wait_cnt\(18));

-- Location: LCCOMB_X35_Y25_N6
\dac|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Add0~38_combout\ = (\dac|wait_cnt\(19) & (\dac|Add0~37\ & VCC)) # (!\dac|wait_cnt\(19) & (!\dac|Add0~37\))
-- \dac|Add0~39\ = CARRY((!\dac|wait_cnt\(19) & !\dac|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dac|wait_cnt\(19),
	datad => VCC,
	cin => \dac|Add0~37\,
	combout => \dac|Add0~38_combout\,
	cout => \dac|Add0~39\);

-- Location: LCCOMB_X34_Y25_N12
\dac|wait_cnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|wait_cnt~12_combout\ = (!\dac|Equal2~10_combout\ & \dac|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dac|Equal2~10_combout\,
	datad => \dac|Add0~38_combout\,
	combout => \dac|wait_cnt~12_combout\);

-- Location: FF_X35_Y25_N3
\dac|wait_cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \dac|wait_cnt~12_combout\,
	clrn => \ALT_INV_RST~q\,
	sload => VCC,
	ena => \dac|state.ST_STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|wait_cnt\(19));

-- Location: LCCOMB_X35_Y25_N8
\dac|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Add0~40_combout\ = (\dac|wait_cnt\(20) & ((GND) # (!\dac|Add0~39\))) # (!\dac|wait_cnt\(20) & (\dac|Add0~39\ $ (GND)))
-- \dac|Add0~41\ = CARRY((\dac|wait_cnt\(20)) # (!\dac|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dac|wait_cnt\(20),
	datad => VCC,
	cin => \dac|Add0~39\,
	combout => \dac|Add0~40_combout\,
	cout => \dac|Add0~41\);

-- Location: LCCOMB_X34_Y26_N10
\dac|wait_cnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|wait_cnt~11_combout\ = (!\dac|Equal2~10_combout\ & \dac|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dac|Equal2~10_combout\,
	datad => \dac|Add0~40_combout\,
	combout => \dac|wait_cnt~11_combout\);

-- Location: FF_X34_Y25_N3
\dac|wait_cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \dac|wait_cnt~11_combout\,
	clrn => \ALT_INV_RST~q\,
	sload => VCC,
	ena => \dac|state.ST_STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|wait_cnt\(20));

-- Location: LCCOMB_X35_Y25_N10
\dac|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Add0~42_combout\ = (\dac|wait_cnt\(21) & (\dac|Add0~41\ & VCC)) # (!\dac|wait_cnt\(21) & (!\dac|Add0~41\))
-- \dac|Add0~43\ = CARRY((!\dac|wait_cnt\(21) & !\dac|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dac|wait_cnt\(21),
	datad => VCC,
	cin => \dac|Add0~41\,
	combout => \dac|Add0~42_combout\,
	cout => \dac|Add0~43\);

-- Location: LCCOMB_X34_Y25_N26
\dac|wait_cnt~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|wait_cnt~10_combout\ = (!\dac|Equal2~10_combout\ & \dac|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dac|Equal2~10_combout\,
	datad => \dac|Add0~42_combout\,
	combout => \dac|wait_cnt~10_combout\);

-- Location: FF_X34_Y25_N21
\dac|wait_cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \dac|wait_cnt~10_combout\,
	clrn => \ALT_INV_RST~q\,
	sload => VCC,
	ena => \dac|state.ST_STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|wait_cnt\(21));

-- Location: LCCOMB_X35_Y25_N12
\dac|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Add0~44_combout\ = (\dac|wait_cnt\(22) & ((GND) # (!\dac|Add0~43\))) # (!\dac|wait_cnt\(22) & (\dac|Add0~43\ $ (GND)))
-- \dac|Add0~45\ = CARRY((\dac|wait_cnt\(22)) # (!\dac|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dac|wait_cnt\(22),
	datad => VCC,
	cin => \dac|Add0~43\,
	combout => \dac|Add0~44_combout\,
	cout => \dac|Add0~45\);

-- Location: LCCOMB_X34_Y25_N18
\dac|wait_cnt~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|wait_cnt~9_combout\ = (!\dac|Equal2~10_combout\ & \dac|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dac|Equal2~10_combout\,
	datac => \dac|Add0~44_combout\,
	combout => \dac|wait_cnt~9_combout\);

-- Location: FF_X34_Y25_N19
\dac|wait_cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|wait_cnt~9_combout\,
	clrn => \ALT_INV_RST~q\,
	ena => \dac|state.ST_STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|wait_cnt\(22));

-- Location: LCCOMB_X35_Y25_N14
\dac|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Add0~46_combout\ = (\dac|wait_cnt\(23) & (\dac|Add0~45\ & VCC)) # (!\dac|wait_cnt\(23) & (!\dac|Add0~45\))
-- \dac|Add0~47\ = CARRY((!\dac|wait_cnt\(23) & !\dac|Add0~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dac|wait_cnt\(23),
	datad => VCC,
	cin => \dac|Add0~45\,
	combout => \dac|Add0~46_combout\,
	cout => \dac|Add0~47\);

-- Location: LCCOMB_X34_Y25_N2
\dac|wait_cnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|wait_cnt~8_combout\ = (!\dac|Equal2~10_combout\ & \dac|Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dac|Equal2~10_combout\,
	datad => \dac|Add0~46_combout\,
	combout => \dac|wait_cnt~8_combout\);

-- Location: FF_X35_Y25_N17
\dac|wait_cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \dac|wait_cnt~8_combout\,
	clrn => \ALT_INV_RST~q\,
	sload => VCC,
	ena => \dac|state.ST_STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|wait_cnt\(23));

-- Location: LCCOMB_X35_Y25_N16
\dac|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Add0~48_combout\ = (\dac|wait_cnt\(24) & ((GND) # (!\dac|Add0~47\))) # (!\dac|wait_cnt\(24) & (\dac|Add0~47\ $ (GND)))
-- \dac|Add0~49\ = CARRY((\dac|wait_cnt\(24)) # (!\dac|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dac|wait_cnt\(24),
	datad => VCC,
	cin => \dac|Add0~47\,
	combout => \dac|Add0~48_combout\,
	cout => \dac|Add0~49\);

-- Location: LCCOMB_X34_Y25_N0
\dac|wait_cnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|wait_cnt~7_combout\ = (!\dac|Equal2~10_combout\ & \dac|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dac|Equal2~10_combout\,
	datad => \dac|Add0~48_combout\,
	combout => \dac|wait_cnt~7_combout\);

-- Location: FF_X35_Y25_N5
\dac|wait_cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \dac|wait_cnt~7_combout\,
	clrn => \ALT_INV_RST~q\,
	sload => VCC,
	ena => \dac|state.ST_STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|wait_cnt\(24));

-- Location: LCCOMB_X35_Y25_N18
\dac|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Add0~50_combout\ = (\dac|wait_cnt\(25) & (\dac|Add0~49\ & VCC)) # (!\dac|wait_cnt\(25) & (!\dac|Add0~49\))
-- \dac|Add0~51\ = CARRY((!\dac|wait_cnt\(25) & !\dac|Add0~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dac|wait_cnt\(25),
	datad => VCC,
	cin => \dac|Add0~49\,
	combout => \dac|Add0~50_combout\,
	cout => \dac|Add0~51\);

-- Location: LCCOMB_X34_Y25_N22
\dac|wait_cnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|wait_cnt~6_combout\ = (!\dac|Equal2~10_combout\ & \dac|Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dac|Equal2~10_combout\,
	datad => \dac|Add0~50_combout\,
	combout => \dac|wait_cnt~6_combout\);

-- Location: FF_X35_Y25_N11
\dac|wait_cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \dac|wait_cnt~6_combout\,
	clrn => \ALT_INV_RST~q\,
	sload => VCC,
	ena => \dac|state.ST_STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|wait_cnt\(25));

-- Location: LCCOMB_X35_Y25_N20
\dac|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Add0~52_combout\ = (\dac|wait_cnt\(26) & ((GND) # (!\dac|Add0~51\))) # (!\dac|wait_cnt\(26) & (\dac|Add0~51\ $ (GND)))
-- \dac|Add0~53\ = CARRY((\dac|wait_cnt\(26)) # (!\dac|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dac|wait_cnt\(26),
	datad => VCC,
	cin => \dac|Add0~51\,
	combout => \dac|Add0~52_combout\,
	cout => \dac|Add0~53\);

-- Location: LCCOMB_X34_Y25_N4
\dac|wait_cnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|wait_cnt~5_combout\ = (\dac|Add0~52_combout\ & !\dac|Equal2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|Add0~52_combout\,
	datab => \dac|Equal2~10_combout\,
	combout => \dac|wait_cnt~5_combout\);

-- Location: FF_X34_Y25_N25
\dac|wait_cnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \dac|wait_cnt~5_combout\,
	clrn => \ALT_INV_RST~q\,
	sload => VCC,
	ena => \dac|state.ST_STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|wait_cnt\(26));

-- Location: LCCOMB_X35_Y25_N22
\dac|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Add0~54_combout\ = (\dac|wait_cnt\(27) & (\dac|Add0~53\ & VCC)) # (!\dac|wait_cnt\(27) & (!\dac|Add0~53\))
-- \dac|Add0~55\ = CARRY((!\dac|wait_cnt\(27) & !\dac|Add0~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dac|wait_cnt\(27),
	datad => VCC,
	cin => \dac|Add0~53\,
	combout => \dac|Add0~54_combout\,
	cout => \dac|Add0~55\);

-- Location: LCCOMB_X32_Y25_N24
\dac|wait_cnt~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|wait_cnt~4_combout\ = (!\dac|Equal2~10_combout\ & \dac|Add0~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dac|Equal2~10_combout\,
	datad => \dac|Add0~54_combout\,
	combout => \dac|wait_cnt~4_combout\);

-- Location: FF_X34_Y25_N11
\dac|wait_cnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \dac|wait_cnt~4_combout\,
	clrn => \ALT_INV_RST~q\,
	sload => VCC,
	ena => \dac|state.ST_STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|wait_cnt\(27));

-- Location: LCCOMB_X34_Y25_N24
\dac|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Equal2~1_combout\ = (!\dac|wait_cnt\(27) & (!\dac|wait_cnt\(25) & (!\dac|wait_cnt\(26) & !\dac|wait_cnt\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|wait_cnt\(27),
	datab => \dac|wait_cnt\(25),
	datac => \dac|wait_cnt\(26),
	datad => \dac|wait_cnt\(24),
	combout => \dac|Equal2~1_combout\);

-- Location: LCCOMB_X34_Y25_N20
\dac|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Equal2~2_combout\ = (!\dac|wait_cnt\(22) & (!\dac|wait_cnt\(20) & (!\dac|wait_cnt\(21) & !\dac|wait_cnt\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|wait_cnt\(22),
	datab => \dac|wait_cnt\(20),
	datac => \dac|wait_cnt\(21),
	datad => \dac|wait_cnt\(23),
	combout => \dac|Equal2~2_combout\);

-- Location: LCCOMB_X35_Y25_N24
\dac|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Add0~56_combout\ = (\dac|wait_cnt\(28) & ((GND) # (!\dac|Add0~55\))) # (!\dac|wait_cnt\(28) & (\dac|Add0~55\ $ (GND)))
-- \dac|Add0~57\ = CARRY((\dac|wait_cnt\(28)) # (!\dac|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dac|wait_cnt\(28),
	datad => VCC,
	cin => \dac|Add0~55\,
	combout => \dac|Add0~56_combout\,
	cout => \dac|Add0~57\);

-- Location: LCCOMB_X34_Y25_N8
\dac|wait_cnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|wait_cnt~3_combout\ = (!\dac|Equal2~10_combout\ & \dac|Add0~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dac|Equal2~10_combout\,
	datad => \dac|Add0~56_combout\,
	combout => \dac|wait_cnt~3_combout\);

-- Location: FF_X34_Y25_N9
\dac|wait_cnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|wait_cnt~3_combout\,
	clrn => \ALT_INV_RST~q\,
	ena => \dac|state.ST_STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|wait_cnt\(28));

-- Location: LCCOMB_X35_Y25_N26
\dac|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Add0~58_combout\ = (\dac|wait_cnt\(29) & (\dac|Add0~57\ & VCC)) # (!\dac|wait_cnt\(29) & (!\dac|Add0~57\))
-- \dac|Add0~59\ = CARRY((!\dac|wait_cnt\(29) & !\dac|Add0~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dac|wait_cnt\(29),
	datad => VCC,
	cin => \dac|Add0~57\,
	combout => \dac|Add0~58_combout\,
	cout => \dac|Add0~59\);

-- Location: LCCOMB_X36_Y25_N22
\dac|wait_cnt~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|wait_cnt~2_combout\ = (\dac|Add0~58_combout\ & !\dac|Equal2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|Add0~58_combout\,
	datad => \dac|Equal2~10_combout\,
	combout => \dac|wait_cnt~2_combout\);

-- Location: FF_X35_Y25_N9
\dac|wait_cnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \dac|wait_cnt~2_combout\,
	clrn => \ALT_INV_RST~q\,
	sload => VCC,
	ena => \dac|state.ST_STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|wait_cnt\(29));

-- Location: LCCOMB_X35_Y25_N28
\dac|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Add0~60_combout\ = (\dac|wait_cnt\(30) & ((GND) # (!\dac|Add0~59\))) # (!\dac|wait_cnt\(30) & (\dac|Add0~59\ $ (GND)))
-- \dac|Add0~61\ = CARRY((\dac|wait_cnt\(30)) # (!\dac|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dac|wait_cnt\(30),
	datad => VCC,
	cin => \dac|Add0~59\,
	combout => \dac|Add0~60_combout\,
	cout => \dac|Add0~61\);

-- Location: LCCOMB_X34_Y25_N10
\dac|wait_cnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|wait_cnt~1_combout\ = (!\dac|Equal2~10_combout\ & \dac|Add0~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dac|Equal2~10_combout\,
	datad => \dac|Add0~60_combout\,
	combout => \dac|wait_cnt~1_combout\);

-- Location: FF_X34_Y25_N31
\dac|wait_cnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \dac|wait_cnt~1_combout\,
	clrn => \ALT_INV_RST~q\,
	sload => VCC,
	ena => \dac|state.ST_STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|wait_cnt\(30));

-- Location: LCCOMB_X35_Y25_N30
\dac|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Add0~62_combout\ = \dac|Add0~61\ $ (!\dac|wait_cnt\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \dac|wait_cnt\(31),
	cin => \dac|Add0~61\,
	combout => \dac|Add0~62_combout\);

-- Location: LCCOMB_X34_Y26_N20
\dac|wait_cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|wait_cnt~0_combout\ = (!\dac|Equal2~10_combout\ & \dac|Add0~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dac|Equal2~10_combout\,
	datad => \dac|Add0~62_combout\,
	combout => \dac|wait_cnt~0_combout\);

-- Location: FF_X34_Y25_N13
\dac|wait_cnt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \dac|wait_cnt~0_combout\,
	clrn => \ALT_INV_RST~q\,
	sload => VCC,
	ena => \dac|state.ST_STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|wait_cnt\(31));

-- Location: LCCOMB_X34_Y25_N30
\dac|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Equal2~0_combout\ = (!\dac|wait_cnt\(31) & (!\dac|wait_cnt\(29) & (!\dac|wait_cnt\(30) & !\dac|wait_cnt\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|wait_cnt\(31),
	datab => \dac|wait_cnt\(29),
	datac => \dac|wait_cnt\(30),
	datad => \dac|wait_cnt\(28),
	combout => \dac|Equal2~0_combout\);

-- Location: LCCOMB_X34_Y25_N16
\dac|Equal2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Equal2~3_combout\ = (!\dac|wait_cnt\(19) & (!\dac|wait_cnt\(16) & (!\dac|wait_cnt\(18) & !\dac|wait_cnt\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|wait_cnt\(19),
	datab => \dac|wait_cnt\(16),
	datac => \dac|wait_cnt\(18),
	datad => \dac|wait_cnt\(17),
	combout => \dac|Equal2~3_combout\);

-- Location: LCCOMB_X34_Y25_N6
\dac|Equal2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Equal2~4_combout\ = (\dac|Equal2~1_combout\ & (\dac|Equal2~2_combout\ & (\dac|Equal2~0_combout\ & \dac|Equal2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|Equal2~1_combout\,
	datab => \dac|Equal2~2_combout\,
	datac => \dac|Equal2~0_combout\,
	datad => \dac|Equal2~3_combout\,
	combout => \dac|Equal2~4_combout\);

-- Location: LCCOMB_X34_Y26_N30
\dac|Equal2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Equal2~10_combout\ = (\dac|Equal2~9_combout\ & (\dac|Equal2~8_combout\ & (\dac|Equal2~7_combout\ & \dac|Equal2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|Equal2~9_combout\,
	datab => \dac|Equal2~8_combout\,
	datac => \dac|Equal2~7_combout\,
	datad => \dac|Equal2~4_combout\,
	combout => \dac|Equal2~10_combout\);

-- Location: LCCOMB_X36_Y26_N12
\dac|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Selector5~0_combout\ = (\dac|state.ST_WR_1~q\ & ((\dac|busy_prev\(0)) # ((!\dac|i2c_master_inst|ack_error~q\) # (!\dac|busy_prev\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|busy_prev\(0),
	datab => \dac|state.ST_WR_1~q\,
	datac => \dac|busy_prev\(1),
	datad => \dac|i2c_master_inst|ack_error~q\,
	combout => \dac|Selector5~0_combout\);

-- Location: LCCOMB_X36_Y26_N10
\dac|Selector5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Selector5~2_combout\ = (\dac|Selector5~1_combout\) # ((\dac|Selector5~0_combout\) # ((\dac|state.ST_STOP~q\ & !\dac|Equal2~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|Selector5~1_combout\,
	datab => \dac|state.ST_STOP~q\,
	datac => \dac|Equal2~10_combout\,
	datad => \dac|Selector5~0_combout\,
	combout => \dac|Selector5~2_combout\);

-- Location: LCCOMB_X36_Y26_N28
\dac|Selector5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Selector5~3_combout\ = (\dac|state.ST_START~q\) # ((\dac|Selector5~2_combout\ & \dac|ena~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|Selector5~2_combout\,
	datac => \dac|ena~q\,
	datad => \dac|state.ST_START~q\,
	combout => \dac|Selector5~3_combout\);

-- Location: FF_X36_Y25_N9
\dac|ena\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \dac|Selector5~3_combout\,
	clrn => \ALT_INV_RST~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|ena~q\);

-- Location: LCCOMB_X36_Y25_N4
\dac|i2c_master_inst|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Selector21~0_combout\ = (\dac|i2c_master_inst|Equal1~0_combout\ & (\dac|ena~q\ & ((\dac|i2c_master_inst|state.mstr_ack~q\)))) # (!\dac|i2c_master_inst|Equal1~0_combout\ & ((\dac|i2c_master_inst|state.rd~q\) # ((\dac|ena~q\ & 
-- \dac|i2c_master_inst|state.mstr_ack~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|Equal1~0_combout\,
	datab => \dac|ena~q\,
	datac => \dac|i2c_master_inst|state.rd~q\,
	datad => \dac|i2c_master_inst|state.mstr_ack~q\,
	combout => \dac|i2c_master_inst|Selector21~0_combout\);

-- Location: FF_X36_Y25_N5
\dac|i2c_master_inst|state.rd\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|i2c_master_inst|Selector21~0_combout\,
	clrn => \ALT_INV_RST~q\,
	ena => \dac|i2c_master_inst|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|i2c_master_inst|state.rd~q\);

-- Location: LCCOMB_X36_Y25_N6
\dac|i2c_master_inst|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Selector0~0_combout\ = (!\dac|i2c_master_inst|state.rd~q\ & !\dac|i2c_master_inst|state.wr~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dac|i2c_master_inst|state.rd~q\,
	datad => \dac|i2c_master_inst|state.wr~q\,
	combout => \dac|i2c_master_inst|Selector0~0_combout\);

-- Location: LCCOMB_X37_Y25_N30
\dac|i2c_master_inst|bit_cnt[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|bit_cnt[2]~4_combout\ = (!\dac|i2c_master_inst|data_clk_prev~q\ & (\dac|i2c_master_inst|data_clk~q\ & ((\dac|i2c_master_inst|state.command~q\) # (!\dac|i2c_master_inst|Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|data_clk_prev~q\,
	datab => \dac|i2c_master_inst|Selector0~0_combout\,
	datac => \dac|i2c_master_inst|data_clk~q\,
	datad => \dac|i2c_master_inst|state.command~q\,
	combout => \dac|i2c_master_inst|bit_cnt[2]~4_combout\);

-- Location: FF_X37_Y25_N19
\dac|i2c_master_inst|bit_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|i2c_master_inst|bit_cnt[0]~5_combout\,
	clrn => \ALT_INV_RST~q\,
	ena => \dac|i2c_master_inst|bit_cnt[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|i2c_master_inst|bit_cnt\(0));

-- Location: LCCOMB_X36_Y27_N20
\dac|i2c_master_inst|Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Selector25~0_combout\ = \dac|i2c_master_inst|bit_cnt\(0) $ (\dac|i2c_master_inst|bit_cnt\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dac|i2c_master_inst|bit_cnt\(0),
	datad => \dac|i2c_master_inst|bit_cnt\(1),
	combout => \dac|i2c_master_inst|Selector25~0_combout\);

-- Location: FF_X37_Y25_N25
\dac|i2c_master_inst|bit_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \dac|i2c_master_inst|Selector25~0_combout\,
	clrn => \ALT_INV_RST~q\,
	sload => VCC,
	ena => \dac|i2c_master_inst|bit_cnt[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|i2c_master_inst|bit_cnt\(1));

-- Location: LCCOMB_X37_Y25_N22
\dac|i2c_master_inst|state~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|state~13_combout\ = (\dac|i2c_master_inst|bit_cnt\(1) & (\dac|i2c_master_inst|bit_cnt\(0) & (\dac|i2c_master_inst|bit_cnt\(2) & \dac|i2c_master_inst|state.rd~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|bit_cnt\(1),
	datab => \dac|i2c_master_inst|bit_cnt\(0),
	datac => \dac|i2c_master_inst|bit_cnt\(2),
	datad => \dac|i2c_master_inst|state.rd~q\,
	combout => \dac|i2c_master_inst|state~13_combout\);

-- Location: IOIBUF_X25_Y34_N1
\ADC_SDAT~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_SDAT,
	o => \ADC_SDAT~input_o\);

-- Location: LCCOMB_X38_Y30_N4
\adc|spi_driver|rx_buffer[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|rx_buffer[0]~feeder_combout\ = \ADC_SDAT~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ADC_SDAT~input_o\,
	combout => \adc|spi_driver|rx_buffer[0]~feeder_combout\);

-- Location: LCCOMB_X38_Y30_N26
\adc|spi_driver|ss_n~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|ss_n~0_combout\ = (!\adc|spi_driver|clk_ratio\(0) & !\adc|spi_driver|ss_n\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc|spi_driver|clk_ratio\(0),
	datad => \adc|spi_driver|ss_n\(0),
	combout => \adc|spi_driver|ss_n~0_combout\);

-- Location: LCCOMB_X37_Y30_N20
\adc|spi_driver|ss_n~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|ss_n~1_combout\ = (\adc|spi_driver|state~q\ & (!\adc|spi_driver|ss_n~0_combout\ & ((\adc|spi_driver|Equal3~1_combout\) # (!\adc|spi_driver|Equal1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|Equal3~1_combout\,
	datab => \adc|spi_driver|state~q\,
	datac => \adc|spi_driver|Equal1~10_combout\,
	datad => \adc|spi_driver|ss_n~0_combout\,
	combout => \adc|spi_driver|ss_n~1_combout\);

-- Location: FF_X37_Y30_N21
\adc|spi_driver|ss_n[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|ss_n~1_combout\,
	clrn => \adc|reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|ss_n\(0));

-- Location: LCCOMB_X37_Y30_N26
\adc|spi_driver|rx_buffer[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|rx_buffer[7]~0_combout\ = (\adc|spi_driver|clk_ratio\(0)) # ((!\adc|spi_driver|clk_toggles\(0) & \adc|spi_driver|Equal3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|clk_ratio\(0),
	datac => \adc|spi_driver|clk_toggles\(0),
	datad => \adc|spi_driver|Equal3~0_combout\,
	combout => \adc|spi_driver|rx_buffer[7]~0_combout\);

-- Location: LCCOMB_X38_Y30_N10
\adc|spi_driver|rx_buffer[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|rx_buffer[7]~1_combout\ = (\adc|spi_driver|rx_buffer[7]~0_combout\ & (!\adc|spi_driver|clk_toggles\(5) & (!\adc|spi_driver|assert_data~q\ & \adc|reset~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|rx_buffer[7]~0_combout\,
	datab => \adc|spi_driver|clk_toggles\(5),
	datac => \adc|spi_driver|assert_data~q\,
	datad => \adc|reset~q\,
	combout => \adc|spi_driver|rx_buffer[7]~1_combout\);

-- Location: LCCOMB_X38_Y30_N18
\adc|spi_driver|rx_buffer[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|rx_buffer[7]~2_combout\ = (\adc|spi_driver|state~q\ & (\adc|spi_driver|ss_n\(0) & (\adc|spi_driver|Equal1~10_combout\ & \adc|spi_driver|rx_buffer[7]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|state~q\,
	datab => \adc|spi_driver|ss_n\(0),
	datac => \adc|spi_driver|Equal1~10_combout\,
	datad => \adc|spi_driver|rx_buffer[7]~1_combout\,
	combout => \adc|spi_driver|rx_buffer[7]~2_combout\);

-- Location: FF_X38_Y30_N5
\adc|spi_driver|rx_buffer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|rx_buffer[0]~feeder_combout\,
	ena => \adc|spi_driver|rx_buffer[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_buffer\(0));

-- Location: FF_X38_Y30_N9
\adc|spi_driver|rx_buffer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \adc|spi_driver|rx_buffer\(0),
	sload => VCC,
	ena => \adc|spi_driver|rx_buffer[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_buffer\(1));

-- Location: LCCOMB_X37_Y30_N0
\adc|spi_driver|rx_data[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|rx_data[7]~0_combout\ = (\adc|spi_driver|state~q\ & (\adc|spi_driver|Equal1~10_combout\ & !\adc|spi_driver|Equal3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc|spi_driver|state~q\,
	datac => \adc|spi_driver|Equal1~10_combout\,
	datad => \adc|spi_driver|Equal3~1_combout\,
	combout => \adc|spi_driver|rx_data[7]~0_combout\);

-- Location: FF_X37_Y31_N31
\adc|spi_driver|rx_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \adc|spi_driver|rx_buffer\(1),
	clrn => \adc|reset~q\,
	sload => VCC,
	ena => \adc|spi_driver|rx_data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_data\(1));

-- Location: LCCOMB_X36_Y28_N22
\DAC_DATA[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DAC_DATA[1]~feeder_combout\ = \adc|spi_driver|rx_data\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc|spi_driver|rx_data\(1),
	combout => \DAC_DATA[1]~feeder_combout\);

-- Location: LCCOMB_X37_Y28_N26
\DAC_DATA[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DAC_DATA[7]~0_combout\ = (!\RST~q\ & \adc|state.ready~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~q\,
	datad => \adc|state.ready~reg0_q\,
	combout => \DAC_DATA[7]~0_combout\);

-- Location: FF_X36_Y28_N23
\DAC_DATA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DAC_DATA[1]~feeder_combout\,
	ena => \DAC_DATA[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DAC_DATA(1));

-- Location: LCCOMB_X35_Y28_N26
\dac|data_buffer[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|data_buffer[1]~feeder_combout\ = DAC_DATA(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => DAC_DATA(1),
	combout => \dac|data_buffer[1]~feeder_combout\);

-- Location: LCCOMB_X36_Y28_N14
\dac|data_buffer[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|data_buffer[7]~0_combout\ = (!\dac|state.ST_IDLE~q\ & !\RST~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dac|state.ST_IDLE~q\,
	datac => \RST~q\,
	combout => \dac|data_buffer[7]~0_combout\);

-- Location: FF_X35_Y28_N27
\dac|data_buffer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|data_buffer[1]~feeder_combout\,
	ena => \dac|data_buffer[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|data_buffer\(1));

-- Location: FF_X38_Y30_N13
\adc|spi_driver|rx_buffer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \adc|spi_driver|rx_buffer\(1),
	sload => VCC,
	ena => \adc|spi_driver|rx_buffer[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_buffer\(2));

-- Location: LCCOMB_X38_Y30_N20
\adc|spi_driver|rx_buffer[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|rx_buffer[3]~feeder_combout\ = \adc|spi_driver|rx_buffer\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc|spi_driver|rx_buffer\(2),
	combout => \adc|spi_driver|rx_buffer[3]~feeder_combout\);

-- Location: FF_X38_Y30_N21
\adc|spi_driver|rx_buffer[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|rx_buffer[3]~feeder_combout\,
	ena => \adc|spi_driver|rx_buffer[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_buffer\(3));

-- Location: LCCOMB_X38_Y30_N30
\adc|spi_driver|rx_buffer[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|rx_buffer[4]~feeder_combout\ = \adc|spi_driver|rx_buffer\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc|spi_driver|rx_buffer\(3),
	combout => \adc|spi_driver|rx_buffer[4]~feeder_combout\);

-- Location: FF_X38_Y30_N31
\adc|spi_driver|rx_buffer[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|rx_buffer[4]~feeder_combout\,
	ena => \adc|spi_driver|rx_buffer[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_buffer\(4));

-- Location: FF_X38_Y30_N15
\adc|spi_driver|rx_buffer[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \adc|spi_driver|rx_buffer\(4),
	sload => VCC,
	ena => \adc|spi_driver|rx_buffer[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_buffer\(5));

-- Location: FF_X38_Y30_N1
\adc|spi_driver|rx_buffer[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \adc|spi_driver|rx_buffer\(5),
	sload => VCC,
	ena => \adc|spi_driver|rx_buffer[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_buffer\(6));

-- Location: LCCOMB_X38_Y30_N22
\adc|spi_driver|rx_buffer[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|rx_buffer[7]~feeder_combout\ = \adc|spi_driver|rx_buffer\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc|spi_driver|rx_buffer\(6),
	combout => \adc|spi_driver|rx_buffer[7]~feeder_combout\);

-- Location: FF_X38_Y30_N23
\adc|spi_driver|rx_buffer[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|rx_buffer[7]~feeder_combout\,
	ena => \adc|spi_driver|rx_buffer[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_buffer\(7));

-- Location: FF_X38_Y30_N17
\adc|spi_driver|rx_buffer[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \adc|spi_driver|rx_buffer\(7),
	sload => VCC,
	ena => \adc|spi_driver|rx_buffer[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_buffer\(8));

-- Location: FF_X38_Y30_N29
\adc|spi_driver|rx_buffer[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \adc|spi_driver|rx_buffer\(8),
	sload => VCC,
	ena => \adc|spi_driver|rx_buffer[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_buffer\(9));

-- Location: FF_X37_Y31_N9
\adc|spi_driver|rx_data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \adc|spi_driver|rx_buffer\(9),
	clrn => \adc|reset~q\,
	sload => VCC,
	ena => \adc|spi_driver|rx_data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_data\(9));

-- Location: FF_X36_Y28_N17
\DAC_DATA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \adc|spi_driver|rx_data\(9),
	sload => VCC,
	ena => \DAC_DATA[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DAC_DATA(9));

-- Location: LCCOMB_X35_Y28_N16
\dac|data_buffer[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|data_buffer[9]~feeder_combout\ = DAC_DATA(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => DAC_DATA(9),
	combout => \dac|data_buffer[9]~feeder_combout\);

-- Location: FF_X35_Y28_N17
\dac|data_buffer[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|data_buffer[9]~feeder_combout\,
	ena => \dac|data_buffer[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|data_buffer\(9));

-- Location: LCCOMB_X35_Y28_N14
\dac|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Selector12~0_combout\ = (\dac|state.ST_WR_1~q\ & (\dac|data_buffer\(1))) # (!\dac|state.ST_WR_1~q\ & ((\dac|data_buffer\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|data_buffer\(1),
	datac => \dac|state.ST_WR_1~q\,
	datad => \dac|data_buffer\(9),
	combout => \dac|Selector12~0_combout\);

-- Location: LCCOMB_X36_Y26_N2
\dac|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|process_0~0_combout\ = (!\dac|i2c_master_inst|busy~q\ & !\SCL~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dac|i2c_master_inst|busy~q\,
	datad => \SCL~input_o\,
	combout => \dac|process_0~0_combout\);

-- Location: LCCOMB_X35_Y27_N0
\dac|data_wr[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|data_wr[3]~4_combout\ = (!\RST~q\ & ((\dac|state.ST_WR_1~q\ & (\dac|process_0~0_combout\)) # (!\dac|state.ST_WR_1~q\ & ((\dac|state.ST_START~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|process_0~0_combout\,
	datab => \dac|state.ST_WR_1~q\,
	datac => \RST~q\,
	datad => \dac|state.ST_START~q\,
	combout => \dac|data_wr[3]~4_combout\);

-- Location: FF_X35_Y28_N15
\dac|data_wr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|Selector12~0_combout\,
	ena => \dac|data_wr[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|data_wr\(1));

-- Location: LCCOMB_X36_Y25_N2
\dac|i2c_master_inst|data_tx[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|data_tx[7]~1_combout\ = (\dac|ena~q\ & (!\dac|i2c_master_inst|data_tx[7]~0_combout\ & (!\RST~q\ & \dac|i2c_master_inst|process_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|ena~q\,
	datab => \dac|i2c_master_inst|data_tx[7]~0_combout\,
	datac => \RST~q\,
	datad => \dac|i2c_master_inst|process_1~0_combout\,
	combout => \dac|i2c_master_inst|data_tx[7]~1_combout\);

-- Location: FF_X36_Y27_N9
\dac|i2c_master_inst|data_tx[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \dac|data_wr\(1),
	sload => VCC,
	ena => \dac|i2c_master_inst|data_tx[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|i2c_master_inst|data_tx\(1));

-- Location: LCCOMB_X37_Y31_N22
\adc|spi_driver|rx_data[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|rx_data[0]~feeder_combout\ = \adc|spi_driver|rx_buffer\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc|spi_driver|rx_buffer\(0),
	combout => \adc|spi_driver|rx_data[0]~feeder_combout\);

-- Location: FF_X37_Y31_N23
\adc|spi_driver|rx_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|rx_data[0]~feeder_combout\,
	clrn => \adc|reset~q\,
	ena => \adc|spi_driver|rx_data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_data\(0));

-- Location: FF_X36_Y28_N27
\DAC_DATA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \adc|spi_driver|rx_data\(0),
	sload => VCC,
	ena => \DAC_DATA[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DAC_DATA(0));

-- Location: LCCOMB_X35_Y28_N10
\dac|data_buffer[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|data_buffer[0]~feeder_combout\ = DAC_DATA(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => DAC_DATA(0),
	combout => \dac|data_buffer[0]~feeder_combout\);

-- Location: FF_X35_Y28_N11
\dac|data_buffer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|data_buffer[0]~feeder_combout\,
	ena => \dac|data_buffer[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|data_buffer\(0));

-- Location: LCCOMB_X37_Y31_N12
\adc|spi_driver|rx_data[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|rx_data[8]~feeder_combout\ = \adc|spi_driver|rx_buffer\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc|spi_driver|rx_buffer\(8),
	combout => \adc|spi_driver|rx_data[8]~feeder_combout\);

-- Location: FF_X37_Y31_N13
\adc|spi_driver|rx_data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|rx_data[8]~feeder_combout\,
	clrn => \adc|reset~q\,
	ena => \adc|spi_driver|rx_data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_data\(8));

-- Location: FF_X36_Y28_N29
\DAC_DATA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \adc|spi_driver|rx_data\(8),
	sload => VCC,
	ena => \DAC_DATA[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DAC_DATA(8));

-- Location: LCCOMB_X35_Y28_N0
\dac|data_buffer[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|data_buffer[8]~feeder_combout\ = DAC_DATA(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => DAC_DATA(8),
	combout => \dac|data_buffer[8]~feeder_combout\);

-- Location: FF_X35_Y28_N1
\dac|data_buffer[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|data_buffer[8]~feeder_combout\,
	ena => \dac|data_buffer[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|data_buffer\(8));

-- Location: LCCOMB_X35_Y28_N12
\dac|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Selector13~0_combout\ = (\dac|state.ST_WR_1~q\ & (\dac|data_buffer\(0))) # (!\dac|state.ST_WR_1~q\ & ((\dac|data_buffer\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|data_buffer\(0),
	datac => \dac|state.ST_WR_1~q\,
	datad => \dac|data_buffer\(8),
	combout => \dac|Selector13~0_combout\);

-- Location: FF_X35_Y28_N13
\dac|data_wr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|Selector13~0_combout\,
	ena => \dac|data_wr[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|data_wr\(0));

-- Location: FF_X36_Y27_N23
\dac|i2c_master_inst|data_tx[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \dac|data_wr\(0),
	sload => VCC,
	ena => \dac|i2c_master_inst|data_tx[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|i2c_master_inst|data_tx\(0));

-- Location: LCCOMB_X36_Y27_N22
\dac|i2c_master_inst|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Mux2~2_combout\ = (\dac|i2c_master_inst|bit_cnt\(0) & (((\dac|i2c_master_inst|data_tx\(0) & \dac|i2c_master_inst|bit_cnt\(1))))) # (!\dac|i2c_master_inst|bit_cnt\(0) & ((\dac|i2c_master_inst|data_tx\(1)) # 
-- ((!\dac|i2c_master_inst|bit_cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|data_tx\(1),
	datab => \dac|i2c_master_inst|bit_cnt\(0),
	datac => \dac|i2c_master_inst|data_tx\(0),
	datad => \dac|i2c_master_inst|bit_cnt\(1),
	combout => \dac|i2c_master_inst|Mux2~2_combout\);

-- Location: LCCOMB_X38_Y30_N24
\adc|spi_driver|rx_buffer[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|rx_buffer[10]~feeder_combout\ = \adc|spi_driver|rx_buffer\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc|spi_driver|rx_buffer\(9),
	combout => \adc|spi_driver|rx_buffer[10]~feeder_combout\);

-- Location: FF_X38_Y30_N25
\adc|spi_driver|rx_buffer[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|rx_buffer[10]~feeder_combout\,
	ena => \adc|spi_driver|rx_buffer[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_buffer\(10));

-- Location: FF_X37_Y31_N21
\adc|spi_driver|rx_data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \adc|spi_driver|rx_buffer\(10),
	clrn => \adc|reset~q\,
	sload => VCC,
	ena => \adc|spi_driver|rx_data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_data\(10));

-- Location: LCCOMB_X36_Y28_N8
\DAC_DATA[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DAC_DATA[10]~feeder_combout\ = \adc|spi_driver|rx_data\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc|spi_driver|rx_data\(10),
	combout => \DAC_DATA[10]~feeder_combout\);

-- Location: FF_X36_Y28_N9
\DAC_DATA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DAC_DATA[10]~feeder_combout\,
	ena => \DAC_DATA[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DAC_DATA(10));

-- Location: FF_X35_Y28_N29
\dac|data_buffer[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => DAC_DATA(10),
	sload => VCC,
	ena => \dac|data_buffer[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|data_buffer\(10));

-- Location: FF_X37_Y31_N7
\adc|spi_driver|rx_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \adc|spi_driver|rx_buffer\(2),
	clrn => \adc|reset~q\,
	sload => VCC,
	ena => \adc|spi_driver|rx_data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_data\(2));

-- Location: LCCOMB_X36_Y28_N18
\DAC_DATA[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DAC_DATA[2]~feeder_combout\ = \adc|spi_driver|rx_data\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc|spi_driver|rx_data\(2),
	combout => \DAC_DATA[2]~feeder_combout\);

-- Location: FF_X36_Y28_N19
\DAC_DATA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DAC_DATA[2]~feeder_combout\,
	ena => \DAC_DATA[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DAC_DATA(2));

-- Location: LCCOMB_X35_Y28_N2
\dac|data_buffer[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|data_buffer[2]~feeder_combout\ = DAC_DATA(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => DAC_DATA(2),
	combout => \dac|data_buffer[2]~feeder_combout\);

-- Location: FF_X35_Y28_N3
\dac|data_buffer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|data_buffer[2]~feeder_combout\,
	ena => \dac|data_buffer[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|data_buffer\(2));

-- Location: LCCOMB_X35_Y28_N24
\dac|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Selector11~0_combout\ = (\dac|state.ST_WR_1~q\ & ((\dac|data_buffer\(2)))) # (!\dac|state.ST_WR_1~q\ & (\dac|data_buffer\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dac|data_buffer\(10),
	datac => \dac|state.ST_WR_1~q\,
	datad => \dac|data_buffer\(2),
	combout => \dac|Selector11~0_combout\);

-- Location: FF_X35_Y28_N25
\dac|data_wr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|Selector11~0_combout\,
	ena => \dac|data_wr[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|data_wr\(2));

-- Location: FF_X36_Y27_N15
\dac|i2c_master_inst|data_tx[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \dac|data_wr\(2),
	sload => VCC,
	ena => \dac|i2c_master_inst|data_tx[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|i2c_master_inst|data_tx\(2));

-- Location: LCCOMB_X38_Y30_N2
\adc|spi_driver|rx_buffer[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|rx_buffer[11]~feeder_combout\ = \adc|spi_driver|rx_buffer\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc|spi_driver|rx_buffer\(10),
	combout => \adc|spi_driver|rx_buffer[11]~feeder_combout\);

-- Location: FF_X38_Y30_N3
\adc|spi_driver|rx_buffer[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|rx_buffer[11]~feeder_combout\,
	ena => \adc|spi_driver|rx_buffer[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_buffer\(11));

-- Location: FF_X37_Y31_N29
\adc|spi_driver|rx_data[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \adc|spi_driver|rx_buffer\(11),
	clrn => \adc|reset~q\,
	sload => VCC,
	ena => \adc|spi_driver|rx_data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_data\(11));

-- Location: LCCOMB_X36_Y28_N4
\DAC_DATA[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DAC_DATA[11]~feeder_combout\ = \adc|spi_driver|rx_data\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc|spi_driver|rx_data\(11),
	combout => \DAC_DATA[11]~feeder_combout\);

-- Location: FF_X36_Y28_N5
\DAC_DATA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DAC_DATA[11]~feeder_combout\,
	ena => \DAC_DATA[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DAC_DATA(11));

-- Location: LCCOMB_X35_Y28_N6
\dac|data_buffer[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|data_buffer[11]~feeder_combout\ = DAC_DATA(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => DAC_DATA(11),
	combout => \dac|data_buffer[11]~feeder_combout\);

-- Location: FF_X35_Y28_N7
\dac|data_buffer[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|data_buffer[11]~feeder_combout\,
	ena => \dac|data_buffer[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|data_buffer\(11));

-- Location: FF_X37_Y31_N19
\adc|spi_driver|rx_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \adc|spi_driver|rx_buffer\(3),
	clrn => \adc|reset~q\,
	sload => VCC,
	ena => \adc|spi_driver|rx_data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_data\(3));

-- Location: LCCOMB_X36_Y28_N30
\DAC_DATA[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DAC_DATA[3]~feeder_combout\ = \adc|spi_driver|rx_data\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc|spi_driver|rx_data\(3),
	combout => \DAC_DATA[3]~feeder_combout\);

-- Location: FF_X36_Y28_N31
\DAC_DATA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DAC_DATA[3]~feeder_combout\,
	ena => \DAC_DATA[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DAC_DATA(3));

-- Location: FF_X35_Y28_N5
\dac|data_buffer[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => DAC_DATA(3),
	sload => VCC,
	ena => \dac|data_buffer[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|data_buffer\(3));

-- Location: LCCOMB_X35_Y28_N18
\dac|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Selector10~0_combout\ = (\dac|state.ST_WR_1~q\ & ((\dac|data_buffer\(3)))) # (!\dac|state.ST_WR_1~q\ & (\dac|data_buffer\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|data_buffer\(11),
	datab => \dac|data_buffer\(3),
	datac => \dac|state.ST_WR_1~q\,
	combout => \dac|Selector10~0_combout\);

-- Location: FF_X35_Y28_N19
\dac|data_wr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|Selector10~0_combout\,
	ena => \dac|data_wr[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|data_wr\(3));

-- Location: FF_X36_Y27_N17
\dac|i2c_master_inst|data_tx[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \dac|data_wr\(3),
	sload => VCC,
	ena => \dac|i2c_master_inst|data_tx[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|i2c_master_inst|data_tx\(3));

-- Location: LCCOMB_X36_Y27_N16
\dac|i2c_master_inst|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Mux2~3_combout\ = (\dac|i2c_master_inst|Mux2~2_combout\ & (((\dac|i2c_master_inst|data_tx\(3)) # (\dac|i2c_master_inst|bit_cnt\(1))))) # (!\dac|i2c_master_inst|Mux2~2_combout\ & (\dac|i2c_master_inst|data_tx\(2) & 
-- ((!\dac|i2c_master_inst|bit_cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|Mux2~2_combout\,
	datab => \dac|i2c_master_inst|data_tx\(2),
	datac => \dac|i2c_master_inst|data_tx\(3),
	datad => \dac|i2c_master_inst|bit_cnt\(1),
	combout => \dac|i2c_master_inst|Mux2~3_combout\);

-- Location: LCCOMB_X37_Y25_N26
\dac|i2c_master_inst|Selector23~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Selector23~3_combout\ = (\dac|i2c_master_inst|bit_cnt\(2) & (\dac|i2c_master_inst|state.slv_ack1~q\ & \dac|i2c_master_inst|Mux2~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|bit_cnt\(2),
	datac => \dac|i2c_master_inst|state.slv_ack1~q\,
	datad => \dac|i2c_master_inst|Mux2~3_combout\,
	combout => \dac|i2c_master_inst|Selector23~3_combout\);

-- Location: LCCOMB_X37_Y31_N14
\adc|spi_driver|rx_data[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|rx_data[4]~feeder_combout\ = \adc|spi_driver|rx_buffer\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc|spi_driver|rx_buffer\(4),
	combout => \adc|spi_driver|rx_data[4]~feeder_combout\);

-- Location: FF_X37_Y31_N15
\adc|spi_driver|rx_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|rx_data[4]~feeder_combout\,
	clrn => \adc|reset~q\,
	ena => \adc|spi_driver|rx_data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_data\(4));

-- Location: FF_X36_Y28_N11
\DAC_DATA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \adc|spi_driver|rx_data\(4),
	sload => VCC,
	ena => \DAC_DATA[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DAC_DATA(4));

-- Location: FF_X35_Y28_N23
\dac|data_buffer[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => DAC_DATA(4),
	sload => VCC,
	ena => \dac|data_buffer[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|data_buffer\(4));

-- Location: LCCOMB_X35_Y27_N24
\dac|data_wr[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|data_wr[4]~2_combout\ = (\dac|process_0~0_combout\ & (\dac|data_buffer\(4))) # (!\dac|process_0~0_combout\ & ((\dac|data_wr\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|data_buffer\(4),
	datac => \dac|data_wr\(4),
	datad => \dac|process_0~0_combout\,
	combout => \dac|data_wr[4]~2_combout\);

-- Location: LCCOMB_X35_Y27_N28
\dac|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Selector9~0_combout\ = (\dac|data_wr\(4) & !\dac|state.ST_START~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dac|data_wr\(4),
	datad => \dac|state.ST_START~q\,
	combout => \dac|Selector9~0_combout\);

-- Location: FF_X35_Y27_N25
\dac|data_wr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|data_wr[4]~2_combout\,
	asdata => \dac|Selector9~0_combout\,
	sload => \dac|ALT_INV_state.ST_WR_1~q\,
	ena => \ALT_INV_RST~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|data_wr\(4));

-- Location: FF_X36_Y27_N13
\dac|i2c_master_inst|data_tx[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \dac|data_wr\(4),
	sload => VCC,
	ena => \dac|i2c_master_inst|data_tx[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|i2c_master_inst|data_tx\(4));

-- Location: LCCOMB_X37_Y31_N4
\adc|spi_driver|rx_data[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|rx_data[5]~feeder_combout\ = \adc|spi_driver|rx_buffer\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc|spi_driver|rx_buffer\(5),
	combout => \adc|spi_driver|rx_data[5]~feeder_combout\);

-- Location: FF_X37_Y31_N5
\adc|spi_driver|rx_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|rx_data[5]~feeder_combout\,
	clrn => \adc|reset~q\,
	ena => \adc|spi_driver|rx_data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_data\(5));

-- Location: FF_X36_Y28_N13
\DAC_DATA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \adc|spi_driver|rx_data\(5),
	sload => VCC,
	ena => \DAC_DATA[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DAC_DATA(5));

-- Location: FF_X35_Y28_N9
\dac|data_buffer[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => DAC_DATA(5),
	sload => VCC,
	ena => \dac|data_buffer[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|data_buffer\(5));

-- Location: LCCOMB_X35_Y27_N26
\dac|data_wr[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|data_wr[5]~1_combout\ = (\dac|process_0~0_combout\ & (\dac|data_buffer\(5))) # (!\dac|process_0~0_combout\ & ((\dac|data_wr\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dac|data_buffer\(5),
	datac => \dac|data_wr\(5),
	datad => \dac|process_0~0_combout\,
	combout => \dac|data_wr[5]~1_combout\);

-- Location: LCCOMB_X35_Y27_N22
\dac|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Selector8~0_combout\ = (\dac|data_wr\(5) & !\dac|state.ST_START~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dac|data_wr\(5),
	datad => \dac|state.ST_START~q\,
	combout => \dac|Selector8~0_combout\);

-- Location: FF_X35_Y27_N27
\dac|data_wr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|data_wr[5]~1_combout\,
	asdata => \dac|Selector8~0_combout\,
	sload => \dac|ALT_INV_state.ST_WR_1~q\,
	ena => \ALT_INV_RST~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|data_wr\(5));

-- Location: FF_X36_Y27_N1
\dac|i2c_master_inst|data_tx[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \dac|data_wr\(5),
	sload => VCC,
	ena => \dac|i2c_master_inst|data_tx[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|i2c_master_inst|data_tx\(5));

-- Location: FF_X37_Y31_N25
\adc|spi_driver|rx_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \adc|spi_driver|rx_buffer\(7),
	clrn => \adc|reset~q\,
	sload => VCC,
	ena => \adc|spi_driver|rx_data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_data\(7));

-- Location: LCCOMB_X36_Y28_N20
\DAC_DATA[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DAC_DATA[7]~feeder_combout\ = \adc|spi_driver|rx_data\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc|spi_driver|rx_data\(7),
	combout => \DAC_DATA[7]~feeder_combout\);

-- Location: FF_X36_Y28_N21
\DAC_DATA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DAC_DATA[7]~feeder_combout\,
	ena => \DAC_DATA[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DAC_DATA(7));

-- Location: FF_X35_Y28_N21
\dac|data_buffer[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => DAC_DATA(7),
	sload => VCC,
	ena => \dac|data_buffer[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|data_buffer\(7));

-- Location: LCCOMB_X35_Y27_N6
\dac|data_wr[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|data_wr[7]~3_combout\ = (\dac|process_0~0_combout\ & (\dac|data_buffer\(7))) # (!\dac|process_0~0_combout\ & ((\dac|data_wr\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|data_buffer\(7),
	datac => \dac|data_wr\(7),
	datad => \dac|process_0~0_combout\,
	combout => \dac|data_wr[7]~3_combout\);

-- Location: LCCOMB_X35_Y27_N30
\dac|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Selector6~0_combout\ = (\dac|data_wr\(7) & !\dac|state.ST_START~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|data_wr\(7),
	datad => \dac|state.ST_START~q\,
	combout => \dac|Selector6~0_combout\);

-- Location: FF_X35_Y27_N7
\dac|data_wr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|data_wr[7]~3_combout\,
	asdata => \dac|Selector6~0_combout\,
	sload => \dac|ALT_INV_state.ST_WR_1~q\,
	ena => \ALT_INV_RST~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|data_wr\(7));

-- Location: FF_X36_Y27_N11
\dac|i2c_master_inst|data_tx[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \dac|data_wr\(7),
	sload => VCC,
	ena => \dac|i2c_master_inst|data_tx[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|i2c_master_inst|data_tx\(7));

-- Location: LCCOMB_X37_Y31_N2
\adc|spi_driver|rx_data[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|rx_data[6]~feeder_combout\ = \adc|spi_driver|rx_buffer\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc|spi_driver|rx_buffer\(6),
	combout => \adc|spi_driver|rx_data[6]~feeder_combout\);

-- Location: FF_X37_Y31_N3
\adc|spi_driver|rx_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|rx_data[6]~feeder_combout\,
	clrn => \adc|reset~q\,
	ena => \adc|spi_driver|rx_data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_data\(6));

-- Location: LCCOMB_X36_Y28_N0
\DAC_DATA[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DAC_DATA[6]~feeder_combout\ = \adc|spi_driver|rx_data\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc|spi_driver|rx_data\(6),
	combout => \DAC_DATA[6]~feeder_combout\);

-- Location: FF_X36_Y28_N1
\DAC_DATA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DAC_DATA[6]~feeder_combout\,
	ena => \DAC_DATA[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DAC_DATA(6));

-- Location: FF_X35_Y28_N31
\dac|data_buffer[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => DAC_DATA(6),
	sload => VCC,
	ena => \dac|data_buffer[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|data_buffer\(6));

-- Location: LCCOMB_X35_Y27_N16
\dac|data_wr[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|data_wr[6]~0_combout\ = (\dac|process_0~0_combout\ & (\dac|data_buffer\(6))) # (!\dac|process_0~0_combout\ & ((\dac|data_wr\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|data_buffer\(6),
	datac => \dac|data_wr\(6),
	datad => \dac|process_0~0_combout\,
	combout => \dac|data_wr[6]~0_combout\);

-- Location: LCCOMB_X35_Y27_N8
\dac|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Selector7~0_combout\ = (\dac|data_wr\(6) & !\dac|state.ST_START~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dac|data_wr\(6),
	datad => \dac|state.ST_START~q\,
	combout => \dac|Selector7~0_combout\);

-- Location: FF_X35_Y27_N17
\dac|data_wr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|data_wr[6]~0_combout\,
	asdata => \dac|Selector7~0_combout\,
	sload => \dac|ALT_INV_state.ST_WR_1~q\,
	ena => \ALT_INV_RST~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|data_wr\(6));

-- Location: FF_X36_Y27_N7
\dac|i2c_master_inst|data_tx[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \dac|data_wr\(6),
	sload => VCC,
	ena => \dac|i2c_master_inst|data_tx[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|i2c_master_inst|data_tx\(6));

-- Location: LCCOMB_X36_Y27_N6
\dac|i2c_master_inst|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Mux3~2_combout\ = (\dac|i2c_master_inst|bit_cnt\(0) & (\dac|i2c_master_inst|data_tx\(7) & ((\dac|i2c_master_inst|bit_cnt\(1))))) # (!\dac|i2c_master_inst|bit_cnt\(0) & (((\dac|i2c_master_inst|data_tx\(6)) # 
-- (\dac|i2c_master_inst|bit_cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|data_tx\(7),
	datab => \dac|i2c_master_inst|bit_cnt\(0),
	datac => \dac|i2c_master_inst|data_tx\(6),
	datad => \dac|i2c_master_inst|bit_cnt\(1),
	combout => \dac|i2c_master_inst|Mux3~2_combout\);

-- Location: LCCOMB_X36_Y27_N0
\dac|i2c_master_inst|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Mux3~3_combout\ = (\dac|i2c_master_inst|Selector25~0_combout\ & ((\dac|i2c_master_inst|Mux3~2_combout\ & (\dac|i2c_master_inst|data_tx\(4))) # (!\dac|i2c_master_inst|Mux3~2_combout\ & ((\dac|i2c_master_inst|data_tx\(5)))))) # 
-- (!\dac|i2c_master_inst|Selector25~0_combout\ & (((\dac|i2c_master_inst|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|data_tx\(4),
	datab => \dac|i2c_master_inst|Selector25~0_combout\,
	datac => \dac|i2c_master_inst|data_tx\(5),
	datad => \dac|i2c_master_inst|Mux3~2_combout\,
	combout => \dac|i2c_master_inst|Mux3~3_combout\);

-- Location: LCCOMB_X36_Y27_N14
\dac|i2c_master_inst|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Mux3~0_combout\ = (\dac|i2c_master_inst|bit_cnt\(0) & (\dac|i2c_master_inst|data_tx\(3) & ((\dac|i2c_master_inst|bit_cnt\(1))))) # (!\dac|i2c_master_inst|bit_cnt\(0) & (((\dac|i2c_master_inst|data_tx\(2)) # 
-- (\dac|i2c_master_inst|bit_cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|data_tx\(3),
	datab => \dac|i2c_master_inst|bit_cnt\(0),
	datac => \dac|i2c_master_inst|data_tx\(2),
	datad => \dac|i2c_master_inst|bit_cnt\(1),
	combout => \dac|i2c_master_inst|Mux3~0_combout\);

-- Location: LCCOMB_X36_Y27_N8
\dac|i2c_master_inst|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Mux3~1_combout\ = (\dac|i2c_master_inst|Mux3~0_combout\ & ((\dac|i2c_master_inst|data_tx\(0)) # ((!\dac|i2c_master_inst|Selector25~0_combout\)))) # (!\dac|i2c_master_inst|Mux3~0_combout\ & (((\dac|i2c_master_inst|data_tx\(1) & 
-- \dac|i2c_master_inst|Selector25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|Mux3~0_combout\,
	datab => \dac|i2c_master_inst|data_tx\(0),
	datac => \dac|i2c_master_inst|data_tx\(1),
	datad => \dac|i2c_master_inst|Selector25~0_combout\,
	combout => \dac|i2c_master_inst|Mux3~1_combout\);

-- Location: LCCOMB_X36_Y27_N4
\dac|i2c_master_inst|Selector23~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Selector23~4_combout\ = (\dac|i2c_master_inst|Equal1~0_combout\) # ((\dac|i2c_master_inst|Add1~0_combout\ & ((\dac|i2c_master_inst|Mux3~1_combout\))) # (!\dac|i2c_master_inst|Add1~0_combout\ & (\dac|i2c_master_inst|Mux3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|Add1~0_combout\,
	datab => \dac|i2c_master_inst|Mux3~3_combout\,
	datac => \dac|i2c_master_inst|Mux3~1_combout\,
	datad => \dac|i2c_master_inst|Equal1~0_combout\,
	combout => \dac|i2c_master_inst|Selector23~4_combout\);

-- Location: LCCOMB_X37_Y25_N24
\dac|i2c_master_inst|Selector23~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Selector23~5_combout\ = (\dac|i2c_master_inst|Selector23~3_combout\) # ((\dac|i2c_master_inst|Selector23~4_combout\ & \dac|i2c_master_inst|state.wr~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|Selector23~3_combout\,
	datab => \dac|i2c_master_inst|Selector23~4_combout\,
	datad => \dac|i2c_master_inst|state.wr~q\,
	combout => \dac|i2c_master_inst|Selector23~5_combout\);

-- Location: LCCOMB_X36_Y27_N26
\dac|i2c_master_inst|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Mux4~2_combout\ = (\dac|i2c_master_inst|bit_cnt\(0) & (((\dac|data_wr\(0) & \dac|i2c_master_inst|bit_cnt\(1))))) # (!\dac|i2c_master_inst|bit_cnt\(0) & ((\dac|data_wr\(1)) # ((!\dac|i2c_master_inst|bit_cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|data_wr\(1),
	datab => \dac|i2c_master_inst|bit_cnt\(0),
	datac => \dac|data_wr\(0),
	datad => \dac|i2c_master_inst|bit_cnt\(1),
	combout => \dac|i2c_master_inst|Mux4~2_combout\);

-- Location: LCCOMB_X36_Y27_N24
\dac|i2c_master_inst|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Mux4~3_combout\ = (\dac|i2c_master_inst|Mux4~2_combout\ & ((\dac|data_wr\(3)) # ((\dac|i2c_master_inst|bit_cnt\(1))))) # (!\dac|i2c_master_inst|Mux4~2_combout\ & (((\dac|data_wr\(2) & !\dac|i2c_master_inst|bit_cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|Mux4~2_combout\,
	datab => \dac|data_wr\(3),
	datac => \dac|data_wr\(2),
	datad => \dac|i2c_master_inst|bit_cnt\(1),
	combout => \dac|i2c_master_inst|Mux4~3_combout\);

-- Location: LCCOMB_X37_Y25_N4
\dac|i2c_master_inst|Selector23~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Selector23~6_combout\ = (\dac|i2c_master_inst|state.mstr_ack~q\) # ((\dac|i2c_master_inst|Mux4~3_combout\ & (\dac|i2c_master_inst|bit_cnt\(2) & \dac|i2c_master_inst|state.slv_ack2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|Mux4~3_combout\,
	datab => \dac|i2c_master_inst|state.mstr_ack~q\,
	datac => \dac|i2c_master_inst|bit_cnt\(2),
	datad => \dac|i2c_master_inst|state.slv_ack2~q\,
	combout => \dac|i2c_master_inst|Selector23~6_combout\);

-- Location: LCCOMB_X37_Y25_N10
\dac|i2c_master_inst|Selector23~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Selector23~7_combout\ = (\dac|i2c_master_inst|Selector23~5_combout\) # ((\dac|ena~q\ & ((\dac|i2c_master_inst|Selector23~6_combout\))) # (!\dac|ena~q\ & (\dac|i2c_master_inst|state~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|state~13_combout\,
	datab => \dac|i2c_master_inst|Selector23~5_combout\,
	datac => \dac|i2c_master_inst|Selector23~6_combout\,
	datad => \dac|ena~q\,
	combout => \dac|i2c_master_inst|Selector23~7_combout\);

-- Location: LCCOMB_X36_Y25_N10
\dac|i2c_master_inst|Selector23~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Selector23~8_combout\ = (\dac|i2c_master_inst|state.mstr_ack~q\) # (((!\dac|ena~q\ & \dac|i2c_master_inst|state.slv_ack2~q\)) # (!\dac|i2c_master_inst|state.ready~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|ena~q\,
	datab => \dac|i2c_master_inst|state.mstr_ack~q\,
	datac => \dac|i2c_master_inst|state.ready~q\,
	datad => \dac|i2c_master_inst|state.slv_ack2~q\,
	combout => \dac|i2c_master_inst|Selector23~8_combout\);

-- Location: LCCOMB_X36_Y25_N24
\dac|i2c_master_inst|Selector23~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Selector23~9_combout\ = (\dac|i2c_master_inst|state.stop~q\) # ((\dac|i2c_master_inst|Selector23~8_combout\) # ((\dac|i2c_master_inst|state.rd~q\ & !\dac|i2c_master_inst|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|state.stop~q\,
	datab => \dac|i2c_master_inst|state.rd~q\,
	datac => \dac|i2c_master_inst|Equal1~0_combout\,
	datad => \dac|i2c_master_inst|Selector23~8_combout\,
	combout => \dac|i2c_master_inst|Selector23~9_combout\);

-- Location: LCCOMB_X36_Y27_N12
\dac|i2c_master_inst|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Mux2~0_combout\ = (\dac|i2c_master_inst|bit_cnt\(0) & ((\dac|i2c_master_inst|bit_cnt\(1) & ((\dac|i2c_master_inst|data_tx\(4)))) # (!\dac|i2c_master_inst|bit_cnt\(1) & (\dac|i2c_master_inst|data_tx\(6))))) # 
-- (!\dac|i2c_master_inst|bit_cnt\(0) & (((!\dac|i2c_master_inst|bit_cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|data_tx\(6),
	datab => \dac|i2c_master_inst|bit_cnt\(0),
	datac => \dac|i2c_master_inst|data_tx\(4),
	datad => \dac|i2c_master_inst|bit_cnt\(1),
	combout => \dac|i2c_master_inst|Mux2~0_combout\);

-- Location: LCCOMB_X36_Y27_N10
\dac|i2c_master_inst|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Mux2~1_combout\ = (\dac|i2c_master_inst|bit_cnt\(0) & (((\dac|i2c_master_inst|Mux2~0_combout\)))) # (!\dac|i2c_master_inst|bit_cnt\(0) & ((\dac|i2c_master_inst|Mux2~0_combout\ & ((\dac|i2c_master_inst|data_tx\(7)))) # 
-- (!\dac|i2c_master_inst|Mux2~0_combout\ & (\dac|i2c_master_inst|data_tx\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|data_tx\(5),
	datab => \dac|i2c_master_inst|bit_cnt\(0),
	datac => \dac|i2c_master_inst|data_tx\(7),
	datad => \dac|i2c_master_inst|Mux2~0_combout\,
	combout => \dac|i2c_master_inst|Mux2~1_combout\);

-- Location: LCCOMB_X37_Y25_N6
\dac|i2c_master_inst|Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Selector23~0_combout\ = (\dac|i2c_master_inst|Mux2~1_combout\ & ((\dac|i2c_master_inst|state.slv_ack1~q\) # ((!\dac|i2c_master_inst|bit_cnt\(1) & \dac|i2c_master_inst|state.start~q\)))) # (!\dac|i2c_master_inst|Mux2~1_combout\ & 
-- (((!\dac|i2c_master_inst|bit_cnt\(1) & \dac|i2c_master_inst|state.start~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|Mux2~1_combout\,
	datab => \dac|i2c_master_inst|state.slv_ack1~q\,
	datac => \dac|i2c_master_inst|bit_cnt\(1),
	datad => \dac|i2c_master_inst|state.start~q\,
	combout => \dac|i2c_master_inst|Selector23~0_combout\);

-- Location: LCCOMB_X36_Y27_N28
\dac|i2c_master_inst|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Mux4~0_combout\ = (\dac|i2c_master_inst|bit_cnt\(0) & (((\dac|data_wr\(4) & \dac|i2c_master_inst|bit_cnt\(1))))) # (!\dac|i2c_master_inst|bit_cnt\(0) & ((\dac|data_wr\(5)) # ((!\dac|i2c_master_inst|bit_cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|data_wr\(5),
	datab => \dac|i2c_master_inst|bit_cnt\(0),
	datac => \dac|data_wr\(4),
	datad => \dac|i2c_master_inst|bit_cnt\(1),
	combout => \dac|i2c_master_inst|Mux4~0_combout\);

-- Location: LCCOMB_X36_Y27_N30
\dac|i2c_master_inst|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Mux4~1_combout\ = (\dac|i2c_master_inst|Mux4~0_combout\ & (((\dac|data_wr\(7)) # (\dac|i2c_master_inst|bit_cnt\(1))))) # (!\dac|i2c_master_inst|Mux4~0_combout\ & (\dac|data_wr\(6) & ((!\dac|i2c_master_inst|bit_cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|data_wr\(6),
	datab => \dac|i2c_master_inst|Mux4~0_combout\,
	datac => \dac|data_wr\(7),
	datad => \dac|i2c_master_inst|bit_cnt\(1),
	combout => \dac|i2c_master_inst|Mux4~1_combout\);

-- Location: LCCOMB_X37_Y25_N14
\dac|i2c_master_inst|Selector23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Selector23~1_combout\ = (!\dac|i2c_master_inst|bit_cnt\(2) & ((\dac|i2c_master_inst|Selector23~0_combout\) # ((\dac|i2c_master_inst|Selector20~0_combout\ & \dac|i2c_master_inst|Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|Selector23~0_combout\,
	datab => \dac|i2c_master_inst|Selector20~0_combout\,
	datac => \dac|i2c_master_inst|bit_cnt\(2),
	datad => \dac|i2c_master_inst|Mux4~1_combout\,
	combout => \dac|i2c_master_inst|Selector23~1_combout\);

-- Location: LCCOMB_X37_Y25_N20
\dac|i2c_master_inst|Selector23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Selector23~2_combout\ = (\dac|i2c_master_inst|Selector23~1_combout\) # ((\dac|i2c_master_inst|state.command~q\ & (!\dac|i2c_master_inst|Selector25~0_combout\ & !\dac|i2c_master_inst|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|state.command~q\,
	datab => \dac|i2c_master_inst|Selector23~1_combout\,
	datac => \dac|i2c_master_inst|Selector25~0_combout\,
	datad => \dac|i2c_master_inst|Add1~0_combout\,
	combout => \dac|i2c_master_inst|Selector23~2_combout\);

-- Location: LCCOMB_X37_Y25_N0
\dac|i2c_master_inst|Selector23~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Selector23~10_combout\ = (!\dac|i2c_master_inst|Selector23~7_combout\ & (!\dac|i2c_master_inst|Selector23~2_combout\ & ((\dac|i2c_master_inst|sda_int~q\) # (!\dac|i2c_master_inst|Selector23~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|Selector23~7_combout\,
	datab => \dac|i2c_master_inst|Selector23~9_combout\,
	datac => \dac|i2c_master_inst|sda_int~q\,
	datad => \dac|i2c_master_inst|Selector23~2_combout\,
	combout => \dac|i2c_master_inst|Selector23~10_combout\);

-- Location: FF_X37_Y25_N1
\dac|i2c_master_inst|sda_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|i2c_master_inst|Selector23~10_combout\,
	clrn => \ALT_INV_RST~q\,
	ena => \dac|i2c_master_inst|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|i2c_master_inst|sda_int~q\);

-- Location: LCCOMB_X39_Y25_N26
\dac|i2c_master_inst|Selector29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Selector29~0_combout\ = (\dac|i2c_master_inst|state.start~q\ & (((\dac|i2c_master_inst|data_clk_prev~q\)))) # (!\dac|i2c_master_inst|state.start~q\ & ((\dac|i2c_master_inst|state.stop~q\ & ((!\dac|i2c_master_inst|data_clk_prev~q\))) # 
-- (!\dac|i2c_master_inst|state.stop~q\ & (!\dac|i2c_master_inst|sda_int~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|sda_int~q\,
	datab => \dac|i2c_master_inst|state.start~q\,
	datac => \dac|i2c_master_inst|state.stop~q\,
	datad => \dac|i2c_master_inst|data_clk_prev~q\,
	combout => \dac|i2c_master_inst|Selector29~0_combout\);

-- Location: LCCOMB_X36_Y24_N0
\dac|i2c_master_inst|scl_clk~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|scl_clk~0_combout\ = (\dac|i2c_master_inst|LessThan1~2_combout\ & \dac|i2c_master_inst|process_0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dac|i2c_master_inst|LessThan1~2_combout\,
	datad => \dac|i2c_master_inst|process_0~3_combout\,
	combout => \dac|i2c_master_inst|scl_clk~0_combout\);

-- Location: FF_X36_Y24_N1
\dac|i2c_master_inst|scl_clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|i2c_master_inst|scl_clk~0_combout\,
	ena => \ALT_INV_RST~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|i2c_master_inst|scl_clk~q\);

-- Location: LCCOMB_X39_Y25_N6
\dac|i2c_master_inst|scl~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|scl~1_combout\ = (\dac|i2c_master_inst|scl_clk~q\) # (!\dac|i2c_master_inst|scl_ena~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dac|i2c_master_inst|scl_ena~q\,
	datac => \dac|i2c_master_inst|scl_clk~q\,
	combout => \dac|i2c_master_inst|scl~1_combout\);

-- Location: LCCOMB_X39_Y30_N28
\adc|spi_driver|busy~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|busy~1_combout\ = !\adc|spi_driver|busy~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc|spi_driver|busy~0_combout\,
	combout => \adc|spi_driver|busy~1_combout\);

-- Location: FF_X39_Y30_N29
\adc|spi_driver|busy\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|busy~1_combout\,
	clrn => \adc|reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|busy~q\);

-- Location: LCCOMB_X37_Y30_N30
\adc|spi_driver|sclk~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|sclk~0_combout\ = (\adc|spi_driver|ss_n\(0) & (((\adc|spi_driver|Equal3~0_combout\ & !\adc|spi_driver|clk_toggles\(0))) # (!\adc|spi_driver|clk_toggles\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|clk_toggles\(5),
	datab => \adc|spi_driver|Equal3~0_combout\,
	datac => \adc|spi_driver|clk_toggles\(0),
	datad => \adc|spi_driver|ss_n\(0),
	combout => \adc|spi_driver|sclk~0_combout\);

-- Location: LCCOMB_X37_Y29_N26
\adc|spi_driver|sclk~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|sclk~1_combout\ = (\adc|reset~q\ & ((\adc|spi_driver|state~q\ & (\adc|spi_driver|sclk~0_combout\)) # (!\adc|spi_driver|state~q\ & ((\adc|enable~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|sclk~0_combout\,
	datab => \adc|enable~q\,
	datac => \adc|spi_driver|state~q\,
	datad => \adc|reset~q\,
	combout => \adc|spi_driver|sclk~1_combout\);

-- Location: LCCOMB_X36_Y29_N12
\adc|spi_driver|sclk~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|sclk~2_combout\ = (\adc|spi_driver|sclk~1_combout\ & (\adc|spi_driver|state~q\ & (\adc|spi_driver|Equal1~10_combout\ $ (\adc|spi_driver|sclk~q\)))) # (!\adc|spi_driver|sclk~1_combout\ & (((\adc|spi_driver|sclk~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|Equal1~10_combout\,
	datab => \adc|spi_driver|state~q\,
	datac => \adc|spi_driver|sclk~q\,
	datad => \adc|spi_driver|sclk~1_combout\,
	combout => \adc|spi_driver|sclk~2_combout\);

-- Location: FF_X36_Y29_N13
\adc|spi_driver|sclk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|sclk~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|sclk~q\);

ww_led8(0) <= \led8[0]~output_o\;

ww_led8(1) <= \led8[1]~output_o\;

ww_led8(2) <= \led8[2]~output_o\;

ww_led8(3) <= \led8[3]~output_o\;

ww_led8(4) <= \led8[4]~output_o\;

ww_led8(5) <= \led8[5]~output_o\;

ww_led8(6) <= \led8[6]~output_o\;

ww_led8(7) <= \led8[7]~output_o\;

ww_ADC_SADDR <= \ADC_SADDR~output_o\;

ww_ADC_CS_N <= \ADC_CS_N~output_o\;

ww_ADC_SCLK <= \ADC_SCLK~output_o\;

SDA <= \SDA~output_o\;

SCL <= \SCL~output_o\;
END structure;


