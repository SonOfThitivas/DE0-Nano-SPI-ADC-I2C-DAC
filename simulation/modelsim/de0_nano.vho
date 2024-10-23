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

-- DATE "10/23/2024 21:56:21"

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
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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
	scl : BUFFER std_logic;
	sda : BUFFER std_logic;
	ADC_SDAT : IN std_logic;
	ADC_SADDR : BUFFER std_logic;
	ADC_CS_N : BUFFER std_logic;
	ADC_SCLK : BUFFER std_logic;
	adc_data_out : BUFFER std_logic_vector(11 DOWNTO 0)
	);
END top_level;

-- Design Ports Information
-- scl	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_SADDR	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_CS_N	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_SCLK	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adc_data_out[0]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adc_data_out[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adc_data_out[2]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adc_data_out[3]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adc_data_out[4]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adc_data_out[5]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adc_data_out[6]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adc_data_out[7]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adc_data_out[8]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adc_data_out[9]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adc_data_out[10]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adc_data_out[11]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sda	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_SDAT	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_scl : std_logic;
SIGNAL ww_sda : std_logic;
SIGNAL ww_ADC_SDAT : std_logic;
SIGNAL ww_ADC_SADDR : std_logic;
SIGNAL ww_ADC_CS_N : std_logic;
SIGNAL ww_ADC_SCLK : std_logic;
SIGNAL ww_adc_data_out : std_logic_vector(11 DOWNTO 0);
SIGNAL \vclock|virt_clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sda~input_o\ : std_logic;
SIGNAL \ADC_SADDR~output_o\ : std_logic;
SIGNAL \sda~output_o\ : std_logic;
SIGNAL \scl~output_o\ : std_logic;
SIGNAL \ADC_CS_N~output_o\ : std_logic;
SIGNAL \ADC_SCLK~output_o\ : std_logic;
SIGNAL \adc_data_out[0]~output_o\ : std_logic;
SIGNAL \adc_data_out[1]~output_o\ : std_logic;
SIGNAL \adc_data_out[2]~output_o\ : std_logic;
SIGNAL \adc_data_out[3]~output_o\ : std_logic;
SIGNAL \adc_data_out[4]~output_o\ : std_logic;
SIGNAL \adc_data_out[5]~output_o\ : std_logic;
SIGNAL \adc_data_out[6]~output_o\ : std_logic;
SIGNAL \adc_data_out[7]~output_o\ : std_logic;
SIGNAL \adc_data_out[8]~output_o\ : std_logic;
SIGNAL \adc_data_out[9]~output_o\ : std_logic;
SIGNAL \adc_data_out[10]~output_o\ : std_logic;
SIGNAL \adc_data_out[11]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \adc|spi_driver|clk_toggles[0]~5_combout\ : std_logic;
SIGNAL \adc|spi_driver|Add5~3\ : std_logic;
SIGNAL \adc|spi_driver|Add5~4_combout\ : std_logic;
SIGNAL \adc|spi_driver|count~32_combout\ : std_logic;
SIGNAL \vclock|vclk_cnt[0]~4_combout\ : std_logic;
SIGNAL \vclock|vclk_cnt~3_combout\ : std_logic;
SIGNAL \vclock|Add0~2_combout\ : std_logic;
SIGNAL \vclock|Add0~1_combout\ : std_logic;
SIGNAL \vclock|vclk_cnt~2_combout\ : std_logic;
SIGNAL \vclock|vclk_cnt~0_combout\ : std_logic;
SIGNAL \vclock|Add0~0_combout\ : std_logic;
SIGNAL \vclock|Add0~3_combout\ : std_logic;
SIGNAL \vclock|vclk_cnt~1_combout\ : std_logic;
SIGNAL \vclock|Equal0~0_combout\ : std_logic;
SIGNAL \vclock|Equal0~1_combout\ : std_logic;
SIGNAL \vclock|virt_clk~0_combout\ : std_logic;
SIGNAL \vclock|virt_clk~feeder_combout\ : std_logic;
SIGNAL \vclock|virt_clk~q\ : std_logic;
SIGNAL \vclock|virt_clk~clkctrl_outclk\ : std_logic;
SIGNAL \adc|Add1~2_combout\ : std_logic;
SIGNAL \adc|init_delay[0]~0_combout\ : std_logic;
SIGNAL \adc|Add1~0_combout\ : std_logic;
SIGNAL \adc|Selector0~0_combout\ : std_logic;
SIGNAL \adc|state.ready~0_combout\ : std_logic;
SIGNAL \adc|state.initialize~0_combout\ : std_logic;
SIGNAL \adc|state.initialize~reg0_q\ : std_logic;
SIGNAL \adc|Add0~1_combout\ : std_logic;
SIGNAL \adc|Add0~0_combout\ : std_logic;
SIGNAL \adc|Selector0~1_combout\ : std_logic;
SIGNAL \adc|state.ready~1_combout\ : std_logic;
SIGNAL \adc|state.ready~reg0_q\ : std_logic;
SIGNAL \sleep[0]~20_combout\ : std_logic;
SIGNAL \sleep[1]~10_combout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \sleep[1]~11\ : std_logic;
SIGNAL \sleep[2]~12_combout\ : std_logic;
SIGNAL \sleep[2]~13\ : std_logic;
SIGNAL \sleep[3]~14_combout\ : std_logic;
SIGNAL \sleep[3]~15\ : std_logic;
SIGNAL \sleep[4]~16_combout\ : std_logic;
SIGNAL \sleep[4]~17\ : std_logic;
SIGNAL \sleep[5]~18_combout\ : std_logic;
SIGNAL \sleep[5]~19\ : std_logic;
SIGNAL \sleep[6]~21_combout\ : std_logic;
SIGNAL \sleep[6]~22\ : std_logic;
SIGNAL \sleep[7]~23_combout\ : std_logic;
SIGNAL \sleep[7]~24\ : std_logic;
SIGNAL \sleep[8]~25_combout\ : std_logic;
SIGNAL \sleep[8]~26\ : std_logic;
SIGNAL \sleep[9]~27_combout\ : std_logic;
SIGNAL \sleep[9]~28\ : std_logic;
SIGNAL \sleep[10]~29_combout\ : std_logic;
SIGNAL \adc_run~3_combout\ : std_logic;
SIGNAL \adc_run~0_combout\ : std_logic;
SIGNAL \adc_run~1_combout\ : std_logic;
SIGNAL \adc_run~2_combout\ : std_logic;
SIGNAL \adc_run~4_combout\ : std_logic;
SIGNAL \adc_run~q\ : std_logic;
SIGNAL \adc|state.execute~0_combout\ : std_logic;
SIGNAL \adc|state.execute~reg0_q\ : std_logic;
SIGNAL \adc|Add1~1_combout\ : std_logic;
SIGNAL \adc|Add1~4_combout\ : std_logic;
SIGNAL \adc|Add1~3_combout\ : std_logic;
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
SIGNAL \adc|spi_driver|Equal1~8_combout\ : std_logic;
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
SIGNAL \adc|spi_driver|Equal1~5_combout\ : std_logic;
SIGNAL \adc|spi_driver|Equal1~7_combout\ : std_logic;
SIGNAL \adc|spi_driver|Equal1~6_combout\ : std_logic;
SIGNAL \adc|spi_driver|Equal1~9_combout\ : std_logic;
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
SIGNAL \adc|spi_driver|Equal1~3_combout\ : std_logic;
SIGNAL \adc|spi_driver|clk_ratio[0]~0_combout\ : std_logic;
SIGNAL \adc|spi_driver|Add5~61\ : std_logic;
SIGNAL \adc|spi_driver|Add5~62_combout\ : std_logic;
SIGNAL \adc|spi_driver|count~4_combout\ : std_logic;
SIGNAL \adc|spi_driver|Equal1~0_combout\ : std_logic;
SIGNAL \adc|spi_driver|Equal1~2_combout\ : std_logic;
SIGNAL \adc|spi_driver|Equal1~4_combout\ : std_logic;
SIGNAL \adc|spi_driver|count[15]~0_combout\ : std_logic;
SIGNAL \adc|spi_driver|busy~0_combout\ : std_logic;
SIGNAL \adc|spi_driver|state~feeder_combout\ : std_logic;
SIGNAL \adc|spi_driver|state~q\ : std_logic;
SIGNAL \adc|spi_driver|Add5~0_combout\ : std_logic;
SIGNAL \adc|spi_driver|count~1_combout\ : std_logic;
SIGNAL \adc|spi_driver|Add5~1\ : std_logic;
SIGNAL \adc|spi_driver|Add5~2_combout\ : std_logic;
SIGNAL \adc|spi_driver|count~33_combout\ : std_logic;
SIGNAL \adc|spi_driver|Equal1~10_combout\ : std_logic;
SIGNAL \adc|spi_driver|clk_toggles[4]~9_combout\ : std_logic;
SIGNAL \adc|spi_driver|clk_toggles[0]~6\ : std_logic;
SIGNAL \adc|spi_driver|clk_toggles[1]~7_combout\ : std_logic;
SIGNAL \adc|spi_driver|clk_toggles[1]~8\ : std_logic;
SIGNAL \adc|spi_driver|clk_toggles[2]~10_combout\ : std_logic;
SIGNAL \adc|spi_driver|clk_toggles[2]~11\ : std_logic;
SIGNAL \adc|spi_driver|clk_toggles[3]~12_combout\ : std_logic;
SIGNAL \adc|spi_driver|clk_toggles[3]~13\ : std_logic;
SIGNAL \adc|spi_driver|clk_toggles[4]~14_combout\ : std_logic;
SIGNAL \adc|spi_driver|Equal3~0_combout\ : std_logic;
SIGNAL \adc|spi_driver|mosi~1_combout\ : std_logic;
SIGNAL \adc|spi_driver|assert_data~0_combout\ : std_logic;
SIGNAL \adc|spi_driver|assert_data~q\ : std_logic;
SIGNAL \adc|spi_driver|mosi~2_combout\ : std_logic;
SIGNAL \adc|spi_driver|mosi~3_combout\ : std_logic;
SIGNAL \adc|spi_driver|Equal3~1_combout\ : std_logic;
SIGNAL \adc|spi_driver|mosi~4_combout\ : std_logic;
SIGNAL \adc|spi_driver|mosi~5_combout\ : std_logic;
SIGNAL \adc|spi_driver|mosi~en_q\ : std_logic;
SIGNAL \dac|Add0~0_combout\ : std_logic;
SIGNAL \dac|counter~0_combout\ : std_logic;
SIGNAL \dac|Add0~1\ : std_logic;
SIGNAL \dac|Add0~2_combout\ : std_logic;
SIGNAL \dac|Add0~3\ : std_logic;
SIGNAL \dac|Add0~4_combout\ : std_logic;
SIGNAL \dac|Add0~5\ : std_logic;
SIGNAL \dac|Add0~6_combout\ : std_logic;
SIGNAL \dac|Add0~7\ : std_logic;
SIGNAL \dac|Add0~8_combout\ : std_logic;
SIGNAL \dac|counter~1_combout\ : std_logic;
SIGNAL \dac|Add0~9\ : std_logic;
SIGNAL \dac|Add0~10_combout\ : std_logic;
SIGNAL \dac|Add0~11\ : std_logic;
SIGNAL \dac|Add0~12_combout\ : std_logic;
SIGNAL \dac|Add0~13\ : std_logic;
SIGNAL \dac|Add0~14_combout\ : std_logic;
SIGNAL \dac|counter~2_combout\ : std_logic;
SIGNAL \dac|Add0~15\ : std_logic;
SIGNAL \dac|Add0~16_combout\ : std_logic;
SIGNAL \dac|Add0~17\ : std_logic;
SIGNAL \dac|Add0~18_combout\ : std_logic;
SIGNAL \dac|Add0~19\ : std_logic;
SIGNAL \dac|Add0~20_combout\ : std_logic;
SIGNAL \dac|Add0~21\ : std_logic;
SIGNAL \dac|Add0~22_combout\ : std_logic;
SIGNAL \dac|Add0~23\ : std_logic;
SIGNAL \dac|Add0~24_combout\ : std_logic;
SIGNAL \dac|counter~3_combout\ : std_logic;
SIGNAL \dac|Add0~25\ : std_logic;
SIGNAL \dac|Add0~26_combout\ : std_logic;
SIGNAL \dac|Add0~27\ : std_logic;
SIGNAL \dac|Add0~28_combout\ : std_logic;
SIGNAL \dac|counter~4_combout\ : std_logic;
SIGNAL \dac|Add0~29\ : std_logic;
SIGNAL \dac|Add0~30_combout\ : std_logic;
SIGNAL \dac|counter~5_combout\ : std_logic;
SIGNAL \dac|Add0~31\ : std_logic;
SIGNAL \dac|Add0~32_combout\ : std_logic;
SIGNAL \dac|counter~6_combout\ : std_logic;
SIGNAL \dac|Add0~33\ : std_logic;
SIGNAL \dac|Add0~34_combout\ : std_logic;
SIGNAL \dac|counter~7_combout\ : std_logic;
SIGNAL \dac|Add0~35\ : std_logic;
SIGNAL \dac|Add0~36_combout\ : std_logic;
SIGNAL \dac|Add0~37\ : std_logic;
SIGNAL \dac|Add0~38_combout\ : std_logic;
SIGNAL \dac|Add0~39\ : std_logic;
SIGNAL \dac|Add0~40_combout\ : std_logic;
SIGNAL \dac|Add0~41\ : std_logic;
SIGNAL \dac|Add0~42_combout\ : std_logic;
SIGNAL \dac|Add0~43\ : std_logic;
SIGNAL \dac|Add0~44_combout\ : std_logic;
SIGNAL \dac|Equal0~5_combout\ : std_logic;
SIGNAL \dac|Equal0~6_combout\ : std_logic;
SIGNAL \dac|Add0~45\ : std_logic;
SIGNAL \dac|Add0~46_combout\ : std_logic;
SIGNAL \dac|Equal0~7_combout\ : std_logic;
SIGNAL \dac|Add0~47\ : std_logic;
SIGNAL \dac|Add0~48_combout\ : std_logic;
SIGNAL \dac|Add0~49\ : std_logic;
SIGNAL \dac|Add0~50_combout\ : std_logic;
SIGNAL \dac|Add0~51\ : std_logic;
SIGNAL \dac|Add0~52_combout\ : std_logic;
SIGNAL \dac|Add0~53\ : std_logic;
SIGNAL \dac|Add0~54_combout\ : std_logic;
SIGNAL \dac|Equal0~8_combout\ : std_logic;
SIGNAL \dac|Add0~55\ : std_logic;
SIGNAL \dac|Add0~56_combout\ : std_logic;
SIGNAL \dac|Add0~57\ : std_logic;
SIGNAL \dac|Add0~58_combout\ : std_logic;
SIGNAL \dac|Add0~59\ : std_logic;
SIGNAL \dac|Add0~60_combout\ : std_logic;
SIGNAL \dac|Add0~61\ : std_logic;
SIGNAL \dac|Add0~62_combout\ : std_logic;
SIGNAL \dac|Equal0~9_combout\ : std_logic;
SIGNAL \dac|Equal0~0_combout\ : std_logic;
SIGNAL \dac|Equal0~1_combout\ : std_logic;
SIGNAL \dac|Equal0~2_combout\ : std_logic;
SIGNAL \dac|Equal0~3_combout\ : std_logic;
SIGNAL \dac|Equal0~4_combout\ : std_logic;
SIGNAL \dac|Equal0~10_combout\ : std_logic;
SIGNAL \dac|scl_int~0_combout\ : std_logic;
SIGNAL \dac|scl_int~q\ : std_logic;
SIGNAL \adc|spi_driver|busy~1_combout\ : std_logic;
SIGNAL \adc|spi_driver|busy~q\ : std_logic;
SIGNAL \adc|spi_driver|ss_n~2_combout\ : std_logic;
SIGNAL \adc|spi_driver|ss_n~3_combout\ : std_logic;
SIGNAL \adc|spi_driver|sclk~0_combout\ : std_logic;
SIGNAL \adc|spi_driver|sclk~1_combout\ : std_logic;
SIGNAL \adc|spi_driver|sclk~2_combout\ : std_logic;
SIGNAL \adc|spi_driver|sclk~3_combout\ : std_logic;
SIGNAL \adc|spi_driver|sclk~q\ : std_logic;
SIGNAL \ADC_SDAT~input_o\ : std_logic;
SIGNAL \adc|spi_driver|rx_buffer[0]~0_combout\ : std_logic;
SIGNAL \adc|spi_driver|rx_buffer[0]~1_combout\ : std_logic;
SIGNAL \adc|spi_driver|rx_buffer[0]~2_combout\ : std_logic;
SIGNAL \adc|spi_driver|rx_data[0]~feeder_combout\ : std_logic;
SIGNAL \adc|spi_driver|rx_data[0]~2_combout\ : std_logic;
SIGNAL \adc_data_out[0]~reg0feeder_combout\ : std_logic;
SIGNAL \adc_data_out[0]~reg0_q\ : std_logic;
SIGNAL \adc|spi_driver|rx_buffer[1]~feeder_combout\ : std_logic;
SIGNAL \adc|spi_driver|rx_data[1]~feeder_combout\ : std_logic;
SIGNAL \adc_data_out[1]~reg0feeder_combout\ : std_logic;
SIGNAL \adc_data_out[1]~reg0_q\ : std_logic;
SIGNAL \adc|spi_driver|rx_buffer[2]~feeder_combout\ : std_logic;
SIGNAL \adc_data_out[2]~reg0_q\ : std_logic;
SIGNAL \adc|spi_driver|rx_buffer[3]~feeder_combout\ : std_logic;
SIGNAL \adc|spi_driver|rx_data[3]~feeder_combout\ : std_logic;
SIGNAL \adc_data_out[3]~reg0feeder_combout\ : std_logic;
SIGNAL \adc_data_out[3]~reg0_q\ : std_logic;
SIGNAL \adc|spi_driver|rx_buffer[4]~feeder_combout\ : std_logic;
SIGNAL \adc|spi_driver|rx_data[4]~feeder_combout\ : std_logic;
SIGNAL \adc_data_out[4]~reg0feeder_combout\ : std_logic;
SIGNAL \adc_data_out[4]~reg0_q\ : std_logic;
SIGNAL \adc|spi_driver|rx_buffer[5]~feeder_combout\ : std_logic;
SIGNAL \adc_data_out[5]~reg0_q\ : std_logic;
SIGNAL \adc|spi_driver|rx_buffer[6]~feeder_combout\ : std_logic;
SIGNAL \adc_data_out[6]~reg0_q\ : std_logic;
SIGNAL \adc|spi_driver|rx_buffer[7]~feeder_combout\ : std_logic;
SIGNAL \adc|spi_driver|rx_data[7]~feeder_combout\ : std_logic;
SIGNAL \adc_data_out[7]~reg0feeder_combout\ : std_logic;
SIGNAL \adc_data_out[7]~reg0_q\ : std_logic;
SIGNAL \adc|spi_driver|rx_buffer[8]~feeder_combout\ : std_logic;
SIGNAL \adc_data_out[8]~reg0feeder_combout\ : std_logic;
SIGNAL \adc_data_out[8]~reg0_q\ : std_logic;
SIGNAL \adc|spi_driver|rx_buffer[9]~feeder_combout\ : std_logic;
SIGNAL \adc|spi_driver|rx_data[9]~feeder_combout\ : std_logic;
SIGNAL \adc_data_out[9]~reg0feeder_combout\ : std_logic;
SIGNAL \adc_data_out[9]~reg0_q\ : std_logic;
SIGNAL \adc|spi_driver|rx_buffer[10]~feeder_combout\ : std_logic;
SIGNAL \adc|spi_driver|rx_data[10]~feeder_combout\ : std_logic;
SIGNAL \adc_data_out[10]~reg0feeder_combout\ : std_logic;
SIGNAL \adc_data_out[10]~reg0_q\ : std_logic;
SIGNAL \adc|spi_driver|rx_buffer[11]~feeder_combout\ : std_logic;
SIGNAL \adc|spi_driver|rx_data[11]~feeder_combout\ : std_logic;
SIGNAL \adc_data_out[11]~reg0feeder_combout\ : std_logic;
SIGNAL \adc_data_out[11]~reg0_q\ : std_logic;
SIGNAL \adc|spi_driver|clk_toggles\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \adc|spi_driver|clk_ratio\ : std_logic_vector(31 DOWNTO 0);
SIGNAL sleep : std_logic_vector(10 DOWNTO 0);
SIGNAL \adc|spi_driver|rx_data\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \dac|counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \adc|spi_driver|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \adc|spi_driver|ss_n\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \adc|spi_comm_delay\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \adc|init_delay\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \adc|spi_driver|rx_buffer\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \vclock|vclk_cnt\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \adc|spi_driver|ALT_INV_mosi~en_q\ : std_logic;
SIGNAL \dac|ALT_INV_scl_int~q\ : std_logic;
SIGNAL \adc|ALT_INV_state.initialize~reg0_q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
scl <= ww_scl;
sda <= ww_sda;
ww_ADC_SDAT <= ADC_SDAT;
ADC_SADDR <= ww_ADC_SADDR;
ADC_CS_N <= ww_ADC_CS_N;
ADC_SCLK <= ww_ADC_SCLK;
adc_data_out <= ww_adc_data_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\vclock|virt_clk~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \vclock|virt_clk~q\);

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\adc|spi_driver|ALT_INV_mosi~en_q\ <= NOT \adc|spi_driver|mosi~en_q\;
\dac|ALT_INV_scl_int~q\ <= NOT \dac|scl_int~q\;
\adc|ALT_INV_state.initialize~reg0_q\ <= NOT \adc|state.initialize~reg0_q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X53_Y30_N2
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

-- Location: IOOBUF_X20_Y0_N2
\sda~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \sda~output_o\);

-- Location: IOOBUF_X53_Y15_N9
\scl~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dac|ALT_INV_scl_int~q\,
	devoe => ww_devoe,
	o => \scl~output_o\);

-- Location: IOOBUF_X45_Y34_N16
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

-- Location: IOOBUF_X51_Y34_N9
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

-- Location: IOOBUF_X51_Y34_N16
\adc_data_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adc_data_out[0]~reg0_q\,
	devoe => ww_devoe,
	o => \adc_data_out[0]~output_o\);

-- Location: IOOBUF_X49_Y34_N9
\adc_data_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adc_data_out[1]~reg0_q\,
	devoe => ww_devoe,
	o => \adc_data_out[1]~output_o\);

-- Location: IOOBUF_X43_Y34_N16
\adc_data_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adc_data_out[2]~reg0_q\,
	devoe => ww_devoe,
	o => \adc_data_out[2]~output_o\);

-- Location: IOOBUF_X38_Y34_N16
\adc_data_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adc_data_out[3]~reg0_q\,
	devoe => ww_devoe,
	o => \adc_data_out[3]~output_o\);

-- Location: IOOBUF_X38_Y34_N2
\adc_data_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adc_data_out[4]~reg0_q\,
	devoe => ww_devoe,
	o => \adc_data_out[4]~output_o\);

-- Location: IOOBUF_X43_Y34_N23
\adc_data_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adc_data_out[5]~reg0_q\,
	devoe => ww_devoe,
	o => \adc_data_out[5]~output_o\);

-- Location: IOOBUF_X40_Y34_N9
\adc_data_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adc_data_out[6]~reg0_q\,
	devoe => ww_devoe,
	o => \adc_data_out[6]~output_o\);

-- Location: IOOBUF_X45_Y34_N9
\adc_data_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adc_data_out[7]~reg0_q\,
	devoe => ww_devoe,
	o => \adc_data_out[7]~output_o\);

-- Location: IOOBUF_X45_Y34_N2
\adc_data_out[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adc_data_out[8]~reg0_q\,
	devoe => ww_devoe,
	o => \adc_data_out[8]~output_o\);

-- Location: IOOBUF_X53_Y30_N9
\adc_data_out[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adc_data_out[9]~reg0_q\,
	devoe => ww_devoe,
	o => \adc_data_out[9]~output_o\);

-- Location: IOOBUF_X40_Y34_N2
\adc_data_out[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adc_data_out[10]~reg0_q\,
	devoe => ww_devoe,
	o => \adc_data_out[10]~output_o\);

-- Location: IOOBUF_X47_Y34_N23
\adc_data_out[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adc_data_out[11]~reg0_q\,
	devoe => ww_devoe,
	o => \adc_data_out[11]~output_o\);

-- Location: IOIBUF_X0_Y16_N8
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G2
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

-- Location: LCCOMB_X47_Y30_N8
\adc|spi_driver|clk_toggles[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|clk_toggles[0]~5_combout\ = \adc|spi_driver|clk_toggles\(0) $ (VCC)
-- \adc|spi_driver|clk_toggles[0]~6\ = CARRY(\adc|spi_driver|clk_toggles\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc|spi_driver|clk_toggles\(0),
	datad => VCC,
	combout => \adc|spi_driver|clk_toggles[0]~5_combout\,
	cout => \adc|spi_driver|clk_toggles[0]~6\);

-- Location: LCCOMB_X44_Y30_N2
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

-- Location: LCCOMB_X44_Y30_N4
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

-- Location: LCCOMB_X45_Y30_N18
\adc|spi_driver|count~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~32_combout\ = (\adc|spi_driver|Add5~4_combout\ & !\adc|spi_driver|count[15]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc|spi_driver|Add5~4_combout\,
	datac => \adc|spi_driver|count[15]~0_combout\,
	combout => \adc|spi_driver|count~32_combout\);

-- Location: LCCOMB_X25_Y33_N30
\vclock|vclk_cnt[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|vclk_cnt[0]~4_combout\ = !\vclock|vclk_cnt\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vclock|vclk_cnt\(0),
	combout => \vclock|vclk_cnt[0]~4_combout\);

-- Location: FF_X25_Y33_N31
\vclock|vclk_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \vclock|vclk_cnt[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vclock|vclk_cnt\(0));

-- Location: LCCOMB_X25_Y33_N8
\vclock|vclk_cnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|vclk_cnt~3_combout\ = (\vclock|vclk_cnt\(0) & (!\vclock|vclk_cnt\(1) & !\vclock|Equal0~1_combout\)) # (!\vclock|vclk_cnt\(0) & (\vclock|vclk_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|vclk_cnt\(0),
	datac => \vclock|vclk_cnt\(1),
	datad => \vclock|Equal0~1_combout\,
	combout => \vclock|vclk_cnt~3_combout\);

-- Location: FF_X25_Y33_N9
\vclock|vclk_cnt[1]\ : dffeas
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
	q => \vclock|vclk_cnt\(1));

-- Location: LCCOMB_X25_Y33_N12
\vclock|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Add0~2_combout\ = \vclock|vclk_cnt\(2) $ (((\vclock|vclk_cnt\(0) & \vclock|vclk_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|vclk_cnt\(0),
	datac => \vclock|vclk_cnt\(2),
	datad => \vclock|vclk_cnt\(1),
	combout => \vclock|Add0~2_combout\);

-- Location: FF_X25_Y33_N13
\vclock|vclk_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \vclock|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vclock|vclk_cnt\(2));

-- Location: LCCOMB_X25_Y33_N14
\vclock|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Add0~1_combout\ = \vclock|vclk_cnt\(3) $ (((\vclock|vclk_cnt\(0) & (\vclock|vclk_cnt\(2) & \vclock|vclk_cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|vclk_cnt\(0),
	datab => \vclock|vclk_cnt\(2),
	datac => \vclock|vclk_cnt\(3),
	datad => \vclock|vclk_cnt\(1),
	combout => \vclock|Add0~1_combout\);

-- Location: LCCOMB_X25_Y33_N22
\vclock|vclk_cnt~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|vclk_cnt~2_combout\ = (\vclock|Add0~1_combout\ & ((!\vclock|Equal0~1_combout\) # (!\vclock|vclk_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|vclk_cnt\(0),
	datac => \vclock|Add0~1_combout\,
	datad => \vclock|Equal0~1_combout\,
	combout => \vclock|vclk_cnt~2_combout\);

-- Location: FF_X25_Y33_N23
\vclock|vclk_cnt[3]\ : dffeas
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
	q => \vclock|vclk_cnt\(3));

-- Location: LCCOMB_X25_Y33_N24
\vclock|vclk_cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|vclk_cnt~0_combout\ = (\vclock|vclk_cnt\(0) & (!\vclock|vclk_cnt\(2) & (!\vclock|vclk_cnt\(1) & \vclock|vclk_cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|vclk_cnt\(0),
	datab => \vclock|vclk_cnt\(2),
	datac => \vclock|vclk_cnt\(1),
	datad => \vclock|vclk_cnt\(3),
	combout => \vclock|vclk_cnt~0_combout\);

-- Location: LCCOMB_X25_Y33_N28
\vclock|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Add0~0_combout\ = (\vclock|vclk_cnt\(0) & (\vclock|vclk_cnt\(2) & (\vclock|vclk_cnt\(1) & \vclock|vclk_cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|vclk_cnt\(0),
	datab => \vclock|vclk_cnt\(2),
	datac => \vclock|vclk_cnt\(1),
	datad => \vclock|vclk_cnt\(3),
	combout => \vclock|Add0~0_combout\);

-- Location: LCCOMB_X25_Y33_N18
\vclock|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Add0~3_combout\ = \vclock|vclk_cnt\(4) $ (\vclock|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vclock|vclk_cnt\(4),
	datad => \vclock|Add0~0_combout\,
	combout => \vclock|Add0~3_combout\);

-- Location: FF_X25_Y33_N19
\vclock|vclk_cnt[4]\ : dffeas
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
	q => \vclock|vclk_cnt\(4));

-- Location: LCCOMB_X25_Y33_N26
\vclock|vclk_cnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|vclk_cnt~1_combout\ = (\vclock|vclk_cnt~0_combout\ & (\vclock|vclk_cnt\(5) & (\vclock|vclk_cnt\(4) $ (\vclock|Add0~0_combout\)))) # (!\vclock|vclk_cnt~0_combout\ & (\vclock|vclk_cnt\(5) $ (((\vclock|vclk_cnt\(4) & \vclock|Add0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|vclk_cnt~0_combout\,
	datab => \vclock|vclk_cnt\(4),
	datac => \vclock|vclk_cnt\(5),
	datad => \vclock|Add0~0_combout\,
	combout => \vclock|vclk_cnt~1_combout\);

-- Location: FF_X25_Y33_N27
\vclock|vclk_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \vclock|vclk_cnt~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vclock|vclk_cnt\(5));

-- Location: LCCOMB_X25_Y33_N0
\vclock|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Equal0~0_combout\ = (!\vclock|vclk_cnt\(4) & (\vclock|vclk_cnt\(0) $ (\vclock|vclk_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|vclk_cnt\(0),
	datac => \vclock|vclk_cnt\(1),
	datad => \vclock|vclk_cnt\(4),
	combout => \vclock|Equal0~0_combout\);

-- Location: LCCOMB_X25_Y33_N20
\vclock|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Equal0~1_combout\ = (\vclock|vclk_cnt\(3) & (!\vclock|vclk_cnt\(2) & (\vclock|vclk_cnt\(5) & \vclock|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|vclk_cnt\(3),
	datab => \vclock|vclk_cnt\(2),
	datac => \vclock|vclk_cnt\(5),
	datad => \vclock|Equal0~0_combout\,
	combout => \vclock|Equal0~1_combout\);

-- Location: LCCOMB_X25_Y33_N16
\vclock|virt_clk~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|virt_clk~0_combout\ = \vclock|virt_clk~q\ $ (((\vclock|vclk_cnt\(0) & \vclock|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|virt_clk~q\,
	datac => \vclock|vclk_cnt\(0),
	datad => \vclock|Equal0~1_combout\,
	combout => \vclock|virt_clk~0_combout\);

-- Location: LCCOMB_X25_Y33_N2
\vclock|virt_clk~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|virt_clk~feeder_combout\ = \vclock|virt_clk~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|virt_clk~0_combout\,
	combout => \vclock|virt_clk~feeder_combout\);

-- Location: FF_X25_Y33_N3
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

-- Location: CLKCTRL_G11
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

-- Location: LCCOMB_X50_Y30_N30
\adc|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|Add1~2_combout\ = \adc|spi_comm_delay\(3) $ (((\adc|spi_comm_delay\(0) & (\adc|spi_comm_delay\(1) & \adc|spi_comm_delay\(2)))))

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
	combout => \adc|Add1~2_combout\);

-- Location: LCCOMB_X51_Y30_N28
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

-- Location: LCCOMB_X50_Y30_N16
\adc|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|Add1~0_combout\ = \adc|spi_comm_delay\(2) $ (((\adc|spi_comm_delay\(1) & \adc|spi_comm_delay\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc|spi_comm_delay\(1),
	datac => \adc|spi_comm_delay\(0),
	datad => \adc|spi_comm_delay\(2),
	combout => \adc|Add1~0_combout\);

-- Location: LCCOMB_X50_Y30_N24
\adc|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|Selector0~0_combout\ = (!\adc|spi_comm_delay\(0) & (\adc|Add1~0_combout\ & (\adc|state.execute~reg0_q\ & \adc|Equal2~1_combout\)))

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
	combout => \adc|Selector0~0_combout\);

-- Location: LCCOMB_X51_Y30_N16
\adc|state.ready~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|state.ready~0_combout\ = (!\adc|state.ready~reg0_q\ & ((\adc|Selector0~1_combout\) # (\adc|Selector0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc|state.ready~reg0_q\,
	datac => \adc|Selector0~1_combout\,
	datad => \adc|Selector0~0_combout\,
	combout => \adc|state.ready~0_combout\);

-- Location: LCCOMB_X51_Y30_N4
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

-- Location: FF_X51_Y30_N5
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

-- Location: FF_X51_Y30_N29
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

-- Location: LCCOMB_X51_Y30_N18
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

-- Location: FF_X51_Y30_N19
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

-- Location: LCCOMB_X51_Y30_N30
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

-- Location: FF_X51_Y30_N31
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

-- Location: LCCOMB_X51_Y30_N22
\adc|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|Selector0~1_combout\ = (\adc|init_delay\(2) & (\adc|init_delay\(0) & (!\adc|state.execute~reg0_q\ & \adc|init_delay\(1))))

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
	combout => \adc|Selector0~1_combout\);

-- Location: LCCOMB_X51_Y30_N24
\adc|state.ready~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|state.ready~1_combout\ = (\adc|state.ready~reg0_q\ & (((!\adc_run~q\)))) # (!\adc|state.ready~reg0_q\ & ((\adc|Selector0~1_combout\) # ((\adc|Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|Selector0~1_combout\,
	datab => \adc_run~q\,
	datac => \adc|state.ready~reg0_q\,
	datad => \adc|Selector0~0_combout\,
	combout => \adc|state.ready~1_combout\);

-- Location: FF_X51_Y30_N25
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

-- Location: LCCOMB_X52_Y30_N6
\sleep[0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \sleep[0]~20_combout\ = sleep(0) $ (((!\adc_run~q\ & \adc|state.ready~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_run~q\,
	datac => sleep(0),
	datad => \adc|state.ready~reg0_q\,
	combout => \sleep[0]~20_combout\);

-- Location: FF_X52_Y30_N7
\sleep[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vclock|virt_clk~clkctrl_outclk\,
	d => \sleep[0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sleep(0));

-- Location: LCCOMB_X52_Y30_N8
\sleep[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sleep[1]~10_combout\ = (sleep(0) & (sleep(1) $ (VCC))) # (!sleep(0) & (sleep(1) & VCC))
-- \sleep[1]~11\ = CARRY((sleep(0) & sleep(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sleep(0),
	datab => sleep(1),
	datad => VCC,
	combout => \sleep[1]~10_combout\,
	cout => \sleep[1]~11\);

-- Location: LCCOMB_X52_Y30_N30
\process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (!\adc_run~q\ & \adc|state.ready~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc_run~q\,
	datad => \adc|state.ready~reg0_q\,
	combout => \process_0~0_combout\);

-- Location: FF_X52_Y30_N9
\sleep[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vclock|virt_clk~clkctrl_outclk\,
	d => \sleep[1]~10_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sleep(1));

-- Location: LCCOMB_X52_Y30_N10
\sleep[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sleep[2]~12_combout\ = (sleep(2) & (!\sleep[1]~11\)) # (!sleep(2) & ((\sleep[1]~11\) # (GND)))
-- \sleep[2]~13\ = CARRY((!\sleep[1]~11\) # (!sleep(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sleep(2),
	datad => VCC,
	cin => \sleep[1]~11\,
	combout => \sleep[2]~12_combout\,
	cout => \sleep[2]~13\);

-- Location: FF_X52_Y30_N11
\sleep[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vclock|virt_clk~clkctrl_outclk\,
	d => \sleep[2]~12_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sleep(2));

-- Location: LCCOMB_X52_Y30_N12
\sleep[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sleep[3]~14_combout\ = (sleep(3) & (\sleep[2]~13\ $ (GND))) # (!sleep(3) & (!\sleep[2]~13\ & VCC))
-- \sleep[3]~15\ = CARRY((sleep(3) & !\sleep[2]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sleep(3),
	datad => VCC,
	cin => \sleep[2]~13\,
	combout => \sleep[3]~14_combout\,
	cout => \sleep[3]~15\);

-- Location: FF_X52_Y30_N13
\sleep[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vclock|virt_clk~clkctrl_outclk\,
	d => \sleep[3]~14_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sleep(3));

-- Location: LCCOMB_X52_Y30_N14
\sleep[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sleep[4]~16_combout\ = (sleep(4) & (!\sleep[3]~15\)) # (!sleep(4) & ((\sleep[3]~15\) # (GND)))
-- \sleep[4]~17\ = CARRY((!\sleep[3]~15\) # (!sleep(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sleep(4),
	datad => VCC,
	cin => \sleep[3]~15\,
	combout => \sleep[4]~16_combout\,
	cout => \sleep[4]~17\);

-- Location: FF_X52_Y30_N15
\sleep[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vclock|virt_clk~clkctrl_outclk\,
	d => \sleep[4]~16_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sleep(4));

-- Location: LCCOMB_X52_Y30_N16
\sleep[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \sleep[5]~18_combout\ = (sleep(5) & (\sleep[4]~17\ $ (GND))) # (!sleep(5) & (!\sleep[4]~17\ & VCC))
-- \sleep[5]~19\ = CARRY((sleep(5) & !\sleep[4]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sleep(5),
	datad => VCC,
	cin => \sleep[4]~17\,
	combout => \sleep[5]~18_combout\,
	cout => \sleep[5]~19\);

-- Location: FF_X52_Y30_N17
\sleep[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vclock|virt_clk~clkctrl_outclk\,
	d => \sleep[5]~18_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sleep(5));

-- Location: LCCOMB_X52_Y30_N18
\sleep[6]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \sleep[6]~21_combout\ = (sleep(6) & (!\sleep[5]~19\)) # (!sleep(6) & ((\sleep[5]~19\) # (GND)))
-- \sleep[6]~22\ = CARRY((!\sleep[5]~19\) # (!sleep(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sleep(6),
	datad => VCC,
	cin => \sleep[5]~19\,
	combout => \sleep[6]~21_combout\,
	cout => \sleep[6]~22\);

-- Location: FF_X52_Y30_N19
\sleep[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vclock|virt_clk~clkctrl_outclk\,
	d => \sleep[6]~21_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sleep(6));

-- Location: LCCOMB_X52_Y30_N20
\sleep[7]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \sleep[7]~23_combout\ = (sleep(7) & (\sleep[6]~22\ $ (GND))) # (!sleep(7) & (!\sleep[6]~22\ & VCC))
-- \sleep[7]~24\ = CARRY((sleep(7) & !\sleep[6]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sleep(7),
	datad => VCC,
	cin => \sleep[6]~22\,
	combout => \sleep[7]~23_combout\,
	cout => \sleep[7]~24\);

-- Location: FF_X52_Y30_N21
\sleep[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vclock|virt_clk~clkctrl_outclk\,
	d => \sleep[7]~23_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sleep(7));

-- Location: LCCOMB_X52_Y30_N22
\sleep[8]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \sleep[8]~25_combout\ = (sleep(8) & (!\sleep[7]~24\)) # (!sleep(8) & ((\sleep[7]~24\) # (GND)))
-- \sleep[8]~26\ = CARRY((!\sleep[7]~24\) # (!sleep(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sleep(8),
	datad => VCC,
	cin => \sleep[7]~24\,
	combout => \sleep[8]~25_combout\,
	cout => \sleep[8]~26\);

-- Location: FF_X52_Y30_N23
\sleep[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vclock|virt_clk~clkctrl_outclk\,
	d => \sleep[8]~25_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sleep(8));

-- Location: LCCOMB_X52_Y30_N24
\sleep[9]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \sleep[9]~27_combout\ = (sleep(9) & (\sleep[8]~26\ $ (GND))) # (!sleep(9) & (!\sleep[8]~26\ & VCC))
-- \sleep[9]~28\ = CARRY((sleep(9) & !\sleep[8]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sleep(9),
	datad => VCC,
	cin => \sleep[8]~26\,
	combout => \sleep[9]~27_combout\,
	cout => \sleep[9]~28\);

-- Location: FF_X52_Y30_N25
\sleep[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vclock|virt_clk~clkctrl_outclk\,
	d => \sleep[9]~27_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sleep(9));

-- Location: LCCOMB_X52_Y30_N26
\sleep[10]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \sleep[10]~29_combout\ = sleep(10) $ (\sleep[9]~28\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sleep(10),
	cin => \sleep[9]~28\,
	combout => \sleep[10]~29_combout\);

-- Location: FF_X52_Y30_N27
\sleep[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vclock|virt_clk~clkctrl_outclk\,
	d => \sleep[10]~29_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sleep(10));

-- Location: LCCOMB_X52_Y30_N2
\adc_run~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_run~3_combout\ = (!sleep(7) & (!sleep(9) & (!sleep(8) & !sleep(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sleep(7),
	datab => sleep(9),
	datac => sleep(8),
	datad => sleep(6),
	combout => \adc_run~3_combout\);

-- Location: LCCOMB_X51_Y30_N26
\adc_run~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_run~0_combout\ = (!\adc|state.execute~reg0_q\ & \adc_run~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc|state.execute~reg0_q\,
	datad => \adc_run~q\,
	combout => \adc_run~0_combout\);

-- Location: LCCOMB_X52_Y30_N0
\adc_run~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_run~1_combout\ = (!sleep(3) & (!sleep(5) & (!sleep(4) & !sleep(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sleep(3),
	datab => sleep(5),
	datac => sleep(4),
	datad => sleep(2),
	combout => \adc_run~1_combout\);

-- Location: LCCOMB_X52_Y30_N28
\adc_run~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_run~2_combout\ = (!sleep(0) & (!sleep(1) & (\process_0~0_combout\ & \adc_run~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sleep(0),
	datab => sleep(1),
	datac => \process_0~0_combout\,
	datad => \adc_run~1_combout\,
	combout => \adc_run~2_combout\);

-- Location: LCCOMB_X52_Y30_N4
\adc_run~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_run~4_combout\ = (\adc_run~0_combout\) # ((!sleep(10) & (\adc_run~3_combout\ & \adc_run~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sleep(10),
	datab => \adc_run~3_combout\,
	datac => \adc_run~0_combout\,
	datad => \adc_run~2_combout\,
	combout => \adc_run~4_combout\);

-- Location: FF_X52_Y30_N5
adc_run : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vclock|virt_clk~clkctrl_outclk\,
	d => \adc_run~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_run~q\);

-- Location: LCCOMB_X51_Y30_N20
\adc|state.execute~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|state.execute~0_combout\ = (\adc_run~q\ & ((\adc|state.ready~reg0_q\) # ((\adc|state.execute~reg0_q\ & !\adc|state.ready~0_combout\)))) # (!\adc_run~q\ & (((\adc|state.execute~reg0_q\ & !\adc|state.ready~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_run~q\,
	datab => \adc|state.ready~reg0_q\,
	datac => \adc|state.execute~reg0_q\,
	datad => \adc|state.ready~0_combout\,
	combout => \adc|state.execute~0_combout\);

-- Location: FF_X51_Y30_N21
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

-- Location: FF_X50_Y30_N31
\adc|spi_comm_delay[3]\ : dffeas
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
	q => \adc|spi_comm_delay\(3));

-- Location: LCCOMB_X50_Y30_N20
\adc|Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|Add1~1_combout\ = (\adc|spi_comm_delay\(0) & (\adc|spi_comm_delay\(2) & (\adc|spi_comm_delay\(3) & \adc|spi_comm_delay\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_comm_delay\(0),
	datab => \adc|spi_comm_delay\(2),
	datac => \adc|spi_comm_delay\(3),
	datad => \adc|spi_comm_delay\(1),
	combout => \adc|Add1~1_combout\);

-- Location: LCCOMB_X50_Y30_N12
\adc|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|Add1~4_combout\ = \adc|Add1~1_combout\ $ (\adc|spi_comm_delay\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|Add1~1_combout\,
	datac => \adc|spi_comm_delay\(4),
	combout => \adc|Add1~4_combout\);

-- Location: FF_X50_Y30_N13
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

-- Location: LCCOMB_X50_Y30_N18
\adc|Add1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|Add1~3_combout\ = \adc|spi_comm_delay\(5) $ (((\adc|Add1~1_combout\ & \adc|spi_comm_delay\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|Add1~1_combout\,
	datac => \adc|spi_comm_delay\(5),
	datad => \adc|spi_comm_delay\(4),
	combout => \adc|Add1~3_combout\);

-- Location: FF_X50_Y30_N19
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

-- Location: LCCOMB_X50_Y30_N22
\adc|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|Equal2~0_combout\ = (!\adc|spi_comm_delay\(3) & (\adc|spi_comm_delay\(0) $ (\adc|spi_comm_delay\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_comm_delay\(3),
	datac => \adc|spi_comm_delay\(0),
	datad => \adc|spi_comm_delay\(1),
	combout => \adc|Equal2~0_combout\);

-- Location: LCCOMB_X50_Y30_N2
\adc|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|Equal2~1_combout\ = (\adc|Equal2~0_combout\ & ((\adc|spi_comm_delay\(4) & (\adc|spi_comm_delay\(5) & \adc|Add1~1_combout\)) # (!\adc|spi_comm_delay\(4) & (!\adc|spi_comm_delay\(5) & !\adc|Add1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_comm_delay\(4),
	datab => \adc|spi_comm_delay\(5),
	datac => \adc|Equal2~0_combout\,
	datad => \adc|Add1~1_combout\,
	combout => \adc|Equal2~1_combout\);

-- Location: LCCOMB_X50_Y30_N28
\adc|spi_comm_delay~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_comm_delay~8_combout\ = (\adc|spi_comm_delay\(0) & (((!\adc|spi_comm_delay\(1))))) # (!\adc|spi_comm_delay\(0) & (\adc|spi_comm_delay\(1) & ((!\adc|Equal2~1_combout\) # (!\adc|spi_comm_delay\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_comm_delay\(2),
	datab => \adc|spi_comm_delay\(0),
	datac => \adc|spi_comm_delay\(1),
	datad => \adc|Equal2~1_combout\,
	combout => \adc|spi_comm_delay~8_combout\);

-- Location: FF_X50_Y30_N29
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

-- Location: LCCOMB_X50_Y30_N8
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

-- Location: FF_X50_Y30_N9
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

-- Location: LCCOMB_X50_Y30_N26
\adc|spi_comm_delay~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_comm_delay~7_combout\ = (!\adc|spi_comm_delay\(0) & ((!\adc|Equal2~1_combout\) # (!\adc|spi_comm_delay\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_comm_delay\(2),
	datab => \adc|Equal2~1_combout\,
	datac => \adc|spi_comm_delay\(0),
	combout => \adc|spi_comm_delay~7_combout\);

-- Location: FF_X50_Y30_N27
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

-- Location: LCCOMB_X50_Y30_N4
\adc|enable~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|enable~0_combout\ = (!\adc|spi_comm_delay\(3) & (!\adc|spi_comm_delay\(1) & (!\adc|spi_comm_delay\(0) & !\adc|spi_comm_delay\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_comm_delay\(3),
	datab => \adc|spi_comm_delay\(1),
	datac => \adc|spi_comm_delay\(0),
	datad => \adc|spi_comm_delay\(2),
	combout => \adc|enable~0_combout\);

-- Location: LCCOMB_X50_Y30_N6
\adc|enable~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|enable~1_combout\ = (\adc|enable~q\) # ((!\adc|spi_comm_delay\(4) & (!\adc|spi_comm_delay\(5) & \adc|enable~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_comm_delay\(4),
	datab => \adc|spi_comm_delay\(5),
	datac => \adc|enable~0_combout\,
	datad => \adc|enable~q\,
	combout => \adc|enable~1_combout\);

-- Location: LCCOMB_X45_Y30_N16
\adc|enable~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|enable~2_combout\ = (\adc|enable~1_combout\ & ((\adc|spi_comm_delay\(0)) # ((\adc|Add1~0_combout\) # (!\adc|Equal2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_comm_delay\(0),
	datab => \adc|Equal2~1_combout\,
	datac => \adc|Add1~0_combout\,
	datad => \adc|enable~1_combout\,
	combout => \adc|enable~2_combout\);

-- Location: FF_X45_Y30_N17
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

-- Location: LCCOMB_X51_Y30_N14
\adc|reset~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|reset~0_combout\ = (\adc|init_delay\(2) & (\adc|init_delay\(0) & (!\adc|state.initialize~reg0_q\ & \adc|init_delay\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|init_delay\(2),
	datab => \adc|init_delay\(0),
	datac => \adc|state.initialize~reg0_q\,
	datad => \adc|init_delay\(1),
	combout => \adc|reset~0_combout\);

-- Location: LCCOMB_X46_Y30_N18
\adc|reset~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|reset~1_combout\ = (\adc|reset~q\) # (\adc|reset~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc|reset~q\,
	datad => \adc|reset~0_combout\,
	combout => \adc|reset~1_combout\);

-- Location: LCCOMB_X46_Y30_N2
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

-- Location: FF_X46_Y30_N3
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

-- Location: LCCOMB_X45_Y30_N14
\adc|spi_driver|count[30]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count[30]~2_combout\ = (\adc|reset~q\ & ((\adc|spi_driver|state~q\) # (\adc|enable~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|state~q\,
	datab => \adc|enable~q\,
	datad => \adc|reset~q\,
	combout => \adc|spi_driver|count[30]~2_combout\);

-- Location: FF_X45_Y30_N19
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

-- Location: LCCOMB_X44_Y30_N6
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

-- Location: LCCOMB_X45_Y30_N20
\adc|spi_driver|count~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~31_combout\ = (\adc|spi_driver|Add5~6_combout\ & !\adc|spi_driver|count[15]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc|spi_driver|Add5~6_combout\,
	datac => \adc|spi_driver|count[15]~0_combout\,
	combout => \adc|spi_driver|count~31_combout\);

-- Location: FF_X45_Y30_N21
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

-- Location: LCCOMB_X44_Y30_N8
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

-- Location: LCCOMB_X48_Y30_N12
\adc|spi_driver|count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~3_combout\ = ((!\adc|spi_driver|Equal1~10_combout\ & \adc|spi_driver|Add5~8_combout\)) # (!\adc|spi_driver|state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|Equal1~10_combout\,
	datab => \adc|spi_driver|Add5~8_combout\,
	datad => \adc|spi_driver|state~q\,
	combout => \adc|spi_driver|count~3_combout\);

-- Location: FF_X48_Y30_N13
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

-- Location: LCCOMB_X44_Y30_N10
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

-- Location: LCCOMB_X45_Y30_N2
\adc|spi_driver|count~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~30_combout\ = (\adc|spi_driver|Add5~10_combout\ & !\adc|spi_driver|count[15]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|Add5~10_combout\,
	datac => \adc|spi_driver|count[15]~0_combout\,
	combout => \adc|spi_driver|count~30_combout\);

-- Location: FF_X45_Y30_N3
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

-- Location: LCCOMB_X44_Y30_N12
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

-- Location: LCCOMB_X45_Y30_N0
\adc|spi_driver|count~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~29_combout\ = (!\adc|spi_driver|count[15]~0_combout\ & \adc|spi_driver|Add5~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc|spi_driver|count[15]~0_combout\,
	datad => \adc|spi_driver|Add5~12_combout\,
	combout => \adc|spi_driver|count~29_combout\);

-- Location: FF_X45_Y30_N1
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

-- Location: LCCOMB_X48_Y30_N22
\adc|spi_driver|Equal1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Equal1~8_combout\ = (!\adc|spi_driver|count\(6) & (!\adc|spi_driver|count\(2) & (!\adc|spi_driver|count\(3) & !\adc|spi_driver|count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|count\(6),
	datab => \adc|spi_driver|count\(2),
	datac => \adc|spi_driver|count\(3),
	datad => \adc|spi_driver|count\(5),
	combout => \adc|spi_driver|Equal1~8_combout\);

-- Location: LCCOMB_X44_Y30_N14
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

-- Location: LCCOMB_X43_Y30_N16
\adc|spi_driver|count~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~28_combout\ = (\adc|spi_driver|Add5~14_combout\ & !\adc|spi_driver|count[15]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc|spi_driver|Add5~14_combout\,
	datac => \adc|spi_driver|count[15]~0_combout\,
	combout => \adc|spi_driver|count~28_combout\);

-- Location: FF_X43_Y30_N17
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

-- Location: LCCOMB_X44_Y30_N16
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

-- Location: LCCOMB_X45_Y30_N22
\adc|spi_driver|count~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~27_combout\ = (\adc|spi_driver|Add5~16_combout\ & !\adc|spi_driver|count[15]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|Add5~16_combout\,
	datac => \adc|spi_driver|count[15]~0_combout\,
	combout => \adc|spi_driver|count~27_combout\);

-- Location: FF_X45_Y30_N23
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

-- Location: LCCOMB_X44_Y30_N18
\adc|spi_driver|Add5~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Add5~18_combout\ = (\adc|spi_driver|count\(9) & (!\adc|spi_driver|Add5~17\)) # (!\adc|spi_driver|count\(9) & ((\adc|spi_driver|Add5~17\) # (GND)))
-- \adc|spi_driver|Add5~19\ = CARRY((!\adc|spi_driver|Add5~17\) # (!\adc|spi_driver|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc|spi_driver|count\(9),
	datad => VCC,
	cin => \adc|spi_driver|Add5~17\,
	combout => \adc|spi_driver|Add5~18_combout\,
	cout => \adc|spi_driver|Add5~19\);

-- Location: LCCOMB_X45_Y30_N28
\adc|spi_driver|count~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~26_combout\ = (\adc|spi_driver|Add5~18_combout\ & !\adc|spi_driver|count[15]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc|spi_driver|Add5~18_combout\,
	datac => \adc|spi_driver|count[15]~0_combout\,
	combout => \adc|spi_driver|count~26_combout\);

-- Location: FF_X45_Y30_N29
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

-- Location: LCCOMB_X44_Y30_N20
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

-- Location: LCCOMB_X45_Y30_N26
\adc|spi_driver|count~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~25_combout\ = (\adc|spi_driver|Add5~20_combout\ & !\adc|spi_driver|count[15]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc|spi_driver|Add5~20_combout\,
	datac => \adc|spi_driver|count[15]~0_combout\,
	combout => \adc|spi_driver|count~25_combout\);

-- Location: FF_X45_Y30_N27
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

-- Location: LCCOMB_X44_Y30_N22
\adc|spi_driver|Add5~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Add5~22_combout\ = (\adc|spi_driver|count\(11) & (!\adc|spi_driver|Add5~21\)) # (!\adc|spi_driver|count\(11) & ((\adc|spi_driver|Add5~21\) # (GND)))
-- \adc|spi_driver|Add5~23\ = CARRY((!\adc|spi_driver|Add5~21\) # (!\adc|spi_driver|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc|spi_driver|count\(11),
	datad => VCC,
	cin => \adc|spi_driver|Add5~21\,
	combout => \adc|spi_driver|Add5~22_combout\,
	cout => \adc|spi_driver|Add5~23\);

-- Location: LCCOMB_X43_Y30_N4
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

-- Location: FF_X43_Y30_N5
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

-- Location: LCCOMB_X44_Y30_N24
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

-- Location: LCCOMB_X43_Y30_N10
\adc|spi_driver|count~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~23_combout\ = (\adc|spi_driver|Add5~24_combout\ & !\adc|spi_driver|count[15]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|Add5~24_combout\,
	datac => \adc|spi_driver|count[15]~0_combout\,
	combout => \adc|spi_driver|count~23_combout\);

-- Location: FF_X43_Y30_N11
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

-- Location: LCCOMB_X44_Y30_N26
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

-- Location: LCCOMB_X43_Y30_N12
\adc|spi_driver|count~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~22_combout\ = (\adc|spi_driver|Add5~26_combout\ & !\adc|spi_driver|count[15]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc|spi_driver|Add5~26_combout\,
	datac => \adc|spi_driver|count[15]~0_combout\,
	combout => \adc|spi_driver|count~22_combout\);

-- Location: FF_X43_Y30_N13
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

-- Location: LCCOMB_X44_Y30_N28
\adc|spi_driver|Add5~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Add5~28_combout\ = (\adc|spi_driver|count\(14) & (\adc|spi_driver|Add5~27\ $ (GND))) # (!\adc|spi_driver|count\(14) & (!\adc|spi_driver|Add5~27\ & VCC))
-- \adc|spi_driver|Add5~29\ = CARRY((\adc|spi_driver|count\(14) & !\adc|spi_driver|Add5~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc|spi_driver|count\(14),
	datad => VCC,
	cin => \adc|spi_driver|Add5~27\,
	combout => \adc|spi_driver|Add5~28_combout\,
	cout => \adc|spi_driver|Add5~29\);

-- Location: LCCOMB_X43_Y30_N18
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

-- Location: FF_X43_Y30_N19
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

-- Location: LCCOMB_X44_Y30_N30
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

-- Location: LCCOMB_X45_Y30_N24
\adc|spi_driver|count~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~20_combout\ = (\adc|spi_driver|Add5~30_combout\ & !\adc|spi_driver|count[15]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc|spi_driver|Add5~30_combout\,
	datac => \adc|spi_driver|count[15]~0_combout\,
	combout => \adc|spi_driver|count~20_combout\);

-- Location: FF_X45_Y30_N25
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

-- Location: LCCOMB_X44_Y29_N0
\adc|spi_driver|Add5~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Add5~32_combout\ = (\adc|spi_driver|count\(16) & (\adc|spi_driver|Add5~31\ $ (GND))) # (!\adc|spi_driver|count\(16) & (!\adc|spi_driver|Add5~31\ & VCC))
-- \adc|spi_driver|Add5~33\ = CARRY((\adc|spi_driver|count\(16) & !\adc|spi_driver|Add5~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc|spi_driver|count\(16),
	datad => VCC,
	cin => \adc|spi_driver|Add5~31\,
	combout => \adc|spi_driver|Add5~32_combout\,
	cout => \adc|spi_driver|Add5~33\);

-- Location: LCCOMB_X45_Y30_N10
\adc|spi_driver|count~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~19_combout\ = (\adc|spi_driver|Add5~32_combout\ & !\adc|spi_driver|count[15]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|Add5~32_combout\,
	datac => \adc|spi_driver|count[15]~0_combout\,
	combout => \adc|spi_driver|count~19_combout\);

-- Location: FF_X45_Y30_N11
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

-- Location: LCCOMB_X44_Y29_N2
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

-- Location: LCCOMB_X45_Y30_N4
\adc|spi_driver|count~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~18_combout\ = (\adc|spi_driver|Add5~34_combout\ & !\adc|spi_driver|count[15]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc|spi_driver|Add5~34_combout\,
	datac => \adc|spi_driver|count[15]~0_combout\,
	combout => \adc|spi_driver|count~18_combout\);

-- Location: FF_X45_Y30_N5
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

-- Location: LCCOMB_X44_Y29_N4
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

-- Location: LCCOMB_X45_Y30_N6
\adc|spi_driver|count~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~17_combout\ = (\adc|spi_driver|Add5~36_combout\ & !\adc|spi_driver|count[15]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|Add5~36_combout\,
	datac => \adc|spi_driver|count[15]~0_combout\,
	combout => \adc|spi_driver|count~17_combout\);

-- Location: FF_X45_Y30_N7
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

-- Location: LCCOMB_X48_Y30_N2
\adc|spi_driver|Equal1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Equal1~5_combout\ = (!\adc|spi_driver|count\(16) & (!\adc|spi_driver|count\(18) & (!\adc|spi_driver|count\(17) & !\adc|spi_driver|count\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|count\(16),
	datab => \adc|spi_driver|count\(18),
	datac => \adc|spi_driver|count\(17),
	datad => \adc|spi_driver|count\(15),
	combout => \adc|spi_driver|Equal1~5_combout\);

-- Location: LCCOMB_X48_Y30_N4
\adc|spi_driver|Equal1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Equal1~7_combout\ = (!\adc|spi_driver|count\(9) & (!\adc|spi_driver|count\(10) & (!\adc|spi_driver|count\(8) & !\adc|spi_driver|count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|count\(9),
	datab => \adc|spi_driver|count\(10),
	datac => \adc|spi_driver|count\(8),
	datad => \adc|spi_driver|count\(7),
	combout => \adc|spi_driver|Equal1~7_combout\);

-- Location: LCCOMB_X43_Y30_N22
\adc|spi_driver|Equal1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Equal1~6_combout\ = (!\adc|spi_driver|count\(13) & (!\adc|spi_driver|count\(14) & (!\adc|spi_driver|count\(11) & !\adc|spi_driver|count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|count\(13),
	datab => \adc|spi_driver|count\(14),
	datac => \adc|spi_driver|count\(11),
	datad => \adc|spi_driver|count\(12),
	combout => \adc|spi_driver|Equal1~6_combout\);

-- Location: LCCOMB_X48_Y30_N8
\adc|spi_driver|Equal1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Equal1~9_combout\ = (\adc|spi_driver|Equal1~8_combout\ & (\adc|spi_driver|Equal1~5_combout\ & (\adc|spi_driver|Equal1~7_combout\ & \adc|spi_driver|Equal1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|Equal1~8_combout\,
	datab => \adc|spi_driver|Equal1~5_combout\,
	datac => \adc|spi_driver|Equal1~7_combout\,
	datad => \adc|spi_driver|Equal1~6_combout\,
	combout => \adc|spi_driver|Equal1~9_combout\);

-- Location: LCCOMB_X44_Y29_N6
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

-- Location: LCCOMB_X45_Y30_N8
\adc|spi_driver|count~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~16_combout\ = (\adc|spi_driver|Add5~38_combout\ & !\adc|spi_driver|count[15]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|Add5~38_combout\,
	datac => \adc|spi_driver|count[15]~0_combout\,
	combout => \adc|spi_driver|count~16_combout\);

-- Location: FF_X45_Y30_N9
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

-- Location: LCCOMB_X44_Y29_N8
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

-- Location: LCCOMB_X45_Y30_N30
\adc|spi_driver|count~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~15_combout\ = (\adc|spi_driver|Add5~40_combout\ & !\adc|spi_driver|count[15]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|Add5~40_combout\,
	datac => \adc|spi_driver|count[15]~0_combout\,
	combout => \adc|spi_driver|count~15_combout\);

-- Location: FF_X45_Y30_N31
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

-- Location: LCCOMB_X44_Y29_N10
\adc|spi_driver|Add5~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Add5~42_combout\ = (\adc|spi_driver|count\(21) & (!\adc|spi_driver|Add5~41\)) # (!\adc|spi_driver|count\(21) & ((\adc|spi_driver|Add5~41\) # (GND)))
-- \adc|spi_driver|Add5~43\ = CARRY((!\adc|spi_driver|Add5~41\) # (!\adc|spi_driver|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc|spi_driver|count\(21),
	datad => VCC,
	cin => \adc|spi_driver|Add5~41\,
	combout => \adc|spi_driver|Add5~42_combout\,
	cout => \adc|spi_driver|Add5~43\);

-- Location: LCCOMB_X45_Y30_N12
\adc|spi_driver|count~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~14_combout\ = (\adc|spi_driver|Add5~42_combout\ & !\adc|spi_driver|count[15]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|Add5~42_combout\,
	datac => \adc|spi_driver|count[15]~0_combout\,
	combout => \adc|spi_driver|count~14_combout\);

-- Location: FF_X45_Y30_N13
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

-- Location: LCCOMB_X44_Y29_N12
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

-- Location: LCCOMB_X43_Y30_N20
\adc|spi_driver|count~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~13_combout\ = (\adc|spi_driver|Add5~44_combout\ & !\adc|spi_driver|count[15]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|Add5~44_combout\,
	datac => \adc|spi_driver|count[15]~0_combout\,
	combout => \adc|spi_driver|count~13_combout\);

-- Location: FF_X43_Y30_N21
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

-- Location: LCCOMB_X44_Y29_N14
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

-- Location: LCCOMB_X43_Y30_N14
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

-- Location: FF_X43_Y30_N15
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

-- Location: LCCOMB_X44_Y29_N16
\adc|spi_driver|Add5~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Add5~48_combout\ = (\adc|spi_driver|count\(24) & (\adc|spi_driver|Add5~47\ $ (GND))) # (!\adc|spi_driver|count\(24) & (!\adc|spi_driver|Add5~47\ & VCC))
-- \adc|spi_driver|Add5~49\ = CARRY((\adc|spi_driver|count\(24) & !\adc|spi_driver|Add5~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|count\(24),
	datad => VCC,
	cin => \adc|spi_driver|Add5~47\,
	combout => \adc|spi_driver|Add5~48_combout\,
	cout => \adc|spi_driver|Add5~49\);

-- Location: LCCOMB_X45_Y29_N22
\adc|spi_driver|count~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~11_combout\ = (\adc|spi_driver|Add5~48_combout\ & !\adc|spi_driver|count[15]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc|spi_driver|Add5~48_combout\,
	datad => \adc|spi_driver|count[15]~0_combout\,
	combout => \adc|spi_driver|count~11_combout\);

-- Location: FF_X45_Y29_N23
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

-- Location: LCCOMB_X44_Y29_N18
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

-- Location: LCCOMB_X43_Y30_N24
\adc|spi_driver|count~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~10_combout\ = (!\adc|spi_driver|count[15]~0_combout\ & \adc|spi_driver|Add5~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc|spi_driver|count[15]~0_combout\,
	datad => \adc|spi_driver|Add5~50_combout\,
	combout => \adc|spi_driver|count~10_combout\);

-- Location: FF_X43_Y30_N25
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

-- Location: LCCOMB_X44_Y29_N20
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

-- Location: LCCOMB_X43_Y30_N2
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

-- Location: FF_X43_Y30_N3
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

-- Location: LCCOMB_X44_Y29_N22
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

-- Location: LCCOMB_X45_Y29_N10
\adc|spi_driver|count~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~8_combout\ = (!\adc|spi_driver|count[15]~0_combout\ & \adc|spi_driver|Add5~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc|spi_driver|count[15]~0_combout\,
	datad => \adc|spi_driver|Add5~54_combout\,
	combout => \adc|spi_driver|count~8_combout\);

-- Location: FF_X45_Y29_N11
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

-- Location: LCCOMB_X44_Y29_N24
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

-- Location: LCCOMB_X45_Y29_N12
\adc|spi_driver|count~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~7_combout\ = (!\adc|spi_driver|count[15]~0_combout\ & \adc|spi_driver|Add5~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc|spi_driver|count[15]~0_combout\,
	datad => \adc|spi_driver|Add5~56_combout\,
	combout => \adc|spi_driver|count~7_combout\);

-- Location: FF_X45_Y29_N13
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

-- Location: LCCOMB_X44_Y29_N26
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

-- Location: LCCOMB_X45_Y29_N26
\adc|spi_driver|count~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~6_combout\ = (\adc|spi_driver|Add5~58_combout\ & !\adc|spi_driver|count[15]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc|spi_driver|Add5~58_combout\,
	datad => \adc|spi_driver|count[15]~0_combout\,
	combout => \adc|spi_driver|count~6_combout\);

-- Location: FF_X45_Y29_N27
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

-- Location: LCCOMB_X44_Y29_N28
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

-- Location: LCCOMB_X45_Y29_N28
\adc|spi_driver|count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~5_combout\ = (!\adc|spi_driver|count[15]~0_combout\ & \adc|spi_driver|Add5~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc|spi_driver|count[15]~0_combout\,
	datad => \adc|spi_driver|Add5~60_combout\,
	combout => \adc|spi_driver|count~5_combout\);

-- Location: FF_X45_Y29_N29
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

-- Location: LCCOMB_X45_Y29_N0
\adc|spi_driver|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Equal1~1_combout\ = (!\adc|spi_driver|count\(27) & (!\adc|spi_driver|count\(30) & (!\adc|spi_driver|count\(29) & !\adc|spi_driver|count\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|count\(27),
	datab => \adc|spi_driver|count\(30),
	datac => \adc|spi_driver|count\(29),
	datad => \adc|spi_driver|count\(28),
	combout => \adc|spi_driver|Equal1~1_combout\);

-- Location: LCCOMB_X48_Y30_N14
\adc|spi_driver|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Equal1~3_combout\ = (!\adc|spi_driver|count\(19) & (!\adc|spi_driver|count\(20) & (!\adc|spi_driver|count\(21) & !\adc|spi_driver|count\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|count\(19),
	datab => \adc|spi_driver|count\(20),
	datac => \adc|spi_driver|count\(21),
	datad => \adc|spi_driver|count\(22),
	combout => \adc|spi_driver|Equal1~3_combout\);

-- Location: LCCOMB_X49_Y30_N12
\adc|spi_driver|clk_ratio[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|clk_ratio[0]~0_combout\ = (\adc|spi_driver|clk_ratio\(0)) # ((\adc|enable~q\ & (\adc|reset~q\ & !\adc|spi_driver|state~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|enable~q\,
	datab => \adc|reset~q\,
	datac => \adc|spi_driver|clk_ratio\(0),
	datad => \adc|spi_driver|state~q\,
	combout => \adc|spi_driver|clk_ratio[0]~0_combout\);

-- Location: FF_X49_Y30_N13
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

-- Location: LCCOMB_X44_Y29_N30
\adc|spi_driver|Add5~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Add5~62_combout\ = \adc|spi_driver|count\(31) $ (!\adc|spi_driver|Add5~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc|spi_driver|count\(31),
	cin => \adc|spi_driver|Add5~61\,
	combout => \adc|spi_driver|Add5~62_combout\);

-- Location: LCCOMB_X43_Y30_N28
\adc|spi_driver|count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~4_combout\ = (\adc|spi_driver|count[15]~0_combout\) # (!\adc|spi_driver|Add5~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc|spi_driver|count[15]~0_combout\,
	datad => \adc|spi_driver|Add5~62_combout\,
	combout => \adc|spi_driver|count~4_combout\);

-- Location: FF_X43_Y30_N29
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

-- Location: LCCOMB_X48_Y30_N26
\adc|spi_driver|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Equal1~0_combout\ = (\adc|spi_driver|count\(4) & (\adc|spi_driver|clk_ratio\(0) & (\adc|spi_driver|count\(0) & \adc|spi_driver|count\(31)))) # (!\adc|spi_driver|count\(4) & (!\adc|spi_driver|clk_ratio\(0) & (!\adc|spi_driver|count\(0) & 
-- !\adc|spi_driver|count\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|count\(4),
	datab => \adc|spi_driver|clk_ratio\(0),
	datac => \adc|spi_driver|count\(0),
	datad => \adc|spi_driver|count\(31),
	combout => \adc|spi_driver|Equal1~0_combout\);

-- Location: LCCOMB_X48_Y30_N28
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

-- Location: LCCOMB_X48_Y30_N16
\adc|spi_driver|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Equal1~4_combout\ = (\adc|spi_driver|Equal1~1_combout\ & (\adc|spi_driver|Equal1~3_combout\ & (\adc|spi_driver|Equal1~0_combout\ & \adc|spi_driver|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|Equal1~1_combout\,
	datab => \adc|spi_driver|Equal1~3_combout\,
	datac => \adc|spi_driver|Equal1~0_combout\,
	datad => \adc|spi_driver|Equal1~2_combout\,
	combout => \adc|spi_driver|Equal1~4_combout\);

-- Location: LCCOMB_X45_Y29_N24
\adc|spi_driver|count[15]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count[15]~0_combout\ = ((!\adc|spi_driver|count\(1) & (\adc|spi_driver|Equal1~9_combout\ & \adc|spi_driver|Equal1~4_combout\))) # (!\adc|spi_driver|state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|state~q\,
	datab => \adc|spi_driver|count\(1),
	datac => \adc|spi_driver|Equal1~9_combout\,
	datad => \adc|spi_driver|Equal1~4_combout\,
	combout => \adc|spi_driver|count[15]~0_combout\);

-- Location: LCCOMB_X45_Y29_N18
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

-- Location: LCCOMB_X45_Y29_N30
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

-- Location: FF_X45_Y29_N31
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

-- Location: LCCOMB_X44_Y30_N0
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

-- Location: LCCOMB_X45_Y29_N20
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

-- Location: FF_X45_Y30_N15
\adc|spi_driver|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \adc|spi_driver|count~1_combout\,
	sload => VCC,
	ena => \adc|spi_driver|count[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|count\(0));

-- Location: LCCOMB_X43_Y30_N6
\adc|spi_driver|count~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~33_combout\ = (\adc|spi_driver|Add5~2_combout\ & !\adc|spi_driver|count[15]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc|spi_driver|Add5~2_combout\,
	datac => \adc|spi_driver|count[15]~0_combout\,
	combout => \adc|spi_driver|count~33_combout\);

-- Location: FF_X43_Y30_N7
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

-- Location: LCCOMB_X48_Y30_N6
\adc|spi_driver|Equal1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Equal1~10_combout\ = (!\adc|spi_driver|count\(1) & (\adc|spi_driver|Equal1~9_combout\ & \adc|spi_driver|Equal1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc|spi_driver|count\(1),
	datac => \adc|spi_driver|Equal1~9_combout\,
	datad => \adc|spi_driver|Equal1~4_combout\,
	combout => \adc|spi_driver|Equal1~10_combout\);

-- Location: LCCOMB_X47_Y30_N28
\adc|spi_driver|clk_toggles[4]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|clk_toggles[4]~9_combout\ = (\adc|reset~q\ & ((\adc|spi_driver|state~q\ & (\adc|spi_driver|Equal1~10_combout\)) # (!\adc|spi_driver|state~q\ & ((\adc|enable~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|Equal1~10_combout\,
	datab => \adc|spi_driver|state~q\,
	datac => \adc|enable~q\,
	datad => \adc|reset~q\,
	combout => \adc|spi_driver|clk_toggles[4]~9_combout\);

-- Location: FF_X47_Y30_N9
\adc|spi_driver|clk_toggles[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|clk_toggles[0]~5_combout\,
	sclr => \adc|spi_driver|mosi~1_combout\,
	ena => \adc|spi_driver|clk_toggles[4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|clk_toggles\(0));

-- Location: LCCOMB_X47_Y30_N10
\adc|spi_driver|clk_toggles[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|clk_toggles[1]~7_combout\ = (\adc|spi_driver|clk_toggles\(1) & (!\adc|spi_driver|clk_toggles[0]~6\)) # (!\adc|spi_driver|clk_toggles\(1) & ((\adc|spi_driver|clk_toggles[0]~6\) # (GND)))
-- \adc|spi_driver|clk_toggles[1]~8\ = CARRY((!\adc|spi_driver|clk_toggles[0]~6\) # (!\adc|spi_driver|clk_toggles\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|clk_toggles\(1),
	datad => VCC,
	cin => \adc|spi_driver|clk_toggles[0]~6\,
	combout => \adc|spi_driver|clk_toggles[1]~7_combout\,
	cout => \adc|spi_driver|clk_toggles[1]~8\);

-- Location: FF_X47_Y30_N11
\adc|spi_driver|clk_toggles[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|clk_toggles[1]~7_combout\,
	sclr => \adc|spi_driver|mosi~1_combout\,
	ena => \adc|spi_driver|clk_toggles[4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|clk_toggles\(1));

-- Location: LCCOMB_X47_Y30_N12
\adc|spi_driver|clk_toggles[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|clk_toggles[2]~10_combout\ = (\adc|spi_driver|clk_toggles\(2) & (\adc|spi_driver|clk_toggles[1]~8\ $ (GND))) # (!\adc|spi_driver|clk_toggles\(2) & (!\adc|spi_driver|clk_toggles[1]~8\ & VCC))
-- \adc|spi_driver|clk_toggles[2]~11\ = CARRY((\adc|spi_driver|clk_toggles\(2) & !\adc|spi_driver|clk_toggles[1]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|clk_toggles\(2),
	datad => VCC,
	cin => \adc|spi_driver|clk_toggles[1]~8\,
	combout => \adc|spi_driver|clk_toggles[2]~10_combout\,
	cout => \adc|spi_driver|clk_toggles[2]~11\);

-- Location: FF_X47_Y30_N13
\adc|spi_driver|clk_toggles[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|clk_toggles[2]~10_combout\,
	sclr => \adc|spi_driver|mosi~1_combout\,
	ena => \adc|spi_driver|clk_toggles[4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|clk_toggles\(2));

-- Location: LCCOMB_X47_Y30_N14
\adc|spi_driver|clk_toggles[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|clk_toggles[3]~12_combout\ = (\adc|spi_driver|clk_toggles\(3) & (!\adc|spi_driver|clk_toggles[2]~11\)) # (!\adc|spi_driver|clk_toggles\(3) & ((\adc|spi_driver|clk_toggles[2]~11\) # (GND)))
-- \adc|spi_driver|clk_toggles[3]~13\ = CARRY((!\adc|spi_driver|clk_toggles[2]~11\) # (!\adc|spi_driver|clk_toggles\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc|spi_driver|clk_toggles\(3),
	datad => VCC,
	cin => \adc|spi_driver|clk_toggles[2]~11\,
	combout => \adc|spi_driver|clk_toggles[3]~12_combout\,
	cout => \adc|spi_driver|clk_toggles[3]~13\);

-- Location: FF_X47_Y30_N15
\adc|spi_driver|clk_toggles[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|clk_toggles[3]~12_combout\,
	sclr => \adc|spi_driver|mosi~1_combout\,
	ena => \adc|spi_driver|clk_toggles[4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|clk_toggles\(3));

-- Location: LCCOMB_X47_Y30_N16
\adc|spi_driver|clk_toggles[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|clk_toggles[4]~14_combout\ = \adc|spi_driver|clk_toggles[3]~13\ $ (!\adc|spi_driver|clk_toggles\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \adc|spi_driver|clk_toggles\(4),
	cin => \adc|spi_driver|clk_toggles[3]~13\,
	combout => \adc|spi_driver|clk_toggles[4]~14_combout\);

-- Location: FF_X47_Y30_N17
\adc|spi_driver|clk_toggles[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|clk_toggles[4]~14_combout\,
	sclr => \adc|spi_driver|mosi~1_combout\,
	ena => \adc|spi_driver|clk_toggles[4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|clk_toggles\(4));

-- Location: LCCOMB_X49_Y30_N0
\adc|spi_driver|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Equal3~0_combout\ = (\adc|spi_driver|clk_toggles\(1)) # (((\adc|spi_driver|clk_toggles\(2)) # (!\adc|spi_driver|clk_toggles\(4))) # (!\adc|spi_driver|clk_toggles\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|clk_toggles\(1),
	datab => \adc|spi_driver|clk_toggles\(3),
	datac => \adc|spi_driver|clk_toggles\(2),
	datad => \adc|spi_driver|clk_toggles\(4),
	combout => \adc|spi_driver|Equal3~0_combout\);

-- Location: LCCOMB_X49_Y30_N6
\adc|spi_driver|mosi~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|mosi~1_combout\ = ((\adc|spi_driver|clk_toggles\(0) & !\adc|spi_driver|Equal3~0_combout\)) # (!\adc|spi_driver|state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|clk_toggles\(0),
	datab => \adc|spi_driver|Equal3~0_combout\,
	datad => \adc|spi_driver|state~q\,
	combout => \adc|spi_driver|mosi~1_combout\);

-- Location: LCCOMB_X48_Y30_N0
\adc|spi_driver|assert_data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|assert_data~0_combout\ = (\adc|spi_driver|assert_data~q\ & ((!\adc|spi_driver|clk_toggles[4]~9_combout\) # (!\adc|spi_driver|state~q\))) # (!\adc|spi_driver|assert_data~q\ & ((\adc|spi_driver|clk_toggles[4]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc|spi_driver|state~q\,
	datac => \adc|spi_driver|assert_data~q\,
	datad => \adc|spi_driver|clk_toggles[4]~9_combout\,
	combout => \adc|spi_driver|assert_data~0_combout\);

-- Location: FF_X48_Y30_N1
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

-- Location: LCCOMB_X49_Y30_N30
\adc|spi_driver|mosi~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|mosi~2_combout\ = (!\adc|spi_driver|clk_toggles\(3) & (((!\adc|spi_driver|clk_toggles\(0)) # (!\adc|spi_driver|clk_toggles\(2))) # (!\adc|spi_driver|clk_toggles\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|clk_toggles\(1),
	datab => \adc|spi_driver|clk_toggles\(2),
	datac => \adc|spi_driver|clk_toggles\(3),
	datad => \adc|spi_driver|clk_toggles\(0),
	combout => \adc|spi_driver|mosi~2_combout\);

-- Location: LCCOMB_X49_Y30_N20
\adc|spi_driver|mosi~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|mosi~3_combout\ = (\adc|spi_driver|assert_data~q\ & (\adc|spi_driver|clk_ratio\(0) & ((\adc|spi_driver|mosi~2_combout\) # (!\adc|spi_driver|clk_toggles\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|assert_data~q\,
	datab => \adc|spi_driver|clk_toggles\(4),
	datac => \adc|spi_driver|mosi~2_combout\,
	datad => \adc|spi_driver|clk_ratio\(0),
	combout => \adc|spi_driver|mosi~3_combout\);

-- Location: LCCOMB_X49_Y30_N18
\adc|spi_driver|Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Equal3~1_combout\ = (\adc|spi_driver|Equal3~0_combout\) # (!\adc|spi_driver|clk_toggles\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc|spi_driver|Equal3~0_combout\,
	datad => \adc|spi_driver|clk_toggles\(0),
	combout => \adc|spi_driver|Equal3~1_combout\);

-- Location: LCCOMB_X49_Y30_N24
\adc|spi_driver|mosi~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|mosi~4_combout\ = ((\adc|spi_driver|Equal1~10_combout\ & ((\adc|spi_driver|mosi~3_combout\) # (!\adc|spi_driver|Equal3~1_combout\)))) # (!\adc|spi_driver|state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|Equal1~10_combout\,
	datab => \adc|spi_driver|mosi~3_combout\,
	datac => \adc|spi_driver|Equal3~1_combout\,
	datad => \adc|spi_driver|state~q\,
	combout => \adc|spi_driver|mosi~4_combout\);

-- Location: LCCOMB_X49_Y30_N10
\adc|spi_driver|mosi~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|mosi~5_combout\ = (\adc|spi_driver|mosi~4_combout\ & (!\adc|spi_driver|mosi~1_combout\)) # (!\adc|spi_driver|mosi~4_combout\ & ((\adc|spi_driver|mosi~en_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|mosi~1_combout\,
	datac => \adc|spi_driver|mosi~en_q\,
	datad => \adc|spi_driver|mosi~4_combout\,
	combout => \adc|spi_driver|mosi~5_combout\);

-- Location: FF_X49_Y30_N11
\adc|spi_driver|mosi~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|mosi~5_combout\,
	clrn => \adc|reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|mosi~en_q\);

-- Location: LCCOMB_X40_Y16_N0
\dac|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Add0~0_combout\ = \dac|counter\(0) $ (VCC)
-- \dac|Add0~1\ = CARRY(\dac|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|counter\(0),
	datad => VCC,
	combout => \dac|Add0~0_combout\,
	cout => \dac|Add0~1\);

-- Location: LCCOMB_X41_Y16_N20
\dac|counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|counter~0_combout\ = (\dac|Add0~0_combout\ & !\dac|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dac|Add0~0_combout\,
	datad => \dac|Equal0~10_combout\,
	combout => \dac|counter~0_combout\);

-- Location: FF_X41_Y16_N21
\dac|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|counter\(0));

-- Location: LCCOMB_X40_Y16_N2
\dac|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Add0~2_combout\ = (\dac|counter\(1) & (!\dac|Add0~1\)) # (!\dac|counter\(1) & ((\dac|Add0~1\) # (GND)))
-- \dac|Add0~3\ = CARRY((!\dac|Add0~1\) # (!\dac|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dac|counter\(1),
	datad => VCC,
	cin => \dac|Add0~1\,
	combout => \dac|Add0~2_combout\,
	cout => \dac|Add0~3\);

-- Location: FF_X40_Y16_N3
\dac|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|counter\(1));

-- Location: LCCOMB_X40_Y16_N4
\dac|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Add0~4_combout\ = (\dac|counter\(2) & (\dac|Add0~3\ $ (GND))) # (!\dac|counter\(2) & (!\dac|Add0~3\ & VCC))
-- \dac|Add0~5\ = CARRY((\dac|counter\(2) & !\dac|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dac|counter\(2),
	datad => VCC,
	cin => \dac|Add0~3\,
	combout => \dac|Add0~4_combout\,
	cout => \dac|Add0~5\);

-- Location: FF_X40_Y16_N5
\dac|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|counter\(2));

-- Location: LCCOMB_X40_Y16_N6
\dac|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Add0~6_combout\ = (\dac|counter\(3) & (!\dac|Add0~5\)) # (!\dac|counter\(3) & ((\dac|Add0~5\) # (GND)))
-- \dac|Add0~7\ = CARRY((!\dac|Add0~5\) # (!\dac|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dac|counter\(3),
	datad => VCC,
	cin => \dac|Add0~5\,
	combout => \dac|Add0~6_combout\,
	cout => \dac|Add0~7\);

-- Location: FF_X40_Y16_N7
\dac|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|counter\(3));

-- Location: LCCOMB_X40_Y16_N8
\dac|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Add0~8_combout\ = (\dac|counter\(4) & (\dac|Add0~7\ $ (GND))) # (!\dac|counter\(4) & (!\dac|Add0~7\ & VCC))
-- \dac|Add0~9\ = CARRY((\dac|counter\(4) & !\dac|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dac|counter\(4),
	datad => VCC,
	cin => \dac|Add0~7\,
	combout => \dac|Add0~8_combout\,
	cout => \dac|Add0~9\);

-- Location: LCCOMB_X41_Y16_N12
\dac|counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|counter~1_combout\ = (\dac|Add0~8_combout\ & !\dac|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|Add0~8_combout\,
	datad => \dac|Equal0~10_combout\,
	combout => \dac|counter~1_combout\);

-- Location: FF_X41_Y16_N13
\dac|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|counter\(4));

-- Location: LCCOMB_X40_Y16_N10
\dac|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Add0~10_combout\ = (\dac|counter\(5) & (!\dac|Add0~9\)) # (!\dac|counter\(5) & ((\dac|Add0~9\) # (GND)))
-- \dac|Add0~11\ = CARRY((!\dac|Add0~9\) # (!\dac|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dac|counter\(5),
	datad => VCC,
	cin => \dac|Add0~9\,
	combout => \dac|Add0~10_combout\,
	cout => \dac|Add0~11\);

-- Location: FF_X40_Y16_N11
\dac|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|counter\(5));

-- Location: LCCOMB_X40_Y16_N12
\dac|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Add0~12_combout\ = (\dac|counter\(6) & (\dac|Add0~11\ $ (GND))) # (!\dac|counter\(6) & (!\dac|Add0~11\ & VCC))
-- \dac|Add0~13\ = CARRY((\dac|counter\(6) & !\dac|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dac|counter\(6),
	datad => VCC,
	cin => \dac|Add0~11\,
	combout => \dac|Add0~12_combout\,
	cout => \dac|Add0~13\);

-- Location: FF_X40_Y16_N13
\dac|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|counter\(6));

-- Location: LCCOMB_X40_Y16_N14
\dac|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Add0~14_combout\ = (\dac|counter\(7) & (!\dac|Add0~13\)) # (!\dac|counter\(7) & ((\dac|Add0~13\) # (GND)))
-- \dac|Add0~15\ = CARRY((!\dac|Add0~13\) # (!\dac|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dac|counter\(7),
	datad => VCC,
	cin => \dac|Add0~13\,
	combout => \dac|Add0~14_combout\,
	cout => \dac|Add0~15\);

-- Location: LCCOMB_X41_Y16_N26
\dac|counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|counter~2_combout\ = (\dac|Add0~14_combout\ & !\dac|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|Add0~14_combout\,
	datad => \dac|Equal0~10_combout\,
	combout => \dac|counter~2_combout\);

-- Location: FF_X41_Y16_N27
\dac|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|counter\(7));

-- Location: LCCOMB_X40_Y16_N16
\dac|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Add0~16_combout\ = (\dac|counter\(8) & (\dac|Add0~15\ $ (GND))) # (!\dac|counter\(8) & (!\dac|Add0~15\ & VCC))
-- \dac|Add0~17\ = CARRY((\dac|counter\(8) & !\dac|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dac|counter\(8),
	datad => VCC,
	cin => \dac|Add0~15\,
	combout => \dac|Add0~16_combout\,
	cout => \dac|Add0~17\);

-- Location: FF_X40_Y16_N17
\dac|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|counter\(8));

-- Location: LCCOMB_X40_Y16_N18
\dac|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Add0~18_combout\ = (\dac|counter\(9) & (!\dac|Add0~17\)) # (!\dac|counter\(9) & ((\dac|Add0~17\) # (GND)))
-- \dac|Add0~19\ = CARRY((!\dac|Add0~17\) # (!\dac|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dac|counter\(9),
	datad => VCC,
	cin => \dac|Add0~17\,
	combout => \dac|Add0~18_combout\,
	cout => \dac|Add0~19\);

-- Location: FF_X40_Y16_N19
\dac|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|counter\(9));

-- Location: LCCOMB_X40_Y16_N20
\dac|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Add0~20_combout\ = (\dac|counter\(10) & (\dac|Add0~19\ $ (GND))) # (!\dac|counter\(10) & (!\dac|Add0~19\ & VCC))
-- \dac|Add0~21\ = CARRY((\dac|counter\(10) & !\dac|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dac|counter\(10),
	datad => VCC,
	cin => \dac|Add0~19\,
	combout => \dac|Add0~20_combout\,
	cout => \dac|Add0~21\);

-- Location: FF_X40_Y16_N21
\dac|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|counter\(10));

-- Location: LCCOMB_X40_Y16_N22
\dac|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Add0~22_combout\ = (\dac|counter\(11) & (!\dac|Add0~21\)) # (!\dac|counter\(11) & ((\dac|Add0~21\) # (GND)))
-- \dac|Add0~23\ = CARRY((!\dac|Add0~21\) # (!\dac|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dac|counter\(11),
	datad => VCC,
	cin => \dac|Add0~21\,
	combout => \dac|Add0~22_combout\,
	cout => \dac|Add0~23\);

-- Location: FF_X40_Y16_N23
\dac|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|counter\(11));

-- Location: LCCOMB_X40_Y16_N24
\dac|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Add0~24_combout\ = (\dac|counter\(12) & (\dac|Add0~23\ $ (GND))) # (!\dac|counter\(12) & (!\dac|Add0~23\ & VCC))
-- \dac|Add0~25\ = CARRY((\dac|counter\(12) & !\dac|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dac|counter\(12),
	datad => VCC,
	cin => \dac|Add0~23\,
	combout => \dac|Add0~24_combout\,
	cout => \dac|Add0~25\);

-- Location: LCCOMB_X41_Y16_N28
\dac|counter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|counter~3_combout\ = (\dac|Add0~24_combout\ & !\dac|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dac|Add0~24_combout\,
	datad => \dac|Equal0~10_combout\,
	combout => \dac|counter~3_combout\);

-- Location: FF_X41_Y16_N29
\dac|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|counter\(12));

-- Location: LCCOMB_X40_Y16_N26
\dac|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Add0~26_combout\ = (\dac|counter\(13) & (!\dac|Add0~25\)) # (!\dac|counter\(13) & ((\dac|Add0~25\) # (GND)))
-- \dac|Add0~27\ = CARRY((!\dac|Add0~25\) # (!\dac|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dac|counter\(13),
	datad => VCC,
	cin => \dac|Add0~25\,
	combout => \dac|Add0~26_combout\,
	cout => \dac|Add0~27\);

-- Location: FF_X40_Y16_N27
\dac|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|counter\(13));

-- Location: LCCOMB_X40_Y16_N28
\dac|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Add0~28_combout\ = (\dac|counter\(14) & (\dac|Add0~27\ $ (GND))) # (!\dac|counter\(14) & (!\dac|Add0~27\ & VCC))
-- \dac|Add0~29\ = CARRY((\dac|counter\(14) & !\dac|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dac|counter\(14),
	datad => VCC,
	cin => \dac|Add0~27\,
	combout => \dac|Add0~28_combout\,
	cout => \dac|Add0~29\);

-- Location: LCCOMB_X41_Y16_N6
\dac|counter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|counter~4_combout\ = (!\dac|Equal0~10_combout\ & \dac|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dac|Equal0~10_combout\,
	datad => \dac|Add0~28_combout\,
	combout => \dac|counter~4_combout\);

-- Location: FF_X41_Y16_N7
\dac|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|counter\(14));

-- Location: LCCOMB_X40_Y16_N30
\dac|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Add0~30_combout\ = (\dac|counter\(15) & (!\dac|Add0~29\)) # (!\dac|counter\(15) & ((\dac|Add0~29\) # (GND)))
-- \dac|Add0~31\ = CARRY((!\dac|Add0~29\) # (!\dac|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dac|counter\(15),
	datad => VCC,
	cin => \dac|Add0~29\,
	combout => \dac|Add0~30_combout\,
	cout => \dac|Add0~31\);

-- Location: LCCOMB_X41_Y16_N16
\dac|counter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|counter~5_combout\ = (!\dac|Equal0~10_combout\ & \dac|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dac|Equal0~10_combout\,
	datad => \dac|Add0~30_combout\,
	combout => \dac|counter~5_combout\);

-- Location: FF_X41_Y16_N17
\dac|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|counter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|counter\(15));

-- Location: LCCOMB_X40_Y15_N0
\dac|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Add0~32_combout\ = (\dac|counter\(16) & (\dac|Add0~31\ $ (GND))) # (!\dac|counter\(16) & (!\dac|Add0~31\ & VCC))
-- \dac|Add0~33\ = CARRY((\dac|counter\(16) & !\dac|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dac|counter\(16),
	datad => VCC,
	cin => \dac|Add0~31\,
	combout => \dac|Add0~32_combout\,
	cout => \dac|Add0~33\);

-- Location: LCCOMB_X41_Y15_N2
\dac|counter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|counter~6_combout\ = (\dac|Add0~32_combout\ & !\dac|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dac|Add0~32_combout\,
	datad => \dac|Equal0~10_combout\,
	combout => \dac|counter~6_combout\);

-- Location: FF_X41_Y15_N3
\dac|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|counter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|counter\(16));

-- Location: LCCOMB_X40_Y15_N2
\dac|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Add0~34_combout\ = (\dac|counter\(17) & (!\dac|Add0~33\)) # (!\dac|counter\(17) & ((\dac|Add0~33\) # (GND)))
-- \dac|Add0~35\ = CARRY((!\dac|Add0~33\) # (!\dac|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dac|counter\(17),
	datad => VCC,
	cin => \dac|Add0~33\,
	combout => \dac|Add0~34_combout\,
	cout => \dac|Add0~35\);

-- Location: LCCOMB_X41_Y15_N4
\dac|counter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|counter~7_combout\ = (!\dac|Equal0~10_combout\ & \dac|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dac|Equal0~10_combout\,
	datad => \dac|Add0~34_combout\,
	combout => \dac|counter~7_combout\);

-- Location: FF_X41_Y15_N5
\dac|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|counter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|counter\(17));

-- Location: LCCOMB_X40_Y15_N4
\dac|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Add0~36_combout\ = (\dac|counter\(18) & (\dac|Add0~35\ $ (GND))) # (!\dac|counter\(18) & (!\dac|Add0~35\ & VCC))
-- \dac|Add0~37\ = CARRY((\dac|counter\(18) & !\dac|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dac|counter\(18),
	datad => VCC,
	cin => \dac|Add0~35\,
	combout => \dac|Add0~36_combout\,
	cout => \dac|Add0~37\);

-- Location: FF_X40_Y15_N5
\dac|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|counter\(18));

-- Location: LCCOMB_X40_Y15_N6
\dac|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Add0~38_combout\ = (\dac|counter\(19) & (!\dac|Add0~37\)) # (!\dac|counter\(19) & ((\dac|Add0~37\) # (GND)))
-- \dac|Add0~39\ = CARRY((!\dac|Add0~37\) # (!\dac|counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dac|counter\(19),
	datad => VCC,
	cin => \dac|Add0~37\,
	combout => \dac|Add0~38_combout\,
	cout => \dac|Add0~39\);

-- Location: FF_X40_Y15_N7
\dac|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|counter\(19));

-- Location: LCCOMB_X40_Y15_N8
\dac|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Add0~40_combout\ = (\dac|counter\(20) & (\dac|Add0~39\ $ (GND))) # (!\dac|counter\(20) & (!\dac|Add0~39\ & VCC))
-- \dac|Add0~41\ = CARRY((\dac|counter\(20) & !\dac|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dac|counter\(20),
	datad => VCC,
	cin => \dac|Add0~39\,
	combout => \dac|Add0~40_combout\,
	cout => \dac|Add0~41\);

-- Location: FF_X40_Y15_N9
\dac|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|counter\(20));

-- Location: LCCOMB_X40_Y15_N10
\dac|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Add0~42_combout\ = (\dac|counter\(21) & (!\dac|Add0~41\)) # (!\dac|counter\(21) & ((\dac|Add0~41\) # (GND)))
-- \dac|Add0~43\ = CARRY((!\dac|Add0~41\) # (!\dac|counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dac|counter\(21),
	datad => VCC,
	cin => \dac|Add0~41\,
	combout => \dac|Add0~42_combout\,
	cout => \dac|Add0~43\);

-- Location: FF_X40_Y15_N11
\dac|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|counter\(21));

-- Location: LCCOMB_X40_Y15_N12
\dac|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Add0~44_combout\ = (\dac|counter\(22) & (\dac|Add0~43\ $ (GND))) # (!\dac|counter\(22) & (!\dac|Add0~43\ & VCC))
-- \dac|Add0~45\ = CARRY((\dac|counter\(22) & !\dac|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dac|counter\(22),
	datad => VCC,
	cin => \dac|Add0~43\,
	combout => \dac|Add0~44_combout\,
	cout => \dac|Add0~45\);

-- Location: FF_X40_Y15_N13
\dac|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|counter\(22));

-- Location: LCCOMB_X41_Y15_N18
\dac|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Equal0~5_combout\ = (!\dac|counter\(19) & (\dac|counter\(17) & (!\dac|counter\(18) & \dac|counter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|counter\(19),
	datab => \dac|counter\(17),
	datac => \dac|counter\(18),
	datad => \dac|counter\(16),
	combout => \dac|Equal0~5_combout\);

-- Location: LCCOMB_X41_Y15_N8
\dac|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Equal0~6_combout\ = (!\dac|counter\(21) & !\dac|counter\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|counter\(21),
	datad => \dac|counter\(20),
	combout => \dac|Equal0~6_combout\);

-- Location: LCCOMB_X40_Y15_N14
\dac|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Add0~46_combout\ = (\dac|counter\(23) & (!\dac|Add0~45\)) # (!\dac|counter\(23) & ((\dac|Add0~45\) # (GND)))
-- \dac|Add0~47\ = CARRY((!\dac|Add0~45\) # (!\dac|counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dac|counter\(23),
	datad => VCC,
	cin => \dac|Add0~45\,
	combout => \dac|Add0~46_combout\,
	cout => \dac|Add0~47\);

-- Location: FF_X40_Y15_N15
\dac|counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|counter\(23));

-- Location: LCCOMB_X41_Y15_N10
\dac|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Equal0~7_combout\ = (!\dac|counter\(22) & (\dac|Equal0~5_combout\ & (\dac|Equal0~6_combout\ & !\dac|counter\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|counter\(22),
	datab => \dac|Equal0~5_combout\,
	datac => \dac|Equal0~6_combout\,
	datad => \dac|counter\(23),
	combout => \dac|Equal0~7_combout\);

-- Location: LCCOMB_X40_Y15_N16
\dac|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Add0~48_combout\ = (\dac|counter\(24) & (\dac|Add0~47\ $ (GND))) # (!\dac|counter\(24) & (!\dac|Add0~47\ & VCC))
-- \dac|Add0~49\ = CARRY((\dac|counter\(24) & !\dac|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dac|counter\(24),
	datad => VCC,
	cin => \dac|Add0~47\,
	combout => \dac|Add0~48_combout\,
	cout => \dac|Add0~49\);

-- Location: FF_X40_Y15_N17
\dac|counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|counter\(24));

-- Location: LCCOMB_X40_Y15_N18
\dac|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Add0~50_combout\ = (\dac|counter\(25) & (!\dac|Add0~49\)) # (!\dac|counter\(25) & ((\dac|Add0~49\) # (GND)))
-- \dac|Add0~51\ = CARRY((!\dac|Add0~49\) # (!\dac|counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dac|counter\(25),
	datad => VCC,
	cin => \dac|Add0~49\,
	combout => \dac|Add0~50_combout\,
	cout => \dac|Add0~51\);

-- Location: FF_X40_Y15_N19
\dac|counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|counter\(25));

-- Location: LCCOMB_X40_Y15_N20
\dac|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Add0~52_combout\ = (\dac|counter\(26) & (\dac|Add0~51\ $ (GND))) # (!\dac|counter\(26) & (!\dac|Add0~51\ & VCC))
-- \dac|Add0~53\ = CARRY((\dac|counter\(26) & !\dac|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dac|counter\(26),
	datad => VCC,
	cin => \dac|Add0~51\,
	combout => \dac|Add0~52_combout\,
	cout => \dac|Add0~53\);

-- Location: FF_X40_Y15_N21
\dac|counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|counter\(26));

-- Location: LCCOMB_X40_Y15_N22
\dac|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Add0~54_combout\ = (\dac|counter\(27) & (!\dac|Add0~53\)) # (!\dac|counter\(27) & ((\dac|Add0~53\) # (GND)))
-- \dac|Add0~55\ = CARRY((!\dac|Add0~53\) # (!\dac|counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dac|counter\(27),
	datad => VCC,
	cin => \dac|Add0~53\,
	combout => \dac|Add0~54_combout\,
	cout => \dac|Add0~55\);

-- Location: FF_X40_Y15_N23
\dac|counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|counter\(27));

-- Location: LCCOMB_X41_Y15_N24
\dac|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Equal0~8_combout\ = (!\dac|counter\(25) & (!\dac|counter\(26) & (!\dac|counter\(24) & !\dac|counter\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|counter\(25),
	datab => \dac|counter\(26),
	datac => \dac|counter\(24),
	datad => \dac|counter\(27),
	combout => \dac|Equal0~8_combout\);

-- Location: LCCOMB_X40_Y15_N24
\dac|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Add0~56_combout\ = (\dac|counter\(28) & (\dac|Add0~55\ $ (GND))) # (!\dac|counter\(28) & (!\dac|Add0~55\ & VCC))
-- \dac|Add0~57\ = CARRY((\dac|counter\(28) & !\dac|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dac|counter\(28),
	datad => VCC,
	cin => \dac|Add0~55\,
	combout => \dac|Add0~56_combout\,
	cout => \dac|Add0~57\);

-- Location: FF_X40_Y15_N25
\dac|counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|counter\(28));

-- Location: LCCOMB_X40_Y15_N26
\dac|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Add0~58_combout\ = (\dac|counter\(29) & (!\dac|Add0~57\)) # (!\dac|counter\(29) & ((\dac|Add0~57\) # (GND)))
-- \dac|Add0~59\ = CARRY((!\dac|Add0~57\) # (!\dac|counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dac|counter\(29),
	datad => VCC,
	cin => \dac|Add0~57\,
	combout => \dac|Add0~58_combout\,
	cout => \dac|Add0~59\);

-- Location: FF_X40_Y15_N27
\dac|counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|counter\(29));

-- Location: LCCOMB_X40_Y15_N28
\dac|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Add0~60_combout\ = (\dac|counter\(30) & (\dac|Add0~59\ $ (GND))) # (!\dac|counter\(30) & (!\dac|Add0~59\ & VCC))
-- \dac|Add0~61\ = CARRY((\dac|counter\(30) & !\dac|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dac|counter\(30),
	datad => VCC,
	cin => \dac|Add0~59\,
	combout => \dac|Add0~60_combout\,
	cout => \dac|Add0~61\);

-- Location: FF_X40_Y15_N29
\dac|counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|counter\(30));

-- Location: LCCOMB_X40_Y15_N30
\dac|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Add0~62_combout\ = \dac|counter\(31) $ (\dac|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dac|counter\(31),
	cin => \dac|Add0~61\,
	combout => \dac|Add0~62_combout\);

-- Location: FF_X40_Y15_N31
\dac|counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|counter\(31));

-- Location: LCCOMB_X41_Y15_N22
\dac|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Equal0~9_combout\ = (!\dac|counter\(31) & (!\dac|counter\(30) & (!\dac|counter\(29) & !\dac|counter\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|counter\(31),
	datab => \dac|counter\(30),
	datac => \dac|counter\(29),
	datad => \dac|counter\(28),
	combout => \dac|Equal0~9_combout\);

-- Location: LCCOMB_X41_Y16_N22
\dac|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Equal0~0_combout\ = (!\dac|counter\(1) & (!\dac|counter\(3) & (!\dac|counter\(2) & !\dac|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|counter\(1),
	datab => \dac|counter\(3),
	datac => \dac|counter\(2),
	datad => \dac|counter\(0),
	combout => \dac|Equal0~0_combout\);

-- Location: LCCOMB_X41_Y16_N24
\dac|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Equal0~1_combout\ = (!\dac|counter\(5) & (\dac|counter\(4) & (\dac|counter\(7) & !\dac|counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|counter\(5),
	datab => \dac|counter\(4),
	datac => \dac|counter\(7),
	datad => \dac|counter\(6),
	combout => \dac|Equal0~1_combout\);

-- Location: LCCOMB_X41_Y16_N30
\dac|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Equal0~2_combout\ = (!\dac|counter\(8) & (!\dac|counter\(10) & (!\dac|counter\(11) & !\dac|counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|counter\(8),
	datab => \dac|counter\(10),
	datac => \dac|counter\(11),
	datad => \dac|counter\(9),
	combout => \dac|Equal0~2_combout\);

-- Location: LCCOMB_X41_Y16_N18
\dac|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Equal0~3_combout\ = (\dac|counter\(14) & (\dac|counter\(15) & (!\dac|counter\(13) & \dac|counter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|counter\(14),
	datab => \dac|counter\(15),
	datac => \dac|counter\(13),
	datad => \dac|counter\(12),
	combout => \dac|Equal0~3_combout\);

-- Location: LCCOMB_X41_Y16_N8
\dac|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Equal0~4_combout\ = (\dac|Equal0~0_combout\ & (\dac|Equal0~1_combout\ & (\dac|Equal0~2_combout\ & \dac|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|Equal0~0_combout\,
	datab => \dac|Equal0~1_combout\,
	datac => \dac|Equal0~2_combout\,
	datad => \dac|Equal0~3_combout\,
	combout => \dac|Equal0~4_combout\);

-- Location: LCCOMB_X41_Y15_N0
\dac|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Equal0~10_combout\ = (\dac|Equal0~7_combout\ & (\dac|Equal0~8_combout\ & (\dac|Equal0~9_combout\ & \dac|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|Equal0~7_combout\,
	datab => \dac|Equal0~8_combout\,
	datac => \dac|Equal0~9_combout\,
	datad => \dac|Equal0~4_combout\,
	combout => \dac|Equal0~10_combout\);

-- Location: LCCOMB_X41_Y15_N12
\dac|scl_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|scl_int~0_combout\ = \dac|scl_int~q\ $ (\dac|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dac|scl_int~q\,
	datad => \dac|Equal0~10_combout\,
	combout => \dac|scl_int~0_combout\);

-- Location: FF_X41_Y15_N13
\dac|scl_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|scl_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|scl_int~q\);

-- Location: LCCOMB_X45_Y29_N16
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

-- Location: FF_X45_Y29_N17
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

-- Location: LCCOMB_X49_Y30_N22
\adc|spi_driver|ss_n~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|ss_n~2_combout\ = ((!\adc|spi_driver|ss_n\(0) & !\adc|spi_driver|clk_ratio\(0))) # (!\adc|spi_driver|state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|ss_n\(0),
	datab => \adc|spi_driver|state~q\,
	datad => \adc|spi_driver|clk_ratio\(0),
	combout => \adc|spi_driver|ss_n~2_combout\);

-- Location: LCCOMB_X49_Y30_N2
\adc|spi_driver|ss_n~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|ss_n~3_combout\ = (!\adc|spi_driver|ss_n~2_combout\ & (((\adc|spi_driver|Equal3~0_combout\) # (!\adc|spi_driver|Equal1~10_combout\)) # (!\adc|spi_driver|clk_toggles\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|clk_toggles\(0),
	datab => \adc|spi_driver|Equal3~0_combout\,
	datac => \adc|spi_driver|ss_n~2_combout\,
	datad => \adc|spi_driver|Equal1~10_combout\,
	combout => \adc|spi_driver|ss_n~3_combout\);

-- Location: FF_X49_Y30_N3
\adc|spi_driver|ss_n[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|ss_n~3_combout\,
	clrn => \adc|reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|ss_n\(0));

-- Location: LCCOMB_X49_Y30_N8
\adc|spi_driver|sclk~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|sclk~0_combout\ = (!\adc|spi_driver|clk_toggles\(1) & (!\adc|spi_driver|clk_toggles\(2) & !\adc|spi_driver|clk_toggles\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|clk_toggles\(1),
	datac => \adc|spi_driver|clk_toggles\(2),
	datad => \adc|spi_driver|clk_toggles\(0),
	combout => \adc|spi_driver|sclk~0_combout\);

-- Location: LCCOMB_X49_Y30_N26
\adc|spi_driver|sclk~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|sclk~1_combout\ = (\adc|spi_driver|ss_n\(0) & ((\adc|spi_driver|sclk~0_combout\) # ((!\adc|spi_driver|clk_toggles\(4)) # (!\adc|spi_driver|clk_toggles\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|ss_n\(0),
	datab => \adc|spi_driver|sclk~0_combout\,
	datac => \adc|spi_driver|clk_toggles\(3),
	datad => \adc|spi_driver|clk_toggles\(4),
	combout => \adc|spi_driver|sclk~1_combout\);

-- Location: LCCOMB_X49_Y30_N16
\adc|spi_driver|sclk~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|sclk~2_combout\ = (\adc|reset~q\ & ((\adc|spi_driver|state~q\ & (\adc|spi_driver|sclk~1_combout\)) # (!\adc|spi_driver|state~q\ & ((\adc|enable~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|sclk~1_combout\,
	datab => \adc|reset~q\,
	datac => \adc|enable~q\,
	datad => \adc|spi_driver|state~q\,
	combout => \adc|spi_driver|sclk~2_combout\);

-- Location: LCCOMB_X49_Y30_N4
\adc|spi_driver|sclk~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|sclk~3_combout\ = (\adc|spi_driver|sclk~2_combout\ & (\adc|spi_driver|state~q\ & (\adc|spi_driver|Equal1~10_combout\ $ (\adc|spi_driver|sclk~q\)))) # (!\adc|spi_driver|sclk~2_combout\ & (((\adc|spi_driver|sclk~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|Equal1~10_combout\,
	datab => \adc|spi_driver|state~q\,
	datac => \adc|spi_driver|sclk~q\,
	datad => \adc|spi_driver|sclk~2_combout\,
	combout => \adc|spi_driver|sclk~3_combout\);

-- Location: FF_X49_Y30_N5
\adc|spi_driver|sclk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|sclk~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|sclk~q\);

-- Location: IOIBUF_X49_Y34_N1
\ADC_SDAT~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_SDAT,
	o => \ADC_SDAT~input_o\);

-- Location: LCCOMB_X48_Y30_N30
\adc|spi_driver|rx_buffer[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|rx_buffer[0]~0_combout\ = (\adc|spi_driver|clk_toggles\(4) & (\adc|spi_driver|clk_ratio\(0) & ((!\adc|spi_driver|clk_toggles\(3))))) # (!\adc|spi_driver|clk_toggles\(4) & ((\adc|spi_driver|clk_ratio\(0)) # ((\adc|spi_driver|sclk~0_combout\ 
-- & !\adc|spi_driver|clk_toggles\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|clk_toggles\(4),
	datab => \adc|spi_driver|clk_ratio\(0),
	datac => \adc|spi_driver|sclk~0_combout\,
	datad => \adc|spi_driver|clk_toggles\(3),
	combout => \adc|spi_driver|rx_buffer[0]~0_combout\);

-- Location: LCCOMB_X48_Y30_N20
\adc|spi_driver|rx_buffer[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|rx_buffer[0]~1_combout\ = (\adc|spi_driver|ss_n\(0) & (\adc|spi_driver|state~q\ & \adc|spi_driver|Equal1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|ss_n\(0),
	datab => \adc|spi_driver|state~q\,
	datad => \adc|spi_driver|Equal1~10_combout\,
	combout => \adc|spi_driver|rx_buffer[0]~1_combout\);

-- Location: LCCOMB_X47_Y30_N2
\adc|spi_driver|rx_buffer[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|rx_buffer[0]~2_combout\ = (\adc|spi_driver|rx_buffer[0]~0_combout\ & (!\adc|spi_driver|assert_data~q\ & (\adc|spi_driver|rx_buffer[0]~1_combout\ & \adc|reset~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|rx_buffer[0]~0_combout\,
	datab => \adc|spi_driver|assert_data~q\,
	datac => \adc|spi_driver|rx_buffer[0]~1_combout\,
	datad => \adc|reset~q\,
	combout => \adc|spi_driver|rx_buffer[0]~2_combout\);

-- Location: FF_X49_Y30_N23
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
	ena => \adc|spi_driver|rx_buffer[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_buffer\(0));

-- Location: LCCOMB_X46_Y30_N4
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

-- Location: LCCOMB_X48_Y30_N10
\adc|spi_driver|rx_data[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|rx_data[0]~2_combout\ = (\adc|spi_driver|clk_toggles\(0) & (\adc|spi_driver|state~q\ & (!\adc|spi_driver|Equal3~0_combout\ & \adc|spi_driver|Equal1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|clk_toggles\(0),
	datab => \adc|spi_driver|state~q\,
	datac => \adc|spi_driver|Equal3~0_combout\,
	datad => \adc|spi_driver|Equal1~10_combout\,
	combout => \adc|spi_driver|rx_data[0]~2_combout\);

-- Location: FF_X46_Y30_N5
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
	ena => \adc|spi_driver|rx_data[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_data\(0));

-- Location: LCCOMB_X46_Y30_N24
\adc_data_out[0]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_data_out[0]~reg0feeder_combout\ = \adc|spi_driver|rx_data\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc|spi_driver|rx_data\(0),
	combout => \adc_data_out[0]~reg0feeder_combout\);

-- Location: FF_X46_Y30_N25
\adc_data_out[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vclock|virt_clk~clkctrl_outclk\,
	d => \adc_data_out[0]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_data_out[0]~reg0_q\);

-- Location: LCCOMB_X49_Y30_N28
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

-- Location: FF_X49_Y30_N29
\adc|spi_driver|rx_buffer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|rx_buffer[1]~feeder_combout\,
	ena => \adc|spi_driver|rx_buffer[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_buffer\(1));

-- Location: LCCOMB_X46_Y30_N26
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

-- Location: FF_X46_Y30_N27
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
	ena => \adc|spi_driver|rx_data[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_data\(1));

-- Location: LCCOMB_X46_Y30_N6
\adc_data_out[1]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_data_out[1]~reg0feeder_combout\ = \adc|spi_driver|rx_data\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc|spi_driver|rx_data\(1),
	combout => \adc_data_out[1]~reg0feeder_combout\);

-- Location: FF_X46_Y30_N7
\adc_data_out[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vclock|virt_clk~clkctrl_outclk\,
	d => \adc_data_out[1]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_data_out[1]~reg0_q\);

-- Location: LCCOMB_X49_Y30_N14
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

-- Location: FF_X49_Y30_N15
\adc|spi_driver|rx_buffer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|rx_buffer[2]~feeder_combout\,
	ena => \adc|spi_driver|rx_buffer[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_buffer\(2));

-- Location: FF_X44_Y30_N21
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
	ena => \adc|spi_driver|rx_data[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_data\(2));

-- Location: FF_X44_Y30_N9
\adc_data_out[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vclock|virt_clk~clkctrl_outclk\,
	asdata => \adc|spi_driver|rx_data\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_data_out[2]~reg0_q\);

-- Location: LCCOMB_X47_Y30_N26
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

-- Location: FF_X47_Y30_N27
\adc|spi_driver|rx_buffer[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|rx_buffer[3]~feeder_combout\,
	ena => \adc|spi_driver|rx_buffer[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_buffer\(3));

-- Location: LCCOMB_X41_Y30_N8
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

-- Location: FF_X41_Y30_N9
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
	ena => \adc|spi_driver|rx_data[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_data\(3));

-- Location: LCCOMB_X41_Y30_N0
\adc_data_out[3]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_data_out[3]~reg0feeder_combout\ = \adc|spi_driver|rx_data\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc|spi_driver|rx_data\(3),
	combout => \adc_data_out[3]~reg0feeder_combout\);

-- Location: FF_X41_Y30_N1
\adc_data_out[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vclock|virt_clk~clkctrl_outclk\,
	d => \adc_data_out[3]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_data_out[3]~reg0_q\);

-- Location: LCCOMB_X47_Y30_N0
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

-- Location: FF_X47_Y30_N1
\adc|spi_driver|rx_buffer[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|rx_buffer[4]~feeder_combout\,
	ena => \adc|spi_driver|rx_buffer[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_buffer\(4));

-- Location: LCCOMB_X41_Y30_N30
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

-- Location: FF_X41_Y30_N31
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
	ena => \adc|spi_driver|rx_data[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_data\(4));

-- Location: LCCOMB_X41_Y30_N14
\adc_data_out[4]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_data_out[4]~reg0feeder_combout\ = \adc|spi_driver|rx_data\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc|spi_driver|rx_data\(4),
	combout => \adc_data_out[4]~reg0feeder_combout\);

-- Location: FF_X41_Y30_N15
\adc_data_out[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vclock|virt_clk~clkctrl_outclk\,
	d => \adc_data_out[4]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_data_out[4]~reg0_q\);

-- Location: LCCOMB_X47_Y30_N6
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

-- Location: FF_X47_Y30_N7
\adc|spi_driver|rx_buffer[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|rx_buffer[5]~feeder_combout\,
	ena => \adc|spi_driver|rx_buffer[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_buffer\(5));

-- Location: FF_X44_Y30_N13
\adc|spi_driver|rx_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \adc|spi_driver|rx_buffer\(5),
	clrn => \adc|reset~q\,
	sload => VCC,
	ena => \adc|spi_driver|rx_data[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_data\(5));

-- Location: FF_X44_Y30_N25
\adc_data_out[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vclock|virt_clk~clkctrl_outclk\,
	asdata => \adc|spi_driver|rx_data\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_data_out[5]~reg0_q\);

-- Location: LCCOMB_X47_Y30_N22
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

-- Location: FF_X47_Y30_N23
\adc|spi_driver|rx_buffer[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|rx_buffer[6]~feeder_combout\,
	ena => \adc|spi_driver|rx_buffer[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_buffer\(6));

-- Location: FF_X44_Y30_N31
\adc|spi_driver|rx_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \adc|spi_driver|rx_buffer\(6),
	clrn => \adc|reset~q\,
	sload => VCC,
	ena => \adc|spi_driver|rx_data[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_data\(6));

-- Location: FF_X44_Y30_N19
\adc_data_out[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vclock|virt_clk~clkctrl_outclk\,
	asdata => \adc|spi_driver|rx_data\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_data_out[6]~reg0_q\);

-- Location: LCCOMB_X47_Y30_N4
\adc|spi_driver|rx_buffer[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|rx_buffer[7]~feeder_combout\ = \adc|spi_driver|rx_buffer\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc|spi_driver|rx_buffer\(6),
	combout => \adc|spi_driver|rx_buffer[7]~feeder_combout\);

-- Location: FF_X47_Y30_N5
\adc|spi_driver|rx_buffer[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|rx_buffer[7]~feeder_combout\,
	ena => \adc|spi_driver|rx_buffer[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_buffer\(7));

-- Location: LCCOMB_X46_Y30_N28
\adc|spi_driver|rx_data[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|rx_data[7]~feeder_combout\ = \adc|spi_driver|rx_buffer\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc|spi_driver|rx_buffer\(7),
	combout => \adc|spi_driver|rx_data[7]~feeder_combout\);

-- Location: FF_X46_Y30_N29
\adc|spi_driver|rx_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|rx_data[7]~feeder_combout\,
	clrn => \adc|reset~q\,
	ena => \adc|spi_driver|rx_data[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_data\(7));

-- Location: LCCOMB_X46_Y30_N12
\adc_data_out[7]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_data_out[7]~reg0feeder_combout\ = \adc|spi_driver|rx_data\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc|spi_driver|rx_data\(7),
	combout => \adc_data_out[7]~reg0feeder_combout\);

-- Location: FF_X46_Y30_N13
\adc_data_out[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vclock|virt_clk~clkctrl_outclk\,
	d => \adc_data_out[7]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_data_out[7]~reg0_q\);

-- Location: LCCOMB_X47_Y30_N30
\adc|spi_driver|rx_buffer[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|rx_buffer[8]~feeder_combout\ = \adc|spi_driver|rx_buffer\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc|spi_driver|rx_buffer\(7),
	combout => \adc|spi_driver|rx_buffer[8]~feeder_combout\);

-- Location: FF_X47_Y30_N31
\adc|spi_driver|rx_buffer[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|rx_buffer[8]~feeder_combout\,
	ena => \adc|spi_driver|rx_buffer[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_buffer\(8));

-- Location: FF_X46_Y30_N31
\adc|spi_driver|rx_data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \adc|spi_driver|rx_buffer\(8),
	clrn => \adc|reset~q\,
	sload => VCC,
	ena => \adc|spi_driver|rx_data[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_data\(8));

-- Location: LCCOMB_X46_Y30_N22
\adc_data_out[8]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_data_out[8]~reg0feeder_combout\ = \adc|spi_driver|rx_data\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc|spi_driver|rx_data\(8),
	combout => \adc_data_out[8]~reg0feeder_combout\);

-- Location: FF_X46_Y30_N23
\adc_data_out[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vclock|virt_clk~clkctrl_outclk\,
	d => \adc_data_out[8]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_data_out[8]~reg0_q\);

-- Location: LCCOMB_X47_Y30_N20
\adc|spi_driver|rx_buffer[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|rx_buffer[9]~feeder_combout\ = \adc|spi_driver|rx_buffer\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc|spi_driver|rx_buffer\(8),
	combout => \adc|spi_driver|rx_buffer[9]~feeder_combout\);

-- Location: FF_X47_Y30_N21
\adc|spi_driver|rx_buffer[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|rx_buffer[9]~feeder_combout\,
	ena => \adc|spi_driver|rx_buffer[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_buffer\(9));

-- Location: LCCOMB_X46_Y30_N20
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

-- Location: FF_X46_Y30_N21
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
	ena => \adc|spi_driver|rx_data[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_data\(9));

-- Location: LCCOMB_X46_Y30_N16
\adc_data_out[9]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_data_out[9]~reg0feeder_combout\ = \adc|spi_driver|rx_data\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc|spi_driver|rx_data\(9),
	combout => \adc_data_out[9]~reg0feeder_combout\);

-- Location: FF_X46_Y30_N17
\adc_data_out[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vclock|virt_clk~clkctrl_outclk\,
	d => \adc_data_out[9]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_data_out[9]~reg0_q\);

-- Location: LCCOMB_X47_Y30_N18
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

-- Location: FF_X47_Y30_N19
\adc|spi_driver|rx_buffer[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|rx_buffer[10]~feeder_combout\,
	ena => \adc|spi_driver|rx_buffer[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_buffer\(10));

-- Location: LCCOMB_X46_Y30_N14
\adc|spi_driver|rx_data[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|rx_data[10]~feeder_combout\ = \adc|spi_driver|rx_buffer\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc|spi_driver|rx_buffer\(10),
	combout => \adc|spi_driver|rx_data[10]~feeder_combout\);

-- Location: FF_X46_Y30_N15
\adc|spi_driver|rx_data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|rx_data[10]~feeder_combout\,
	clrn => \adc|reset~q\,
	ena => \adc|spi_driver|rx_data[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_data\(10));

-- Location: LCCOMB_X46_Y30_N10
\adc_data_out[10]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_data_out[10]~reg0feeder_combout\ = \adc|spi_driver|rx_data\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc|spi_driver|rx_data\(10),
	combout => \adc_data_out[10]~reg0feeder_combout\);

-- Location: FF_X46_Y30_N11
\adc_data_out[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vclock|virt_clk~clkctrl_outclk\,
	d => \adc_data_out[10]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_data_out[10]~reg0_q\);

-- Location: LCCOMB_X47_Y30_N24
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

-- Location: FF_X47_Y30_N25
\adc|spi_driver|rx_buffer[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \adc|spi_driver|rx_buffer[11]~feeder_combout\,
	ena => \adc|spi_driver|rx_buffer[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_buffer\(11));

-- Location: LCCOMB_X46_Y30_N8
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

-- Location: FF_X46_Y30_N9
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
	ena => \adc|spi_driver|rx_data[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_data\(11));

-- Location: LCCOMB_X46_Y30_N0
\adc_data_out[11]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_data_out[11]~reg0feeder_combout\ = \adc|spi_driver|rx_data\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc|spi_driver|rx_data\(11),
	combout => \adc_data_out[11]~reg0feeder_combout\);

-- Location: FF_X46_Y30_N1
\adc_data_out[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vclock|virt_clk~clkctrl_outclk\,
	d => \adc_data_out[11]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_data_out[11]~reg0_q\);

-- Location: IOIBUF_X20_Y0_N1
\sda~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sda,
	o => \sda~input_o\);

ww_scl <= \scl~output_o\;

ww_ADC_SADDR <= \ADC_SADDR~output_o\;

ww_ADC_CS_N <= \ADC_CS_N~output_o\;

ww_ADC_SCLK <= \ADC_SCLK~output_o\;

ww_adc_data_out(0) <= \adc_data_out[0]~output_o\;

ww_adc_data_out(1) <= \adc_data_out[1]~output_o\;

ww_adc_data_out(2) <= \adc_data_out[2]~output_o\;

ww_adc_data_out(3) <= \adc_data_out[3]~output_o\;

ww_adc_data_out(4) <= \adc_data_out[4]~output_o\;

ww_adc_data_out(5) <= \adc_data_out[5]~output_o\;

ww_adc_data_out(6) <= \adc_data_out[6]~output_o\;

ww_adc_data_out(7) <= \adc_data_out[7]~output_o\;

ww_adc_data_out(8) <= \adc_data_out[8]~output_o\;

ww_adc_data_out(9) <= \adc_data_out[9]~output_o\;

ww_adc_data_out(10) <= \adc_data_out[10]~output_o\;

ww_adc_data_out(11) <= \adc_data_out[11]~output_o\;

ww_sda <= \sda~output_o\;
END structure;


