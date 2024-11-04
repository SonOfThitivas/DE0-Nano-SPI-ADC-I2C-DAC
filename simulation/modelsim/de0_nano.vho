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

-- DATE "11/04/2024 16:24:06"

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
	RST : IN std_logic;
	data_out : OUT std_logic_vector(11 DOWNTO 0);
	ADC_SDAT : IN std_logic;
	ADC_SADDR : OUT std_logic;
	ADC_CS_N : OUT std_logic;
	ADC_SCLK : OUT std_logic;
	SDA : INOUT std_logic;
	SCL : INOUT std_logic
	);
END top_level;

-- Design Ports Information
-- data_out[0]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- data_out[1]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- data_out[2]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- data_out[3]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- data_out[4]	=>  Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- data_out[5]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- data_out[6]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- data_out[7]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- data_out[8]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- data_out[9]	=>  Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- data_out[10]	=>  Location: PIN_B1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- data_out[11]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ADC_SADDR	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ADC_CS_N	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ADC_SCLK	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SDA	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SCL	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- CLOCK_50	=>  Location: PIN_R8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RST	=>  Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
SIGNAL ww_RST : std_logic;
SIGNAL ww_data_out : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_ADC_SDAT : std_logic;
SIGNAL ww_ADC_SADDR : std_logic;
SIGNAL ww_ADC_CS_N : std_logic;
SIGNAL ww_ADC_SCLK : std_logic;
SIGNAL \vclock|virt_clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ADC_SADDR~output_o\ : std_logic;
SIGNAL \SDA~output_o\ : std_logic;
SIGNAL \SCL~output_o\ : std_logic;
SIGNAL \data_out[0]~output_o\ : std_logic;
SIGNAL \data_out[1]~output_o\ : std_logic;
SIGNAL \data_out[2]~output_o\ : std_logic;
SIGNAL \data_out[3]~output_o\ : std_logic;
SIGNAL \data_out[4]~output_o\ : std_logic;
SIGNAL \data_out[5]~output_o\ : std_logic;
SIGNAL \data_out[6]~output_o\ : std_logic;
SIGNAL \data_out[7]~output_o\ : std_logic;
SIGNAL \data_out[8]~output_o\ : std_logic;
SIGNAL \data_out[9]~output_o\ : std_logic;
SIGNAL \data_out[10]~output_o\ : std_logic;
SIGNAL \data_out[11]~output_o\ : std_logic;
SIGNAL \ADC_CS_N~output_o\ : std_logic;
SIGNAL \ADC_SCLK~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \adc|spi_driver|Add5~0_combout\ : std_logic;
SIGNAL \adc|spi_driver|count~1_combout\ : std_logic;
SIGNAL \vclock|vclk_cnt[5]~feeder_combout\ : std_logic;
SIGNAL \vclock|Add0~4_combout\ : std_logic;
SIGNAL \vclock|Add0~3_combout\ : std_logic;
SIGNAL \vclock|Add0~2_combout\ : std_logic;
SIGNAL \vclock|Equal0~0_combout\ : std_logic;
SIGNAL \vclock|Equal0~1_combout\ : std_logic;
SIGNAL \vclock|vclk_cnt~3_combout\ : std_logic;
SIGNAL \vclock|vclk_cnt~1_combout\ : std_logic;
SIGNAL \vclock|Add0~0_combout\ : std_logic;
SIGNAL \vclock|vclk_cnt~2_combout\ : std_logic;
SIGNAL \vclock|Add0~1_combout\ : std_logic;
SIGNAL \vclock|vclk_cnt~0_combout\ : std_logic;
SIGNAL \vclock|virt_clk~0_combout\ : std_logic;
SIGNAL \vclock|virt_clk~feeder_combout\ : std_logic;
SIGNAL \vclock|virt_clk~q\ : std_logic;
SIGNAL \vclock|virt_clk~clkctrl_outclk\ : std_logic;
SIGNAL \adc|Add1~4_combout\ : std_logic;
SIGNAL \adc|init_delay[0]~0_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \adc_run~q\ : std_logic;
SIGNAL \adc|state.ready~4_combout\ : std_logic;
SIGNAL \adc|state.ready~3_combout\ : std_logic;
SIGNAL \adc|state.initialize~0_combout\ : std_logic;
SIGNAL \adc|state.initialize~reg0_q\ : std_logic;
SIGNAL \adc|Add0~1_combout\ : std_logic;
SIGNAL \adc|Add0~0_combout\ : std_logic;
SIGNAL \adc|Selector3~1_combout\ : std_logic;
SIGNAL \adc|Add1~0_combout\ : std_logic;
SIGNAL \adc|Selector3~0_combout\ : std_logic;
SIGNAL \adc|state.ready~2_combout\ : std_logic;
SIGNAL \adc|state.ready~reg0feeder_combout\ : std_logic;
SIGNAL \adc|state.ready~reg0_q\ : std_logic;
SIGNAL \adc|state.execute~0_combout\ : std_logic;
SIGNAL \adc|state.execute~reg0_q\ : std_logic;
SIGNAL \adc|Add1~1_combout\ : std_logic;
SIGNAL \adc|Add1~3_combout\ : std_logic;
SIGNAL \adc|Add1~2_combout\ : std_logic;
SIGNAL \adc|Equal2~0_combout\ : std_logic;
SIGNAL \adc|Equal2~1_combout\ : std_logic;
SIGNAL \adc|spi_comm_delay~8_combout\ : std_logic;
SIGNAL \adc|spi_comm_delay~6_combout\ : std_logic;
SIGNAL \adc|spi_comm_delay~7_combout\ : std_logic;
SIGNAL \adc|enable~0_combout\ : std_logic;
SIGNAL \adc|enable~1_combout\ : std_logic;
SIGNAL \adc|enable~2_combout\ : std_logic;
SIGNAL \adc|enable~q\ : std_logic;
SIGNAL \adc|reset~0_combout\ : std_logic;
SIGNAL \adc|reset~1_combout\ : std_logic;
SIGNAL \adc|reset~feeder_combout\ : std_logic;
SIGNAL \adc|reset~q\ : std_logic;
SIGNAL \adc|spi_driver|count[30]~2_combout\ : std_logic;
SIGNAL \adc|spi_driver|Add5~1\ : std_logic;
SIGNAL \adc|spi_driver|Add5~2_combout\ : std_logic;
SIGNAL \adc|spi_driver|count~33_combout\ : std_logic;
SIGNAL \adc|spi_driver|Add5~27\ : std_logic;
SIGNAL \adc|spi_driver|Add5~28_combout\ : std_logic;
SIGNAL \adc|spi_driver|count~21_combout\ : std_logic;
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
SIGNAL \adc|spi_driver|Add5~61\ : std_logic;
SIGNAL \adc|spi_driver|Add5~62_combout\ : std_logic;
SIGNAL \adc|spi_driver|count~4_combout\ : std_logic;
SIGNAL \adc|spi_driver|clk_ratio[0]~0_combout\ : std_logic;
SIGNAL \adc|spi_driver|Equal1~0_combout\ : std_logic;
SIGNAL \adc|spi_driver|Equal1~2_combout\ : std_logic;
SIGNAL \adc|spi_driver|Equal1~3_combout\ : std_logic;
SIGNAL \adc|spi_driver|Equal1~4_combout\ : std_logic;
SIGNAL \adc|spi_driver|Equal1~10_combout\ : std_logic;
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
SIGNAL \adc|spi_driver|Add5~21\ : std_logic;
SIGNAL \adc|spi_driver|Add5~22_combout\ : std_logic;
SIGNAL \adc|spi_driver|count~24_combout\ : std_logic;
SIGNAL \adc|spi_driver|Add5~23\ : std_logic;
SIGNAL \adc|spi_driver|Add5~24_combout\ : std_logic;
SIGNAL \adc|spi_driver|count~23_combout\ : std_logic;
SIGNAL \adc|spi_driver|Add5~25\ : std_logic;
SIGNAL \adc|spi_driver|Add5~26_combout\ : std_logic;
SIGNAL \adc|spi_driver|count~22_combout\ : std_logic;
SIGNAL \adc|spi_driver|Equal1~6_combout\ : std_logic;
SIGNAL \adc|spi_driver|Equal1~8_combout\ : std_logic;
SIGNAL \adc|spi_driver|Equal1~5_combout\ : std_logic;
SIGNAL \adc|spi_driver|Equal1~7_combout\ : std_logic;
SIGNAL \adc|spi_driver|Equal1~9_combout\ : std_logic;
SIGNAL \adc|spi_driver|count[15]~0_combout\ : std_logic;
SIGNAL \adc|spi_driver|clk_toggles[0]~6_combout\ : std_logic;
SIGNAL \adc|spi_driver|clk_toggles[5]~10_combout\ : std_logic;
SIGNAL \adc|spi_driver|clk_toggles[0]~7\ : std_logic;
SIGNAL \adc|spi_driver|clk_toggles[1]~8_combout\ : std_logic;
SIGNAL \adc|spi_driver|clk_toggles[1]~9\ : std_logic;
SIGNAL \adc|spi_driver|clk_toggles[2]~11_combout\ : std_logic;
SIGNAL \adc|spi_driver|clk_toggles[2]~12\ : std_logic;
SIGNAL \adc|spi_driver|clk_toggles[3]~13_combout\ : std_logic;
SIGNAL \adc|spi_driver|clk_toggles[3]~14\ : std_logic;
SIGNAL \adc|spi_driver|clk_toggles[4]~15_combout\ : std_logic;
SIGNAL \adc|spi_driver|clk_toggles[4]~16\ : std_logic;
SIGNAL \adc|spi_driver|clk_toggles[5]~17_combout\ : std_logic;
SIGNAL \adc|spi_driver|Equal3~0_combout\ : std_logic;
SIGNAL \adc|spi_driver|mosi~1_combout\ : std_logic;
SIGNAL \adc|spi_driver|busy~0_combout\ : std_logic;
SIGNAL \adc|spi_driver|state~q\ : std_logic;
SIGNAL \adc|spi_driver|Equal3~1_combout\ : std_logic;
SIGNAL \adc|spi_driver|assert_data~0_combout\ : std_logic;
SIGNAL \adc|spi_driver|assert_data~q\ : std_logic;
SIGNAL \adc|spi_driver|LessThan3~0_combout\ : std_logic;
SIGNAL \adc|spi_driver|mosi~2_combout\ : std_logic;
SIGNAL \adc|spi_driver|mosi~3_combout\ : std_logic;
SIGNAL \adc|spi_driver|mosi~4_combout\ : std_logic;
SIGNAL \adc|spi_driver|mosi~en_q\ : std_logic;
SIGNAL \dac|i2c_master_inst|bit_cnt[0]~5_combout\ : std_logic;
SIGNAL \SCL~input_o\ : std_logic;
SIGNAL \dac|i2c_master_inst|Add0~1\ : std_logic;
SIGNAL \dac|i2c_master_inst|Add0~2_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Add0~3\ : std_logic;
SIGNAL \dac|i2c_master_inst|Add0~4_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|count~2_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Add0~5\ : std_logic;
SIGNAL \dac|i2c_master_inst|Add0~6_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|count~3_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Equal0~0_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|count~4_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Add0~7\ : std_logic;
SIGNAL \dac|i2c_master_inst|Add0~9\ : std_logic;
SIGNAL \dac|i2c_master_inst|Add0~10_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|count~0_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Equal0~1_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|process_0~1_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|process_0~2_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|stretch~0_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|stretch~q\ : std_logic;
SIGNAL \dac|i2c_master_inst|Add0~0_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|count~5_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|count~1_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Add0~8_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|process_0~0_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|LessThan1~0_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|data_clk~0_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|data_clk~q\ : std_logic;
SIGNAL \dac|i2c_master_inst|data_clk_prev~q\ : std_logic;
SIGNAL \dac|i2c_master_inst|Selector17~0_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|process_1~0_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|state.ready~q\ : std_logic;
SIGNAL \dac|i2c_master_inst|Selector18~0_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|state.start~q\ : std_logic;
SIGNAL \dac|i2c_master_inst|Add1~0_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|bit_cnt[2]~feeder_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|state~14_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|state.mstr_ack~q\ : std_logic;
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
SIGNAL \dac|i2c_master_inst|Selector0~1_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Selector0~2_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|busy~q\ : std_logic;
SIGNAL \dac|busy_prev[0]~0_combout\ : std_logic;
SIGNAL \dac|busy_prev[1]~feeder_combout\ : std_logic;
SIGNAL \dac|Selector2~0_combout\ : std_logic;
SIGNAL \dac|state.ST_WR_1~q\ : std_logic;
SIGNAL \dac|ena~0_combout\ : std_logic;
SIGNAL \dac|state.ST_WR_2~0_combout\ : std_logic;
SIGNAL \dac|state.ST_WR_2~q\ : std_logic;
SIGNAL \dac|Selector4~0_combout\ : std_logic;
SIGNAL \dac|state.ST_STOP~q\ : std_logic;
SIGNAL \dac|Selector0~0_combout\ : std_logic;
SIGNAL \dac|state.ST_IDLE~q\ : std_logic;
SIGNAL \dac|state.ST_START~0_combout\ : std_logic;
SIGNAL \dac|state.ST_START~q\ : std_logic;
SIGNAL \dac|Selector5~0_combout\ : std_logic;
SIGNAL \dac|Selector5~1_combout\ : std_logic;
SIGNAL \dac|Add0~0_combout\ : std_logic;
SIGNAL \dac|wait_cnt~24_combout\ : std_logic;
SIGNAL \dac|Add0~1\ : std_logic;
SIGNAL \dac|Add0~2_combout\ : std_logic;
SIGNAL \dac|wait_cnt~23_combout\ : std_logic;
SIGNAL \dac|Add0~3\ : std_logic;
SIGNAL \dac|Add0~4_combout\ : std_logic;
SIGNAL \dac|wait_cnt~22_combout\ : std_logic;
SIGNAL \dac|Add0~5\ : std_logic;
SIGNAL \dac|Add0~6_combout\ : std_logic;
SIGNAL \dac|wait_cnt~21_combout\ : std_logic;
SIGNAL \dac|Add0~7\ : std_logic;
SIGNAL \dac|Add0~8_combout\ : std_logic;
SIGNAL \dac|wait_cnt[4]~31_combout\ : std_logic;
SIGNAL \dac|Add0~9\ : std_logic;
SIGNAL \dac|Add0~10_combout\ : std_logic;
SIGNAL \dac|wait_cnt~20_combout\ : std_logic;
SIGNAL \dac|Add0~11\ : std_logic;
SIGNAL \dac|Add0~12_combout\ : std_logic;
SIGNAL \dac|wait_cnt~26_combout\ : std_logic;
SIGNAL \dac|Add0~13\ : std_logic;
SIGNAL \dac|Add0~14_combout\ : std_logic;
SIGNAL \dac|wait_cnt~25_combout\ : std_logic;
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
SIGNAL \dac|Equal2~8_combout\ : std_logic;
SIGNAL \dac|Equal2~9_combout\ : std_logic;
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
SIGNAL \dac|Equal2~3_combout\ : std_logic;
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
SIGNAL \dac|Equal2~1_combout\ : std_logic;
SIGNAL \dac|Equal2~2_combout\ : std_logic;
SIGNAL \dac|Equal2~4_combout\ : std_logic;
SIGNAL \dac|Equal2~10_combout\ : std_logic;
SIGNAL \dac|Selector5~2_combout\ : std_logic;
SIGNAL \dac|Selector5~3_combout\ : std_logic;
SIGNAL \dac|ena~q\ : std_logic;
SIGNAL \dac|i2c_master_inst|Selector21~0_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|state.rd~q\ : std_logic;
SIGNAL \dac|i2c_master_inst|Selector0~0_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|bit_cnt[2]~4_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Selector25~0_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Equal1~0_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Selector19~0_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|state.command~q\ : std_logic;
SIGNAL \dac|i2c_master_inst|state~15_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|state.slv_ack1~q\ : std_logic;
SIGNAL \dac|i2c_master_inst|Selector20~0_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Selector20~1_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|state.wr~q\ : std_logic;
SIGNAL \dac|i2c_master_inst|state~13_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|state.slv_ack2~q\ : std_logic;
SIGNAL \dac|i2c_master_inst|Selector22~0_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|state.stop~q\ : std_logic;
SIGNAL \ADC_SDAT~input_o\ : std_logic;
SIGNAL \adc|spi_driver|ss_n~0_combout\ : std_logic;
SIGNAL \adc|spi_driver|ss_n~1_combout\ : std_logic;
SIGNAL \adc|spi_driver|rx_buffer[4]~0_combout\ : std_logic;
SIGNAL \adc|spi_driver|rx_buffer[4]~1_combout\ : std_logic;
SIGNAL \adc|spi_driver|rx_buffer[4]~2_combout\ : std_logic;
SIGNAL \adc|spi_driver|rx_buffer[1]~feeder_combout\ : std_logic;
SIGNAL \adc|spi_driver|rx_buffer[2]~feeder_combout\ : std_logic;
SIGNAL \adc|spi_driver|rx_data[2]~feeder_combout\ : std_logic;
SIGNAL \adc|spi_driver|rx_data[4]~0_combout\ : std_logic;
SIGNAL \temp_DATA[3]~feeder_combout\ : std_logic;
SIGNAL \temp_DATA[7]~0_combout\ : std_logic;
SIGNAL \dac|data_buffer[3]~feeder_combout\ : std_logic;
SIGNAL \dac|data_buffer[7]~0_combout\ : std_logic;
SIGNAL \adc|spi_driver|rx_buffer[3]~feeder_combout\ : std_logic;
SIGNAL \adc|spi_driver|rx_buffer[4]~feeder_combout\ : std_logic;
SIGNAL \adc|spi_driver|rx_buffer[5]~feeder_combout\ : std_logic;
SIGNAL \adc|spi_driver|rx_buffer[6]~feeder_combout\ : std_logic;
SIGNAL \adc|spi_driver|rx_buffer[7]~feeder_combout\ : std_logic;
SIGNAL \adc|spi_driver|rx_buffer[9]~feeder_combout\ : std_logic;
SIGNAL \adc|spi_driver|rx_buffer[10]~feeder_combout\ : std_logic;
SIGNAL \temp_DATA[11]~feeder_combout\ : std_logic;
SIGNAL \dac|data_buffer[11]~feeder_combout\ : std_logic;
SIGNAL \dac|Selector10~0_combout\ : std_logic;
SIGNAL \dac|process_0~0_combout\ : std_logic;
SIGNAL \dac|data_wr[3]~4_combout\ : std_logic;
SIGNAL \adc|spi_driver|rx_data[9]~feeder_combout\ : std_logic;
SIGNAL \temp_DATA[10]~feeder_combout\ : std_logic;
SIGNAL \dac|data_buffer[10]~feeder_combout\ : std_logic;
SIGNAL \adc|spi_driver|rx_data[1]~feeder_combout\ : std_logic;
SIGNAL \temp_DATA[2]~feeder_combout\ : std_logic;
SIGNAL \dac|data_buffer[2]~feeder_combout\ : std_logic;
SIGNAL \dac|Selector11~0_combout\ : std_logic;
SIGNAL \temp_DATA[8]~feeder_combout\ : std_logic;
SIGNAL \dac|data_buffer[8]~feeder_combout\ : std_logic;
SIGNAL \dac|data_wr[0]~5_combout\ : std_logic;
SIGNAL \adc|spi_driver|rx_data[0]~feeder_combout\ : std_logic;
SIGNAL \temp_DATA[1]~feeder_combout\ : std_logic;
SIGNAL \dac|data_buffer[1]~feeder_combout\ : std_logic;
SIGNAL \adc|spi_driver|rx_data[8]~feeder_combout\ : std_logic;
SIGNAL \temp_DATA[9]~feeder_combout\ : std_logic;
SIGNAL \dac|data_buffer[9]~feeder_combout\ : std_logic;
SIGNAL \dac|Selector12~0_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Mux4~2_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Mux4~3_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Selector23~8_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Selector23~9_combout\ : std_logic;
SIGNAL \adc|spi_driver|rx_data[6]~feeder_combout\ : std_logic;
SIGNAL \temp_DATA[7]~feeder_combout\ : std_logic;
SIGNAL \dac|data_buffer[7]~feeder_combout\ : std_logic;
SIGNAL \dac|data_wr[7]~3_combout\ : std_logic;
SIGNAL \dac|Selector6~0_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|data_tx[7]~1_combout\ : std_logic;
SIGNAL \adc|spi_driver|rx_data[5]~feeder_combout\ : std_logic;
SIGNAL \dac|data_buffer[6]~feeder_combout\ : std_logic;
SIGNAL \dac|data_wr[6]~0_combout\ : std_logic;
SIGNAL \dac|Selector7~0_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Mux3~2_combout\ : std_logic;
SIGNAL \adc|spi_driver|rx_data[4]~feeder_combout\ : std_logic;
SIGNAL \temp_DATA[5]~feeder_combout\ : std_logic;
SIGNAL \dac|data_buffer[5]~feeder_combout\ : std_logic;
SIGNAL \dac|data_wr[5]~1_combout\ : std_logic;
SIGNAL \dac|Selector8~0_combout\ : std_logic;
SIGNAL \adc|spi_driver|rx_data[3]~feeder_combout\ : std_logic;
SIGNAL \temp_DATA[4]~feeder_combout\ : std_logic;
SIGNAL \dac|data_buffer[4]~feeder_combout\ : std_logic;
SIGNAL \dac|data_wr[4]~2_combout\ : std_logic;
SIGNAL \dac|Selector9~0_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|data_tx[4]~feeder_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Mux3~3_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Selector23~5_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Mux2~0_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Mux2~1_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Mux2~2_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Mux2~3_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Selector23~10_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Selector23~6_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Mux4~0_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Mux4~1_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Selector23~7_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Selector23~11_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Selector23~0_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Mux3~0_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Mux3~1_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Selector23~1_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Selector23~2_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Selector23~3_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Selector23~4_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Selector23~12_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|sda_int~q\ : std_logic;
SIGNAL \dac|i2c_master_inst|Selector29~0_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|scl_clk~0_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|scl_clk~q\ : std_logic;
SIGNAL \dac|i2c_master_inst|scl~1_combout\ : std_logic;
SIGNAL \data_out[0]~reg0_q\ : std_logic;
SIGNAL \data_out[1]~reg0feeder_combout\ : std_logic;
SIGNAL \data_out[1]~reg0_q\ : std_logic;
SIGNAL \data_out[2]~reg0feeder_combout\ : std_logic;
SIGNAL \data_out[2]~reg0_q\ : std_logic;
SIGNAL \data_out[3]~reg0_q\ : std_logic;
SIGNAL \data_out[4]~reg0_q\ : std_logic;
SIGNAL \data_out[5]~reg0_q\ : std_logic;
SIGNAL \data_out[6]~reg0feeder_combout\ : std_logic;
SIGNAL \data_out[6]~reg0_q\ : std_logic;
SIGNAL \adc|spi_driver|rx_data[11]~feeder_combout\ : std_logic;
SIGNAL \data_out[7]~reg0feeder_combout\ : std_logic;
SIGNAL \data_out[7]~reg0_q\ : std_logic;
SIGNAL \adc|spi_driver|rx_buffer[12]~feeder_combout\ : std_logic;
SIGNAL \adc|spi_driver|rx_data[12]~feeder_combout\ : std_logic;
SIGNAL \data_out[8]~reg0feeder_combout\ : std_logic;
SIGNAL \data_out[8]~reg0_q\ : std_logic;
SIGNAL \adc|spi_driver|rx_buffer[13]~feeder_combout\ : std_logic;
SIGNAL \adc|spi_driver|rx_data[13]~feeder_combout\ : std_logic;
SIGNAL \data_out[9]~reg0feeder_combout\ : std_logic;
SIGNAL \data_out[9]~reg0_q\ : std_logic;
SIGNAL \adc|spi_driver|rx_buffer[14]~feeder_combout\ : std_logic;
SIGNAL \data_out[10]~reg0feeder_combout\ : std_logic;
SIGNAL \data_out[10]~reg0_q\ : std_logic;
SIGNAL \adc|spi_driver|rx_data[15]~feeder_combout\ : std_logic;
SIGNAL \data_out[11]~reg0feeder_combout\ : std_logic;
SIGNAL \data_out[11]~reg0_q\ : std_logic;
SIGNAL \adc|spi_driver|busy~1_combout\ : std_logic;
SIGNAL \adc|spi_driver|busy~q\ : std_logic;
SIGNAL \adc|spi_driver|sclk~0_combout\ : std_logic;
SIGNAL \adc|spi_driver|sclk~1_combout\ : std_logic;
SIGNAL \adc|spi_driver|sclk~2_combout\ : std_logic;
SIGNAL \adc|spi_driver|sclk~q\ : std_logic;
SIGNAL \adc|spi_comm_delay\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \adc|spi_driver|clk_toggles\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \adc|spi_driver|rx_data\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \dac|data_wr\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \adc|init_delay\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \adc|spi_driver|clk_ratio\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \adc|spi_driver|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \adc|spi_driver|ss_n\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \adc|spi_driver|rx_buffer\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \vclock|vclk_cnt\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \dac|wait_cnt\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \dac|i2c_master_inst|bit_cnt\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \dac|i2c_master_inst|data_tx\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \dac|i2c_master_inst|count\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \dac|busy_prev\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \dac|data_buffer\ : std_logic_vector(15 DOWNTO 0);
SIGNAL temp_DATA : std_logic_vector(15 DOWNTO 0);
SIGNAL \dac|ALT_INV_state.ST_WR_1~q\ : std_logic;
SIGNAL \adc|ALT_INV_state.initialize~reg0_q\ : std_logic;
SIGNAL \adc|spi_driver|ALT_INV_mosi~en_q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_RST <= RST;
data_out <= ww_data_out;
ww_ADC_SDAT <= ADC_SDAT;
ADC_SADDR <= ww_ADC_SADDR;
ADC_CS_N <= ww_ADC_CS_N;
ADC_SCLK <= ww_ADC_SCLK;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\vclock|virt_clk~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \vclock|virt_clk~q\);

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\dac|ALT_INV_state.ST_WR_1~q\ <= NOT \dac|state.ST_WR_1~q\;
\adc|ALT_INV_state.initialize~reg0_q\ <= NOT \adc|state.initialize~reg0_q\;
\adc|spi_driver|ALT_INV_mosi~en_q\ <= NOT \adc|spi_driver|mosi~en_q\;
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

-- Location: IOOBUF_X53_Y24_N23
\data_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[0]~reg0_q\,
	devoe => ww_devoe,
	o => \data_out[0]~output_o\);

-- Location: IOOBUF_X53_Y26_N23
\data_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[1]~reg0_q\,
	devoe => ww_devoe,
	o => \data_out[1]~output_o\);

-- Location: IOOBUF_X53_Y25_N2
\data_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[2]~reg0_q\,
	devoe => ww_devoe,
	o => \data_out[2]~output_o\);

-- Location: IOOBUF_X53_Y22_N9
\data_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[3]~reg0_q\,
	devoe => ww_devoe,
	o => \data_out[3]~output_o\);

-- Location: IOOBUF_X38_Y34_N16
\data_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[4]~reg0_q\,
	devoe => ww_devoe,
	o => \data_out[4]~output_o\);

-- Location: IOOBUF_X49_Y34_N2
\data_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[5]~reg0_q\,
	devoe => ww_devoe,
	o => \data_out[5]~output_o\);

-- Location: IOOBUF_X49_Y34_N9
\data_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[6]~reg0_q\,
	devoe => ww_devoe,
	o => \data_out[6]~output_o\);

-- Location: IOOBUF_X40_Y34_N2
\data_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[7]~reg0_q\,
	devoe => ww_devoe,
	o => \data_out[7]~output_o\);

-- Location: IOOBUF_X0_Y25_N9
\data_out[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[8]~reg0_q\,
	devoe => ww_devoe,
	o => \data_out[8]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\data_out[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[9]~reg0_q\,
	devoe => ww_devoe,
	o => \data_out[9]~output_o\);

-- Location: IOOBUF_X0_Y28_N9
\data_out[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[10]~reg0_q\,
	devoe => ww_devoe,
	o => \data_out[10]~output_o\);

-- Location: IOOBUF_X0_Y11_N2
\data_out[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[11]~reg0_q\,
	devoe => ww_devoe,
	o => \data_out[11]~output_o\);

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

-- Location: LCCOMB_X48_Y22_N0
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

-- Location: LCCOMB_X47_Y21_N2
\adc|spi_driver|count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~1_combout\ = (\adc|spi_driver|count[15]~0_combout\ & (!\adc|spi_driver|state~q\)) # (!\adc|spi_driver|count[15]~0_combout\ & ((!\adc|spi_driver|Add5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|state~q\,
	datac => \adc|spi_driver|Add5~0_combout\,
	datad => \adc|spi_driver|count[15]~0_combout\,
	combout => \adc|spi_driver|count~1_combout\);

-- Location: LCCOMB_X28_Y33_N18
\vclock|vclk_cnt[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|vclk_cnt[5]~feeder_combout\ = \vclock|Add0~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vclock|Add0~1_combout\,
	combout => \vclock|vclk_cnt[5]~feeder_combout\);

-- Location: FF_X28_Y33_N19
\vclock|vclk_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \vclock|vclk_cnt[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vclock|vclk_cnt\(5));

-- Location: LCCOMB_X28_Y33_N4
\vclock|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Add0~4_combout\ = \vclock|vclk_cnt\(1) $ (\vclock|vclk_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vclock|vclk_cnt\(1),
	datad => \vclock|vclk_cnt\(0),
	combout => \vclock|Add0~4_combout\);

-- Location: FF_X28_Y33_N5
\vclock|vclk_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \vclock|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vclock|vclk_cnt\(1));

-- Location: LCCOMB_X28_Y33_N24
\vclock|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Add0~3_combout\ = \vclock|vclk_cnt\(2) $ (((\vclock|vclk_cnt\(1) & \vclock|vclk_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|vclk_cnt\(1),
	datac => \vclock|vclk_cnt\(2),
	datad => \vclock|vclk_cnt\(0),
	combout => \vclock|Add0~3_combout\);

-- Location: FF_X28_Y33_N25
\vclock|vclk_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \vclock|Add0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vclock|vclk_cnt\(2));

-- Location: LCCOMB_X28_Y33_N10
\vclock|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Add0~2_combout\ = \vclock|vclk_cnt\(3) $ (((\vclock|vclk_cnt\(1) & (\vclock|vclk_cnt\(0) & \vclock|vclk_cnt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|vclk_cnt\(1),
	datab => \vclock|vclk_cnt\(0),
	datac => \vclock|vclk_cnt\(2),
	datad => \vclock|vclk_cnt\(3),
	combout => \vclock|Add0~2_combout\);

-- Location: LCCOMB_X28_Y33_N0
\vclock|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Equal0~0_combout\ = (\vclock|vclk_cnt\(3) & (!\vclock|vclk_cnt\(0) & !\vclock|vclk_cnt\(1))) # (!\vclock|vclk_cnt\(3) & (\vclock|vclk_cnt\(0) & \vclock|vclk_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|vclk_cnt\(3),
	datac => \vclock|vclk_cnt\(0),
	datad => \vclock|vclk_cnt\(1),
	combout => \vclock|Equal0~0_combout\);

-- Location: LCCOMB_X28_Y33_N8
\vclock|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Equal0~1_combout\ = (\vclock|vclk_cnt\(4) & (\vclock|Equal0~0_combout\ & (\vclock|vclk_cnt\(1) $ (!\vclock|vclk_cnt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|vclk_cnt\(1),
	datab => \vclock|vclk_cnt\(2),
	datac => \vclock|vclk_cnt\(4),
	datad => \vclock|Equal0~0_combout\,
	combout => \vclock|Equal0~1_combout\);

-- Location: LCCOMB_X28_Y33_N30
\vclock|vclk_cnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|vclk_cnt~3_combout\ = (\vclock|Add0~2_combout\ & ((\vclock|vclk_cnt\(0)) # ((\vclock|Add0~1_combout\) # (!\vclock|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Add0~2_combout\,
	datab => \vclock|vclk_cnt\(0),
	datac => \vclock|Add0~1_combout\,
	datad => \vclock|Equal0~1_combout\,
	combout => \vclock|vclk_cnt~3_combout\);

-- Location: FF_X28_Y33_N31
\vclock|vclk_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \vclock|vclk_cnt~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vclock|vclk_cnt\(3));

-- Location: LCCOMB_X28_Y33_N28
\vclock|vclk_cnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|vclk_cnt~1_combout\ = (\vclock|vclk_cnt\(3) & (!\vclock|vclk_cnt\(2) & (!\vclock|vclk_cnt\(1) & !\vclock|vclk_cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|vclk_cnt\(3),
	datab => \vclock|vclk_cnt\(2),
	datac => \vclock|vclk_cnt\(1),
	datad => \vclock|vclk_cnt\(5),
	combout => \vclock|vclk_cnt~1_combout\);

-- Location: LCCOMB_X28_Y33_N6
\vclock|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Add0~0_combout\ = (\vclock|vclk_cnt\(3) & (\vclock|vclk_cnt\(0) & (\vclock|vclk_cnt\(1) & \vclock|vclk_cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|vclk_cnt\(3),
	datab => \vclock|vclk_cnt\(0),
	datac => \vclock|vclk_cnt\(1),
	datad => \vclock|vclk_cnt\(2),
	combout => \vclock|Add0~0_combout\);

-- Location: LCCOMB_X28_Y33_N14
\vclock|vclk_cnt~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|vclk_cnt~2_combout\ = (\vclock|vclk_cnt~1_combout\ & (\vclock|vclk_cnt\(0) & (\vclock|Add0~0_combout\ $ (\vclock|vclk_cnt\(4))))) # (!\vclock|vclk_cnt~1_combout\ & (\vclock|Add0~0_combout\ $ ((\vclock|vclk_cnt\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|vclk_cnt~1_combout\,
	datab => \vclock|Add0~0_combout\,
	datac => \vclock|vclk_cnt\(4),
	datad => \vclock|vclk_cnt\(0),
	combout => \vclock|vclk_cnt~2_combout\);

-- Location: FF_X28_Y33_N15
\vclock|vclk_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \vclock|vclk_cnt~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vclock|vclk_cnt\(4));

-- Location: LCCOMB_X28_Y33_N16
\vclock|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Add0~1_combout\ = \vclock|vclk_cnt\(5) $ (((\vclock|vclk_cnt\(4) & \vclock|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vclock|vclk_cnt\(5),
	datac => \vclock|vclk_cnt\(4),
	datad => \vclock|Add0~0_combout\,
	combout => \vclock|Add0~1_combout\);

-- Location: LCCOMB_X28_Y33_N22
\vclock|vclk_cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|vclk_cnt~0_combout\ = (!\vclock|vclk_cnt\(0) & ((\vclock|Add0~1_combout\) # (!\vclock|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Add0~1_combout\,
	datac => \vclock|vclk_cnt\(0),
	datad => \vclock|Equal0~1_combout\,
	combout => \vclock|vclk_cnt~0_combout\);

-- Location: FF_X28_Y33_N23
\vclock|vclk_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \vclock|vclk_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vclock|vclk_cnt\(0));

-- Location: LCCOMB_X28_Y33_N20
\vclock|virt_clk~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|virt_clk~0_combout\ = \vclock|virt_clk~q\ $ (((!\vclock|vclk_cnt\(0) & (\vclock|Equal0~1_combout\ & !\vclock|Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|vclk_cnt\(0),
	datab => \vclock|virt_clk~q\,
	datac => \vclock|Equal0~1_combout\,
	datad => \vclock|Add0~1_combout\,
	combout => \vclock|virt_clk~0_combout\);

-- Location: LCCOMB_X28_Y33_N26
\vclock|virt_clk~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|virt_clk~feeder_combout\ = \vclock|virt_clk~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vclock|virt_clk~0_combout\,
	combout => \vclock|virt_clk~feeder_combout\);

-- Location: FF_X28_Y33_N27
\vclock|virt_clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \vclock|virt_clk~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vclock|virt_clk~q\);

-- Location: CLKCTRL_G14
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

-- Location: LCCOMB_X45_Y23_N12
\adc|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|Add1~4_combout\ = \adc|spi_comm_delay\(3) $ (((\adc|spi_comm_delay\(0) & (\adc|spi_comm_delay\(2) & \adc|spi_comm_delay\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_comm_delay\(0),
	datab => \adc|spi_comm_delay\(2),
	datac => \adc|spi_comm_delay\(3),
	datad => \adc|spi_comm_delay\(1),
	combout => \adc|Add1~4_combout\);

-- Location: LCCOMB_X45_Y22_N18
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

-- Location: LCCOMB_X44_Y22_N14
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\adc|state.ready~reg0_q\) # ((!\adc|state.initialize~reg0_q\ & \adc_run~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc|state.initialize~reg0_q\,
	datac => \adc_run~q\,
	datad => \adc|state.ready~reg0_q\,
	combout => \Selector0~0_combout\);

-- Location: IOIBUF_X53_Y14_N1
\RST~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST,
	o => \RST~input_o\);

-- Location: FF_X44_Y22_N15
adc_run : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Selector0~0_combout\,
	ena => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_run~q\);

-- Location: LCCOMB_X44_Y22_N12
\adc|state.ready~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|state.ready~4_combout\ = (\adc|state.execute~reg0_q\ & (\adc|spi_comm_delay\(2) & !\adc|spi_comm_delay\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc|state.execute~reg0_q\,
	datac => \adc|spi_comm_delay\(2),
	datad => \adc|spi_comm_delay\(0),
	combout => \adc|state.ready~4_combout\);

-- Location: LCCOMB_X44_Y22_N6
\adc|state.ready~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|state.ready~3_combout\ = (!\adc|state.ready~reg0_q\ & ((\adc|Selector3~1_combout\) # ((\adc|state.ready~4_combout\ & \adc|Equal2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|state.ready~4_combout\,
	datab => \adc|state.ready~reg0_q\,
	datac => \adc|Selector3~1_combout\,
	datad => \adc|Equal2~1_combout\,
	combout => \adc|state.ready~3_combout\);

-- Location: LCCOMB_X44_Y22_N20
\adc|state.initialize~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|state.initialize~0_combout\ = (\adc|state.initialize~reg0_q\) # ((\adc|state.ready~3_combout\) # ((\adc_run~q\ & \adc|state.ready~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_run~q\,
	datab => \adc|state.ready~reg0_q\,
	datac => \adc|state.initialize~reg0_q\,
	datad => \adc|state.ready~3_combout\,
	combout => \adc|state.initialize~0_combout\);

-- Location: FF_X44_Y22_N21
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

-- Location: FF_X45_Y22_N19
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

-- Location: LCCOMB_X45_Y22_N8
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

-- Location: FF_X45_Y22_N9
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

-- Location: LCCOMB_X45_Y22_N12
\adc|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|Add0~0_combout\ = \adc|init_delay\(2) $ (((\adc|init_delay\(1) & \adc|init_delay\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc|init_delay\(1),
	datac => \adc|init_delay\(2),
	datad => \adc|init_delay\(0),
	combout => \adc|Add0~0_combout\);

-- Location: FF_X45_Y22_N13
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

-- Location: LCCOMB_X45_Y22_N10
\adc|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|Selector3~1_combout\ = (\adc|init_delay\(2) & (\adc|init_delay\(0) & (!\adc|state.execute~reg0_q\ & \adc|init_delay\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|init_delay\(2),
	datab => \adc|init_delay\(0),
	datac => \adc|state.execute~reg0_q\,
	datad => \adc|init_delay\(1),
	combout => \adc|Selector3~1_combout\);

-- Location: LCCOMB_X45_Y23_N14
\adc|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|Add1~0_combout\ = \adc|spi_comm_delay\(2) $ (((\adc|spi_comm_delay\(0) & \adc|spi_comm_delay\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_comm_delay\(0),
	datac => \adc|spi_comm_delay\(2),
	datad => \adc|spi_comm_delay\(1),
	combout => \adc|Add1~0_combout\);

-- Location: LCCOMB_X45_Y23_N10
\adc|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|Selector3~0_combout\ = (!\adc|spi_comm_delay\(0) & (\adc|Add1~0_combout\ & (\adc|state.execute~reg0_q\ & \adc|Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_comm_delay\(0),
	datab => \adc|Add1~0_combout\,
	datac => \adc|state.execute~reg0_q\,
	datad => \adc|Equal2~1_combout\,
	combout => \adc|Selector3~0_combout\);

-- Location: LCCOMB_X44_Y23_N10
\adc|state.ready~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|state.ready~2_combout\ = (\adc|state.ready~reg0_q\ & (((!\adc_run~q\)))) # (!\adc|state.ready~reg0_q\ & ((\adc|Selector3~1_combout\) # ((\adc|Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|state.ready~reg0_q\,
	datab => \adc|Selector3~1_combout\,
	datac => \adc|Selector3~0_combout\,
	datad => \adc_run~q\,
	combout => \adc|state.ready~2_combout\);

-- Location: LCCOMB_X44_Y23_N0
\adc|state.ready~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|state.ready~reg0feeder_combout\ = \adc|state.ready~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc|state.ready~2_combout\,
	combout => \adc|state.ready~reg0feeder_combout\);

-- Location: FF_X44_Y23_N1
\adc|state.ready~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vclock|virt_clk~clkctrl_outclk\,
	d => \adc|state.ready~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|state.ready~reg0_q\);

-- Location: LCCOMB_X44_Y22_N16
\adc|state.execute~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|state.execute~0_combout\ = (\adc|state.ready~reg0_q\ & ((\adc_run~q\) # ((\adc|state.execute~reg0_q\ & !\adc|state.ready~3_combout\)))) # (!\adc|state.ready~reg0_q\ & (((\adc|state.execute~reg0_q\ & !\adc|state.ready~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|state.ready~reg0_q\,
	datab => \adc_run~q\,
	datac => \adc|state.execute~reg0_q\,
	datad => \adc|state.ready~3_combout\,
	combout => \adc|state.execute~0_combout\);

-- Location: FF_X44_Y22_N17
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

-- Location: FF_X45_Y23_N13
\adc|spi_comm_delay[3]\ : dffeas
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
	q => \adc|spi_comm_delay\(3));

-- Location: LCCOMB_X45_Y23_N20
\adc|Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|Add1~1_combout\ = (\adc|spi_comm_delay\(3) & (\adc|spi_comm_delay\(0) & (\adc|spi_comm_delay\(2) & \adc|spi_comm_delay\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_comm_delay\(3),
	datab => \adc|spi_comm_delay\(0),
	datac => \adc|spi_comm_delay\(2),
	datad => \adc|spi_comm_delay\(1),
	combout => \adc|Add1~1_combout\);

-- Location: LCCOMB_X45_Y23_N30
\adc|Add1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|Add1~3_combout\ = \adc|spi_comm_delay\(4) $ (\adc|Add1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc|spi_comm_delay\(4),
	datad => \adc|Add1~1_combout\,
	combout => \adc|Add1~3_combout\);

-- Location: FF_X45_Y23_N31
\adc|spi_comm_delay[4]\ : dffeas
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
	q => \adc|spi_comm_delay\(4));

-- Location: LCCOMB_X45_Y23_N8
\adc|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|Add1~2_combout\ = \adc|spi_comm_delay\(5) $ (((\adc|spi_comm_delay\(4) & \adc|Add1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_comm_delay\(4),
	datac => \adc|spi_comm_delay\(5),
	datad => \adc|Add1~1_combout\,
	combout => \adc|Add1~2_combout\);

-- Location: FF_X45_Y23_N9
\adc|spi_comm_delay[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vclock|virt_clk~clkctrl_outclk\,
	d => \adc|Add1~2_combout\,
	ena => \adc|state.execute~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_comm_delay\(5));

-- Location: LCCOMB_X45_Y23_N18
\adc|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|Equal2~0_combout\ = \adc|spi_comm_delay\(0) $ (\adc|spi_comm_delay\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc|spi_comm_delay\(0),
	datad => \adc|spi_comm_delay\(1),
	combout => \adc|Equal2~0_combout\);

-- Location: LCCOMB_X45_Y23_N24
\adc|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|Equal2~1_combout\ = (!\adc|spi_comm_delay\(3) & (!\adc|spi_comm_delay\(5) & (!\adc|spi_comm_delay\(4) & \adc|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_comm_delay\(3),
	datab => \adc|spi_comm_delay\(5),
	datac => \adc|spi_comm_delay\(4),
	datad => \adc|Equal2~0_combout\,
	combout => \adc|Equal2~1_combout\);

-- Location: LCCOMB_X45_Y23_N28
\adc|spi_comm_delay~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_comm_delay~8_combout\ = (\adc|spi_comm_delay\(0) & (((!\adc|spi_comm_delay\(1))))) # (!\adc|spi_comm_delay\(0) & (\adc|spi_comm_delay\(1) & ((!\adc|Equal2~1_combout\) # (!\adc|spi_comm_delay\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_comm_delay\(0),
	datab => \adc|spi_comm_delay\(2),
	datac => \adc|spi_comm_delay\(1),
	datad => \adc|Equal2~1_combout\,
	combout => \adc|spi_comm_delay~8_combout\);

-- Location: FF_X45_Y23_N29
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

-- Location: LCCOMB_X45_Y23_N4
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

-- Location: FF_X45_Y23_N5
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

-- Location: LCCOMB_X45_Y23_N22
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

-- Location: FF_X45_Y23_N23
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

-- Location: LCCOMB_X45_Y23_N16
\adc|enable~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|enable~0_combout\ = (!\adc|spi_comm_delay\(3) & (!\adc|spi_comm_delay\(2) & (!\adc|spi_comm_delay\(0) & !\adc|spi_comm_delay\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_comm_delay\(3),
	datab => \adc|spi_comm_delay\(2),
	datac => \adc|spi_comm_delay\(0),
	datad => \adc|spi_comm_delay\(1),
	combout => \adc|enable~0_combout\);

-- Location: LCCOMB_X45_Y23_N6
\adc|enable~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|enable~1_combout\ = (\adc|enable~q\) # ((!\adc|spi_comm_delay\(4) & (!\adc|spi_comm_delay\(5) & \adc|enable~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_comm_delay\(4),
	datab => \adc|spi_comm_delay\(5),
	datac => \adc|enable~q\,
	datad => \adc|enable~0_combout\,
	combout => \adc|enable~1_combout\);

-- Location: LCCOMB_X45_Y21_N4
\adc|enable~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|enable~2_combout\ = (\adc|enable~1_combout\ & ((\adc|spi_comm_delay\(0)) # ((\adc|Add1~0_combout\) # (!\adc|Equal2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_comm_delay\(0),
	datab => \adc|Add1~0_combout\,
	datac => \adc|Equal2~1_combout\,
	datad => \adc|enable~1_combout\,
	combout => \adc|enable~2_combout\);

-- Location: FF_X45_Y21_N5
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

-- Location: LCCOMB_X45_Y22_N20
\adc|reset~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|reset~0_combout\ = (\adc|init_delay\(2) & (\adc|init_delay\(0) & (\adc|init_delay\(1) & !\adc|state.initialize~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|init_delay\(2),
	datab => \adc|init_delay\(0),
	datac => \adc|init_delay\(1),
	datad => \adc|state.initialize~reg0_q\,
	combout => \adc|reset~0_combout\);

-- Location: LCCOMB_X45_Y22_N22
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

-- Location: LCCOMB_X44_Y21_N30
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

-- Location: FF_X44_Y21_N31
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

-- Location: LCCOMB_X45_Y21_N2
\adc|spi_driver|count[30]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count[30]~2_combout\ = (\adc|reset~q\ & ((\adc|spi_driver|state~q\) # (\adc|enable~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|state~q\,
	datac => \adc|enable~q\,
	datad => \adc|reset~q\,
	combout => \adc|spi_driver|count[30]~2_combout\);

-- Location: FF_X47_Y21_N3
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

-- Location: LCCOMB_X48_Y22_N2
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

-- Location: LCCOMB_X47_Y21_N24
\adc|spi_driver|count~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~33_combout\ = (\adc|spi_driver|Add5~2_combout\ & !\adc|spi_driver|count[15]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc|spi_driver|Add5~2_combout\,
	datad => \adc|spi_driver|count[15]~0_combout\,
	combout => \adc|spi_driver|count~33_combout\);

-- Location: FF_X47_Y21_N25
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

-- Location: LCCOMB_X48_Y22_N26
\adc|spi_driver|Add5~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Add5~26_combout\ = (\adc|spi_driver|count\(13) & (!\adc|spi_driver|Add5~25\)) # (!\adc|spi_driver|count\(13) & ((\adc|spi_driver|Add5~25\) # (GND)))
-- \adc|spi_driver|Add5~27\ = CARRY((!\adc|spi_driver|Add5~25\) # (!\adc|spi_driver|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|count\(13),
	datad => VCC,
	cin => \adc|spi_driver|Add5~25\,
	combout => \adc|spi_driver|Add5~26_combout\,
	cout => \adc|spi_driver|Add5~27\);

-- Location: LCCOMB_X48_Y22_N28
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

-- Location: LCCOMB_X45_Y21_N24
\adc|spi_driver|count~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~21_combout\ = (!\adc|spi_driver|count[15]~0_combout\ & \adc|spi_driver|Add5~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc|spi_driver|count[15]~0_combout\,
	datad => \adc|spi_driver|Add5~28_combout\,
	combout => \adc|spi_driver|count~21_combout\);

-- Location: FF_X45_Y21_N25
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

-- Location: LCCOMB_X48_Y22_N30
\adc|spi_driver|Add5~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Add5~30_combout\ = (\adc|spi_driver|count\(15) & (!\adc|spi_driver|Add5~29\)) # (!\adc|spi_driver|count\(15) & ((\adc|spi_driver|Add5~29\) # (GND)))
-- \adc|spi_driver|Add5~31\ = CARRY((!\adc|spi_driver|Add5~29\) # (!\adc|spi_driver|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|count\(15),
	datad => VCC,
	cin => \adc|spi_driver|Add5~29\,
	combout => \adc|spi_driver|Add5~30_combout\,
	cout => \adc|spi_driver|Add5~31\);

-- Location: LCCOMB_X45_Y21_N30
\adc|spi_driver|count~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~20_combout\ = (!\adc|spi_driver|count[15]~0_combout\ & \adc|spi_driver|Add5~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc|spi_driver|count[15]~0_combout\,
	datad => \adc|spi_driver|Add5~30_combout\,
	combout => \adc|spi_driver|count~20_combout\);

-- Location: FF_X45_Y21_N31
\adc|spi_driver|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|count~20_combout\,
	ena => \adc|spi_driver|count[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|count\(15));

-- Location: LCCOMB_X48_Y21_N0
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

-- Location: LCCOMB_X45_Y21_N28
\adc|spi_driver|count~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~19_combout\ = (!\adc|spi_driver|count[15]~0_combout\ & \adc|spi_driver|Add5~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc|spi_driver|count[15]~0_combout\,
	datac => \adc|spi_driver|Add5~32_combout\,
	combout => \adc|spi_driver|count~19_combout\);

-- Location: FF_X45_Y21_N29
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

-- Location: LCCOMB_X48_Y21_N2
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

-- Location: LCCOMB_X45_Y21_N26
\adc|spi_driver|count~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~18_combout\ = (!\adc|spi_driver|count[15]~0_combout\ & \adc|spi_driver|Add5~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc|spi_driver|count[15]~0_combout\,
	datac => \adc|spi_driver|Add5~34_combout\,
	combout => \adc|spi_driver|count~18_combout\);

-- Location: FF_X45_Y21_N27
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

-- Location: LCCOMB_X48_Y21_N4
\adc|spi_driver|Add5~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Add5~36_combout\ = (\adc|spi_driver|count\(18) & (\adc|spi_driver|Add5~35\ $ (GND))) # (!\adc|spi_driver|count\(18) & (!\adc|spi_driver|Add5~35\ & VCC))
-- \adc|spi_driver|Add5~37\ = CARRY((\adc|spi_driver|count\(18) & !\adc|spi_driver|Add5~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc|spi_driver|count\(18),
	datad => VCC,
	cin => \adc|spi_driver|Add5~35\,
	combout => \adc|spi_driver|Add5~36_combout\,
	cout => \adc|spi_driver|Add5~37\);

-- Location: LCCOMB_X45_Y21_N16
\adc|spi_driver|count~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~17_combout\ = (!\adc|spi_driver|count[15]~0_combout\ & \adc|spi_driver|Add5~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc|spi_driver|count[15]~0_combout\,
	datac => \adc|spi_driver|Add5~36_combout\,
	combout => \adc|spi_driver|count~17_combout\);

-- Location: FF_X45_Y21_N17
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

-- Location: LCCOMB_X48_Y21_N6
\adc|spi_driver|Add5~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Add5~38_combout\ = (\adc|spi_driver|count\(19) & (!\adc|spi_driver|Add5~37\)) # (!\adc|spi_driver|count\(19) & ((\adc|spi_driver|Add5~37\) # (GND)))
-- \adc|spi_driver|Add5~39\ = CARRY((!\adc|spi_driver|Add5~37\) # (!\adc|spi_driver|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc|spi_driver|count\(19),
	datad => VCC,
	cin => \adc|spi_driver|Add5~37\,
	combout => \adc|spi_driver|Add5~38_combout\,
	cout => \adc|spi_driver|Add5~39\);

-- Location: LCCOMB_X45_Y21_N14
\adc|spi_driver|count~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~16_combout\ = (!\adc|spi_driver|count[15]~0_combout\ & \adc|spi_driver|Add5~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc|spi_driver|count[15]~0_combout\,
	datac => \adc|spi_driver|Add5~38_combout\,
	combout => \adc|spi_driver|count~16_combout\);

-- Location: FF_X45_Y21_N15
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

-- Location: LCCOMB_X48_Y21_N8
\adc|spi_driver|Add5~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Add5~40_combout\ = (\adc|spi_driver|count\(20) & (\adc|spi_driver|Add5~39\ $ (GND))) # (!\adc|spi_driver|count\(20) & (!\adc|spi_driver|Add5~39\ & VCC))
-- \adc|spi_driver|Add5~41\ = CARRY((\adc|spi_driver|count\(20) & !\adc|spi_driver|Add5~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc|spi_driver|count\(20),
	datad => VCC,
	cin => \adc|spi_driver|Add5~39\,
	combout => \adc|spi_driver|Add5~40_combout\,
	cout => \adc|spi_driver|Add5~41\);

-- Location: LCCOMB_X45_Y21_N8
\adc|spi_driver|count~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~15_combout\ = (!\adc|spi_driver|count[15]~0_combout\ & \adc|spi_driver|Add5~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc|spi_driver|count[15]~0_combout\,
	datac => \adc|spi_driver|Add5~40_combout\,
	combout => \adc|spi_driver|count~15_combout\);

-- Location: FF_X45_Y21_N9
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

-- Location: LCCOMB_X48_Y21_N10
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

-- Location: LCCOMB_X45_Y21_N6
\adc|spi_driver|count~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~14_combout\ = (!\adc|spi_driver|count[15]~0_combout\ & \adc|spi_driver|Add5~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc|spi_driver|count[15]~0_combout\,
	datac => \adc|spi_driver|Add5~42_combout\,
	combout => \adc|spi_driver|count~14_combout\);

-- Location: FF_X45_Y21_N7
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

-- Location: LCCOMB_X48_Y21_N12
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

-- Location: LCCOMB_X45_Y21_N12
\adc|spi_driver|count~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~13_combout\ = (!\adc|spi_driver|count[15]~0_combout\ & \adc|spi_driver|Add5~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc|spi_driver|count[15]~0_combout\,
	datad => \adc|spi_driver|Add5~44_combout\,
	combout => \adc|spi_driver|count~13_combout\);

-- Location: FF_X45_Y21_N13
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

-- Location: LCCOMB_X48_Y21_N14
\adc|spi_driver|Add5~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Add5~46_combout\ = (\adc|spi_driver|count\(23) & (!\adc|spi_driver|Add5~45\)) # (!\adc|spi_driver|count\(23) & ((\adc|spi_driver|Add5~45\) # (GND)))
-- \adc|spi_driver|Add5~47\ = CARRY((!\adc|spi_driver|Add5~45\) # (!\adc|spi_driver|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|count\(23),
	datad => VCC,
	cin => \adc|spi_driver|Add5~45\,
	combout => \adc|spi_driver|Add5~46_combout\,
	cout => \adc|spi_driver|Add5~47\);

-- Location: LCCOMB_X45_Y21_N22
\adc|spi_driver|count~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~12_combout\ = (!\adc|spi_driver|count[15]~0_combout\ & \adc|spi_driver|Add5~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc|spi_driver|count[15]~0_combout\,
	datad => \adc|spi_driver|Add5~46_combout\,
	combout => \adc|spi_driver|count~12_combout\);

-- Location: FF_X45_Y21_N23
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

-- Location: LCCOMB_X48_Y21_N16
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

-- Location: LCCOMB_X47_Y21_N18
\adc|spi_driver|count~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~11_combout\ = (!\adc|spi_driver|count[15]~0_combout\ & \adc|spi_driver|Add5~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|count[15]~0_combout\,
	datad => \adc|spi_driver|Add5~48_combout\,
	combout => \adc|spi_driver|count~11_combout\);

-- Location: FF_X47_Y21_N19
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

-- Location: LCCOMB_X48_Y21_N18
\adc|spi_driver|Add5~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Add5~50_combout\ = (\adc|spi_driver|count\(25) & (!\adc|spi_driver|Add5~49\)) # (!\adc|spi_driver|count\(25) & ((\adc|spi_driver|Add5~49\) # (GND)))
-- \adc|spi_driver|Add5~51\ = CARRY((!\adc|spi_driver|Add5~49\) # (!\adc|spi_driver|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|count\(25),
	datad => VCC,
	cin => \adc|spi_driver|Add5~49\,
	combout => \adc|spi_driver|Add5~50_combout\,
	cout => \adc|spi_driver|Add5~51\);

-- Location: LCCOMB_X47_Y21_N12
\adc|spi_driver|count~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~10_combout\ = (!\adc|spi_driver|count[15]~0_combout\ & \adc|spi_driver|Add5~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|count[15]~0_combout\,
	datad => \adc|spi_driver|Add5~50_combout\,
	combout => \adc|spi_driver|count~10_combout\);

-- Location: FF_X47_Y21_N13
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

-- Location: LCCOMB_X48_Y21_N20
\adc|spi_driver|Add5~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Add5~52_combout\ = (\adc|spi_driver|count\(26) & (\adc|spi_driver|Add5~51\ $ (GND))) # (!\adc|spi_driver|count\(26) & (!\adc|spi_driver|Add5~51\ & VCC))
-- \adc|spi_driver|Add5~53\ = CARRY((\adc|spi_driver|count\(26) & !\adc|spi_driver|Add5~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|count\(26),
	datad => VCC,
	cin => \adc|spi_driver|Add5~51\,
	combout => \adc|spi_driver|Add5~52_combout\,
	cout => \adc|spi_driver|Add5~53\);

-- Location: LCCOMB_X46_Y21_N16
\adc|spi_driver|count~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~9_combout\ = (!\adc|spi_driver|count[15]~0_combout\ & \adc|spi_driver|Add5~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc|spi_driver|count[15]~0_combout\,
	datad => \adc|spi_driver|Add5~52_combout\,
	combout => \adc|spi_driver|count~9_combout\);

-- Location: FF_X46_Y21_N17
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

-- Location: LCCOMB_X48_Y21_N22
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

-- Location: LCCOMB_X47_Y21_N28
\adc|spi_driver|count~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~8_combout\ = (!\adc|spi_driver|count[15]~0_combout\ & \adc|spi_driver|Add5~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|count[15]~0_combout\,
	datad => \adc|spi_driver|Add5~54_combout\,
	combout => \adc|spi_driver|count~8_combout\);

-- Location: FF_X47_Y21_N29
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

-- Location: LCCOMB_X48_Y21_N24
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

-- Location: LCCOMB_X47_Y21_N6
\adc|spi_driver|count~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~7_combout\ = (!\adc|spi_driver|count[15]~0_combout\ & \adc|spi_driver|Add5~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|count[15]~0_combout\,
	datad => \adc|spi_driver|Add5~56_combout\,
	combout => \adc|spi_driver|count~7_combout\);

-- Location: FF_X47_Y21_N7
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

-- Location: LCCOMB_X48_Y21_N26
\adc|spi_driver|Add5~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Add5~58_combout\ = (\adc|spi_driver|count\(29) & (!\adc|spi_driver|Add5~57\)) # (!\adc|spi_driver|count\(29) & ((\adc|spi_driver|Add5~57\) # (GND)))
-- \adc|spi_driver|Add5~59\ = CARRY((!\adc|spi_driver|Add5~57\) # (!\adc|spi_driver|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|count\(29),
	datad => VCC,
	cin => \adc|spi_driver|Add5~57\,
	combout => \adc|spi_driver|Add5~58_combout\,
	cout => \adc|spi_driver|Add5~59\);

-- Location: LCCOMB_X47_Y21_N16
\adc|spi_driver|count~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~6_combout\ = (!\adc|spi_driver|count[15]~0_combout\ & \adc|spi_driver|Add5~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|count[15]~0_combout\,
	datad => \adc|spi_driver|Add5~58_combout\,
	combout => \adc|spi_driver|count~6_combout\);

-- Location: FF_X47_Y21_N17
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

-- Location: LCCOMB_X48_Y21_N28
\adc|spi_driver|Add5~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Add5~60_combout\ = (\adc|spi_driver|count\(30) & (\adc|spi_driver|Add5~59\ $ (GND))) # (!\adc|spi_driver|count\(30) & (!\adc|spi_driver|Add5~59\ & VCC))
-- \adc|spi_driver|Add5~61\ = CARRY((\adc|spi_driver|count\(30) & !\adc|spi_driver|Add5~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc|spi_driver|count\(30),
	datad => VCC,
	cin => \adc|spi_driver|Add5~59\,
	combout => \adc|spi_driver|Add5~60_combout\,
	cout => \adc|spi_driver|Add5~61\);

-- Location: LCCOMB_X47_Y21_N30
\adc|spi_driver|count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~5_combout\ = (!\adc|spi_driver|count[15]~0_combout\ & \adc|spi_driver|Add5~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|count[15]~0_combout\,
	datad => \adc|spi_driver|Add5~60_combout\,
	combout => \adc|spi_driver|count~5_combout\);

-- Location: FF_X47_Y21_N31
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

-- Location: LCCOMB_X47_Y21_N22
\adc|spi_driver|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Equal1~1_combout\ = (!\adc|spi_driver|count\(28) & (!\adc|spi_driver|count\(27) & (!\adc|spi_driver|count\(30) & !\adc|spi_driver|count\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|count\(28),
	datab => \adc|spi_driver|count\(27),
	datac => \adc|spi_driver|count\(30),
	datad => \adc|spi_driver|count\(29),
	combout => \adc|spi_driver|Equal1~1_combout\);

-- Location: LCCOMB_X48_Y21_N30
\adc|spi_driver|Add5~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Add5~62_combout\ = \adc|spi_driver|count\(31) $ (!\adc|spi_driver|Add5~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|count\(31),
	cin => \adc|spi_driver|Add5~61\,
	combout => \adc|spi_driver|Add5~62_combout\);

-- Location: LCCOMB_X47_Y21_N26
\adc|spi_driver|count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~4_combout\ = (\adc|spi_driver|count[15]~0_combout\) # (!\adc|spi_driver|Add5~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc|spi_driver|Add5~62_combout\,
	datad => \adc|spi_driver|count[15]~0_combout\,
	combout => \adc|spi_driver|count~4_combout\);

-- Location: FF_X47_Y21_N27
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

-- Location: LCCOMB_X47_Y21_N20
\adc|spi_driver|clk_ratio[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|clk_ratio[0]~0_combout\ = (\adc|spi_driver|clk_ratio\(0)) # ((!\adc|spi_driver|state~q\ & (\adc|enable~q\ & \adc|reset~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|state~q\,
	datab => \adc|enable~q\,
	datac => \adc|spi_driver|clk_ratio\(0),
	datad => \adc|reset~q\,
	combout => \adc|spi_driver|clk_ratio[0]~0_combout\);

-- Location: FF_X47_Y21_N21
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

-- Location: LCCOMB_X47_Y21_N4
\adc|spi_driver|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Equal1~0_combout\ = (\adc|spi_driver|count\(31) & (\adc|spi_driver|clk_ratio\(0) & (\adc|spi_driver|count\(4) & \adc|spi_driver|count\(0)))) # (!\adc|spi_driver|count\(31) & (!\adc|spi_driver|clk_ratio\(0) & (!\adc|spi_driver|count\(4) & 
-- !\adc|spi_driver|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|count\(31),
	datab => \adc|spi_driver|clk_ratio\(0),
	datac => \adc|spi_driver|count\(4),
	datad => \adc|spi_driver|count\(0),
	combout => \adc|spi_driver|Equal1~0_combout\);

-- Location: LCCOMB_X47_Y21_N8
\adc|spi_driver|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Equal1~2_combout\ = (!\adc|spi_driver|count\(25) & (!\adc|spi_driver|count\(24) & (!\adc|spi_driver|count\(26) & !\adc|spi_driver|count\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|count\(25),
	datab => \adc|spi_driver|count\(24),
	datac => \adc|spi_driver|count\(26),
	datad => \adc|spi_driver|count\(23),
	combout => \adc|spi_driver|Equal1~2_combout\);

-- Location: LCCOMB_X46_Y21_N14
\adc|spi_driver|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Equal1~3_combout\ = (!\adc|spi_driver|count\(19) & (!\adc|spi_driver|count\(21) & (!\adc|spi_driver|count\(22) & !\adc|spi_driver|count\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|count\(19),
	datab => \adc|spi_driver|count\(21),
	datac => \adc|spi_driver|count\(22),
	datad => \adc|spi_driver|count\(20),
	combout => \adc|spi_driver|Equal1~3_combout\);

-- Location: LCCOMB_X47_Y21_N14
\adc|spi_driver|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Equal1~4_combout\ = (\adc|spi_driver|Equal1~1_combout\ & (\adc|spi_driver|Equal1~0_combout\ & (\adc|spi_driver|Equal1~2_combout\ & \adc|spi_driver|Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|Equal1~1_combout\,
	datab => \adc|spi_driver|Equal1~0_combout\,
	datac => \adc|spi_driver|Equal1~2_combout\,
	datad => \adc|spi_driver|Equal1~3_combout\,
	combout => \adc|spi_driver|Equal1~4_combout\);

-- Location: LCCOMB_X47_Y21_N10
\adc|spi_driver|Equal1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Equal1~10_combout\ = (!\adc|spi_driver|count\(1) & (\adc|spi_driver|Equal1~4_combout\ & \adc|spi_driver|Equal1~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc|spi_driver|count\(1),
	datac => \adc|spi_driver|Equal1~4_combout\,
	datad => \adc|spi_driver|Equal1~9_combout\,
	combout => \adc|spi_driver|Equal1~10_combout\);

-- Location: LCCOMB_X48_Y22_N4
\adc|spi_driver|Add5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Add5~4_combout\ = (\adc|spi_driver|count\(2) & (\adc|spi_driver|Add5~3\ $ (GND))) # (!\adc|spi_driver|count\(2) & (!\adc|spi_driver|Add5~3\ & VCC))
-- \adc|spi_driver|Add5~5\ = CARRY((\adc|spi_driver|count\(2) & !\adc|spi_driver|Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc|spi_driver|count\(2),
	datad => VCC,
	cin => \adc|spi_driver|Add5~3\,
	combout => \adc|spi_driver|Add5~4_combout\,
	cout => \adc|spi_driver|Add5~5\);

-- Location: LCCOMB_X46_Y21_N26
\adc|spi_driver|count~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~32_combout\ = (!\adc|spi_driver|count[15]~0_combout\ & \adc|spi_driver|Add5~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc|spi_driver|count[15]~0_combout\,
	datac => \adc|spi_driver|Add5~4_combout\,
	combout => \adc|spi_driver|count~32_combout\);

-- Location: FF_X46_Y21_N27
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

-- Location: LCCOMB_X48_Y22_N6
\adc|spi_driver|Add5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Add5~6_combout\ = (\adc|spi_driver|count\(3) & (!\adc|spi_driver|Add5~5\)) # (!\adc|spi_driver|count\(3) & ((\adc|spi_driver|Add5~5\) # (GND)))
-- \adc|spi_driver|Add5~7\ = CARRY((!\adc|spi_driver|Add5~5\) # (!\adc|spi_driver|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|count\(3),
	datad => VCC,
	cin => \adc|spi_driver|Add5~5\,
	combout => \adc|spi_driver|Add5~6_combout\,
	cout => \adc|spi_driver|Add5~7\);

-- Location: LCCOMB_X46_Y21_N0
\adc|spi_driver|count~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~31_combout\ = (!\adc|spi_driver|count[15]~0_combout\ & \adc|spi_driver|Add5~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc|spi_driver|count[15]~0_combout\,
	datad => \adc|spi_driver|Add5~6_combout\,
	combout => \adc|spi_driver|count~31_combout\);

-- Location: FF_X46_Y21_N1
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

-- Location: LCCOMB_X48_Y22_N8
\adc|spi_driver|Add5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Add5~8_combout\ = (\adc|spi_driver|count\(4) & (\adc|spi_driver|Add5~7\ $ (GND))) # (!\adc|spi_driver|count\(4) & (!\adc|spi_driver|Add5~7\ & VCC))
-- \adc|spi_driver|Add5~9\ = CARRY((\adc|spi_driver|count\(4) & !\adc|spi_driver|Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc|spi_driver|count\(4),
	datad => VCC,
	cin => \adc|spi_driver|Add5~7\,
	combout => \adc|spi_driver|Add5~8_combout\,
	cout => \adc|spi_driver|Add5~9\);

-- Location: LCCOMB_X47_Y21_N0
\adc|spi_driver|count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~3_combout\ = ((!\adc|spi_driver|Equal1~10_combout\ & \adc|spi_driver|Add5~8_combout\)) # (!\adc|spi_driver|state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|state~q\,
	datac => \adc|spi_driver|Equal1~10_combout\,
	datad => \adc|spi_driver|Add5~8_combout\,
	combout => \adc|spi_driver|count~3_combout\);

-- Location: FF_X47_Y21_N1
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

-- Location: LCCOMB_X48_Y22_N10
\adc|spi_driver|Add5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Add5~10_combout\ = (\adc|spi_driver|count\(5) & (!\adc|spi_driver|Add5~9\)) # (!\adc|spi_driver|count\(5) & ((\adc|spi_driver|Add5~9\) # (GND)))
-- \adc|spi_driver|Add5~11\ = CARRY((!\adc|spi_driver|Add5~9\) # (!\adc|spi_driver|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc|spi_driver|count\(5),
	datad => VCC,
	cin => \adc|spi_driver|Add5~9\,
	combout => \adc|spi_driver|Add5~10_combout\,
	cout => \adc|spi_driver|Add5~11\);

-- Location: LCCOMB_X46_Y21_N30
\adc|spi_driver|count~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~30_combout\ = (!\adc|spi_driver|count[15]~0_combout\ & \adc|spi_driver|Add5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc|spi_driver|count[15]~0_combout\,
	datad => \adc|spi_driver|Add5~10_combout\,
	combout => \adc|spi_driver|count~30_combout\);

-- Location: FF_X46_Y21_N31
\adc|spi_driver|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|count~30_combout\,
	ena => \adc|spi_driver|count[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|count\(5));

-- Location: LCCOMB_X48_Y22_N12
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

-- Location: LCCOMB_X46_Y21_N28
\adc|spi_driver|count~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~29_combout\ = (!\adc|spi_driver|count[15]~0_combout\ & \adc|spi_driver|Add5~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc|spi_driver|count[15]~0_combout\,
	datac => \adc|spi_driver|Add5~12_combout\,
	combout => \adc|spi_driver|count~29_combout\);

-- Location: FF_X46_Y21_N29
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

-- Location: LCCOMB_X48_Y22_N14
\adc|spi_driver|Add5~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Add5~14_combout\ = (\adc|spi_driver|count\(7) & (!\adc|spi_driver|Add5~13\)) # (!\adc|spi_driver|count\(7) & ((\adc|spi_driver|Add5~13\) # (GND)))
-- \adc|spi_driver|Add5~15\ = CARRY((!\adc|spi_driver|Add5~13\) # (!\adc|spi_driver|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|count\(7),
	datad => VCC,
	cin => \adc|spi_driver|Add5~13\,
	combout => \adc|spi_driver|Add5~14_combout\,
	cout => \adc|spi_driver|Add5~15\);

-- Location: LCCOMB_X46_Y21_N12
\adc|spi_driver|count~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~28_combout\ = (!\adc|spi_driver|count[15]~0_combout\ & \adc|spi_driver|Add5~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc|spi_driver|count[15]~0_combout\,
	datad => \adc|spi_driver|Add5~14_combout\,
	combout => \adc|spi_driver|count~28_combout\);

-- Location: FF_X46_Y21_N13
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

-- Location: LCCOMB_X48_Y22_N16
\adc|spi_driver|Add5~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Add5~16_combout\ = (\adc|spi_driver|count\(8) & (\adc|spi_driver|Add5~15\ $ (GND))) # (!\adc|spi_driver|count\(8) & (!\adc|spi_driver|Add5~15\ & VCC))
-- \adc|spi_driver|Add5~17\ = CARRY((\adc|spi_driver|count\(8) & !\adc|spi_driver|Add5~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc|spi_driver|count\(8),
	datad => VCC,
	cin => \adc|spi_driver|Add5~15\,
	combout => \adc|spi_driver|Add5~16_combout\,
	cout => \adc|spi_driver|Add5~17\);

-- Location: LCCOMB_X46_Y21_N22
\adc|spi_driver|count~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~27_combout\ = (!\adc|spi_driver|count[15]~0_combout\ & \adc|spi_driver|Add5~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc|spi_driver|count[15]~0_combout\,
	datad => \adc|spi_driver|Add5~16_combout\,
	combout => \adc|spi_driver|count~27_combout\);

-- Location: FF_X46_Y21_N23
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

-- Location: LCCOMB_X48_Y22_N18
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

-- Location: LCCOMB_X46_Y21_N20
\adc|spi_driver|count~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~26_combout\ = (!\adc|spi_driver|count[15]~0_combout\ & \adc|spi_driver|Add5~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc|spi_driver|count[15]~0_combout\,
	datad => \adc|spi_driver|Add5~18_combout\,
	combout => \adc|spi_driver|count~26_combout\);

-- Location: FF_X46_Y21_N21
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

-- Location: LCCOMB_X48_Y22_N20
\adc|spi_driver|Add5~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Add5~20_combout\ = (\adc|spi_driver|count\(10) & (\adc|spi_driver|Add5~19\ $ (GND))) # (!\adc|spi_driver|count\(10) & (!\adc|spi_driver|Add5~19\ & VCC))
-- \adc|spi_driver|Add5~21\ = CARRY((\adc|spi_driver|count\(10) & !\adc|spi_driver|Add5~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc|spi_driver|count\(10),
	datad => VCC,
	cin => \adc|spi_driver|Add5~19\,
	combout => \adc|spi_driver|Add5~20_combout\,
	cout => \adc|spi_driver|Add5~21\);

-- Location: LCCOMB_X45_Y21_N20
\adc|spi_driver|count~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~25_combout\ = (!\adc|spi_driver|count[15]~0_combout\ & \adc|spi_driver|Add5~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc|spi_driver|count[15]~0_combout\,
	datad => \adc|spi_driver|Add5~20_combout\,
	combout => \adc|spi_driver|count~25_combout\);

-- Location: FF_X45_Y21_N21
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

-- Location: LCCOMB_X48_Y22_N22
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

-- Location: LCCOMB_X45_Y21_N18
\adc|spi_driver|count~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~24_combout\ = (!\adc|spi_driver|count[15]~0_combout\ & \adc|spi_driver|Add5~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc|spi_driver|count[15]~0_combout\,
	datad => \adc|spi_driver|Add5~22_combout\,
	combout => \adc|spi_driver|count~24_combout\);

-- Location: FF_X45_Y21_N19
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

-- Location: LCCOMB_X48_Y22_N24
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

-- Location: LCCOMB_X45_Y21_N0
\adc|spi_driver|count~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~23_combout\ = (!\adc|spi_driver|count[15]~0_combout\ & \adc|spi_driver|Add5~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc|spi_driver|count[15]~0_combout\,
	datad => \adc|spi_driver|Add5~24_combout\,
	combout => \adc|spi_driver|count~23_combout\);

-- Location: FF_X45_Y21_N1
\adc|spi_driver|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|count~23_combout\,
	ena => \adc|spi_driver|count[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|count\(12));

-- Location: LCCOMB_X45_Y21_N10
\adc|spi_driver|count~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~22_combout\ = (!\adc|spi_driver|count[15]~0_combout\ & \adc|spi_driver|Add5~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc|spi_driver|count[15]~0_combout\,
	datad => \adc|spi_driver|Add5~26_combout\,
	combout => \adc|spi_driver|count~22_combout\);

-- Location: FF_X45_Y21_N11
\adc|spi_driver|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|count~22_combout\,
	ena => \adc|spi_driver|count[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|count\(13));

-- Location: LCCOMB_X46_Y21_N10
\adc|spi_driver|Equal1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Equal1~6_combout\ = (!\adc|spi_driver|count\(13) & (!\adc|spi_driver|count\(14) & (!\adc|spi_driver|count\(12) & !\adc|spi_driver|count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|count\(13),
	datab => \adc|spi_driver|count\(14),
	datac => \adc|spi_driver|count\(12),
	datad => \adc|spi_driver|count\(11),
	combout => \adc|spi_driver|Equal1~6_combout\);

-- Location: LCCOMB_X46_Y21_N24
\adc|spi_driver|Equal1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Equal1~8_combout\ = (!\adc|spi_driver|count\(2) & (!\adc|spi_driver|count\(3) & (!\adc|spi_driver|count\(5) & !\adc|spi_driver|count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|count\(2),
	datab => \adc|spi_driver|count\(3),
	datac => \adc|spi_driver|count\(5),
	datad => \adc|spi_driver|count\(6),
	combout => \adc|spi_driver|Equal1~8_combout\);

-- Location: LCCOMB_X46_Y21_N4
\adc|spi_driver|Equal1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Equal1~5_combout\ = (!\adc|spi_driver|count\(18) & (!\adc|spi_driver|count\(16) & (!\adc|spi_driver|count\(17) & !\adc|spi_driver|count\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|count\(18),
	datab => \adc|spi_driver|count\(16),
	datac => \adc|spi_driver|count\(17),
	datad => \adc|spi_driver|count\(15),
	combout => \adc|spi_driver|Equal1~5_combout\);

-- Location: LCCOMB_X46_Y21_N6
\adc|spi_driver|Equal1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Equal1~7_combout\ = (!\adc|spi_driver|count\(7) & (!\adc|spi_driver|count\(9) & (!\adc|spi_driver|count\(8) & !\adc|spi_driver|count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|count\(7),
	datab => \adc|spi_driver|count\(9),
	datac => \adc|spi_driver|count\(8),
	datad => \adc|spi_driver|count\(10),
	combout => \adc|spi_driver|Equal1~7_combout\);

-- Location: LCCOMB_X46_Y21_N18
\adc|spi_driver|Equal1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Equal1~9_combout\ = (\adc|spi_driver|Equal1~6_combout\ & (\adc|spi_driver|Equal1~8_combout\ & (\adc|spi_driver|Equal1~5_combout\ & \adc|spi_driver|Equal1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|Equal1~6_combout\,
	datab => \adc|spi_driver|Equal1~8_combout\,
	datac => \adc|spi_driver|Equal1~5_combout\,
	datad => \adc|spi_driver|Equal1~7_combout\,
	combout => \adc|spi_driver|Equal1~9_combout\);

-- Location: LCCOMB_X44_Y21_N10
\adc|spi_driver|count[15]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count[15]~0_combout\ = ((\adc|spi_driver|Equal1~9_combout\ & (!\adc|spi_driver|count\(1) & \adc|spi_driver|Equal1~4_combout\))) # (!\adc|spi_driver|state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|Equal1~9_combout\,
	datab => \adc|spi_driver|count\(1),
	datac => \adc|spi_driver|state~q\,
	datad => \adc|spi_driver|Equal1~4_combout\,
	combout => \adc|spi_driver|count[15]~0_combout\);

-- Location: LCCOMB_X45_Y20_N8
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

-- Location: LCCOMB_X45_Y20_N0
\adc|spi_driver|clk_toggles[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|clk_toggles[5]~10_combout\ = (\adc|reset~q\ & ((\adc|spi_driver|state~q\ & (\adc|spi_driver|Equal1~10_combout\)) # (!\adc|spi_driver|state~q\ & ((\adc|enable~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|state~q\,
	datab => \adc|spi_driver|Equal1~10_combout\,
	datac => \adc|reset~q\,
	datad => \adc|enable~q\,
	combout => \adc|spi_driver|clk_toggles[5]~10_combout\);

-- Location: FF_X45_Y20_N9
\adc|spi_driver|clk_toggles[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|clk_toggles[0]~6_combout\,
	sclr => \adc|spi_driver|mosi~1_combout\,
	ena => \adc|spi_driver|clk_toggles[5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|clk_toggles\(0));

-- Location: LCCOMB_X45_Y20_N10
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

-- Location: FF_X45_Y20_N11
\adc|spi_driver|clk_toggles[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|clk_toggles[1]~8_combout\,
	sclr => \adc|spi_driver|mosi~1_combout\,
	ena => \adc|spi_driver|clk_toggles[5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|clk_toggles\(1));

-- Location: LCCOMB_X45_Y20_N12
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

-- Location: FF_X45_Y20_N13
\adc|spi_driver|clk_toggles[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|clk_toggles[2]~11_combout\,
	sclr => \adc|spi_driver|mosi~1_combout\,
	ena => \adc|spi_driver|clk_toggles[5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|clk_toggles\(2));

-- Location: LCCOMB_X45_Y20_N14
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

-- Location: FF_X45_Y20_N15
\adc|spi_driver|clk_toggles[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|clk_toggles[3]~13_combout\,
	sclr => \adc|spi_driver|mosi~1_combout\,
	ena => \adc|spi_driver|clk_toggles[5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|clk_toggles\(3));

-- Location: LCCOMB_X45_Y20_N16
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

-- Location: FF_X45_Y20_N17
\adc|spi_driver|clk_toggles[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|clk_toggles[4]~15_combout\,
	sclr => \adc|spi_driver|mosi~1_combout\,
	ena => \adc|spi_driver|clk_toggles[5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|clk_toggles\(4));

-- Location: LCCOMB_X45_Y20_N18
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

-- Location: FF_X45_Y20_N19
\adc|spi_driver|clk_toggles[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|clk_toggles[5]~17_combout\,
	sclr => \adc|spi_driver|mosi~1_combout\,
	ena => \adc|spi_driver|clk_toggles[5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|clk_toggles\(5));

-- Location: LCCOMB_X45_Y20_N24
\adc|spi_driver|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Equal3~0_combout\ = (!\adc|spi_driver|clk_toggles\(1) & (!\adc|spi_driver|clk_toggles\(4) & (!\adc|spi_driver|clk_toggles\(3) & !\adc|spi_driver|clk_toggles\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|clk_toggles\(1),
	datab => \adc|spi_driver|clk_toggles\(4),
	datac => \adc|spi_driver|clk_toggles\(3),
	datad => \adc|spi_driver|clk_toggles\(2),
	combout => \adc|spi_driver|Equal3~0_combout\);

-- Location: LCCOMB_X45_Y20_N26
\adc|spi_driver|mosi~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|mosi~1_combout\ = ((\adc|spi_driver|clk_toggles\(5) & (\adc|spi_driver|clk_toggles\(0) & \adc|spi_driver|Equal3~0_combout\))) # (!\adc|spi_driver|state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|state~q\,
	datab => \adc|spi_driver|clk_toggles\(5),
	datac => \adc|spi_driver|clk_toggles\(0),
	datad => \adc|spi_driver|Equal3~0_combout\,
	combout => \adc|spi_driver|mosi~1_combout\);

-- Location: LCCOMB_X44_Y21_N4
\adc|spi_driver|busy~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|busy~0_combout\ = (((!\adc|spi_driver|state~q\ & \adc|enable~q\)) # (!\adc|spi_driver|mosi~1_combout\)) # (!\adc|spi_driver|count[15]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|state~q\,
	datab => \adc|spi_driver|count[15]~0_combout\,
	datac => \adc|spi_driver|mosi~1_combout\,
	datad => \adc|enable~q\,
	combout => \adc|spi_driver|busy~0_combout\);

-- Location: FF_X44_Y21_N11
\adc|spi_driver|state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \adc|spi_driver|busy~0_combout\,
	clrn => \adc|reset~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|state~q\);

-- Location: LCCOMB_X44_Y21_N22
\adc|spi_driver|Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Equal3~1_combout\ = ((!\adc|spi_driver|Equal3~0_combout\) # (!\adc|spi_driver|clk_toggles\(0))) # (!\adc|spi_driver|clk_toggles\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc|spi_driver|clk_toggles\(5),
	datac => \adc|spi_driver|clk_toggles\(0),
	datad => \adc|spi_driver|Equal3~0_combout\,
	combout => \adc|spi_driver|Equal3~1_combout\);

-- Location: LCCOMB_X44_Y21_N28
\adc|spi_driver|assert_data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|assert_data~0_combout\ = (\adc|spi_driver|assert_data~q\ & ((!\adc|spi_driver|clk_toggles[5]~10_combout\) # (!\adc|spi_driver|state~q\))) # (!\adc|spi_driver|assert_data~q\ & ((\adc|spi_driver|clk_toggles[5]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|state~q\,
	datac => \adc|spi_driver|assert_data~q\,
	datad => \adc|spi_driver|clk_toggles[5]~10_combout\,
	combout => \adc|spi_driver|assert_data~0_combout\);

-- Location: FF_X44_Y21_N29
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

-- Location: LCCOMB_X45_Y20_N28
\adc|spi_driver|LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|LessThan3~0_combout\ = (((!\adc|spi_driver|clk_toggles\(2)) # (!\adc|spi_driver|clk_toggles\(0))) # (!\adc|spi_driver|clk_toggles\(3))) # (!\adc|spi_driver|clk_toggles\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|clk_toggles\(1),
	datab => \adc|spi_driver|clk_toggles\(3),
	datac => \adc|spi_driver|clk_toggles\(0),
	datad => \adc|spi_driver|clk_toggles\(2),
	combout => \adc|spi_driver|LessThan3~0_combout\);

-- Location: LCCOMB_X45_Y20_N22
\adc|spi_driver|mosi~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|mosi~2_combout\ = (\adc|spi_driver|assert_data~q\ & (!\adc|spi_driver|clk_toggles\(5) & ((\adc|spi_driver|LessThan3~0_combout\) # (!\adc|spi_driver|clk_toggles\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|assert_data~q\,
	datab => \adc|spi_driver|clk_toggles\(4),
	datac => \adc|spi_driver|clk_toggles\(5),
	datad => \adc|spi_driver|LessThan3~0_combout\,
	combout => \adc|spi_driver|mosi~2_combout\);

-- Location: LCCOMB_X44_Y21_N18
\adc|spi_driver|mosi~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|mosi~3_combout\ = (\adc|spi_driver|Equal1~10_combout\ & (((\adc|spi_driver|mosi~2_combout\ & \adc|spi_driver|clk_ratio\(0))) # (!\adc|spi_driver|Equal3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|Equal3~1_combout\,
	datab => \adc|spi_driver|mosi~2_combout\,
	datac => \adc|spi_driver|clk_ratio\(0),
	datad => \adc|spi_driver|Equal1~10_combout\,
	combout => \adc|spi_driver|mosi~3_combout\);

-- Location: LCCOMB_X44_Y21_N0
\adc|spi_driver|mosi~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|mosi~4_combout\ = (\adc|spi_driver|state~q\ & ((\adc|spi_driver|mosi~3_combout\ & (!\adc|spi_driver|mosi~1_combout\)) # (!\adc|spi_driver|mosi~3_combout\ & ((\adc|spi_driver|mosi~en_q\))))) # (!\adc|spi_driver|state~q\ & 
-- (!\adc|spi_driver|mosi~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|state~q\,
	datab => \adc|spi_driver|mosi~1_combout\,
	datac => \adc|spi_driver|mosi~en_q\,
	datad => \adc|spi_driver|mosi~3_combout\,
	combout => \adc|spi_driver|mosi~4_combout\);

-- Location: FF_X44_Y21_N1
\adc|spi_driver|mosi~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|mosi~4_combout\,
	clrn => \adc|reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|mosi~en_q\);

-- Location: LCCOMB_X48_Y20_N16
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

-- Location: LCCOMB_X50_Y19_N6
\dac|i2c_master_inst|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Add0~0_combout\ = (\dac|i2c_master_inst|count\(0) & (\dac|i2c_master_inst|stretch~q\ $ (GND))) # (!\dac|i2c_master_inst|count\(0) & (!\dac|i2c_master_inst|stretch~q\ & VCC))
-- \dac|i2c_master_inst|Add0~1\ = CARRY((\dac|i2c_master_inst|count\(0) & !\dac|i2c_master_inst|stretch~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|count\(0),
	datab => \dac|i2c_master_inst|stretch~q\,
	datad => VCC,
	combout => \dac|i2c_master_inst|Add0~0_combout\,
	cout => \dac|i2c_master_inst|Add0~1\);

-- Location: LCCOMB_X50_Y19_N8
\dac|i2c_master_inst|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Add0~2_combout\ = (\dac|i2c_master_inst|count\(1) & (!\dac|i2c_master_inst|Add0~1\)) # (!\dac|i2c_master_inst|count\(1) & ((\dac|i2c_master_inst|Add0~1\) # (GND)))
-- \dac|i2c_master_inst|Add0~3\ = CARRY((!\dac|i2c_master_inst|Add0~1\) # (!\dac|i2c_master_inst|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dac|i2c_master_inst|count\(1),
	datad => VCC,
	cin => \dac|i2c_master_inst|Add0~1\,
	combout => \dac|i2c_master_inst|Add0~2_combout\,
	cout => \dac|i2c_master_inst|Add0~3\);

-- Location: LCCOMB_X50_Y19_N10
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

-- Location: LCCOMB_X50_Y19_N22
\dac|i2c_master_inst|count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|count~2_combout\ = (\dac|i2c_master_inst|Add0~4_combout\ & (((!\dac|i2c_master_inst|Equal0~0_combout\) # (!\dac|i2c_master_inst|count\(1))) # (!\dac|i2c_master_inst|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|count\(0),
	datab => \dac|i2c_master_inst|count\(1),
	datac => \dac|i2c_master_inst|Add0~4_combout\,
	datad => \dac|i2c_master_inst|Equal0~0_combout\,
	combout => \dac|i2c_master_inst|count~2_combout\);

-- Location: FF_X50_Y19_N23
\dac|i2c_master_inst|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|i2c_master_inst|count~2_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|i2c_master_inst|count\(2));

-- Location: LCCOMB_X50_Y19_N12
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

-- Location: LCCOMB_X50_Y19_N28
\dac|i2c_master_inst|count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|count~3_combout\ = (\dac|i2c_master_inst|Add0~6_combout\ & (((!\dac|i2c_master_inst|Equal0~0_combout\) # (!\dac|i2c_master_inst|count\(0))) # (!\dac|i2c_master_inst|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|Add0~6_combout\,
	datab => \dac|i2c_master_inst|count\(1),
	datac => \dac|i2c_master_inst|count\(0),
	datad => \dac|i2c_master_inst|Equal0~0_combout\,
	combout => \dac|i2c_master_inst|count~3_combout\);

-- Location: FF_X50_Y19_N29
\dac|i2c_master_inst|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|i2c_master_inst|count~3_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|i2c_master_inst|count\(3));

-- Location: FF_X50_Y19_N25
\dac|i2c_master_inst|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|i2c_master_inst|count~0_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|i2c_master_inst|count\(5));

-- Location: LCCOMB_X51_Y19_N24
\dac|i2c_master_inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Equal0~0_combout\ = (\dac|i2c_master_inst|count\(2) & (\dac|i2c_master_inst|count\(3) & (!\dac|i2c_master_inst|count\(4) & \dac|i2c_master_inst|count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|count\(2),
	datab => \dac|i2c_master_inst|count\(3),
	datac => \dac|i2c_master_inst|count\(4),
	datad => \dac|i2c_master_inst|count\(5),
	combout => \dac|i2c_master_inst|Equal0~0_combout\);

-- Location: LCCOMB_X50_Y19_N20
\dac|i2c_master_inst|count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|count~4_combout\ = (\dac|i2c_master_inst|Add0~2_combout\ & (((!\dac|i2c_master_inst|Equal0~0_combout\) # (!\dac|i2c_master_inst|count\(1))) # (!\dac|i2c_master_inst|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|count\(0),
	datab => \dac|i2c_master_inst|Add0~2_combout\,
	datac => \dac|i2c_master_inst|count\(1),
	datad => \dac|i2c_master_inst|Equal0~0_combout\,
	combout => \dac|i2c_master_inst|count~4_combout\);

-- Location: FF_X50_Y19_N21
\dac|i2c_master_inst|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|i2c_master_inst|count~4_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|i2c_master_inst|count\(1));

-- Location: LCCOMB_X50_Y19_N14
\dac|i2c_master_inst|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Add0~8_combout\ = (\dac|i2c_master_inst|count\(4) & (\dac|i2c_master_inst|Add0~7\ $ (GND))) # (!\dac|i2c_master_inst|count\(4) & (!\dac|i2c_master_inst|Add0~7\ & VCC))
-- \dac|i2c_master_inst|Add0~9\ = CARRY((\dac|i2c_master_inst|count\(4) & !\dac|i2c_master_inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dac|i2c_master_inst|count\(4),
	datad => VCC,
	cin => \dac|i2c_master_inst|Add0~7\,
	combout => \dac|i2c_master_inst|Add0~8_combout\,
	cout => \dac|i2c_master_inst|Add0~9\);

-- Location: LCCOMB_X50_Y19_N16
\dac|i2c_master_inst|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Add0~10_combout\ = \dac|i2c_master_inst|Add0~9\ $ (\dac|i2c_master_inst|count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \dac|i2c_master_inst|count\(5),
	cin => \dac|i2c_master_inst|Add0~9\,
	combout => \dac|i2c_master_inst|Add0~10_combout\);

-- Location: LCCOMB_X50_Y19_N24
\dac|i2c_master_inst|count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|count~0_combout\ = (\dac|i2c_master_inst|Add0~10_combout\ & (((!\dac|i2c_master_inst|Equal0~0_combout\) # (!\dac|i2c_master_inst|count\(1))) # (!\dac|i2c_master_inst|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|count\(0),
	datab => \dac|i2c_master_inst|count\(1),
	datac => \dac|i2c_master_inst|Add0~10_combout\,
	datad => \dac|i2c_master_inst|Equal0~0_combout\,
	combout => \dac|i2c_master_inst|count~0_combout\);

-- Location: LCCOMB_X50_Y19_N0
\dac|i2c_master_inst|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Equal0~1_combout\ = (\dac|i2c_master_inst|count\(1) & (\dac|i2c_master_inst|count\(0) & \dac|i2c_master_inst|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dac|i2c_master_inst|count\(1),
	datac => \dac|i2c_master_inst|count\(0),
	datad => \dac|i2c_master_inst|Equal0~0_combout\,
	combout => \dac|i2c_master_inst|Equal0~1_combout\);

-- Location: LCCOMB_X50_Y19_N4
\dac|i2c_master_inst|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|process_0~1_combout\ = (!\dac|i2c_master_inst|Equal0~1_combout\ & ((\dac|i2c_master_inst|Add0~8_combout\ & (!\dac|i2c_master_inst|Add0~6_combout\)) # (!\dac|i2c_master_inst|Add0~8_combout\ & ((\dac|i2c_master_inst|Add0~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|Add0~6_combout\,
	datab => \dac|i2c_master_inst|Add0~8_combout\,
	datac => \dac|i2c_master_inst|Add0~4_combout\,
	datad => \dac|i2c_master_inst|Equal0~1_combout\,
	combout => \dac|i2c_master_inst|process_0~1_combout\);

-- Location: LCCOMB_X50_Y19_N2
\dac|i2c_master_inst|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|process_0~2_combout\ = (\dac|i2c_master_inst|process_0~1_combout\) # ((\dac|i2c_master_inst|count~0_combout\ & ((\dac|i2c_master_inst|count~3_combout\))) # (!\dac|i2c_master_inst|count~0_combout\ & 
-- (!\dac|i2c_master_inst|count~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|count~0_combout\,
	datab => \dac|i2c_master_inst|process_0~1_combout\,
	datac => \dac|i2c_master_inst|count~1_combout\,
	datad => \dac|i2c_master_inst|count~3_combout\,
	combout => \dac|i2c_master_inst|process_0~2_combout\);

-- Location: LCCOMB_X50_Y19_N18
\dac|i2c_master_inst|stretch~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|stretch~0_combout\ = (\dac|i2c_master_inst|process_0~2_combout\ & ((\dac|i2c_master_inst|stretch~q\))) # (!\dac|i2c_master_inst|process_0~2_combout\ & (!\SCL~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCL~input_o\,
	datac => \dac|i2c_master_inst|stretch~q\,
	datad => \dac|i2c_master_inst|process_0~2_combout\,
	combout => \dac|i2c_master_inst|stretch~0_combout\);

-- Location: FF_X50_Y19_N19
\dac|i2c_master_inst|stretch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|i2c_master_inst|stretch~0_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|i2c_master_inst|stretch~q\);

-- Location: LCCOMB_X50_Y19_N26
\dac|i2c_master_inst|count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|count~5_combout\ = (\dac|i2c_master_inst|Add0~0_combout\ & (((!\dac|i2c_master_inst|Equal0~0_combout\) # (!\dac|i2c_master_inst|count\(0))) # (!\dac|i2c_master_inst|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|Add0~0_combout\,
	datab => \dac|i2c_master_inst|count\(1),
	datac => \dac|i2c_master_inst|count\(0),
	datad => \dac|i2c_master_inst|Equal0~0_combout\,
	combout => \dac|i2c_master_inst|count~5_combout\);

-- Location: FF_X50_Y19_N27
\dac|i2c_master_inst|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|i2c_master_inst|count~5_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|i2c_master_inst|count\(0));

-- Location: LCCOMB_X50_Y19_N30
\dac|i2c_master_inst|count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|count~1_combout\ = (\dac|i2c_master_inst|Add0~8_combout\ & (((!\dac|i2c_master_inst|Equal0~0_combout\) # (!\dac|i2c_master_inst|count\(1))) # (!\dac|i2c_master_inst|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|count\(0),
	datab => \dac|i2c_master_inst|count\(1),
	datac => \dac|i2c_master_inst|Add0~8_combout\,
	datad => \dac|i2c_master_inst|Equal0~0_combout\,
	combout => \dac|i2c_master_inst|count~1_combout\);

-- Location: FF_X50_Y19_N31
\dac|i2c_master_inst|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|i2c_master_inst|count~1_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|i2c_master_inst|count\(4));

-- Location: LCCOMB_X49_Y19_N12
\dac|i2c_master_inst|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|process_0~0_combout\ = (\dac|i2c_master_inst|Add0~10_combout\) # ((\dac|i2c_master_inst|Add0~8_combout\ & ((\dac|i2c_master_inst|Add0~6_combout\))) # (!\dac|i2c_master_inst|Add0~8_combout\ & ((!\dac|i2c_master_inst|Add0~6_combout\) # 
-- (!\dac|i2c_master_inst|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|Add0~8_combout\,
	datab => \dac|i2c_master_inst|Add0~4_combout\,
	datac => \dac|i2c_master_inst|Add0~6_combout\,
	datad => \dac|i2c_master_inst|Add0~10_combout\,
	combout => \dac|i2c_master_inst|process_0~0_combout\);

-- Location: LCCOMB_X49_Y19_N26
\dac|i2c_master_inst|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|LessThan1~0_combout\ = (\dac|i2c_master_inst|count~1_combout\) # ((\dac|i2c_master_inst|count~0_combout\) # ((\dac|i2c_master_inst|count~2_combout\ & \dac|i2c_master_inst|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|count~1_combout\,
	datab => \dac|i2c_master_inst|count~2_combout\,
	datac => \dac|i2c_master_inst|Add0~6_combout\,
	datad => \dac|i2c_master_inst|count~0_combout\,
	combout => \dac|i2c_master_inst|LessThan1~0_combout\);

-- Location: LCCOMB_X49_Y19_N30
\dac|i2c_master_inst|data_clk~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|data_clk~0_combout\ = (\dac|i2c_master_inst|LessThan1~0_combout\ & (((!\dac|i2c_master_inst|process_0~0_combout\ & !\dac|i2c_master_inst|Equal0~1_combout\)) # (!\dac|i2c_master_inst|process_0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|process_0~0_combout\,
	datab => \dac|i2c_master_inst|Equal0~1_combout\,
	datac => \dac|i2c_master_inst|LessThan1~0_combout\,
	datad => \dac|i2c_master_inst|process_0~2_combout\,
	combout => \dac|i2c_master_inst|data_clk~0_combout\);

-- Location: FF_X49_Y19_N31
\dac|i2c_master_inst|data_clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|i2c_master_inst|data_clk~0_combout\,
	ena => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|i2c_master_inst|data_clk~q\);

-- Location: FF_X49_Y19_N15
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
	ena => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|i2c_master_inst|data_clk_prev~q\);

-- Location: LCCOMB_X49_Y20_N4
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

-- Location: LCCOMB_X49_Y19_N0
\dac|i2c_master_inst|process_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|process_1~0_combout\ = (\dac|i2c_master_inst|data_clk~q\ & !\dac|i2c_master_inst|data_clk_prev~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|data_clk~q\,
	datac => \dac|i2c_master_inst|data_clk_prev~q\,
	combout => \dac|i2c_master_inst|process_1~0_combout\);

-- Location: FF_X49_Y20_N5
\dac|i2c_master_inst|state.ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|i2c_master_inst|Selector17~0_combout\,
	clrn => \RST~input_o\,
	ena => \dac|i2c_master_inst|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|i2c_master_inst|state.ready~q\);

-- Location: LCCOMB_X49_Y20_N8
\dac|i2c_master_inst|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Selector18~0_combout\ = (!\dac|i2c_master_inst|state.ready~q\ & \dac|ena~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dac|i2c_master_inst|state.ready~q\,
	datac => \dac|ena~q\,
	combout => \dac|i2c_master_inst|Selector18~0_combout\);

-- Location: FF_X49_Y20_N9
\dac|i2c_master_inst|state.start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|i2c_master_inst|Selector18~0_combout\,
	clrn => \RST~input_o\,
	ena => \dac|i2c_master_inst|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|i2c_master_inst|state.start~q\);

-- Location: LCCOMB_X48_Y20_N12
\dac|i2c_master_inst|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Add1~0_combout\ = \dac|i2c_master_inst|bit_cnt\(2) $ (((\dac|i2c_master_inst|bit_cnt\(1) & \dac|i2c_master_inst|bit_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dac|i2c_master_inst|bit_cnt\(1),
	datac => \dac|i2c_master_inst|bit_cnt\(0),
	datad => \dac|i2c_master_inst|bit_cnt\(2),
	combout => \dac|i2c_master_inst|Add1~0_combout\);

-- Location: LCCOMB_X48_Y20_N24
\dac|i2c_master_inst|bit_cnt[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|bit_cnt[2]~feeder_combout\ = \dac|i2c_master_inst|Add1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dac|i2c_master_inst|Add1~0_combout\,
	combout => \dac|i2c_master_inst|bit_cnt[2]~feeder_combout\);

-- Location: FF_X48_Y20_N25
\dac|i2c_master_inst|bit_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|i2c_master_inst|bit_cnt[2]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \dac|i2c_master_inst|bit_cnt[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|i2c_master_inst|bit_cnt\(2));

-- Location: LCCOMB_X49_Y20_N24
\dac|i2c_master_inst|state~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|state~14_combout\ = (\dac|i2c_master_inst|bit_cnt\(0) & (\dac|i2c_master_inst|bit_cnt\(2) & (\dac|i2c_master_inst|state.rd~q\ & \dac|i2c_master_inst|bit_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|bit_cnt\(0),
	datab => \dac|i2c_master_inst|bit_cnt\(2),
	datac => \dac|i2c_master_inst|state.rd~q\,
	datad => \dac|i2c_master_inst|bit_cnt\(1),
	combout => \dac|i2c_master_inst|state~14_combout\);

-- Location: FF_X49_Y20_N25
\dac|i2c_master_inst|state.mstr_ack\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|i2c_master_inst|state~14_combout\,
	clrn => \RST~input_o\,
	ena => \dac|i2c_master_inst|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|i2c_master_inst|state.mstr_ack~q\);

-- Location: LCCOMB_X49_Y20_N16
\dac|i2c_master_inst|data_tx[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|data_tx[7]~0_combout\ = (!\dac|i2c_master_inst|state.slv_ack2~q\ & (\dac|i2c_master_inst|state.ready~q\ & !\dac|i2c_master_inst|state.mstr_ack~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dac|i2c_master_inst|state.slv_ack2~q\,
	datac => \dac|i2c_master_inst|state.ready~q\,
	datad => \dac|i2c_master_inst|state.mstr_ack~q\,
	combout => \dac|i2c_master_inst|data_tx[7]~0_combout\);

-- Location: LCCOMB_X49_Y20_N14
\dac|i2c_master_inst|Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Selector27~0_combout\ = (!\dac|i2c_master_inst|state.command~q\ & (\dac|i2c_master_inst|data_tx[7]~0_combout\ & (!\dac|i2c_master_inst|state.slv_ack1~q\ & \dac|i2c_master_inst|Selector0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|state.command~q\,
	datab => \dac|i2c_master_inst|data_tx[7]~0_combout\,
	datac => \dac|i2c_master_inst|state.slv_ack1~q\,
	datad => \dac|i2c_master_inst|Selector0~0_combout\,
	combout => \dac|i2c_master_inst|Selector27~0_combout\);

-- Location: LCCOMB_X48_Y19_N28
\dac|i2c_master_inst|Selector27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Selector27~1_combout\ = (\dac|i2c_master_inst|state.start~q\) # ((\dac|i2c_master_inst|scl_ena~q\ & !\dac|i2c_master_inst|Selector27~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dac|i2c_master_inst|state.start~q\,
	datac => \dac|i2c_master_inst|scl_ena~q\,
	datad => \dac|i2c_master_inst|Selector27~0_combout\,
	combout => \dac|i2c_master_inst|Selector27~1_combout\);

-- Location: LCCOMB_X49_Y19_N2
\dac|i2c_master_inst|process_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|process_1~1_combout\ = (!\dac|i2c_master_inst|data_clk~q\ & \dac|i2c_master_inst|data_clk_prev~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|data_clk~q\,
	datac => \dac|i2c_master_inst|data_clk_prev~q\,
	combout => \dac|i2c_master_inst|process_1~1_combout\);

-- Location: FF_X48_Y19_N29
\dac|i2c_master_inst|scl_ena\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|i2c_master_inst|Selector27~1_combout\,
	clrn => \RST~input_o\,
	ena => \dac|i2c_master_inst|process_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|i2c_master_inst|scl_ena~q\);

-- Location: LCCOMB_X49_Y19_N4
\dac|i2c_master_inst|Selector28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Selector28~1_combout\ = (\dac|i2c_master_inst|state.stop~q\) # ((\dac|i2c_master_inst|scl_ena~q\ & \dac|i2c_master_inst|state.start~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dac|i2c_master_inst|scl_ena~q\,
	datac => \dac|i2c_master_inst|state.stop~q\,
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

-- Location: LCCOMB_X49_Y19_N22
\dac|i2c_master_inst|Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Selector28~0_combout\ = (\SDA~input_o\ & ((\dac|i2c_master_inst|state.slv_ack1~q\) # (\dac|i2c_master_inst|state.slv_ack2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|state.slv_ack1~q\,
	datac => \dac|i2c_master_inst|state.slv_ack2~q\,
	datad => \SDA~input_o\,
	combout => \dac|i2c_master_inst|Selector28~0_combout\);

-- Location: LCCOMB_X48_Y19_N30
\dac|i2c_master_inst|Selector28~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Selector28~2_combout\ = (\dac|i2c_master_inst|Selector28~0_combout\) # ((\dac|i2c_master_inst|ack_error~q\ & ((\dac|i2c_master_inst|Selector28~1_combout\) # (!\dac|i2c_master_inst|Selector27~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|Selector28~1_combout\,
	datab => \dac|i2c_master_inst|Selector28~0_combout\,
	datac => \dac|i2c_master_inst|ack_error~q\,
	datad => \dac|i2c_master_inst|Selector27~0_combout\,
	combout => \dac|i2c_master_inst|Selector28~2_combout\);

-- Location: FF_X48_Y19_N31
\dac|i2c_master_inst|ack_error\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|i2c_master_inst|Selector28~2_combout\,
	clrn => \RST~input_o\,
	ena => \dac|i2c_master_inst|process_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|i2c_master_inst|ack_error~q\);

-- Location: LCCOMB_X48_Y20_N14
\dac|i2c_master_inst|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Selector0~1_combout\ = (!\dac|i2c_master_inst|busy~q\ & ((\dac|i2c_master_inst|Selector22~0_combout\) # ((\dac|i2c_master_inst|state.command~q\) # (\dac|i2c_master_inst|state.slv_ack1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|Selector22~0_combout\,
	datab => \dac|i2c_master_inst|state.command~q\,
	datac => \dac|i2c_master_inst|busy~q\,
	datad => \dac|i2c_master_inst|state.slv_ack1~q\,
	combout => \dac|i2c_master_inst|Selector0~1_combout\);

-- Location: LCCOMB_X49_Y20_N6
\dac|i2c_master_inst|Selector0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Selector0~2_combout\ = (!\dac|i2c_master_inst|Selector0~1_combout\ & (\dac|i2c_master_inst|Selector0~0_combout\ & (!\dac|i2c_master_inst|state.start~q\ & !\dac|i2c_master_inst|Selector18~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|Selector0~1_combout\,
	datab => \dac|i2c_master_inst|Selector0~0_combout\,
	datac => \dac|i2c_master_inst|state.start~q\,
	datad => \dac|i2c_master_inst|Selector18~0_combout\,
	combout => \dac|i2c_master_inst|Selector0~2_combout\);

-- Location: FF_X49_Y20_N7
\dac|i2c_master_inst|busy\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|i2c_master_inst|Selector0~2_combout\,
	clrn => \RST~input_o\,
	ena => \dac|i2c_master_inst|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|i2c_master_inst|busy~q\);

-- Location: LCCOMB_X48_Y20_N8
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

-- Location: FF_X48_Y20_N9
\dac|busy_prev[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|busy_prev[0]~0_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|busy_prev\(0));

-- Location: LCCOMB_X48_Y19_N4
\dac|busy_prev[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|busy_prev[1]~feeder_combout\ = \dac|busy_prev\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dac|busy_prev\(0),
	combout => \dac|busy_prev[1]~feeder_combout\);

-- Location: FF_X48_Y19_N5
\dac|busy_prev[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|busy_prev[1]~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|busy_prev\(1));

-- Location: LCCOMB_X48_Y19_N20
\dac|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Selector2~0_combout\ = (\dac|state.ST_START~q\) # ((\dac|state.ST_WR_1~q\ & ((\dac|busy_prev\(0)) # (!\dac|busy_prev\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|state.ST_START~q\,
	datab => \dac|busy_prev\(1),
	datac => \dac|state.ST_WR_1~q\,
	datad => \dac|busy_prev\(0),
	combout => \dac|Selector2~0_combout\);

-- Location: FF_X48_Y19_N21
\dac|state.ST_WR_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|Selector2~0_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|state.ST_WR_1~q\);

-- Location: LCCOMB_X48_Y19_N26
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

-- Location: LCCOMB_X48_Y19_N12
\dac|state.ST_WR_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|state.ST_WR_2~0_combout\ = (\dac|ena~0_combout\ & (!\dac|i2c_master_inst|ack_error~q\ & (\dac|state.ST_WR_1~q\))) # (!\dac|ena~0_combout\ & (((\dac|state.ST_WR_2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|ack_error~q\,
	datab => \dac|state.ST_WR_1~q\,
	datac => \dac|state.ST_WR_2~q\,
	datad => \dac|ena~0_combout\,
	combout => \dac|state.ST_WR_2~0_combout\);

-- Location: FF_X48_Y19_N13
\dac|state.ST_WR_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|state.ST_WR_2~0_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|state.ST_WR_2~q\);

-- Location: LCCOMB_X48_Y19_N8
\dac|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Selector4~0_combout\ = (\dac|i2c_master_inst|ack_error~q\ & (\dac|ena~0_combout\ & ((\dac|state.ST_WR_1~q\) # (\dac|state.ST_WR_2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|ack_error~q\,
	datab => \dac|state.ST_WR_1~q\,
	datac => \dac|ena~0_combout\,
	datad => \dac|state.ST_WR_2~q\,
	combout => \dac|Selector4~0_combout\);

-- Location: FF_X48_Y19_N9
\dac|state.ST_STOP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|Selector4~0_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|state.ST_STOP~q\);

-- Location: LCCOMB_X48_Y19_N24
\dac|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Selector0~0_combout\ = (!\dac|state.ST_STOP~q\ & ((\dac|i2c_master_inst|ack_error~q\) # ((!\dac|state.ST_WR_2~q\) # (!\dac|ena~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|ack_error~q\,
	datab => \dac|state.ST_STOP~q\,
	datac => \dac|ena~0_combout\,
	datad => \dac|state.ST_WR_2~q\,
	combout => \dac|Selector0~0_combout\);

-- Location: FF_X48_Y19_N25
\dac|state.ST_IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|Selector0~0_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|state.ST_IDLE~q\);

-- Location: LCCOMB_X48_Y19_N14
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

-- Location: FF_X48_Y19_N15
\dac|state.ST_START\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|state.ST_START~0_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|state.ST_START~q\);

-- Location: LCCOMB_X48_Y19_N6
\dac|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Selector5~0_combout\ = (\dac|state.ST_WR_1~q\ & (((\dac|busy_prev\(0)) # (!\dac|busy_prev\(1))) # (!\dac|i2c_master_inst|ack_error~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|ack_error~q\,
	datab => \dac|state.ST_WR_1~q\,
	datac => \dac|busy_prev\(1),
	datad => \dac|busy_prev\(0),
	combout => \dac|Selector5~0_combout\);

-- Location: LCCOMB_X48_Y19_N10
\dac|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Selector5~1_combout\ = (\dac|Selector5~0_combout\) # ((\dac|state.ST_WR_2~q\ & ((\dac|busy_prev\(1)) # (!\dac|busy_prev\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|Selector5~0_combout\,
	datab => \dac|busy_prev\(0),
	datac => \dac|busy_prev\(1),
	datad => \dac|state.ST_WR_2~q\,
	combout => \dac|Selector5~1_combout\);

-- Location: LCCOMB_X47_Y19_N0
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

-- Location: LCCOMB_X43_Y19_N24
\dac|wait_cnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|wait_cnt~24_combout\ = (\dac|Add0~0_combout\ & !\dac|Equal2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dac|Add0~0_combout\,
	datac => \dac|Equal2~10_combout\,
	combout => \dac|wait_cnt~24_combout\);

-- Location: FF_X43_Y19_N25
\dac|wait_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|wait_cnt~24_combout\,
	clrn => \RST~input_o\,
	ena => \dac|state.ST_STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|wait_cnt\(0));

-- Location: LCCOMB_X47_Y19_N2
\dac|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Add0~2_combout\ = (\dac|wait_cnt\(1) & (\dac|Add0~1\ & VCC)) # (!\dac|wait_cnt\(1) & (!\dac|Add0~1\))
-- \dac|Add0~3\ = CARRY((!\dac|wait_cnt\(1) & !\dac|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dac|wait_cnt\(1),
	datad => VCC,
	cin => \dac|Add0~1\,
	combout => \dac|Add0~2_combout\,
	cout => \dac|Add0~3\);

-- Location: LCCOMB_X43_Y19_N10
\dac|wait_cnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|wait_cnt~23_combout\ = (\dac|Add0~2_combout\ & !\dac|Equal2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dac|Add0~2_combout\,
	datad => \dac|Equal2~10_combout\,
	combout => \dac|wait_cnt~23_combout\);

-- Location: FF_X43_Y19_N11
\dac|wait_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|wait_cnt~23_combout\,
	clrn => \RST~input_o\,
	ena => \dac|state.ST_STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|wait_cnt\(1));

-- Location: LCCOMB_X47_Y19_N4
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

-- Location: LCCOMB_X43_Y19_N12
\dac|wait_cnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|wait_cnt~22_combout\ = (!\dac|Equal2~10_combout\ & \dac|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dac|Equal2~10_combout\,
	datad => \dac|Add0~4_combout\,
	combout => \dac|wait_cnt~22_combout\);

-- Location: FF_X43_Y19_N13
\dac|wait_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|wait_cnt~22_combout\,
	clrn => \RST~input_o\,
	ena => \dac|state.ST_STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|wait_cnt\(2));

-- Location: LCCOMB_X47_Y19_N6
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

-- Location: LCCOMB_X43_Y19_N22
\dac|wait_cnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|wait_cnt~21_combout\ = (!\dac|Equal2~10_combout\ & \dac|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dac|Equal2~10_combout\,
	datad => \dac|Add0~6_combout\,
	combout => \dac|wait_cnt~21_combout\);

-- Location: FF_X43_Y19_N23
\dac|wait_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|wait_cnt~21_combout\,
	clrn => \RST~input_o\,
	ena => \dac|state.ST_STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|wait_cnt\(3));

-- Location: LCCOMB_X47_Y19_N8
\dac|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Add0~8_combout\ = (\dac|wait_cnt\(4) & (\dac|Add0~7\ $ (GND))) # (!\dac|wait_cnt\(4) & ((GND) # (!\dac|Add0~7\)))
-- \dac|Add0~9\ = CARRY((!\dac|Add0~7\) # (!\dac|wait_cnt\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dac|wait_cnt\(4),
	datad => VCC,
	cin => \dac|Add0~7\,
	combout => \dac|Add0~8_combout\,
	cout => \dac|Add0~9\);

-- Location: LCCOMB_X43_Y19_N16
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

-- Location: FF_X43_Y19_N17
\dac|wait_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|wait_cnt[4]~31_combout\,
	clrn => \RST~input_o\,
	ena => \dac|state.ST_STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|wait_cnt\(4));

-- Location: LCCOMB_X47_Y19_N10
\dac|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Add0~10_combout\ = (\dac|wait_cnt\(5) & (\dac|Add0~9\ & VCC)) # (!\dac|wait_cnt\(5) & (!\dac|Add0~9\))
-- \dac|Add0~11\ = CARRY((!\dac|wait_cnt\(5) & !\dac|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dac|wait_cnt\(5),
	datad => VCC,
	cin => \dac|Add0~9\,
	combout => \dac|Add0~10_combout\,
	cout => \dac|Add0~11\);

-- Location: LCCOMB_X43_Y19_N26
\dac|wait_cnt~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|wait_cnt~20_combout\ = (!\dac|Equal2~10_combout\ & \dac|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dac|Equal2~10_combout\,
	datad => \dac|Add0~10_combout\,
	combout => \dac|wait_cnt~20_combout\);

-- Location: FF_X43_Y19_N27
\dac|wait_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|wait_cnt~20_combout\,
	clrn => \RST~input_o\,
	ena => \dac|state.ST_STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|wait_cnt\(5));

-- Location: LCCOMB_X47_Y19_N12
\dac|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Add0~12_combout\ = (\dac|wait_cnt\(6) & ((GND) # (!\dac|Add0~11\))) # (!\dac|wait_cnt\(6) & (\dac|Add0~11\ $ (GND)))
-- \dac|Add0~13\ = CARRY((\dac|wait_cnt\(6)) # (!\dac|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dac|wait_cnt\(6),
	datad => VCC,
	cin => \dac|Add0~11\,
	combout => \dac|Add0~12_combout\,
	cout => \dac|Add0~13\);

-- Location: LCCOMB_X46_Y19_N12
\dac|wait_cnt~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|wait_cnt~26_combout\ = (\dac|Add0~12_combout\ & !\dac|Equal2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dac|Add0~12_combout\,
	datad => \dac|Equal2~10_combout\,
	combout => \dac|wait_cnt~26_combout\);

-- Location: FF_X46_Y19_N13
\dac|wait_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|wait_cnt~26_combout\,
	clrn => \RST~input_o\,
	ena => \dac|state.ST_STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|wait_cnt\(6));

-- Location: LCCOMB_X47_Y19_N14
\dac|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Add0~14_combout\ = (\dac|wait_cnt\(7) & (\dac|Add0~13\ & VCC)) # (!\dac|wait_cnt\(7) & (!\dac|Add0~13\))
-- \dac|Add0~15\ = CARRY((!\dac|wait_cnt\(7) & !\dac|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dac|wait_cnt\(7),
	datad => VCC,
	cin => \dac|Add0~13\,
	combout => \dac|Add0~14_combout\,
	cout => \dac|Add0~15\);

-- Location: LCCOMB_X43_Y19_N0
\dac|wait_cnt~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|wait_cnt~25_combout\ = (!\dac|Equal2~10_combout\ & \dac|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dac|Equal2~10_combout\,
	datad => \dac|Add0~14_combout\,
	combout => \dac|wait_cnt~25_combout\);

-- Location: FF_X43_Y19_N1
\dac|wait_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|wait_cnt~25_combout\,
	clrn => \RST~input_o\,
	ena => \dac|state.ST_STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|wait_cnt\(7));

-- Location: LCCOMB_X47_Y19_N16
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

-- Location: LCCOMB_X46_Y19_N6
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

-- Location: FF_X46_Y19_N7
\dac|wait_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|wait_cnt[8]~30_combout\,
	clrn => \RST~input_o\,
	ena => \dac|state.ST_STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|wait_cnt\(8));

-- Location: LCCOMB_X47_Y19_N18
\dac|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Add0~18_combout\ = (\dac|wait_cnt\(9) & (!\dac|Add0~17\)) # (!\dac|wait_cnt\(9) & (\dac|Add0~17\ & VCC))
-- \dac|Add0~19\ = CARRY((\dac|wait_cnt\(9) & !\dac|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dac|wait_cnt\(9),
	datad => VCC,
	cin => \dac|Add0~17\,
	combout => \dac|Add0~18_combout\,
	cout => \dac|Add0~19\);

-- Location: LCCOMB_X46_Y19_N16
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

-- Location: FF_X46_Y19_N17
\dac|wait_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|wait_cnt[9]~29_combout\,
	clrn => \RST~input_o\,
	ena => \dac|state.ST_STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|wait_cnt\(9));

-- Location: LCCOMB_X47_Y19_N20
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

-- Location: LCCOMB_X46_Y19_N10
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

-- Location: FF_X46_Y19_N11
\dac|wait_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|wait_cnt[10]~28_combout\,
	clrn => \RST~input_o\,
	ena => \dac|state.ST_STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|wait_cnt\(10));

-- Location: LCCOMB_X47_Y19_N22
\dac|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Add0~22_combout\ = (\dac|wait_cnt\(11) & (\dac|Add0~21\ & VCC)) # (!\dac|wait_cnt\(11) & (!\dac|Add0~21\))
-- \dac|Add0~23\ = CARRY((!\dac|wait_cnt\(11) & !\dac|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dac|wait_cnt\(11),
	datad => VCC,
	cin => \dac|Add0~21\,
	combout => \dac|Add0~22_combout\,
	cout => \dac|Add0~23\);

-- Location: LCCOMB_X46_Y19_N28
\dac|wait_cnt~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|wait_cnt~19_combout\ = (!\dac|Equal2~10_combout\ & \dac|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dac|Equal2~10_combout\,
	datad => \dac|Add0~22_combout\,
	combout => \dac|wait_cnt~19_combout\);

-- Location: FF_X46_Y19_N29
\dac|wait_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|wait_cnt~19_combout\,
	clrn => \RST~input_o\,
	ena => \dac|state.ST_STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|wait_cnt\(11));

-- Location: LCCOMB_X46_Y19_N30
\dac|Equal2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Equal2~6_combout\ = (\dac|wait_cnt\(10) & (\dac|wait_cnt\(9) & (!\dac|wait_cnt\(11) & \dac|wait_cnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|wait_cnt\(10),
	datab => \dac|wait_cnt\(9),
	datac => \dac|wait_cnt\(11),
	datad => \dac|wait_cnt\(8),
	combout => \dac|Equal2~6_combout\);

-- Location: LCCOMB_X47_Y19_N24
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

-- Location: LCCOMB_X46_Y19_N22
\dac|wait_cnt~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|wait_cnt~18_combout\ = (!\dac|Equal2~10_combout\ & \dac|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dac|Equal2~10_combout\,
	datac => \dac|Add0~24_combout\,
	combout => \dac|wait_cnt~18_combout\);

-- Location: FF_X46_Y19_N23
\dac|wait_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|wait_cnt~18_combout\,
	clrn => \RST~input_o\,
	ena => \dac|state.ST_STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|wait_cnt\(12));

-- Location: LCCOMB_X47_Y19_N26
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

-- Location: LCCOMB_X46_Y19_N0
\dac|wait_cnt[13]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|wait_cnt[13]~27_combout\ = !\dac|Add0~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dac|Add0~26_combout\,
	combout => \dac|wait_cnt[13]~27_combout\);

-- Location: FF_X46_Y19_N1
\dac|wait_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|wait_cnt[13]~27_combout\,
	clrn => \RST~input_o\,
	ena => \dac|state.ST_STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|wait_cnt\(13));

-- Location: LCCOMB_X47_Y19_N28
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

-- Location: LCCOMB_X46_Y19_N4
\dac|wait_cnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|wait_cnt~17_combout\ = (!\dac|Equal2~10_combout\ & \dac|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dac|Equal2~10_combout\,
	datad => \dac|Add0~28_combout\,
	combout => \dac|wait_cnt~17_combout\);

-- Location: FF_X46_Y19_N5
\dac|wait_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|wait_cnt~17_combout\,
	clrn => \RST~input_o\,
	ena => \dac|state.ST_STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|wait_cnt\(14));

-- Location: LCCOMB_X47_Y19_N30
\dac|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Add0~30_combout\ = (\dac|wait_cnt\(15) & (\dac|Add0~29\ & VCC)) # (!\dac|wait_cnt\(15) & (!\dac|Add0~29\))
-- \dac|Add0~31\ = CARRY((!\dac|wait_cnt\(15) & !\dac|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dac|wait_cnt\(15),
	datad => VCC,
	cin => \dac|Add0~29\,
	combout => \dac|Add0~30_combout\,
	cout => \dac|Add0~31\);

-- Location: LCCOMB_X46_Y19_N14
\dac|wait_cnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|wait_cnt~16_combout\ = (\dac|Add0~30_combout\ & !\dac|Equal2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dac|Add0~30_combout\,
	datad => \dac|Equal2~10_combout\,
	combout => \dac|wait_cnt~16_combout\);

-- Location: FF_X46_Y19_N15
\dac|wait_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|wait_cnt~16_combout\,
	clrn => \RST~input_o\,
	ena => \dac|state.ST_STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|wait_cnt\(15));

-- Location: LCCOMB_X46_Y19_N24
\dac|Equal2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Equal2~5_combout\ = (!\dac|wait_cnt\(12) & (\dac|wait_cnt\(13) & (!\dac|wait_cnt\(15) & !\dac|wait_cnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|wait_cnt\(12),
	datab => \dac|wait_cnt\(13),
	datac => \dac|wait_cnt\(15),
	datad => \dac|wait_cnt\(14),
	combout => \dac|Equal2~5_combout\);

-- Location: LCCOMB_X43_Y19_N8
\dac|Equal2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Equal2~7_combout\ = (!\dac|wait_cnt\(5) & \dac|wait_cnt\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dac|wait_cnt\(5),
	datad => \dac|wait_cnt\(4),
	combout => \dac|Equal2~7_combout\);

-- Location: LCCOMB_X43_Y19_N18
\dac|Equal2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Equal2~8_combout\ = (!\dac|wait_cnt\(1) & (!\dac|wait_cnt\(0) & (!\dac|wait_cnt\(3) & !\dac|wait_cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|wait_cnt\(1),
	datab => \dac|wait_cnt\(0),
	datac => \dac|wait_cnt\(3),
	datad => \dac|wait_cnt\(2),
	combout => \dac|Equal2~8_combout\);

-- Location: LCCOMB_X43_Y19_N30
\dac|Equal2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Equal2~9_combout\ = (!\dac|wait_cnt\(6) & (!\dac|wait_cnt\(7) & (\dac|Equal2~7_combout\ & \dac|Equal2~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|wait_cnt\(6),
	datab => \dac|wait_cnt\(7),
	datac => \dac|Equal2~7_combout\,
	datad => \dac|Equal2~8_combout\,
	combout => \dac|Equal2~9_combout\);

-- Location: LCCOMB_X47_Y18_N0
\dac|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Add0~32_combout\ = (\dac|wait_cnt\(16) & ((GND) # (!\dac|Add0~31\))) # (!\dac|wait_cnt\(16) & (\dac|Add0~31\ $ (GND)))
-- \dac|Add0~33\ = CARRY((\dac|wait_cnt\(16)) # (!\dac|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dac|wait_cnt\(16),
	datad => VCC,
	cin => \dac|Add0~31\,
	combout => \dac|Add0~32_combout\,
	cout => \dac|Add0~33\);

-- Location: LCCOMB_X48_Y18_N2
\dac|wait_cnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|wait_cnt~15_combout\ = (\dac|Add0~32_combout\ & !\dac|Equal2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dac|Add0~32_combout\,
	datad => \dac|Equal2~10_combout\,
	combout => \dac|wait_cnt~15_combout\);

-- Location: FF_X48_Y18_N3
\dac|wait_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|wait_cnt~15_combout\,
	clrn => \RST~input_o\,
	ena => \dac|state.ST_STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|wait_cnt\(16));

-- Location: LCCOMB_X47_Y18_N2
\dac|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Add0~34_combout\ = (\dac|wait_cnt\(17) & (\dac|Add0~33\ & VCC)) # (!\dac|wait_cnt\(17) & (!\dac|Add0~33\))
-- \dac|Add0~35\ = CARRY((!\dac|wait_cnt\(17) & !\dac|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dac|wait_cnt\(17),
	datad => VCC,
	cin => \dac|Add0~33\,
	combout => \dac|Add0~34_combout\,
	cout => \dac|Add0~35\);

-- Location: LCCOMB_X48_Y18_N28
\dac|wait_cnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|wait_cnt~14_combout\ = (!\dac|Equal2~10_combout\ & \dac|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dac|Equal2~10_combout\,
	datad => \dac|Add0~34_combout\,
	combout => \dac|wait_cnt~14_combout\);

-- Location: FF_X48_Y18_N29
\dac|wait_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|wait_cnt~14_combout\,
	clrn => \RST~input_o\,
	ena => \dac|state.ST_STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|wait_cnt\(17));

-- Location: LCCOMB_X47_Y18_N4
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

-- Location: LCCOMB_X48_Y18_N30
\dac|wait_cnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|wait_cnt~13_combout\ = (\dac|Add0~36_combout\ & !\dac|Equal2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dac|Add0~36_combout\,
	datad => \dac|Equal2~10_combout\,
	combout => \dac|wait_cnt~13_combout\);

-- Location: FF_X48_Y18_N31
\dac|wait_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|wait_cnt~13_combout\,
	clrn => \RST~input_o\,
	ena => \dac|state.ST_STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|wait_cnt\(18));

-- Location: LCCOMB_X47_Y18_N6
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

-- Location: LCCOMB_X48_Y18_N8
\dac|wait_cnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|wait_cnt~12_combout\ = (\dac|Add0~38_combout\ & !\dac|Equal2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dac|Add0~38_combout\,
	datad => \dac|Equal2~10_combout\,
	combout => \dac|wait_cnt~12_combout\);

-- Location: FF_X48_Y18_N9
\dac|wait_cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|wait_cnt~12_combout\,
	clrn => \RST~input_o\,
	ena => \dac|state.ST_STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|wait_cnt\(19));

-- Location: LCCOMB_X48_Y18_N24
\dac|Equal2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Equal2~3_combout\ = (!\dac|wait_cnt\(18) & (!\dac|wait_cnt\(17) & (!\dac|wait_cnt\(19) & !\dac|wait_cnt\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|wait_cnt\(18),
	datab => \dac|wait_cnt\(17),
	datac => \dac|wait_cnt\(19),
	datad => \dac|wait_cnt\(16),
	combout => \dac|Equal2~3_combout\);

-- Location: LCCOMB_X47_Y18_N8
\dac|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Add0~40_combout\ = (\dac|wait_cnt\(20) & ((GND) # (!\dac|Add0~39\))) # (!\dac|wait_cnt\(20) & (\dac|Add0~39\ $ (GND)))
-- \dac|Add0~41\ = CARRY((\dac|wait_cnt\(20)) # (!\dac|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dac|wait_cnt\(20),
	datad => VCC,
	cin => \dac|Add0~39\,
	combout => \dac|Add0~40_combout\,
	cout => \dac|Add0~41\);

-- Location: LCCOMB_X48_Y18_N0
\dac|wait_cnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|wait_cnt~11_combout\ = (!\dac|Equal2~10_combout\ & \dac|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dac|Equal2~10_combout\,
	datad => \dac|Add0~40_combout\,
	combout => \dac|wait_cnt~11_combout\);

-- Location: FF_X48_Y18_N1
\dac|wait_cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|wait_cnt~11_combout\,
	clrn => \RST~input_o\,
	ena => \dac|state.ST_STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|wait_cnt\(20));

-- Location: LCCOMB_X47_Y18_N10
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

-- Location: LCCOMB_X48_Y18_N10
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

-- Location: FF_X48_Y18_N11
\dac|wait_cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|wait_cnt~10_combout\,
	clrn => \RST~input_o\,
	ena => \dac|state.ST_STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|wait_cnt\(21));

-- Location: LCCOMB_X47_Y18_N12
\dac|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Add0~44_combout\ = (\dac|wait_cnt\(22) & ((GND) # (!\dac|Add0~43\))) # (!\dac|wait_cnt\(22) & (\dac|Add0~43\ $ (GND)))
-- \dac|Add0~45\ = CARRY((\dac|wait_cnt\(22)) # (!\dac|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dac|wait_cnt\(22),
	datad => VCC,
	cin => \dac|Add0~43\,
	combout => \dac|Add0~44_combout\,
	cout => \dac|Add0~45\);

-- Location: LCCOMB_X48_Y18_N4
\dac|wait_cnt~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|wait_cnt~9_combout\ = (!\dac|Equal2~10_combout\ & \dac|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dac|Equal2~10_combout\,
	datad => \dac|Add0~44_combout\,
	combout => \dac|wait_cnt~9_combout\);

-- Location: FF_X48_Y18_N5
\dac|wait_cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|wait_cnt~9_combout\,
	clrn => \RST~input_o\,
	ena => \dac|state.ST_STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|wait_cnt\(22));

-- Location: LCCOMB_X47_Y18_N14
\dac|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Add0~46_combout\ = (\dac|wait_cnt\(23) & (\dac|Add0~45\ & VCC)) # (!\dac|wait_cnt\(23) & (!\dac|Add0~45\))
-- \dac|Add0~47\ = CARRY((!\dac|wait_cnt\(23) & !\dac|Add0~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dac|wait_cnt\(23),
	datad => VCC,
	cin => \dac|Add0~45\,
	combout => \dac|Add0~46_combout\,
	cout => \dac|Add0~47\);

-- Location: LCCOMB_X48_Y18_N6
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

-- Location: FF_X48_Y18_N7
\dac|wait_cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|wait_cnt~8_combout\,
	clrn => \RST~input_o\,
	ena => \dac|state.ST_STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|wait_cnt\(23));

-- Location: LCCOMB_X47_Y18_N16
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

-- Location: LCCOMB_X48_Y18_N14
\dac|wait_cnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|wait_cnt~7_combout\ = (\dac|Add0~48_combout\ & !\dac|Equal2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dac|Add0~48_combout\,
	datad => \dac|Equal2~10_combout\,
	combout => \dac|wait_cnt~7_combout\);

-- Location: FF_X48_Y18_N15
\dac|wait_cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|wait_cnt~7_combout\,
	clrn => \RST~input_o\,
	ena => \dac|state.ST_STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|wait_cnt\(24));

-- Location: LCCOMB_X47_Y18_N18
\dac|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Add0~50_combout\ = (\dac|wait_cnt\(25) & (\dac|Add0~49\ & VCC)) # (!\dac|wait_cnt\(25) & (!\dac|Add0~49\))
-- \dac|Add0~51\ = CARRY((!\dac|wait_cnt\(25) & !\dac|Add0~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dac|wait_cnt\(25),
	datad => VCC,
	cin => \dac|Add0~49\,
	combout => \dac|Add0~50_combout\,
	cout => \dac|Add0~51\);

-- Location: LCCOMB_X48_Y18_N16
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

-- Location: FF_X48_Y18_N17
\dac|wait_cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|wait_cnt~6_combout\,
	clrn => \RST~input_o\,
	ena => \dac|state.ST_STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|wait_cnt\(25));

-- Location: LCCOMB_X47_Y18_N20
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

-- Location: LCCOMB_X48_Y18_N18
\dac|wait_cnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|wait_cnt~5_combout\ = (!\dac|Equal2~10_combout\ & \dac|Add0~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dac|Equal2~10_combout\,
	datad => \dac|Add0~52_combout\,
	combout => \dac|wait_cnt~5_combout\);

-- Location: FF_X48_Y18_N19
\dac|wait_cnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|wait_cnt~5_combout\,
	clrn => \RST~input_o\,
	ena => \dac|state.ST_STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|wait_cnt\(26));

-- Location: LCCOMB_X47_Y18_N22
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

-- Location: LCCOMB_X48_Y18_N12
\dac|wait_cnt~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|wait_cnt~4_combout\ = (!\dac|Equal2~10_combout\ & \dac|Add0~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dac|Equal2~10_combout\,
	datad => \dac|Add0~54_combout\,
	combout => \dac|wait_cnt~4_combout\);

-- Location: FF_X48_Y18_N13
\dac|wait_cnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|wait_cnt~4_combout\,
	clrn => \RST~input_o\,
	ena => \dac|state.ST_STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|wait_cnt\(27));

-- Location: LCCOMB_X47_Y18_N24
\dac|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Add0~56_combout\ = (\dac|wait_cnt\(28) & ((GND) # (!\dac|Add0~55\))) # (!\dac|wait_cnt\(28) & (\dac|Add0~55\ $ (GND)))
-- \dac|Add0~57\ = CARRY((\dac|wait_cnt\(28)) # (!\dac|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dac|wait_cnt\(28),
	datad => VCC,
	cin => \dac|Add0~55\,
	combout => \dac|Add0~56_combout\,
	cout => \dac|Add0~57\);

-- Location: LCCOMB_X46_Y18_N30
\dac|wait_cnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|wait_cnt~3_combout\ = (!\dac|Equal2~10_combout\ & \dac|Add0~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|Equal2~10_combout\,
	datad => \dac|Add0~56_combout\,
	combout => \dac|wait_cnt~3_combout\);

-- Location: FF_X46_Y18_N31
\dac|wait_cnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|wait_cnt~3_combout\,
	clrn => \RST~input_o\,
	ena => \dac|state.ST_STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|wait_cnt\(28));

-- Location: LCCOMB_X47_Y18_N26
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

-- Location: LCCOMB_X46_Y18_N28
\dac|wait_cnt~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|wait_cnt~2_combout\ = (!\dac|Equal2~10_combout\ & \dac|Add0~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|Equal2~10_combout\,
	datad => \dac|Add0~58_combout\,
	combout => \dac|wait_cnt~2_combout\);

-- Location: FF_X46_Y18_N29
\dac|wait_cnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|wait_cnt~2_combout\,
	clrn => \RST~input_o\,
	ena => \dac|state.ST_STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|wait_cnt\(29));

-- Location: LCCOMB_X47_Y18_N28
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

-- Location: LCCOMB_X46_Y18_N6
\dac|wait_cnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|wait_cnt~1_combout\ = (!\dac|Equal2~10_combout\ & \dac|Add0~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|Equal2~10_combout\,
	datad => \dac|Add0~60_combout\,
	combout => \dac|wait_cnt~1_combout\);

-- Location: FF_X46_Y18_N7
\dac|wait_cnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|wait_cnt~1_combout\,
	clrn => \RST~input_o\,
	ena => \dac|state.ST_STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|wait_cnt\(30));

-- Location: LCCOMB_X47_Y18_N30
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

-- Location: LCCOMB_X46_Y18_N24
\dac|wait_cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|wait_cnt~0_combout\ = (\dac|Add0~62_combout\ & !\dac|Equal2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dac|Add0~62_combout\,
	datad => \dac|Equal2~10_combout\,
	combout => \dac|wait_cnt~0_combout\);

-- Location: FF_X46_Y18_N25
\dac|wait_cnt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|wait_cnt~0_combout\,
	clrn => \RST~input_o\,
	ena => \dac|state.ST_STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|wait_cnt\(31));

-- Location: LCCOMB_X46_Y18_N8
\dac|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Equal2~0_combout\ = (!\dac|wait_cnt\(30) & (!\dac|wait_cnt\(29) & (!\dac|wait_cnt\(28) & !\dac|wait_cnt\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|wait_cnt\(30),
	datab => \dac|wait_cnt\(29),
	datac => \dac|wait_cnt\(28),
	datad => \dac|wait_cnt\(31),
	combout => \dac|Equal2~0_combout\);

-- Location: LCCOMB_X48_Y18_N20
\dac|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Equal2~1_combout\ = (!\dac|wait_cnt\(27) & (!\dac|wait_cnt\(26) & (!\dac|wait_cnt\(24) & !\dac|wait_cnt\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|wait_cnt\(27),
	datab => \dac|wait_cnt\(26),
	datac => \dac|wait_cnt\(24),
	datad => \dac|wait_cnt\(25),
	combout => \dac|Equal2~1_combout\);

-- Location: LCCOMB_X48_Y18_N22
\dac|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Equal2~2_combout\ = (!\dac|wait_cnt\(21) & (!\dac|wait_cnt\(20) & (!\dac|wait_cnt\(22) & !\dac|wait_cnt\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|wait_cnt\(21),
	datab => \dac|wait_cnt\(20),
	datac => \dac|wait_cnt\(22),
	datad => \dac|wait_cnt\(23),
	combout => \dac|Equal2~2_combout\);

-- Location: LCCOMB_X46_Y18_N2
\dac|Equal2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Equal2~4_combout\ = (\dac|Equal2~3_combout\ & (\dac|Equal2~0_combout\ & (\dac|Equal2~1_combout\ & \dac|Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|Equal2~3_combout\,
	datab => \dac|Equal2~0_combout\,
	datac => \dac|Equal2~1_combout\,
	datad => \dac|Equal2~2_combout\,
	combout => \dac|Equal2~4_combout\);

-- Location: LCCOMB_X46_Y19_N18
\dac|Equal2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Equal2~10_combout\ = (\dac|Equal2~6_combout\ & (\dac|Equal2~5_combout\ & (\dac|Equal2~9_combout\ & \dac|Equal2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|Equal2~6_combout\,
	datab => \dac|Equal2~5_combout\,
	datac => \dac|Equal2~9_combout\,
	datad => \dac|Equal2~4_combout\,
	combout => \dac|Equal2~10_combout\);

-- Location: LCCOMB_X48_Y19_N18
\dac|Selector5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Selector5~2_combout\ = (\dac|ena~q\ & ((\dac|Selector5~1_combout\) # ((\dac|state.ST_STOP~q\ & !\dac|Equal2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|Selector5~1_combout\,
	datab => \dac|state.ST_STOP~q\,
	datac => \dac|Equal2~10_combout\,
	datad => \dac|ena~q\,
	combout => \dac|Selector5~2_combout\);

-- Location: LCCOMB_X48_Y19_N16
\dac|Selector5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Selector5~3_combout\ = (\dac|state.ST_START~q\) # (\dac|Selector5~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dac|state.ST_START~q\,
	datad => \dac|Selector5~2_combout\,
	combout => \dac|Selector5~3_combout\);

-- Location: FF_X48_Y19_N17
\dac|ena\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|Selector5~3_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|ena~q\);

-- Location: LCCOMB_X49_Y19_N8
\dac|i2c_master_inst|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Selector21~0_combout\ = (\dac|ena~q\ & ((\dac|i2c_master_inst|state.mstr_ack~q\) # ((!\dac|i2c_master_inst|Equal1~0_combout\ & \dac|i2c_master_inst|state.rd~q\)))) # (!\dac|ena~q\ & (!\dac|i2c_master_inst|Equal1~0_combout\ & 
-- (\dac|i2c_master_inst|state.rd~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|ena~q\,
	datab => \dac|i2c_master_inst|Equal1~0_combout\,
	datac => \dac|i2c_master_inst|state.rd~q\,
	datad => \dac|i2c_master_inst|state.mstr_ack~q\,
	combout => \dac|i2c_master_inst|Selector21~0_combout\);

-- Location: FF_X49_Y19_N9
\dac|i2c_master_inst|state.rd\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|i2c_master_inst|Selector21~0_combout\,
	clrn => \RST~input_o\,
	ena => \dac|i2c_master_inst|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|i2c_master_inst|state.rd~q\);

-- Location: LCCOMB_X49_Y19_N20
\dac|i2c_master_inst|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Selector0~0_combout\ = (!\dac|i2c_master_inst|state.rd~q\ & !\dac|i2c_master_inst|state.wr~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dac|i2c_master_inst|state.rd~q\,
	datad => \dac|i2c_master_inst|state.wr~q\,
	combout => \dac|i2c_master_inst|Selector0~0_combout\);

-- Location: LCCOMB_X49_Y19_N18
\dac|i2c_master_inst|bit_cnt[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|bit_cnt[2]~4_combout\ = (!\dac|i2c_master_inst|data_clk_prev~q\ & (\dac|i2c_master_inst|data_clk~q\ & ((\dac|i2c_master_inst|state.command~q\) # (!\dac|i2c_master_inst|Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|state.command~q\,
	datab => \dac|i2c_master_inst|data_clk_prev~q\,
	datac => \dac|i2c_master_inst|data_clk~q\,
	datad => \dac|i2c_master_inst|Selector0~0_combout\,
	combout => \dac|i2c_master_inst|bit_cnt[2]~4_combout\);

-- Location: FF_X48_Y20_N17
\dac|i2c_master_inst|bit_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|i2c_master_inst|bit_cnt[0]~5_combout\,
	clrn => \RST~input_o\,
	ena => \dac|i2c_master_inst|bit_cnt[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|i2c_master_inst|bit_cnt\(0));

-- Location: LCCOMB_X48_Y20_N26
\dac|i2c_master_inst|Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Selector25~0_combout\ = \dac|i2c_master_inst|bit_cnt\(0) $ (\dac|i2c_master_inst|bit_cnt\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dac|i2c_master_inst|bit_cnt\(0),
	datad => \dac|i2c_master_inst|bit_cnt\(1),
	combout => \dac|i2c_master_inst|Selector25~0_combout\);

-- Location: FF_X48_Y20_N19
\dac|i2c_master_inst|bit_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \dac|i2c_master_inst|Selector25~0_combout\,
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \dac|i2c_master_inst|bit_cnt[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|i2c_master_inst|bit_cnt\(1));

-- Location: LCCOMB_X49_Y20_N10
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

-- Location: LCCOMB_X49_Y19_N6
\dac|i2c_master_inst|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Selector19~0_combout\ = (\dac|i2c_master_inst|state.start~q\) # ((!\dac|i2c_master_inst|Equal1~0_combout\ & \dac|i2c_master_inst|state.command~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|Equal1~0_combout\,
	datac => \dac|i2c_master_inst|state.command~q\,
	datad => \dac|i2c_master_inst|state.start~q\,
	combout => \dac|i2c_master_inst|Selector19~0_combout\);

-- Location: FF_X49_Y19_N7
\dac|i2c_master_inst|state.command\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|i2c_master_inst|Selector19~0_combout\,
	clrn => \RST~input_o\,
	ena => \dac|i2c_master_inst|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|i2c_master_inst|state.command~q\);

-- Location: LCCOMB_X49_Y20_N26
\dac|i2c_master_inst|state~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|state~15_combout\ = (\dac|i2c_master_inst|state.command~q\ & (\dac|i2c_master_inst|bit_cnt\(1) & (\dac|i2c_master_inst|bit_cnt\(0) & \dac|i2c_master_inst|bit_cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|state.command~q\,
	datab => \dac|i2c_master_inst|bit_cnt\(1),
	datac => \dac|i2c_master_inst|bit_cnt\(0),
	datad => \dac|i2c_master_inst|bit_cnt\(2),
	combout => \dac|i2c_master_inst|state~15_combout\);

-- Location: FF_X49_Y20_N27
\dac|i2c_master_inst|state.slv_ack1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|i2c_master_inst|state~15_combout\,
	clrn => \RST~input_o\,
	ena => \dac|i2c_master_inst|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|i2c_master_inst|state.slv_ack1~q\);

-- Location: LCCOMB_X49_Y20_N22
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

-- Location: LCCOMB_X49_Y20_N20
\dac|i2c_master_inst|Selector20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Selector20~1_combout\ = (\dac|i2c_master_inst|state.slv_ack1~q\) # ((\dac|i2c_master_inst|Selector20~0_combout\) # ((\dac|i2c_master_inst|state.wr~q\ & !\dac|i2c_master_inst|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|state.slv_ack1~q\,
	datab => \dac|i2c_master_inst|Selector20~0_combout\,
	datac => \dac|i2c_master_inst|state.wr~q\,
	datad => \dac|i2c_master_inst|Equal1~0_combout\,
	combout => \dac|i2c_master_inst|Selector20~1_combout\);

-- Location: FF_X49_Y20_N21
\dac|i2c_master_inst|state.wr\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|i2c_master_inst|Selector20~1_combout\,
	clrn => \RST~input_o\,
	ena => \dac|i2c_master_inst|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|i2c_master_inst|state.wr~q\);

-- Location: LCCOMB_X49_Y20_N18
\dac|i2c_master_inst|state~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|state~13_combout\ = (\dac|i2c_master_inst|state.wr~q\ & (\dac|i2c_master_inst|bit_cnt\(1) & (\dac|i2c_master_inst|bit_cnt\(0) & \dac|i2c_master_inst|bit_cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|state.wr~q\,
	datab => \dac|i2c_master_inst|bit_cnt\(1),
	datac => \dac|i2c_master_inst|bit_cnt\(0),
	datad => \dac|i2c_master_inst|bit_cnt\(2),
	combout => \dac|i2c_master_inst|state~13_combout\);

-- Location: FF_X49_Y20_N19
\dac|i2c_master_inst|state.slv_ack2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|i2c_master_inst|state~13_combout\,
	clrn => \RST~input_o\,
	ena => \dac|i2c_master_inst|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|i2c_master_inst|state.slv_ack2~q\);

-- Location: LCCOMB_X49_Y20_N30
\dac|i2c_master_inst|Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Selector22~0_combout\ = (!\dac|ena~q\ & ((\dac|i2c_master_inst|state.slv_ack2~q\) # (\dac|i2c_master_inst|state.mstr_ack~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dac|i2c_master_inst|state.slv_ack2~q\,
	datac => \dac|ena~q\,
	datad => \dac|i2c_master_inst|state.mstr_ack~q\,
	combout => \dac|i2c_master_inst|Selector22~0_combout\);

-- Location: FF_X49_Y20_N31
\dac|i2c_master_inst|state.stop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|i2c_master_inst|Selector22~0_combout\,
	clrn => \RST~input_o\,
	ena => \dac|i2c_master_inst|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|i2c_master_inst|state.stop~q\);

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

-- Location: LCCOMB_X44_Y21_N8
\adc|spi_driver|ss_n~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|ss_n~0_combout\ = ((!\adc|spi_driver|clk_ratio\(0) & !\adc|spi_driver|ss_n\(0))) # (!\adc|spi_driver|state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|state~q\,
	datac => \adc|spi_driver|clk_ratio\(0),
	datad => \adc|spi_driver|ss_n\(0),
	combout => \adc|spi_driver|ss_n~0_combout\);

-- Location: LCCOMB_X44_Y21_N24
\adc|spi_driver|ss_n~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|ss_n~1_combout\ = (!\adc|spi_driver|ss_n~0_combout\ & ((\adc|spi_driver|Equal3~1_combout\) # (!\adc|spi_driver|Equal1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|Equal3~1_combout\,
	datac => \adc|spi_driver|ss_n~0_combout\,
	datad => \adc|spi_driver|Equal1~10_combout\,
	combout => \adc|spi_driver|ss_n~1_combout\);

-- Location: FF_X44_Y21_N25
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

-- Location: LCCOMB_X44_Y21_N6
\adc|spi_driver|rx_buffer[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|rx_buffer[4]~0_combout\ = (\adc|spi_driver|ss_n\(0) & ((\adc|spi_driver|clk_ratio\(0)) # ((!\adc|spi_driver|clk_toggles\(0) & \adc|spi_driver|Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|clk_ratio\(0),
	datab => \adc|spi_driver|ss_n\(0),
	datac => \adc|spi_driver|clk_toggles\(0),
	datad => \adc|spi_driver|Equal3~0_combout\,
	combout => \adc|spi_driver|rx_buffer[4]~0_combout\);

-- Location: LCCOMB_X44_Y21_N16
\adc|spi_driver|rx_buffer[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|rx_buffer[4]~1_combout\ = (\adc|spi_driver|state~q\ & (!\adc|spi_driver|assert_data~q\ & \adc|spi_driver|Equal1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|state~q\,
	datab => \adc|spi_driver|assert_data~q\,
	datad => \adc|spi_driver|Equal1~10_combout\,
	combout => \adc|spi_driver|rx_buffer[4]~1_combout\);

-- Location: LCCOMB_X44_Y21_N26
\adc|spi_driver|rx_buffer[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|rx_buffer[4]~2_combout\ = (\adc|spi_driver|rx_buffer[4]~0_combout\ & (!\adc|spi_driver|clk_toggles\(5) & (\adc|reset~q\ & \adc|spi_driver|rx_buffer[4]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|rx_buffer[4]~0_combout\,
	datab => \adc|spi_driver|clk_toggles\(5),
	datac => \adc|reset~q\,
	datad => \adc|spi_driver|rx_buffer[4]~1_combout\,
	combout => \adc|spi_driver|rx_buffer[4]~2_combout\);

-- Location: FF_X41_Y21_N17
\adc|spi_driver|rx_buffer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ADC_SDAT~input_o\,
	sload => VCC,
	ena => \adc|spi_driver|rx_buffer[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_buffer\(0));

-- Location: LCCOMB_X41_Y21_N2
\adc|spi_driver|rx_buffer[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|rx_buffer[1]~feeder_combout\ = \adc|spi_driver|rx_buffer\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc|spi_driver|rx_buffer\(0),
	combout => \adc|spi_driver|rx_buffer[1]~feeder_combout\);

-- Location: FF_X41_Y21_N3
\adc|spi_driver|rx_buffer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|rx_buffer[1]~feeder_combout\,
	ena => \adc|spi_driver|rx_buffer[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_buffer\(1));

-- Location: LCCOMB_X41_Y21_N20
\adc|spi_driver|rx_buffer[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|rx_buffer[2]~feeder_combout\ = \adc|spi_driver|rx_buffer\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc|spi_driver|rx_buffer\(1),
	combout => \adc|spi_driver|rx_buffer[2]~feeder_combout\);

-- Location: FF_X41_Y21_N21
\adc|spi_driver|rx_buffer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|rx_buffer[2]~feeder_combout\,
	ena => \adc|spi_driver|rx_buffer[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_buffer\(2));

-- Location: LCCOMB_X43_Y21_N2
\adc|spi_driver|rx_data[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|rx_data[2]~feeder_combout\ = \adc|spi_driver|rx_buffer\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc|spi_driver|rx_buffer\(2),
	combout => \adc|spi_driver|rx_data[2]~feeder_combout\);

-- Location: LCCOMB_X43_Y21_N14
\adc|spi_driver|rx_data[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|rx_data[4]~0_combout\ = (\adc|spi_driver|Equal1~10_combout\ & (\adc|spi_driver|state~q\ & !\adc|spi_driver|Equal3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|Equal1~10_combout\,
	datab => \adc|spi_driver|state~q\,
	datad => \adc|spi_driver|Equal3~1_combout\,
	combout => \adc|spi_driver|rx_data[4]~0_combout\);

-- Location: FF_X43_Y21_N3
\adc|spi_driver|rx_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|rx_data[2]~feeder_combout\,
	clrn => \adc|reset~q\,
	ena => \adc|spi_driver|rx_data[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_data\(2));

-- Location: LCCOMB_X44_Y23_N6
\temp_DATA[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_DATA[3]~feeder_combout\ = \adc|spi_driver|rx_data\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc|spi_driver|rx_data\(2),
	combout => \temp_DATA[3]~feeder_combout\);

-- Location: LCCOMB_X44_Y23_N28
\temp_DATA[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_DATA[7]~0_combout\ = (\RST~input_o\ & \adc|state.ready~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RST~input_o\,
	datad => \adc|state.ready~reg0_q\,
	combout => \temp_DATA[7]~0_combout\);

-- Location: FF_X44_Y23_N7
\temp_DATA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \temp_DATA[3]~feeder_combout\,
	ena => \temp_DATA[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_DATA(3));

-- Location: LCCOMB_X47_Y23_N22
\dac|data_buffer[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|data_buffer[3]~feeder_combout\ = temp_DATA(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => temp_DATA(3),
	combout => \dac|data_buffer[3]~feeder_combout\);

-- Location: LCCOMB_X47_Y23_N10
\dac|data_buffer[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|data_buffer[7]~0_combout\ = (\RST~input_o\ & !\dac|state.ST_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RST~input_o\,
	datad => \dac|state.ST_IDLE~q\,
	combout => \dac|data_buffer[7]~0_combout\);

-- Location: FF_X47_Y23_N23
\dac|data_buffer[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|data_buffer[3]~feeder_combout\,
	ena => \dac|data_buffer[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|data_buffer\(3));

-- Location: LCCOMB_X41_Y21_N6
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

-- Location: FF_X41_Y21_N7
\adc|spi_driver|rx_buffer[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|rx_buffer[3]~feeder_combout\,
	ena => \adc|spi_driver|rx_buffer[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_buffer\(3));

-- Location: LCCOMB_X41_Y21_N18
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

-- Location: FF_X41_Y21_N19
\adc|spi_driver|rx_buffer[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|rx_buffer[4]~feeder_combout\,
	ena => \adc|spi_driver|rx_buffer[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_buffer\(4));

-- Location: LCCOMB_X41_Y21_N24
\adc|spi_driver|rx_buffer[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|rx_buffer[5]~feeder_combout\ = \adc|spi_driver|rx_buffer\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc|spi_driver|rx_buffer\(4),
	combout => \adc|spi_driver|rx_buffer[5]~feeder_combout\);

-- Location: FF_X41_Y21_N25
\adc|spi_driver|rx_buffer[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|rx_buffer[5]~feeder_combout\,
	ena => \adc|spi_driver|rx_buffer[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_buffer\(5));

-- Location: LCCOMB_X41_Y21_N10
\adc|spi_driver|rx_buffer[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|rx_buffer[6]~feeder_combout\ = \adc|spi_driver|rx_buffer\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc|spi_driver|rx_buffer\(5),
	combout => \adc|spi_driver|rx_buffer[6]~feeder_combout\);

-- Location: FF_X41_Y21_N11
\adc|spi_driver|rx_buffer[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|rx_buffer[6]~feeder_combout\,
	ena => \adc|spi_driver|rx_buffer[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_buffer\(6));

-- Location: LCCOMB_X41_Y21_N0
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

-- Location: FF_X41_Y21_N1
\adc|spi_driver|rx_buffer[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|rx_buffer[7]~feeder_combout\,
	ena => \adc|spi_driver|rx_buffer[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_buffer\(7));

-- Location: FF_X43_Y21_N7
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
	ena => \adc|spi_driver|rx_buffer[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_buffer\(8));

-- Location: LCCOMB_X43_Y21_N12
\adc|spi_driver|rx_buffer[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|rx_buffer[9]~feeder_combout\ = \adc|spi_driver|rx_buffer\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc|spi_driver|rx_buffer\(8),
	combout => \adc|spi_driver|rx_buffer[9]~feeder_combout\);

-- Location: FF_X43_Y21_N13
\adc|spi_driver|rx_buffer[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|rx_buffer[9]~feeder_combout\,
	ena => \adc|spi_driver|rx_buffer[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_buffer\(9));

-- Location: LCCOMB_X41_Y21_N22
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

-- Location: FF_X41_Y21_N23
\adc|spi_driver|rx_buffer[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|rx_buffer[10]~feeder_combout\,
	ena => \adc|spi_driver|rx_buffer[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_buffer\(10));

-- Location: FF_X41_Y21_N5
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
	ena => \adc|spi_driver|rx_data[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_data\(10));

-- Location: LCCOMB_X44_Y23_N24
\temp_DATA[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_DATA[11]~feeder_combout\ = \adc|spi_driver|rx_data\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc|spi_driver|rx_data\(10),
	combout => \temp_DATA[11]~feeder_combout\);

-- Location: FF_X44_Y23_N25
\temp_DATA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \temp_DATA[11]~feeder_combout\,
	ena => \temp_DATA[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_DATA(11));

-- Location: LCCOMB_X47_Y23_N24
\dac|data_buffer[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|data_buffer[11]~feeder_combout\ = temp_DATA(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => temp_DATA(11),
	combout => \dac|data_buffer[11]~feeder_combout\);

-- Location: FF_X47_Y23_N25
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

-- Location: LCCOMB_X47_Y23_N28
\dac|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Selector10~0_combout\ = (\dac|state.ST_WR_1~q\ & (\dac|data_buffer\(3))) # (!\dac|state.ST_WR_1~q\ & ((\dac|data_buffer\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|state.ST_WR_1~q\,
	datac => \dac|data_buffer\(3),
	datad => \dac|data_buffer\(11),
	combout => \dac|Selector10~0_combout\);

-- Location: LCCOMB_X47_Y20_N20
\dac|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|process_0~0_combout\ = (!\SCL~input_o\ & !\dac|i2c_master_inst|busy~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SCL~input_o\,
	datad => \dac|i2c_master_inst|busy~q\,
	combout => \dac|process_0~0_combout\);

-- Location: LCCOMB_X47_Y20_N14
\dac|data_wr[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|data_wr[3]~4_combout\ = (\RST~input_o\ & ((\dac|state.ST_WR_1~q\ & (\dac|process_0~0_combout\)) # (!\dac|state.ST_WR_1~q\ & ((\dac|state.ST_START~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|state.ST_WR_1~q\,
	datab => \dac|process_0~0_combout\,
	datac => \RST~input_o\,
	datad => \dac|state.ST_START~q\,
	combout => \dac|data_wr[3]~4_combout\);

-- Location: FF_X47_Y23_N29
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

-- Location: LCCOMB_X43_Y21_N18
\adc|spi_driver|rx_data[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|rx_data[9]~feeder_combout\ = \adc|spi_driver|rx_buffer\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc|spi_driver|rx_buffer\(9),
	combout => \adc|spi_driver|rx_data[9]~feeder_combout\);

-- Location: FF_X43_Y21_N19
\adc|spi_driver|rx_data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|rx_data[9]~feeder_combout\,
	clrn => \adc|reset~q\,
	ena => \adc|spi_driver|rx_data[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_data\(9));

-- Location: LCCOMB_X44_Y23_N14
\temp_DATA[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_DATA[10]~feeder_combout\ = \adc|spi_driver|rx_data\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc|spi_driver|rx_data\(9),
	combout => \temp_DATA[10]~feeder_combout\);

-- Location: FF_X44_Y23_N15
\temp_DATA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \temp_DATA[10]~feeder_combout\,
	ena => \temp_DATA[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_DATA(10));

-- Location: LCCOMB_X47_Y23_N26
\dac|data_buffer[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|data_buffer[10]~feeder_combout\ = temp_DATA(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => temp_DATA(10),
	combout => \dac|data_buffer[10]~feeder_combout\);

-- Location: FF_X47_Y23_N27
\dac|data_buffer[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|data_buffer[10]~feeder_combout\,
	ena => \dac|data_buffer[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|data_buffer\(10));

-- Location: LCCOMB_X41_Y21_N12
\adc|spi_driver|rx_data[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|rx_data[1]~feeder_combout\ = \adc|spi_driver|rx_buffer\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc|spi_driver|rx_buffer\(1),
	combout => \adc|spi_driver|rx_data[1]~feeder_combout\);

-- Location: FF_X41_Y21_N13
\adc|spi_driver|rx_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|rx_data[1]~feeder_combout\,
	clrn => \adc|reset~q\,
	ena => \adc|spi_driver|rx_data[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_data\(1));

-- Location: LCCOMB_X44_Y23_N8
\temp_DATA[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_DATA[2]~feeder_combout\ = \adc|spi_driver|rx_data\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc|spi_driver|rx_data\(1),
	combout => \temp_DATA[2]~feeder_combout\);

-- Location: FF_X44_Y23_N9
\temp_DATA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \temp_DATA[2]~feeder_combout\,
	ena => \temp_DATA[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_DATA(2));

-- Location: LCCOMB_X47_Y23_N20
\dac|data_buffer[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|data_buffer[2]~feeder_combout\ = temp_DATA(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => temp_DATA(2),
	combout => \dac|data_buffer[2]~feeder_combout\);

-- Location: FF_X47_Y23_N21
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

-- Location: LCCOMB_X47_Y23_N12
\dac|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Selector11~0_combout\ = (\dac|state.ST_WR_1~q\ & ((\dac|data_buffer\(2)))) # (!\dac|state.ST_WR_1~q\ & (\dac|data_buffer\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|data_buffer\(10),
	datab => \dac|data_buffer\(2),
	datac => \dac|state.ST_WR_1~q\,
	combout => \dac|Selector11~0_combout\);

-- Location: FF_X47_Y23_N13
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

-- Location: FF_X43_Y21_N15
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
	ena => \adc|spi_driver|rx_data[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_data\(7));

-- Location: LCCOMB_X44_Y23_N20
\temp_DATA[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_DATA[8]~feeder_combout\ = \adc|spi_driver|rx_data\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc|spi_driver|rx_data\(7),
	combout => \temp_DATA[8]~feeder_combout\);

-- Location: FF_X44_Y23_N21
\temp_DATA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \temp_DATA[8]~feeder_combout\,
	ena => \temp_DATA[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_DATA(8));

-- Location: LCCOMB_X47_Y23_N8
\dac|data_buffer[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|data_buffer[8]~feeder_combout\ = temp_DATA(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => temp_DATA(8),
	combout => \dac|data_buffer[8]~feeder_combout\);

-- Location: FF_X47_Y23_N9
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

-- Location: LCCOMB_X47_Y20_N22
\dac|data_wr[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|data_wr[0]~5_combout\ = (\dac|data_wr[3]~4_combout\ & (!\dac|state.ST_WR_1~q\ & (\dac|data_buffer\(8)))) # (!\dac|data_wr[3]~4_combout\ & (((\dac|data_wr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|state.ST_WR_1~q\,
	datab => \dac|data_buffer\(8),
	datac => \dac|data_wr\(0),
	datad => \dac|data_wr[3]~4_combout\,
	combout => \dac|data_wr[0]~5_combout\);

-- Location: FF_X47_Y20_N23
\dac|data_wr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|data_wr[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|data_wr\(0));

-- Location: LCCOMB_X41_Y21_N26
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

-- Location: FF_X41_Y21_N27
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
	ena => \adc|spi_driver|rx_data[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_data\(0));

-- Location: LCCOMB_X44_Y23_N16
\temp_DATA[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_DATA[1]~feeder_combout\ = \adc|spi_driver|rx_data\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc|spi_driver|rx_data\(0),
	combout => \temp_DATA[1]~feeder_combout\);

-- Location: FF_X44_Y23_N17
\temp_DATA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \temp_DATA[1]~feeder_combout\,
	ena => \temp_DATA[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_DATA(1));

-- Location: LCCOMB_X47_Y23_N4
\dac|data_buffer[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|data_buffer[1]~feeder_combout\ = temp_DATA(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => temp_DATA(1),
	combout => \dac|data_buffer[1]~feeder_combout\);

-- Location: FF_X47_Y23_N5
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

-- Location: LCCOMB_X43_Y21_N4
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

-- Location: FF_X43_Y21_N5
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
	ena => \adc|spi_driver|rx_data[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_data\(8));

-- Location: LCCOMB_X44_Y23_N26
\temp_DATA[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_DATA[9]~feeder_combout\ = \adc|spi_driver|rx_data\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc|spi_driver|rx_data\(8),
	combout => \temp_DATA[9]~feeder_combout\);

-- Location: FF_X44_Y23_N27
\temp_DATA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \temp_DATA[9]~feeder_combout\,
	ena => \temp_DATA[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_DATA(9));

-- Location: LCCOMB_X47_Y23_N2
\dac|data_buffer[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|data_buffer[9]~feeder_combout\ = temp_DATA(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => temp_DATA(9),
	combout => \dac|data_buffer[9]~feeder_combout\);

-- Location: FF_X47_Y23_N3
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

-- Location: LCCOMB_X47_Y23_N18
\dac|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Selector12~0_combout\ = (\dac|state.ST_WR_1~q\ & (\dac|data_buffer\(1))) # (!\dac|state.ST_WR_1~q\ & ((\dac|data_buffer\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|state.ST_WR_1~q\,
	datac => \dac|data_buffer\(1),
	datad => \dac|data_buffer\(9),
	combout => \dac|Selector12~0_combout\);

-- Location: FF_X47_Y23_N19
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

-- Location: LCCOMB_X47_Y20_N8
\dac|i2c_master_inst|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Mux4~2_combout\ = (\dac|i2c_master_inst|bit_cnt\(0) & (\dac|data_wr\(0) & ((\dac|i2c_master_inst|bit_cnt\(1))))) # (!\dac|i2c_master_inst|bit_cnt\(0) & (((\dac|data_wr\(1)) # (!\dac|i2c_master_inst|bit_cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|data_wr\(0),
	datab => \dac|i2c_master_inst|bit_cnt\(0),
	datac => \dac|data_wr\(1),
	datad => \dac|i2c_master_inst|bit_cnt\(1),
	combout => \dac|i2c_master_inst|Mux4~2_combout\);

-- Location: LCCOMB_X47_Y20_N24
\dac|i2c_master_inst|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Mux4~3_combout\ = (\dac|i2c_master_inst|Mux4~2_combout\ & ((\dac|data_wr\(3)) # ((\dac|i2c_master_inst|bit_cnt\(1))))) # (!\dac|i2c_master_inst|Mux4~2_combout\ & (((\dac|data_wr\(2) & !\dac|i2c_master_inst|bit_cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|data_wr\(3),
	datab => \dac|data_wr\(2),
	datac => \dac|i2c_master_inst|Mux4~2_combout\,
	datad => \dac|i2c_master_inst|bit_cnt\(1),
	combout => \dac|i2c_master_inst|Mux4~3_combout\);

-- Location: LCCOMB_X49_Y20_N0
\dac|i2c_master_inst|Selector23~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Selector23~8_combout\ = (!\dac|i2c_master_inst|bit_cnt\(1) & (\dac|i2c_master_inst|state.start~q\ & !\dac|i2c_master_inst|bit_cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dac|i2c_master_inst|bit_cnt\(1),
	datac => \dac|i2c_master_inst|state.start~q\,
	datad => \dac|i2c_master_inst|bit_cnt\(2),
	combout => \dac|i2c_master_inst|Selector23~8_combout\);

-- Location: LCCOMB_X48_Y20_N6
\dac|i2c_master_inst|Selector23~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Selector23~9_combout\ = (\dac|i2c_master_inst|Selector23~8_combout\) # ((\dac|i2c_master_inst|bit_cnt\(2) & (\dac|i2c_master_inst|Mux4~3_combout\ & \dac|i2c_master_inst|Selector20~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|bit_cnt\(2),
	datab => \dac|i2c_master_inst|Mux4~3_combout\,
	datac => \dac|i2c_master_inst|Selector23~8_combout\,
	datad => \dac|i2c_master_inst|Selector20~0_combout\,
	combout => \dac|i2c_master_inst|Selector23~9_combout\);

-- Location: LCCOMB_X41_Y21_N30
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

-- Location: FF_X41_Y21_N31
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
	ena => \adc|spi_driver|rx_data[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_data\(6));

-- Location: LCCOMB_X44_Y23_N18
\temp_DATA[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_DATA[7]~feeder_combout\ = \adc|spi_driver|rx_data\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc|spi_driver|rx_data\(6),
	combout => \temp_DATA[7]~feeder_combout\);

-- Location: FF_X44_Y23_N19
\temp_DATA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \temp_DATA[7]~feeder_combout\,
	ena => \temp_DATA[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_DATA(7));

-- Location: LCCOMB_X45_Y23_N2
\dac|data_buffer[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|data_buffer[7]~feeder_combout\ = temp_DATA(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => temp_DATA(7),
	combout => \dac|data_buffer[7]~feeder_combout\);

-- Location: FF_X45_Y23_N3
\dac|data_buffer[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|data_buffer[7]~feeder_combout\,
	ena => \dac|data_buffer[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|data_buffer\(7));

-- Location: LCCOMB_X44_Y22_N10
\dac|data_wr[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|data_wr[7]~3_combout\ = (\dac|process_0~0_combout\ & (\dac|data_buffer\(7))) # (!\dac|process_0~0_combout\ & ((\dac|data_wr\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dac|data_buffer\(7),
	datac => \dac|data_wr\(7),
	datad => \dac|process_0~0_combout\,
	combout => \dac|data_wr[7]~3_combout\);

-- Location: LCCOMB_X44_Y22_N18
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

-- Location: FF_X44_Y22_N11
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
	ena => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|data_wr\(7));

-- Location: LCCOMB_X49_Y20_N28
\dac|i2c_master_inst|data_tx[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|data_tx[7]~1_combout\ = (\dac|ena~q\ & (\dac|i2c_master_inst|process_1~0_combout\ & (\RST~input_o\ & !\dac|i2c_master_inst|data_tx[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|ena~q\,
	datab => \dac|i2c_master_inst|process_1~0_combout\,
	datac => \RST~input_o\,
	datad => \dac|i2c_master_inst|data_tx[7]~0_combout\,
	combout => \dac|i2c_master_inst|data_tx[7]~1_combout\);

-- Location: FF_X47_Y20_N27
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

-- Location: LCCOMB_X41_Y21_N28
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

-- Location: FF_X41_Y21_N29
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
	ena => \adc|spi_driver|rx_data[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_data\(5));

-- Location: FF_X44_Y23_N29
\temp_DATA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \adc|spi_driver|rx_data\(5),
	sload => VCC,
	ena => \temp_DATA[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_DATA(6));

-- Location: LCCOMB_X45_Y23_N26
\dac|data_buffer[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|data_buffer[6]~feeder_combout\ = temp_DATA(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => temp_DATA(6),
	combout => \dac|data_buffer[6]~feeder_combout\);

-- Location: FF_X45_Y23_N27
\dac|data_buffer[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|data_buffer[6]~feeder_combout\,
	ena => \dac|data_buffer[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|data_buffer\(6));

-- Location: LCCOMB_X44_Y22_N4
\dac|data_wr[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|data_wr[6]~0_combout\ = (\dac|process_0~0_combout\ & (\dac|data_buffer\(6))) # (!\dac|process_0~0_combout\ & ((\dac|data_wr\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dac|data_buffer\(6),
	datac => \dac|data_wr\(6),
	datad => \dac|process_0~0_combout\,
	combout => \dac|data_wr[6]~0_combout\);

-- Location: LCCOMB_X44_Y22_N8
\dac|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Selector7~0_combout\ = (\dac|data_wr\(6) & !\dac|state.ST_START~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dac|data_wr\(6),
	datad => \dac|state.ST_START~q\,
	combout => \dac|Selector7~0_combout\);

-- Location: FF_X44_Y22_N5
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
	ena => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|data_wr\(6));

-- Location: FF_X47_Y20_N7
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

-- Location: LCCOMB_X47_Y20_N6
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

-- Location: LCCOMB_X43_Y21_N28
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

-- Location: FF_X43_Y21_N29
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
	ena => \adc|spi_driver|rx_data[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_data\(4));

-- Location: LCCOMB_X44_Y23_N22
\temp_DATA[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_DATA[5]~feeder_combout\ = \adc|spi_driver|rx_data\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc|spi_driver|rx_data\(4),
	combout => \temp_DATA[5]~feeder_combout\);

-- Location: FF_X44_Y23_N23
\temp_DATA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \temp_DATA[5]~feeder_combout\,
	ena => \temp_DATA[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_DATA(5));

-- Location: LCCOMB_X45_Y23_N0
\dac|data_buffer[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|data_buffer[5]~feeder_combout\ = temp_DATA(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => temp_DATA(5),
	combout => \dac|data_buffer[5]~feeder_combout\);

-- Location: FF_X45_Y23_N1
\dac|data_buffer[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|data_buffer[5]~feeder_combout\,
	ena => \dac|data_buffer[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|data_buffer\(5));

-- Location: LCCOMB_X44_Y22_N26
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

-- Location: LCCOMB_X44_Y22_N22
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

-- Location: FF_X44_Y22_N27
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
	ena => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|data_wr\(5));

-- Location: FF_X47_Y20_N29
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

-- Location: LCCOMB_X41_Y21_N14
\adc|spi_driver|rx_data[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|rx_data[3]~feeder_combout\ = \adc|spi_driver|rx_buffer\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc|spi_driver|rx_buffer\(3),
	combout => \adc|spi_driver|rx_data[3]~feeder_combout\);

-- Location: FF_X41_Y21_N15
\adc|spi_driver|rx_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|rx_data[3]~feeder_combout\,
	clrn => \adc|reset~q\,
	ena => \adc|spi_driver|rx_data[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_data\(3));

-- Location: LCCOMB_X44_Y23_N12
\temp_DATA[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_DATA[4]~feeder_combout\ = \adc|spi_driver|rx_data\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc|spi_driver|rx_data\(3),
	combout => \temp_DATA[4]~feeder_combout\);

-- Location: FF_X44_Y23_N13
\temp_DATA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \temp_DATA[4]~feeder_combout\,
	ena => \temp_DATA[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_DATA(4));

-- Location: LCCOMB_X47_Y23_N30
\dac|data_buffer[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|data_buffer[4]~feeder_combout\ = temp_DATA(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => temp_DATA(4),
	combout => \dac|data_buffer[4]~feeder_combout\);

-- Location: FF_X47_Y23_N31
\dac|data_buffer[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|data_buffer[4]~feeder_combout\,
	ena => \dac|data_buffer[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|data_buffer\(4));

-- Location: LCCOMB_X44_Y22_N24
\dac|data_wr[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|data_wr[4]~2_combout\ = (\dac|process_0~0_combout\ & (\dac|data_buffer\(4))) # (!\dac|process_0~0_combout\ & ((\dac|data_wr\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dac|data_buffer\(4),
	datac => \dac|data_wr\(4),
	datad => \dac|process_0~0_combout\,
	combout => \dac|data_wr[4]~2_combout\);

-- Location: LCCOMB_X44_Y22_N28
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

-- Location: FF_X44_Y22_N25
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
	ena => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|data_wr\(4));

-- Location: LCCOMB_X47_Y20_N10
\dac|i2c_master_inst|data_tx[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|data_tx[4]~feeder_combout\ = \dac|data_wr\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dac|data_wr\(4),
	combout => \dac|i2c_master_inst|data_tx[4]~feeder_combout\);

-- Location: FF_X47_Y20_N11
\dac|i2c_master_inst|data_tx[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|i2c_master_inst|data_tx[4]~feeder_combout\,
	ena => \dac|i2c_master_inst|data_tx[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|i2c_master_inst|data_tx\(4));

-- Location: LCCOMB_X47_Y20_N28
\dac|i2c_master_inst|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Mux3~3_combout\ = (\dac|i2c_master_inst|Mux3~2_combout\ & (((\dac|i2c_master_inst|data_tx\(4))) # (!\dac|i2c_master_inst|Selector25~0_combout\))) # (!\dac|i2c_master_inst|Mux3~2_combout\ & (\dac|i2c_master_inst|Selector25~0_combout\ & 
-- (\dac|i2c_master_inst|data_tx\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|Mux3~2_combout\,
	datab => \dac|i2c_master_inst|Selector25~0_combout\,
	datac => \dac|i2c_master_inst|data_tx\(5),
	datad => \dac|i2c_master_inst|data_tx\(4),
	combout => \dac|i2c_master_inst|Mux3~3_combout\);

-- Location: LCCOMB_X48_Y20_N28
\dac|i2c_master_inst|Selector23~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Selector23~5_combout\ = (\dac|i2c_master_inst|state.wr~q\ & (\dac|i2c_master_inst|Mux3~3_combout\ & !\dac|i2c_master_inst|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|state.wr~q\,
	datab => \dac|i2c_master_inst|Mux3~3_combout\,
	datad => \dac|i2c_master_inst|Add1~0_combout\,
	combout => \dac|i2c_master_inst|Selector23~5_combout\);

-- Location: FF_X47_Y20_N19
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

-- Location: FF_X47_Y20_N3
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

-- Location: FF_X47_Y20_N13
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

-- Location: FF_X47_Y20_N17
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

-- Location: LCCOMB_X47_Y20_N16
\dac|i2c_master_inst|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Mux2~0_combout\ = (\dac|i2c_master_inst|bit_cnt\(0) & (((\dac|i2c_master_inst|data_tx\(0) & \dac|i2c_master_inst|bit_cnt\(1))))) # (!\dac|i2c_master_inst|bit_cnt\(0) & ((\dac|i2c_master_inst|data_tx\(1)) # 
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
	combout => \dac|i2c_master_inst|Mux2~0_combout\);

-- Location: LCCOMB_X47_Y20_N2
\dac|i2c_master_inst|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Mux2~1_combout\ = (\dac|i2c_master_inst|bit_cnt\(1) & (((\dac|i2c_master_inst|Mux2~0_combout\)))) # (!\dac|i2c_master_inst|bit_cnt\(1) & ((\dac|i2c_master_inst|Mux2~0_combout\ & ((\dac|i2c_master_inst|data_tx\(3)))) # 
-- (!\dac|i2c_master_inst|Mux2~0_combout\ & (\dac|i2c_master_inst|data_tx\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|data_tx\(2),
	datab => \dac|i2c_master_inst|bit_cnt\(1),
	datac => \dac|i2c_master_inst|data_tx\(3),
	datad => \dac|i2c_master_inst|Mux2~0_combout\,
	combout => \dac|i2c_master_inst|Mux2~1_combout\);

-- Location: LCCOMB_X47_Y20_N30
\dac|i2c_master_inst|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Mux2~2_combout\ = (\dac|i2c_master_inst|bit_cnt\(0) & ((\dac|i2c_master_inst|bit_cnt\(1) & (\dac|i2c_master_inst|data_tx\(4))) # (!\dac|i2c_master_inst|bit_cnt\(1) & ((\dac|i2c_master_inst|data_tx\(6)))))) # 
-- (!\dac|i2c_master_inst|bit_cnt\(0) & (((!\dac|i2c_master_inst|bit_cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|data_tx\(4),
	datab => \dac|i2c_master_inst|bit_cnt\(0),
	datac => \dac|i2c_master_inst|data_tx\(6),
	datad => \dac|i2c_master_inst|bit_cnt\(1),
	combout => \dac|i2c_master_inst|Mux2~2_combout\);

-- Location: LCCOMB_X47_Y20_N26
\dac|i2c_master_inst|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Mux2~3_combout\ = (\dac|i2c_master_inst|Mux2~2_combout\ & ((\dac|i2c_master_inst|bit_cnt\(0)) # ((\dac|i2c_master_inst|data_tx\(7))))) # (!\dac|i2c_master_inst|Mux2~2_combout\ & (!\dac|i2c_master_inst|bit_cnt\(0) & 
-- ((\dac|i2c_master_inst|data_tx\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|Mux2~2_combout\,
	datab => \dac|i2c_master_inst|bit_cnt\(0),
	datac => \dac|i2c_master_inst|data_tx\(7),
	datad => \dac|i2c_master_inst|data_tx\(5),
	combout => \dac|i2c_master_inst|Mux2~3_combout\);

-- Location: LCCOMB_X48_Y20_N4
\dac|i2c_master_inst|Selector23~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Selector23~10_combout\ = (\dac|i2c_master_inst|state.slv_ack1~q\ & ((\dac|i2c_master_inst|bit_cnt\(2) & (\dac|i2c_master_inst|Mux2~1_combout\)) # (!\dac|i2c_master_inst|bit_cnt\(2) & ((\dac|i2c_master_inst|Mux2~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|Mux2~1_combout\,
	datab => \dac|i2c_master_inst|state.slv_ack1~q\,
	datac => \dac|i2c_master_inst|Mux2~3_combout\,
	datad => \dac|i2c_master_inst|bit_cnt\(2),
	combout => \dac|i2c_master_inst|Selector23~10_combout\);

-- Location: LCCOMB_X48_Y20_N10
\dac|i2c_master_inst|Selector23~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Selector23~6_combout\ = (\dac|i2c_master_inst|state.command~q\ & ((\dac|i2c_master_inst|bit_cnt\(0) & (\dac|i2c_master_inst|bit_cnt\(2) & \dac|i2c_master_inst|bit_cnt\(1))) # (!\dac|i2c_master_inst|bit_cnt\(0) & 
-- (!\dac|i2c_master_inst|bit_cnt\(2) & !\dac|i2c_master_inst|bit_cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|bit_cnt\(0),
	datab => \dac|i2c_master_inst|bit_cnt\(2),
	datac => \dac|i2c_master_inst|state.command~q\,
	datad => \dac|i2c_master_inst|bit_cnt\(1),
	combout => \dac|i2c_master_inst|Selector23~6_combout\);

-- Location: LCCOMB_X47_Y20_N0
\dac|i2c_master_inst|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Mux4~0_combout\ = (\dac|i2c_master_inst|bit_cnt\(1) & ((\dac|i2c_master_inst|bit_cnt\(0) & (\dac|data_wr\(4))) # (!\dac|i2c_master_inst|bit_cnt\(0) & ((\dac|data_wr\(5)))))) # (!\dac|i2c_master_inst|bit_cnt\(1) & 
-- (((!\dac|i2c_master_inst|bit_cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|data_wr\(4),
	datab => \dac|i2c_master_inst|bit_cnt\(1),
	datac => \dac|data_wr\(5),
	datad => \dac|i2c_master_inst|bit_cnt\(0),
	combout => \dac|i2c_master_inst|Mux4~0_combout\);

-- Location: LCCOMB_X47_Y20_N4
\dac|i2c_master_inst|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Mux4~1_combout\ = (\dac|i2c_master_inst|bit_cnt\(1) & (((\dac|i2c_master_inst|Mux4~0_combout\)))) # (!\dac|i2c_master_inst|bit_cnt\(1) & ((\dac|i2c_master_inst|Mux4~0_combout\ & (\dac|data_wr\(7))) # 
-- (!\dac|i2c_master_inst|Mux4~0_combout\ & ((\dac|data_wr\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|data_wr\(7),
	datab => \dac|i2c_master_inst|bit_cnt\(1),
	datac => \dac|data_wr\(6),
	datad => \dac|i2c_master_inst|Mux4~0_combout\,
	combout => \dac|i2c_master_inst|Mux4~1_combout\);

-- Location: LCCOMB_X48_Y20_N20
\dac|i2c_master_inst|Selector23~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Selector23~7_combout\ = (\dac|i2c_master_inst|Selector23~6_combout\) # ((!\dac|i2c_master_inst|bit_cnt\(2) & (\dac|i2c_master_inst|Mux4~1_combout\ & \dac|i2c_master_inst|Selector20~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|Selector23~6_combout\,
	datab => \dac|i2c_master_inst|bit_cnt\(2),
	datac => \dac|i2c_master_inst|Mux4~1_combout\,
	datad => \dac|i2c_master_inst|Selector20~0_combout\,
	combout => \dac|i2c_master_inst|Selector23~7_combout\);

-- Location: LCCOMB_X48_Y20_N30
\dac|i2c_master_inst|Selector23~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Selector23~11_combout\ = (\dac|i2c_master_inst|Selector23~9_combout\) # ((\dac|i2c_master_inst|Selector23~5_combout\) # ((\dac|i2c_master_inst|Selector23~10_combout\) # (\dac|i2c_master_inst|Selector23~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|Selector23~9_combout\,
	datab => \dac|i2c_master_inst|Selector23~5_combout\,
	datac => \dac|i2c_master_inst|Selector23~10_combout\,
	datad => \dac|i2c_master_inst|Selector23~7_combout\,
	combout => \dac|i2c_master_inst|Selector23~11_combout\);

-- Location: LCCOMB_X49_Y19_N28
\dac|i2c_master_inst|Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Selector23~0_combout\ = (\dac|i2c_master_inst|Equal1~0_combout\ & ((\dac|i2c_master_inst|state.wr~q\) # ((!\dac|ena~q\ & \dac|i2c_master_inst|state.rd~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|ena~q\,
	datab => \dac|i2c_master_inst|state.rd~q\,
	datac => \dac|i2c_master_inst|Equal1~0_combout\,
	datad => \dac|i2c_master_inst|state.wr~q\,
	combout => \dac|i2c_master_inst|Selector23~0_combout\);

-- Location: LCCOMB_X47_Y20_N18
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

-- Location: LCCOMB_X47_Y20_N12
\dac|i2c_master_inst|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Mux3~1_combout\ = (\dac|i2c_master_inst|Mux3~0_combout\ & ((\dac|i2c_master_inst|data_tx\(0)) # ((!\dac|i2c_master_inst|Selector25~0_combout\)))) # (!\dac|i2c_master_inst|Mux3~0_combout\ & (((\dac|i2c_master_inst|data_tx\(1) & 
-- \dac|i2c_master_inst|Selector25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|data_tx\(0),
	datab => \dac|i2c_master_inst|Mux3~0_combout\,
	datac => \dac|i2c_master_inst|data_tx\(1),
	datad => \dac|i2c_master_inst|Selector25~0_combout\,
	combout => \dac|i2c_master_inst|Mux3~1_combout\);

-- Location: LCCOMB_X48_Y20_N22
\dac|i2c_master_inst|Selector23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Selector23~1_combout\ = (\dac|i2c_master_inst|Add1~0_combout\ & (\dac|i2c_master_inst|state.wr~q\ & \dac|i2c_master_inst|Mux3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|Add1~0_combout\,
	datac => \dac|i2c_master_inst|state.wr~q\,
	datad => \dac|i2c_master_inst|Mux3~1_combout\,
	combout => \dac|i2c_master_inst|Selector23~1_combout\);

-- Location: LCCOMB_X49_Y20_N2
\dac|i2c_master_inst|Selector23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Selector23~2_combout\ = ((\dac|i2c_master_inst|state.mstr_ack~q\) # ((!\dac|ena~q\ & \dac|i2c_master_inst|state.slv_ack2~q\))) # (!\dac|i2c_master_inst|state.ready~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|ena~q\,
	datab => \dac|i2c_master_inst|state.slv_ack2~q\,
	datac => \dac|i2c_master_inst|state.ready~q\,
	datad => \dac|i2c_master_inst|state.mstr_ack~q\,
	combout => \dac|i2c_master_inst|Selector23~2_combout\);

-- Location: LCCOMB_X49_Y20_N12
\dac|i2c_master_inst|Selector23~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Selector23~3_combout\ = (\dac|i2c_master_inst|state.stop~q\) # ((\dac|i2c_master_inst|Selector23~2_combout\) # ((\dac|i2c_master_inst|state.rd~q\ & !\dac|i2c_master_inst|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|state.stop~q\,
	datab => \dac|i2c_master_inst|Selector23~2_combout\,
	datac => \dac|i2c_master_inst|state.rd~q\,
	datad => \dac|i2c_master_inst|Equal1~0_combout\,
	combout => \dac|i2c_master_inst|Selector23~3_combout\);

-- Location: LCCOMB_X49_Y19_N10
\dac|i2c_master_inst|Selector23~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Selector23~4_combout\ = (\dac|i2c_master_inst|Selector23~0_combout\) # ((\dac|i2c_master_inst|Selector23~1_combout\) # ((!\dac|i2c_master_inst|sda_int~q\ & \dac|i2c_master_inst|Selector23~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|Selector23~0_combout\,
	datab => \dac|i2c_master_inst|sda_int~q\,
	datac => \dac|i2c_master_inst|Selector23~1_combout\,
	datad => \dac|i2c_master_inst|Selector23~3_combout\,
	combout => \dac|i2c_master_inst|Selector23~4_combout\);

-- Location: LCCOMB_X49_Y19_N16
\dac|i2c_master_inst|Selector23~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Selector23~12_combout\ = (!\dac|i2c_master_inst|Selector23~11_combout\ & (!\dac|i2c_master_inst|Selector23~4_combout\ & ((!\dac|ena~q\) # (!\dac|i2c_master_inst|state.mstr_ack~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|state.mstr_ack~q\,
	datab => \dac|i2c_master_inst|Selector23~11_combout\,
	datac => \dac|ena~q\,
	datad => \dac|i2c_master_inst|Selector23~4_combout\,
	combout => \dac|i2c_master_inst|Selector23~12_combout\);

-- Location: FF_X49_Y19_N17
\dac|i2c_master_inst|sda_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|i2c_master_inst|Selector23~12_combout\,
	clrn => \RST~input_o\,
	ena => \dac|i2c_master_inst|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|i2c_master_inst|sda_int~q\);

-- Location: LCCOMB_X49_Y19_N14
\dac|i2c_master_inst|Selector29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Selector29~0_combout\ = (\dac|i2c_master_inst|state.start~q\ & (((\dac|i2c_master_inst|data_clk_prev~q\)))) # (!\dac|i2c_master_inst|state.start~q\ & ((\dac|i2c_master_inst|state.stop~q\ & (!\dac|i2c_master_inst|data_clk_prev~q\)) # 
-- (!\dac|i2c_master_inst|state.stop~q\ & ((!\dac|i2c_master_inst|sda_int~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|state.stop~q\,
	datab => \dac|i2c_master_inst|state.start~q\,
	datac => \dac|i2c_master_inst|data_clk_prev~q\,
	datad => \dac|i2c_master_inst|sda_int~q\,
	combout => \dac|i2c_master_inst|Selector29~0_combout\);

-- Location: LCCOMB_X49_Y19_N24
\dac|i2c_master_inst|scl_clk~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|scl_clk~0_combout\ = (\dac|i2c_master_inst|LessThan1~0_combout\ & ((\dac|i2c_master_inst|Equal0~1_combout\) # (\dac|i2c_master_inst|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dac|i2c_master_inst|Equal0~1_combout\,
	datac => \dac|i2c_master_inst|LessThan1~0_combout\,
	datad => \dac|i2c_master_inst|process_0~0_combout\,
	combout => \dac|i2c_master_inst|scl_clk~0_combout\);

-- Location: FF_X49_Y19_N25
\dac|i2c_master_inst|scl_clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|i2c_master_inst|scl_clk~0_combout\,
	ena => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|i2c_master_inst|scl_clk~q\);

-- Location: LCCOMB_X48_Y19_N22
\dac|i2c_master_inst|scl~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|scl~1_combout\ = (\dac|i2c_master_inst|scl_clk~q\) # (!\dac|i2c_master_inst|scl_ena~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dac|i2c_master_inst|scl_ena~q\,
	datad => \dac|i2c_master_inst|scl_clk~q\,
	combout => \dac|i2c_master_inst|scl~1_combout\);

-- Location: FF_X43_Y23_N29
\data_out[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \adc|spi_driver|rx_data\(4),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \adc|state.ready~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[0]~reg0_q\);

-- Location: LCCOMB_X43_Y23_N14
\data_out[1]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[1]~reg0feeder_combout\ = \adc|spi_driver|rx_data\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc|spi_driver|rx_data\(5),
	combout => \data_out[1]~reg0feeder_combout\);

-- Location: FF_X43_Y23_N15
\data_out[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \data_out[1]~reg0feeder_combout\,
	clrn => \RST~input_o\,
	ena => \adc|state.ready~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[1]~reg0_q\);

-- Location: LCCOMB_X43_Y23_N4
\data_out[2]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[2]~reg0feeder_combout\ = \adc|spi_driver|rx_data\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc|spi_driver|rx_data\(6),
	combout => \data_out[2]~reg0feeder_combout\);

-- Location: FF_X43_Y23_N5
\data_out[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \data_out[2]~reg0feeder_combout\,
	clrn => \RST~input_o\,
	ena => \adc|state.ready~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[2]~reg0_q\);

-- Location: FF_X43_Y23_N27
\data_out[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \adc|spi_driver|rx_data\(7),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \adc|state.ready~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[3]~reg0_q\);

-- Location: FF_X43_Y23_N21
\data_out[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \adc|spi_driver|rx_data\(8),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \adc|state.ready~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[4]~reg0_q\);

-- Location: FF_X43_Y23_N3
\data_out[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \adc|spi_driver|rx_data\(9),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \adc|state.ready~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[5]~reg0_q\);

-- Location: LCCOMB_X43_Y23_N16
\data_out[6]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[6]~reg0feeder_combout\ = \adc|spi_driver|rx_data\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc|spi_driver|rx_data\(10),
	combout => \data_out[6]~reg0feeder_combout\);

-- Location: FF_X43_Y23_N17
\data_out[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \data_out[6]~reg0feeder_combout\,
	clrn => \RST~input_o\,
	ena => \adc|state.ready~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[6]~reg0_q\);

-- Location: FF_X41_Y21_N9
\adc|spi_driver|rx_buffer[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \adc|spi_driver|rx_buffer\(10),
	sload => VCC,
	ena => \adc|spi_driver|rx_buffer[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_buffer\(11));

-- Location: LCCOMB_X43_Y21_N0
\adc|spi_driver|rx_data[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|rx_data[11]~feeder_combout\ = \adc|spi_driver|rx_buffer\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc|spi_driver|rx_buffer\(11),
	combout => \adc|spi_driver|rx_data[11]~feeder_combout\);

-- Location: FF_X43_Y21_N1
\adc|spi_driver|rx_data[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|rx_data[11]~feeder_combout\,
	clrn => \adc|reset~q\,
	ena => \adc|spi_driver|rx_data[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_data\(11));

-- Location: LCCOMB_X43_Y23_N30
\data_out[7]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[7]~reg0feeder_combout\ = \adc|spi_driver|rx_data\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc|spi_driver|rx_data\(11),
	combout => \data_out[7]~reg0feeder_combout\);

-- Location: FF_X43_Y23_N31
\data_out[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \data_out[7]~reg0feeder_combout\,
	clrn => \RST~input_o\,
	ena => \adc|state.ready~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[7]~reg0_q\);

-- Location: LCCOMB_X43_Y21_N10
\adc|spi_driver|rx_buffer[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|rx_buffer[12]~feeder_combout\ = \adc|spi_driver|rx_buffer\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc|spi_driver|rx_buffer\(11),
	combout => \adc|spi_driver|rx_buffer[12]~feeder_combout\);

-- Location: FF_X43_Y21_N11
\adc|spi_driver|rx_buffer[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|rx_buffer[12]~feeder_combout\,
	ena => \adc|spi_driver|rx_buffer[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_buffer\(12));

-- Location: LCCOMB_X43_Y21_N26
\adc|spi_driver|rx_data[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|rx_data[12]~feeder_combout\ = \adc|spi_driver|rx_buffer\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc|spi_driver|rx_buffer\(12),
	combout => \adc|spi_driver|rx_data[12]~feeder_combout\);

-- Location: FF_X43_Y21_N27
\adc|spi_driver|rx_data[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|rx_data[12]~feeder_combout\,
	clrn => \adc|reset~q\,
	ena => \adc|spi_driver|rx_data[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_data\(12));

-- Location: LCCOMB_X43_Y23_N24
\data_out[8]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[8]~reg0feeder_combout\ = \adc|spi_driver|rx_data\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc|spi_driver|rx_data\(12),
	combout => \data_out[8]~reg0feeder_combout\);

-- Location: FF_X43_Y23_N25
\data_out[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \data_out[8]~reg0feeder_combout\,
	clrn => \RST~input_o\,
	ena => \adc|state.ready~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[8]~reg0_q\);

-- Location: LCCOMB_X43_Y21_N24
\adc|spi_driver|rx_buffer[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|rx_buffer[13]~feeder_combout\ = \adc|spi_driver|rx_buffer\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc|spi_driver|rx_buffer\(12),
	combout => \adc|spi_driver|rx_buffer[13]~feeder_combout\);

-- Location: FF_X43_Y21_N25
\adc|spi_driver|rx_buffer[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|rx_buffer[13]~feeder_combout\,
	ena => \adc|spi_driver|rx_buffer[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_buffer\(13));

-- Location: LCCOMB_X43_Y21_N8
\adc|spi_driver|rx_data[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|rx_data[13]~feeder_combout\ = \adc|spi_driver|rx_buffer\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc|spi_driver|rx_buffer\(13),
	combout => \adc|spi_driver|rx_data[13]~feeder_combout\);

-- Location: FF_X43_Y21_N9
\adc|spi_driver|rx_data[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|rx_data[13]~feeder_combout\,
	clrn => \adc|reset~q\,
	ena => \adc|spi_driver|rx_data[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_data\(13));

-- Location: LCCOMB_X43_Y23_N10
\data_out[9]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[9]~reg0feeder_combout\ = \adc|spi_driver|rx_data\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc|spi_driver|rx_data\(13),
	combout => \data_out[9]~reg0feeder_combout\);

-- Location: FF_X43_Y23_N11
\data_out[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \data_out[9]~reg0feeder_combout\,
	clrn => \RST~input_o\,
	ena => \adc|state.ready~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[9]~reg0_q\);

-- Location: LCCOMB_X43_Y21_N22
\adc|spi_driver|rx_buffer[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|rx_buffer[14]~feeder_combout\ = \adc|spi_driver|rx_buffer\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc|spi_driver|rx_buffer\(13),
	combout => \adc|spi_driver|rx_buffer[14]~feeder_combout\);

-- Location: FF_X43_Y21_N23
\adc|spi_driver|rx_buffer[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|rx_buffer[14]~feeder_combout\,
	ena => \adc|spi_driver|rx_buffer[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_buffer\(14));

-- Location: FF_X43_Y21_N31
\adc|spi_driver|rx_data[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \adc|spi_driver|rx_buffer\(14),
	clrn => \adc|reset~q\,
	sload => VCC,
	ena => \adc|spi_driver|rx_data[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_data\(14));

-- Location: LCCOMB_X43_Y23_N0
\data_out[10]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[10]~reg0feeder_combout\ = \adc|spi_driver|rx_data\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc|spi_driver|rx_data\(14),
	combout => \data_out[10]~reg0feeder_combout\);

-- Location: FF_X43_Y23_N1
\data_out[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \data_out[10]~reg0feeder_combout\,
	clrn => \RST~input_o\,
	ena => \adc|state.ready~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[10]~reg0_q\);

-- Location: FF_X43_Y21_N21
\adc|spi_driver|rx_buffer[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \adc|spi_driver|rx_buffer\(14),
	sload => VCC,
	ena => \adc|spi_driver|rx_buffer[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_buffer\(15));

-- Location: LCCOMB_X43_Y21_N16
\adc|spi_driver|rx_data[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|rx_data[15]~feeder_combout\ = \adc|spi_driver|rx_buffer\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc|spi_driver|rx_buffer\(15),
	combout => \adc|spi_driver|rx_data[15]~feeder_combout\);

-- Location: FF_X43_Y21_N17
\adc|spi_driver|rx_data[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|rx_data[15]~feeder_combout\,
	clrn => \adc|reset~q\,
	ena => \adc|spi_driver|rx_data[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_data\(15));

-- Location: LCCOMB_X43_Y23_N22
\data_out[11]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[11]~reg0feeder_combout\ = \adc|spi_driver|rx_data\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc|spi_driver|rx_data\(15),
	combout => \data_out[11]~reg0feeder_combout\);

-- Location: FF_X43_Y23_N23
\data_out[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \data_out[11]~reg0feeder_combout\,
	clrn => \RST~input_o\,
	ena => \adc|state.ready~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[11]~reg0_q\);

-- Location: LCCOMB_X44_Y21_N20
\adc|spi_driver|busy~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|busy~1_combout\ = !\adc|spi_driver|busy~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc|spi_driver|busy~0_combout\,
	combout => \adc|spi_driver|busy~1_combout\);

-- Location: FF_X44_Y21_N21
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

-- Location: LCCOMB_X44_Y21_N14
\adc|spi_driver|sclk~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|sclk~0_combout\ = (\adc|spi_driver|ss_n\(0) & (((!\adc|spi_driver|clk_toggles\(0) & \adc|spi_driver|Equal3~0_combout\)) # (!\adc|spi_driver|clk_toggles\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|ss_n\(0),
	datab => \adc|spi_driver|clk_toggles\(5),
	datac => \adc|spi_driver|clk_toggles\(0),
	datad => \adc|spi_driver|Equal3~0_combout\,
	combout => \adc|spi_driver|sclk~0_combout\);

-- Location: LCCOMB_X44_Y21_N12
\adc|spi_driver|sclk~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|sclk~1_combout\ = (\adc|reset~q\ & ((\adc|spi_driver|state~q\ & (\adc|spi_driver|sclk~0_combout\)) # (!\adc|spi_driver|state~q\ & ((\adc|enable~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|state~q\,
	datab => \adc|reset~q\,
	datac => \adc|spi_driver|sclk~0_combout\,
	datad => \adc|enable~q\,
	combout => \adc|spi_driver|sclk~1_combout\);

-- Location: LCCOMB_X44_Y21_N2
\adc|spi_driver|sclk~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|sclk~2_combout\ = (\adc|spi_driver|sclk~1_combout\ & (\adc|spi_driver|state~q\ & (\adc|spi_driver|Equal1~10_combout\ $ (\adc|spi_driver|sclk~q\)))) # (!\adc|spi_driver|sclk~1_combout\ & (((\adc|spi_driver|sclk~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|state~q\,
	datab => \adc|spi_driver|Equal1~10_combout\,
	datac => \adc|spi_driver|sclk~q\,
	datad => \adc|spi_driver|sclk~1_combout\,
	combout => \adc|spi_driver|sclk~2_combout\);

-- Location: FF_X44_Y21_N3
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

ww_data_out(0) <= \data_out[0]~output_o\;

ww_data_out(1) <= \data_out[1]~output_o\;

ww_data_out(2) <= \data_out[2]~output_o\;

ww_data_out(3) <= \data_out[3]~output_o\;

ww_data_out(4) <= \data_out[4]~output_o\;

ww_data_out(5) <= \data_out[5]~output_o\;

ww_data_out(6) <= \data_out[6]~output_o\;

ww_data_out(7) <= \data_out[7]~output_o\;

ww_data_out(8) <= \data_out[8]~output_o\;

ww_data_out(9) <= \data_out[9]~output_o\;

ww_data_out(10) <= \data_out[10]~output_o\;

ww_data_out(11) <= \data_out[11]~output_o\;

ww_ADC_SADDR <= \ADC_SADDR~output_o\;

ww_ADC_CS_N <= \ADC_CS_N~output_o\;

ww_ADC_SCLK <= \ADC_SCLK~output_o\;

SDA <= \SDA~output_o\;

SCL <= \SCL~output_o\;
END structure;


