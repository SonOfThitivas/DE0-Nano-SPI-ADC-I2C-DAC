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

-- DATE "10/23/2024 20:03:27"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	top_level IS
    PORT (
	CLOCK_50 : IN std_logic;
	ADC_SDAT : IN std_logic;
	ADC_SADDR : OUT std_logic;
	ADC_CS_N : OUT std_logic;
	ADC_SCLK : OUT std_logic;
	adc_data_out : OUT std_logic_vector(15 DOWNTO 0)
	);
END top_level;

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
SIGNAL ww_ADC_SDAT : std_logic;
SIGNAL ww_ADC_SADDR : std_logic;
SIGNAL ww_ADC_CS_N : std_logic;
SIGNAL ww_ADC_SCLK : std_logic;
SIGNAL ww_adc_data_out : std_logic_vector(15 DOWNTO 0);
SIGNAL \ADC_SADDR~output_o\ : std_logic;
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
SIGNAL \adc_data_out[12]~output_o\ : std_logic;
SIGNAL \adc_data_out[13]~output_o\ : std_logic;
SIGNAL \adc_data_out[14]~output_o\ : std_logic;
SIGNAL \adc_data_out[15]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \adc|spi_driver|clk_toggles[0]~6_combout\ : std_logic;
SIGNAL \vclock|vclk_cnt[0]~3_combout\ : std_logic;
SIGNAL \vclock|vclk_cnt~2_combout\ : std_logic;
SIGNAL \vclock|Add0~4_combout\ : std_logic;
SIGNAL \vclock|Add0~3_combout\ : std_logic;
SIGNAL \vclock|vclk_cnt~1_combout\ : std_logic;
SIGNAL \vclock|Add0~0_combout\ : std_logic;
SIGNAL \vclock|Add0~1_combout\ : std_logic;
SIGNAL \vclock|Add0~2_combout\ : std_logic;
SIGNAL \vclock|vclk_cnt~0_combout\ : std_logic;
SIGNAL \vclock|Equal0~0_combout\ : std_logic;
SIGNAL \vclock|Equal0~1_combout\ : std_logic;
SIGNAL \vclock|virt_clk~0_combout\ : std_logic;
SIGNAL \vclock|virt_clk~q\ : std_logic;
SIGNAL \adc|init_delay[0]~0_combout\ : std_logic;
SIGNAL \adc|spi_comm_delay~8_combout\ : std_logic;
SIGNAL \adc_run~0_combout\ : std_logic;
SIGNAL \adc|Add0~1_combout\ : std_logic;
SIGNAL \adc|Selector0~1_combout\ : std_logic;
SIGNAL \adc|state.ready~1_combout\ : std_logic;
SIGNAL \adc|state.ready~reg0_q\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \sleep[0]~20_combout\ : std_logic;
SIGNAL \sleep[1]~10_combout\ : std_logic;
SIGNAL \sleep[1]~11\ : std_logic;
SIGNAL \sleep[2]~12_combout\ : std_logic;
SIGNAL \sleep[2]~13\ : std_logic;
SIGNAL \sleep[3]~14_combout\ : std_logic;
SIGNAL \sleep[3]~15\ : std_logic;
SIGNAL \sleep[4]~16_combout\ : std_logic;
SIGNAL \sleep[4]~17\ : std_logic;
SIGNAL \sleep[5]~18_combout\ : std_logic;
SIGNAL \adc_run~1_combout\ : std_logic;
SIGNAL \adc_run~2_combout\ : std_logic;
SIGNAL \sleep[5]~19\ : std_logic;
SIGNAL \sleep[6]~21_combout\ : std_logic;
SIGNAL \sleep[6]~22\ : std_logic;
SIGNAL \sleep[7]~23_combout\ : std_logic;
SIGNAL \sleep[7]~24\ : std_logic;
SIGNAL \sleep[8]~25_combout\ : std_logic;
SIGNAL \sleep[8]~26\ : std_logic;
SIGNAL \sleep[9]~27_combout\ : std_logic;
SIGNAL \adc_run~3_combout\ : std_logic;
SIGNAL \sleep[9]~28\ : std_logic;
SIGNAL \sleep[10]~29_combout\ : std_logic;
SIGNAL \adc_run~4_combout\ : std_logic;
SIGNAL \adc_run~q\ : std_logic;
SIGNAL \adc|state.execute~0_combout\ : std_logic;
SIGNAL \adc|state.execute~reg0_q\ : std_logic;
SIGNAL \adc|Add1~2_combout\ : std_logic;
SIGNAL \adc|Equal2~0_combout\ : std_logic;
SIGNAL \adc|Add1~1_combout\ : std_logic;
SIGNAL \adc|Add1~4_combout\ : std_logic;
SIGNAL \adc|Add1~3_combout\ : std_logic;
SIGNAL \adc|Equal2~1_combout\ : std_logic;
SIGNAL \adc|spi_comm_delay~7_combout\ : std_logic;
SIGNAL \adc|spi_comm_delay~6_combout\ : std_logic;
SIGNAL \adc|Add1~0_combout\ : std_logic;
SIGNAL \adc|Selector0~0_combout\ : std_logic;
SIGNAL \adc|state.ready~0_combout\ : std_logic;
SIGNAL \adc|state.initialize~0_combout\ : std_logic;
SIGNAL \adc|state.initialize~reg0_q\ : std_logic;
SIGNAL \adc|Add0~0_combout\ : std_logic;
SIGNAL \adc|reset~0_combout\ : std_logic;
SIGNAL \adc|reset~1_combout\ : std_logic;
SIGNAL \adc|reset~q\ : std_logic;
SIGNAL \adc|enable~0_combout\ : std_logic;
SIGNAL \adc|enable~1_combout\ : std_logic;
SIGNAL \adc|enable~2_combout\ : std_logic;
SIGNAL \adc|enable~q\ : std_logic;
SIGNAL \adc|spi_driver|clk_ratio[0]~0_combout\ : std_logic;
SIGNAL \adc|spi_driver|Add5~0_combout\ : std_logic;
SIGNAL \adc|spi_driver|Add5~1\ : std_logic;
SIGNAL \adc|spi_driver|Add5~2_combout\ : std_logic;
SIGNAL \adc|spi_driver|count~33_combout\ : std_logic;
SIGNAL \adc|spi_driver|count[30]~2_combout\ : std_logic;
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
SIGNAL \adc|spi_driver|Equal1~6_combout\ : std_logic;
SIGNAL \adc|spi_driver|Equal1~7_combout\ : std_logic;
SIGNAL \adc|spi_driver|Equal1~8_combout\ : std_logic;
SIGNAL \adc|spi_driver|Equal1~9_combout\ : std_logic;
SIGNAL \adc|spi_driver|count[17]~0_combout\ : std_logic;
SIGNAL \adc|spi_driver|count~1_combout\ : std_logic;
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
SIGNAL \adc|spi_driver|Add5~61\ : std_logic;
SIGNAL \adc|spi_driver|Add5~62_combout\ : std_logic;
SIGNAL \adc|spi_driver|count~4_combout\ : std_logic;
SIGNAL \adc|spi_driver|Equal1~0_combout\ : std_logic;
SIGNAL \adc|spi_driver|Equal1~1_combout\ : std_logic;
SIGNAL \adc|spi_driver|Equal1~2_combout\ : std_logic;
SIGNAL \adc|spi_driver|Equal1~3_combout\ : std_logic;
SIGNAL \adc|spi_driver|Equal1~4_combout\ : std_logic;
SIGNAL \adc|spi_driver|Equal1~10_combout\ : std_logic;
SIGNAL \adc|spi_driver|clk_toggles[5]~10_combout\ : std_logic;
SIGNAL \adc|spi_driver|clk_toggles[0]~7\ : std_logic;
SIGNAL \adc|spi_driver|clk_toggles[1]~8_combout\ : std_logic;
SIGNAL \adc|spi_driver|clk_toggles[1]~9\ : std_logic;
SIGNAL \adc|spi_driver|clk_toggles[2]~11_combout\ : std_logic;
SIGNAL \adc|spi_driver|clk_toggles[2]~12\ : std_logic;
SIGNAL \adc|spi_driver|clk_toggles[3]~13_combout\ : std_logic;
SIGNAL \adc|spi_driver|clk_toggles[3]~14\ : std_logic;
SIGNAL \adc|spi_driver|clk_toggles[4]~15_combout\ : std_logic;
SIGNAL \adc|spi_driver|Equal3~0_combout\ : std_logic;
SIGNAL \adc|spi_driver|clk_toggles[4]~16\ : std_logic;
SIGNAL \adc|spi_driver|clk_toggles[5]~17_combout\ : std_logic;
SIGNAL \adc|spi_driver|mosi~1_combout\ : std_logic;
SIGNAL \adc|spi_driver|busy~0_combout\ : std_logic;
SIGNAL \adc|spi_driver|state~q\ : std_logic;
SIGNAL \adc|spi_driver|assert_data~0_combout\ : std_logic;
SIGNAL \adc|spi_driver|assert_data~q\ : std_logic;
SIGNAL \adc|spi_driver|Equal3~1_combout\ : std_logic;
SIGNAL \adc|spi_driver|LessThan3~0_combout\ : std_logic;
SIGNAL \adc|spi_driver|mosi~2_combout\ : std_logic;
SIGNAL \adc|spi_driver|mosi~3_combout\ : std_logic;
SIGNAL \adc|spi_driver|mosi~4_combout\ : std_logic;
SIGNAL \adc|spi_driver|mosi~en_q\ : std_logic;
SIGNAL \adc|spi_driver|busy~1_combout\ : std_logic;
SIGNAL \adc|spi_driver|busy~q\ : std_logic;
SIGNAL \adc|spi_driver|ss_n~0_combout\ : std_logic;
SIGNAL \adc|spi_driver|ss_n~1_combout\ : std_logic;
SIGNAL \adc|spi_driver|sclk~0_combout\ : std_logic;
SIGNAL \adc|spi_driver|sclk~1_combout\ : std_logic;
SIGNAL \adc|spi_driver|sclk~2_combout\ : std_logic;
SIGNAL \adc|spi_driver|sclk~q\ : std_logic;
SIGNAL \ADC_SDAT~input_o\ : std_logic;
SIGNAL \adc|spi_driver|rx_buffer[0]~0_combout\ : std_logic;
SIGNAL \adc|spi_driver|rx_buffer[0]~1_combout\ : std_logic;
SIGNAL \adc|spi_driver|rx_buffer[0]~2_combout\ : std_logic;
SIGNAL \adc|spi_driver|rx_data[0]~0_combout\ : std_logic;
SIGNAL \adc_data_out[0]~reg0_q\ : std_logic;
SIGNAL \adc_data_out[1]~reg0_q\ : std_logic;
SIGNAL \adc_data_out[2]~reg0_q\ : std_logic;
SIGNAL \adc_data_out[3]~reg0_q\ : std_logic;
SIGNAL \adc_data_out[4]~reg0_q\ : std_logic;
SIGNAL \adc_data_out[5]~reg0_q\ : std_logic;
SIGNAL \adc_data_out[6]~reg0_q\ : std_logic;
SIGNAL \adc_data_out[7]~reg0_q\ : std_logic;
SIGNAL \adc_data_out[8]~reg0_q\ : std_logic;
SIGNAL \adc_data_out[9]~reg0_q\ : std_logic;
SIGNAL \adc_data_out[10]~reg0_q\ : std_logic;
SIGNAL \adc_data_out[11]~reg0_q\ : std_logic;
SIGNAL \adc_data_out[12]~reg0_q\ : std_logic;
SIGNAL \adc_data_out[13]~reg0_q\ : std_logic;
SIGNAL \adc_data_out[14]~reg0_q\ : std_logic;
SIGNAL \adc_data_out[15]~reg0_q\ : std_logic;
SIGNAL \adc|spi_comm_delay\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \adc|spi_driver|clk_toggles\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \adc|spi_driver|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL sleep : std_logic_vector(10 DOWNTO 0);
SIGNAL \adc|init_delay\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \adc|spi_driver|clk_ratio\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \adc|spi_driver|ss_n\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \adc|spi_driver|rx_data\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \adc|spi_driver|rx_buffer\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \vclock|vclk_cnt\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \adc|ALT_INV_state.initialize~reg0_q\ : std_logic;
SIGNAL \adc|spi_driver|ALT_INV_mosi~en_q\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_ADC_SDAT <= ADC_SDAT;
ADC_SADDR <= ww_ADC_SADDR;
ADC_CS_N <= ww_ADC_CS_N;
ADC_SCLK <= ww_ADC_SCLK;
adc_data_out <= ww_adc_data_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\adc|ALT_INV_state.initialize~reg0_q\ <= NOT \adc|state.initialize~reg0_q\;
\adc|spi_driver|ALT_INV_mosi~en_q\ <= NOT \adc|spi_driver|mosi~en_q\;

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

\adc_data_out[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adc_data_out[12]~reg0_q\,
	devoe => ww_devoe,
	o => \adc_data_out[12]~output_o\);

\adc_data_out[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adc_data_out[13]~reg0_q\,
	devoe => ww_devoe,
	o => \adc_data_out[13]~output_o\);

\adc_data_out[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adc_data_out[14]~reg0_q\,
	devoe => ww_devoe,
	o => \adc_data_out[14]~output_o\);

\adc_data_out[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adc_data_out[15]~reg0_q\,
	devoe => ww_devoe,
	o => \adc_data_out[15]~output_o\);

\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

\adc|spi_driver|clk_toggles[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|clk_toggles[0]~6_combout\ = \adc|spi_driver|clk_toggles\(0) $ (VCC)
-- \adc|spi_driver|clk_toggles[0]~7\ = CARRY(\adc|spi_driver|clk_toggles\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|clk_toggles\(0),
	datad => VCC,
	combout => \adc|spi_driver|clk_toggles[0]~6_combout\,
	cout => \adc|spi_driver|clk_toggles[0]~7\);

\vclock|vclk_cnt[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|vclk_cnt[0]~3_combout\ = !\vclock|vclk_cnt\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|vclk_cnt\(0),
	combout => \vclock|vclk_cnt[0]~3_combout\);

\vclock|vclk_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \vclock|vclk_cnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vclock|vclk_cnt\(0));

\vclock|vclk_cnt~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|vclk_cnt~2_combout\ = (\vclock|vclk_cnt\(1) & ((!\vclock|vclk_cnt\(0)))) # (!\vclock|vclk_cnt\(1) & (!\vclock|Equal0~1_combout\ & \vclock|vclk_cnt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vclock|vclk_cnt\(1),
	datac => \vclock|Equal0~1_combout\,
	datad => \vclock|vclk_cnt\(0),
	combout => \vclock|vclk_cnt~2_combout\);

\vclock|vclk_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \vclock|vclk_cnt~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vclock|vclk_cnt\(1));

\vclock|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Add0~4_combout\ = \vclock|vclk_cnt\(2) $ (((\vclock|vclk_cnt\(0) & \vclock|vclk_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vclock|vclk_cnt\(2),
	datac => \vclock|vclk_cnt\(0),
	datad => \vclock|vclk_cnt\(1),
	combout => \vclock|Add0~4_combout\);

\vclock|vclk_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \vclock|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vclock|vclk_cnt\(2));

\vclock|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Add0~3_combout\ = \vclock|vclk_cnt\(3) $ (((\vclock|vclk_cnt\(0) & (\vclock|vclk_cnt\(2) & \vclock|vclk_cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|vclk_cnt\(3),
	datab => \vclock|vclk_cnt\(0),
	datac => \vclock|vclk_cnt\(2),
	datad => \vclock|vclk_cnt\(1),
	combout => \vclock|Add0~3_combout\);

\vclock|vclk_cnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|vclk_cnt~1_combout\ = (\vclock|Add0~3_combout\ & ((!\vclock|Equal0~1_combout\) # (!\vclock|vclk_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Add0~3_combout\,
	datac => \vclock|vclk_cnt\(0),
	datad => \vclock|Equal0~1_combout\,
	combout => \vclock|vclk_cnt~1_combout\);

\vclock|vclk_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \vclock|vclk_cnt~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vclock|vclk_cnt\(3));

\vclock|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Add0~0_combout\ = (\vclock|vclk_cnt\(0) & (\vclock|vclk_cnt\(3) & (\vclock|vclk_cnt\(2) & \vclock|vclk_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|vclk_cnt\(0),
	datab => \vclock|vclk_cnt\(3),
	datac => \vclock|vclk_cnt\(2),
	datad => \vclock|vclk_cnt\(1),
	combout => \vclock|Add0~0_combout\);

\vclock|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Add0~1_combout\ = \vclock|vclk_cnt\(4) $ (\vclock|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vclock|vclk_cnt\(4),
	datad => \vclock|Add0~0_combout\,
	combout => \vclock|Add0~1_combout\);

\vclock|vclk_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \vclock|Add0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vclock|vclk_cnt\(4));

\vclock|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Add0~2_combout\ = \vclock|vclk_cnt\(5) $ (((\vclock|vclk_cnt\(4) & \vclock|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vclock|vclk_cnt\(5),
	datac => \vclock|vclk_cnt\(4),
	datad => \vclock|Add0~0_combout\,
	combout => \vclock|Add0~2_combout\);

\vclock|vclk_cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|vclk_cnt~0_combout\ = (\vclock|Add0~2_combout\ & ((!\vclock|Equal0~1_combout\) # (!\vclock|vclk_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|Add0~2_combout\,
	datac => \vclock|vclk_cnt\(0),
	datad => \vclock|Equal0~1_combout\,
	combout => \vclock|vclk_cnt~0_combout\);

\vclock|vclk_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \vclock|vclk_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vclock|vclk_cnt\(5));

\vclock|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Equal0~0_combout\ = (!\vclock|vclk_cnt\(2) & (\vclock|vclk_cnt\(0) $ (\vclock|vclk_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|vclk_cnt\(0),
	datab => \vclock|vclk_cnt\(2),
	datac => \vclock|vclk_cnt\(1),
	combout => \vclock|Equal0~0_combout\);

\vclock|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|Equal0~1_combout\ = (!\vclock|vclk_cnt\(4) & (\vclock|vclk_cnt\(5) & (\vclock|vclk_cnt\(3) & \vclock|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vclock|vclk_cnt\(4),
	datab => \vclock|vclk_cnt\(5),
	datac => \vclock|vclk_cnt\(3),
	datad => \vclock|Equal0~0_combout\,
	combout => \vclock|Equal0~1_combout\);

\vclock|virt_clk~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vclock|virt_clk~0_combout\ = \vclock|virt_clk~q\ $ (((\vclock|vclk_cnt\(0) & \vclock|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vclock|virt_clk~q\,
	datac => \vclock|vclk_cnt\(0),
	datad => \vclock|Equal0~1_combout\,
	combout => \vclock|virt_clk~0_combout\);

\vclock|virt_clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \vclock|virt_clk~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vclock|virt_clk~q\);

\adc|init_delay[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|init_delay[0]~0_combout\ = !\adc|init_delay\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|init_delay\(0),
	combout => \adc|init_delay[0]~0_combout\);

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

\adc_run~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_run~0_combout\ = (\adc_run~q\ & !\adc|state.execute~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_run~q\,
	datad => \adc|state.execute~reg0_q\,
	combout => \adc_run~0_combout\);

\adc|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|Add0~1_combout\ = \adc|init_delay\(0) $ (\adc|init_delay\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc|init_delay\(0),
	datad => \adc|init_delay\(1),
	combout => \adc|Add0~1_combout\);

\adc|init_delay[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vclock|virt_clk~q\,
	d => \adc|Add0~1_combout\,
	ena => \adc|ALT_INV_state.initialize~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|init_delay\(1));

\adc|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|Selector0~1_combout\ = (\adc|init_delay\(2) & (\adc|init_delay\(0) & (\adc|init_delay\(1) & !\adc|state.execute~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|init_delay\(2),
	datab => \adc|init_delay\(0),
	datac => \adc|init_delay\(1),
	datad => \adc|state.execute~reg0_q\,
	combout => \adc|Selector0~1_combout\);

\adc|state.ready~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|state.ready~1_combout\ = (\adc|state.ready~reg0_q\ & (((!\adc_run~q\)))) # (!\adc|state.ready~reg0_q\ & ((\adc|Selector0~0_combout\) # ((\adc|Selector0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|Selector0~0_combout\,
	datab => \adc|Selector0~1_combout\,
	datac => \adc|state.ready~reg0_q\,
	datad => \adc_run~q\,
	combout => \adc|state.ready~1_combout\);

\adc|state.ready~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vclock|virt_clk~q\,
	d => \adc|state.ready~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|state.ready~reg0_q\);

\process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (\adc|state.ready~reg0_q\ & !\adc_run~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|state.ready~reg0_q\,
	datad => \adc_run~q\,
	combout => \process_0~0_combout\);

\sleep[0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \sleep[0]~20_combout\ = sleep(0) $ (((!\adc_run~q\ & \adc|state.ready~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sleep(0),
	datab => \adc_run~q\,
	datad => \adc|state.ready~reg0_q\,
	combout => \sleep[0]~20_combout\);

\sleep[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vclock|virt_clk~q\,
	d => \sleep[0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sleep(0));

\sleep[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sleep[1]~10_combout\ = (sleep(1) & (sleep(0) $ (VCC))) # (!sleep(1) & (sleep(0) & VCC))
-- \sleep[1]~11\ = CARRY((sleep(1) & sleep(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sleep(1),
	datab => sleep(0),
	datad => VCC,
	combout => \sleep[1]~10_combout\,
	cout => \sleep[1]~11\);

\sleep[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vclock|virt_clk~q\,
	d => \sleep[1]~10_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sleep(1));

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

\sleep[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vclock|virt_clk~q\,
	d => \sleep[2]~12_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sleep(2));

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

\sleep[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vclock|virt_clk~q\,
	d => \sleep[3]~14_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sleep(3));

\sleep[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sleep[4]~16_combout\ = (sleep(4) & (!\sleep[3]~15\)) # (!sleep(4) & ((\sleep[3]~15\) # (GND)))
-- \sleep[4]~17\ = CARRY((!\sleep[3]~15\) # (!sleep(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sleep(4),
	datad => VCC,
	cin => \sleep[3]~15\,
	combout => \sleep[4]~16_combout\,
	cout => \sleep[4]~17\);

\sleep[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vclock|virt_clk~q\,
	d => \sleep[4]~16_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sleep(4));

\sleep[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \sleep[5]~18_combout\ = (sleep(5) & (\sleep[4]~17\ $ (GND))) # (!sleep(5) & (!\sleep[4]~17\ & VCC))
-- \sleep[5]~19\ = CARRY((sleep(5) & !\sleep[4]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sleep(5),
	datad => VCC,
	cin => \sleep[4]~17\,
	combout => \sleep[5]~18_combout\,
	cout => \sleep[5]~19\);

\sleep[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vclock|virt_clk~q\,
	d => \sleep[5]~18_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sleep(5));

\adc_run~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_run~1_combout\ = (!sleep(2) & (!sleep(3) & (!sleep(4) & !sleep(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sleep(2),
	datab => sleep(3),
	datac => sleep(4),
	datad => sleep(5),
	combout => \adc_run~1_combout\);

\adc_run~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_run~2_combout\ = (\process_0~0_combout\ & (\adc_run~1_combout\ & (!sleep(0) & !sleep(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~0_combout\,
	datab => \adc_run~1_combout\,
	datac => sleep(0),
	datad => sleep(1),
	combout => \adc_run~2_combout\);

\sleep[6]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \sleep[6]~21_combout\ = (sleep(6) & (!\sleep[5]~19\)) # (!sleep(6) & ((\sleep[5]~19\) # (GND)))
-- \sleep[6]~22\ = CARRY((!\sleep[5]~19\) # (!sleep(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sleep(6),
	datad => VCC,
	cin => \sleep[5]~19\,
	combout => \sleep[6]~21_combout\,
	cout => \sleep[6]~22\);

\sleep[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vclock|virt_clk~q\,
	d => \sleep[6]~21_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sleep(6));

\sleep[7]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \sleep[7]~23_combout\ = (sleep(7) & (\sleep[6]~22\ $ (GND))) # (!sleep(7) & (!\sleep[6]~22\ & VCC))
-- \sleep[7]~24\ = CARRY((sleep(7) & !\sleep[6]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sleep(7),
	datad => VCC,
	cin => \sleep[6]~22\,
	combout => \sleep[7]~23_combout\,
	cout => \sleep[7]~24\);

\sleep[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vclock|virt_clk~q\,
	d => \sleep[7]~23_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sleep(7));

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

\sleep[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vclock|virt_clk~q\,
	d => \sleep[8]~25_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sleep(8));

\sleep[9]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \sleep[9]~27_combout\ = (sleep(9) & (\sleep[8]~26\ $ (GND))) # (!sleep(9) & (!\sleep[8]~26\ & VCC))
-- \sleep[9]~28\ = CARRY((sleep(9) & !\sleep[8]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sleep(9),
	datad => VCC,
	cin => \sleep[8]~26\,
	combout => \sleep[9]~27_combout\,
	cout => \sleep[9]~28\);

\sleep[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vclock|virt_clk~q\,
	d => \sleep[9]~27_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sleep(9));

\adc_run~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_run~3_combout\ = (!sleep(6) & (!sleep(7) & (!sleep(8) & !sleep(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sleep(6),
	datab => sleep(7),
	datac => sleep(8),
	datad => sleep(9),
	combout => \adc_run~3_combout\);

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

\sleep[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vclock|virt_clk~q\,
	d => \sleep[10]~29_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sleep(10));

\adc_run~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_run~4_combout\ = (\adc_run~0_combout\) # ((\adc_run~2_combout\ & (\adc_run~3_combout\ & !sleep(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_run~0_combout\,
	datab => \adc_run~2_combout\,
	datac => \adc_run~3_combout\,
	datad => sleep(10),
	combout => \adc_run~4_combout\);

adc_run : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vclock|virt_clk~q\,
	d => \adc_run~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_run~q\);

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

\adc|state.execute~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vclock|virt_clk~q\,
	d => \adc|state.execute~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|state.execute~reg0_q\);

\adc|spi_comm_delay[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vclock|virt_clk~q\,
	d => \adc|spi_comm_delay~8_combout\,
	ena => \adc|state.execute~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_comm_delay\(1));

\adc|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|Add1~2_combout\ = \adc|spi_comm_delay\(3) $ (((\adc|spi_comm_delay\(2) & (\adc|spi_comm_delay\(0) & \adc|spi_comm_delay\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_comm_delay\(3),
	datab => \adc|spi_comm_delay\(2),
	datac => \adc|spi_comm_delay\(0),
	datad => \adc|spi_comm_delay\(1),
	combout => \adc|Add1~2_combout\);

\adc|spi_comm_delay[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vclock|virt_clk~q\,
	d => \adc|Add1~2_combout\,
	ena => \adc|state.execute~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_comm_delay\(3));

\adc|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|Equal2~0_combout\ = (!\adc|spi_comm_delay\(3) & (\adc|spi_comm_delay\(0) $ (\adc|spi_comm_delay\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc|spi_comm_delay\(0),
	datac => \adc|spi_comm_delay\(1),
	datad => \adc|spi_comm_delay\(3),
	combout => \adc|Equal2~0_combout\);

\adc|Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|Add1~1_combout\ = (\adc|spi_comm_delay\(2) & (\adc|spi_comm_delay\(0) & (\adc|spi_comm_delay\(1) & \adc|spi_comm_delay\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_comm_delay\(2),
	datab => \adc|spi_comm_delay\(0),
	datac => \adc|spi_comm_delay\(1),
	datad => \adc|spi_comm_delay\(3),
	combout => \adc|Add1~1_combout\);

\adc|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|Add1~4_combout\ = \adc|spi_comm_delay\(4) $ (\adc|Add1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc|spi_comm_delay\(4),
	datad => \adc|Add1~1_combout\,
	combout => \adc|Add1~4_combout\);

\adc|spi_comm_delay[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vclock|virt_clk~q\,
	d => \adc|Add1~4_combout\,
	ena => \adc|state.execute~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_comm_delay\(4));

\adc|Add1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|Add1~3_combout\ = \adc|spi_comm_delay\(5) $ (((\adc|spi_comm_delay\(4) & \adc|Add1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc|spi_comm_delay\(5),
	datac => \adc|spi_comm_delay\(4),
	datad => \adc|Add1~1_combout\,
	combout => \adc|Add1~3_combout\);

\adc|spi_comm_delay[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vclock|virt_clk~q\,
	d => \adc|Add1~3_combout\,
	ena => \adc|state.execute~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_comm_delay\(5));

\adc|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|Equal2~1_combout\ = (\adc|Equal2~0_combout\ & ((\adc|spi_comm_delay\(5) & (\adc|spi_comm_delay\(4) & \adc|Add1~1_combout\)) # (!\adc|spi_comm_delay\(5) & (!\adc|spi_comm_delay\(4) & !\adc|Add1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|Equal2~0_combout\,
	datab => \adc|spi_comm_delay\(5),
	datac => \adc|spi_comm_delay\(4),
	datad => \adc|Add1~1_combout\,
	combout => \adc|Equal2~1_combout\);

\adc|spi_comm_delay~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_comm_delay~7_combout\ = (!\adc|spi_comm_delay\(0) & ((!\adc|Equal2~1_combout\) # (!\adc|spi_comm_delay\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_comm_delay\(2),
	datab => \adc|spi_comm_delay\(0),
	datad => \adc|Equal2~1_combout\,
	combout => \adc|spi_comm_delay~7_combout\);

\adc|spi_comm_delay[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vclock|virt_clk~q\,
	d => \adc|spi_comm_delay~7_combout\,
	ena => \adc|state.execute~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_comm_delay\(0));

\adc|spi_comm_delay~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_comm_delay~6_combout\ = (\adc|spi_comm_delay\(0) & (\adc|spi_comm_delay\(2) $ ((\adc|spi_comm_delay\(1))))) # (!\adc|spi_comm_delay\(0) & (\adc|spi_comm_delay\(2) & ((!\adc|Equal2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_comm_delay\(2),
	datab => \adc|spi_comm_delay\(0),
	datac => \adc|spi_comm_delay\(1),
	datad => \adc|Equal2~1_combout\,
	combout => \adc|spi_comm_delay~6_combout\);

\adc|spi_comm_delay[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vclock|virt_clk~q\,
	d => \adc|spi_comm_delay~6_combout\,
	ena => \adc|state.execute~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_comm_delay\(2));

\adc|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|Add1~0_combout\ = \adc|spi_comm_delay\(2) $ (((\adc|spi_comm_delay\(0) & \adc|spi_comm_delay\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc|spi_comm_delay\(2),
	datac => \adc|spi_comm_delay\(0),
	datad => \adc|spi_comm_delay\(1),
	combout => \adc|Add1~0_combout\);

\adc|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|Selector0~0_combout\ = (\adc|Add1~0_combout\ & (\adc|Equal2~1_combout\ & (\adc|state.execute~reg0_q\ & !\adc|spi_comm_delay\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|Add1~0_combout\,
	datab => \adc|Equal2~1_combout\,
	datac => \adc|state.execute~reg0_q\,
	datad => \adc|spi_comm_delay\(0),
	combout => \adc|Selector0~0_combout\);

\adc|state.ready~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|state.ready~0_combout\ = (!\adc|state.ready~reg0_q\ & ((\adc|Selector0~0_combout\) # (\adc|Selector0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|Selector0~0_combout\,
	datab => \adc|Selector0~1_combout\,
	datad => \adc|state.ready~reg0_q\,
	combout => \adc|state.ready~0_combout\);

\adc|state.initialize~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|state.initialize~0_combout\ = (\adc|state.initialize~reg0_q\) # ((\adc|state.ready~0_combout\) # ((\adc_run~q\ & \adc|state.ready~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|state.initialize~reg0_q\,
	datab => \adc|state.ready~0_combout\,
	datac => \adc_run~q\,
	datad => \adc|state.ready~reg0_q\,
	combout => \adc|state.initialize~0_combout\);

\adc|state.initialize~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vclock|virt_clk~q\,
	d => \adc|state.initialize~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|state.initialize~reg0_q\);

\adc|init_delay[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vclock|virt_clk~q\,
	d => \adc|init_delay[0]~0_combout\,
	ena => \adc|ALT_INV_state.initialize~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|init_delay\(0));

\adc|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|Add0~0_combout\ = \adc|init_delay\(2) $ (((\adc|init_delay\(0) & \adc|init_delay\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc|init_delay\(2),
	datac => \adc|init_delay\(0),
	datad => \adc|init_delay\(1),
	combout => \adc|Add0~0_combout\);

\adc|init_delay[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vclock|virt_clk~q\,
	d => \adc|Add0~0_combout\,
	ena => \adc|ALT_INV_state.initialize~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|init_delay\(2));

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

\adc|reset~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|reset~1_combout\ = (\adc|reset~q\) # (\adc|reset~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|reset~q\,
	datab => \adc|reset~0_combout\,
	combout => \adc|reset~1_combout\);

\adc|reset\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vclock|virt_clk~q\,
	d => \adc|reset~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|reset~q\);

\adc|enable~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|enable~0_combout\ = (!\adc|spi_comm_delay\(2) & (!\adc|spi_comm_delay\(0) & (!\adc|spi_comm_delay\(1) & !\adc|spi_comm_delay\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_comm_delay\(2),
	datab => \adc|spi_comm_delay\(0),
	datac => \adc|spi_comm_delay\(1),
	datad => \adc|spi_comm_delay\(3),
	combout => \adc|enable~0_combout\);

\adc|enable~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|enable~1_combout\ = (\adc|enable~q\) # ((\adc|enable~0_combout\ & (!\adc|spi_comm_delay\(5) & !\adc|spi_comm_delay\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|enable~q\,
	datab => \adc|enable~0_combout\,
	datac => \adc|spi_comm_delay\(5),
	datad => \adc|spi_comm_delay\(4),
	combout => \adc|enable~1_combout\);

\adc|enable~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|enable~2_combout\ = (\adc|enable~1_combout\ & ((\adc|spi_comm_delay\(0)) # ((\adc|Add1~0_combout\) # (!\adc|Equal2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|enable~1_combout\,
	datab => \adc|spi_comm_delay\(0),
	datac => \adc|Add1~0_combout\,
	datad => \adc|Equal2~1_combout\,
	combout => \adc|enable~2_combout\);

\adc|enable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vclock|virt_clk~q\,
	d => \adc|enable~2_combout\,
	ena => \adc|state.execute~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|enable~q\);

\adc|spi_driver|clk_ratio[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|clk_ratio[0]~0_combout\ = (\adc|spi_driver|clk_ratio\(0)) # ((!\adc|spi_driver|state~q\ & (\adc|enable~q\ & \adc|reset~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|state~q\,
	datab => \adc|enable~q\,
	datac => \adc|reset~q\,
	datad => \adc|spi_driver|clk_ratio\(0),
	combout => \adc|spi_driver|clk_ratio[0]~0_combout\);

\adc|spi_driver|clk_ratio[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \adc|spi_driver|clk_ratio[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|clk_ratio\(0));

\adc|spi_driver|Add5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Add5~0_combout\ = \adc|spi_driver|count\(0) $ (GND)
-- \adc|spi_driver|Add5~1\ = CARRY(!\adc|spi_driver|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|count\(0),
	datad => VCC,
	combout => \adc|spi_driver|Add5~0_combout\,
	cout => \adc|spi_driver|Add5~1\);

\adc|spi_driver|Add5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Add5~2_combout\ = (\adc|spi_driver|count\(1) & (!\adc|spi_driver|Add5~1\)) # (!\adc|spi_driver|count\(1) & ((\adc|spi_driver|Add5~1\) # (GND)))
-- \adc|spi_driver|Add5~3\ = CARRY((!\adc|spi_driver|Add5~1\) # (!\adc|spi_driver|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|count\(1),
	datad => VCC,
	cin => \adc|spi_driver|Add5~1\,
	combout => \adc|spi_driver|Add5~2_combout\,
	cout => \adc|spi_driver|Add5~3\);

\adc|spi_driver|count~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~33_combout\ = (\adc|spi_driver|Add5~2_combout\ & !\adc|spi_driver|count[17]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|Add5~2_combout\,
	datad => \adc|spi_driver|count[17]~0_combout\,
	combout => \adc|spi_driver|count~33_combout\);

\adc|spi_driver|count[30]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count[30]~2_combout\ = (\adc|reset~q\ & ((\adc|spi_driver|state~q\) # (\adc|enable~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|reset~q\,
	datab => \adc|spi_driver|state~q\,
	datac => \adc|enable~q\,
	combout => \adc|spi_driver|count[30]~2_combout\);

\adc|spi_driver|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \adc|spi_driver|count~33_combout\,
	ena => \adc|spi_driver|count[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|count\(1));

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

\adc|spi_driver|count~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~32_combout\ = (\adc|spi_driver|Add5~4_combout\ & !\adc|spi_driver|count[17]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|Add5~4_combout\,
	datad => \adc|spi_driver|count[17]~0_combout\,
	combout => \adc|spi_driver|count~32_combout\);

\adc|spi_driver|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \adc|spi_driver|count~32_combout\,
	ena => \adc|spi_driver|count[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|count\(2));

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

\adc|spi_driver|count~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~31_combout\ = (\adc|spi_driver|Add5~6_combout\ & !\adc|spi_driver|count[17]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|Add5~6_combout\,
	datad => \adc|spi_driver|count[17]~0_combout\,
	combout => \adc|spi_driver|count~31_combout\);

\adc|spi_driver|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \adc|spi_driver|count~31_combout\,
	ena => \adc|spi_driver|count[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|count\(3));

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

\adc|spi_driver|count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~3_combout\ = ((\adc|spi_driver|Add5~8_combout\ & !\adc|spi_driver|Equal1~10_combout\)) # (!\adc|spi_driver|state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|Add5~8_combout\,
	datac => \adc|spi_driver|Equal1~10_combout\,
	datad => \adc|spi_driver|state~q\,
	combout => \adc|spi_driver|count~3_combout\);

\adc|spi_driver|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \adc|spi_driver|count~3_combout\,
	ena => \adc|spi_driver|count[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|count\(4));

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

\adc|spi_driver|count~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~30_combout\ = (\adc|spi_driver|Add5~10_combout\ & !\adc|spi_driver|count[17]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|Add5~10_combout\,
	datad => \adc|spi_driver|count[17]~0_combout\,
	combout => \adc|spi_driver|count~30_combout\);

\adc|spi_driver|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \adc|spi_driver|count~30_combout\,
	ena => \adc|spi_driver|count[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|count\(5));

\adc|spi_driver|Add5~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Add5~12_combout\ = (\adc|spi_driver|count\(6) & (\adc|spi_driver|Add5~11\ $ (GND))) # (!\adc|spi_driver|count\(6) & (!\adc|spi_driver|Add5~11\ & VCC))
-- \adc|spi_driver|Add5~13\ = CARRY((\adc|spi_driver|count\(6) & !\adc|spi_driver|Add5~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|count\(6),
	datad => VCC,
	cin => \adc|spi_driver|Add5~11\,
	combout => \adc|spi_driver|Add5~12_combout\,
	cout => \adc|spi_driver|Add5~13\);

\adc|spi_driver|count~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~29_combout\ = (\adc|spi_driver|Add5~12_combout\ & !\adc|spi_driver|count[17]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|Add5~12_combout\,
	datad => \adc|spi_driver|count[17]~0_combout\,
	combout => \adc|spi_driver|count~29_combout\);

\adc|spi_driver|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \adc|spi_driver|count~29_combout\,
	ena => \adc|spi_driver|count[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|count\(6));

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

\adc|spi_driver|count~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~28_combout\ = (\adc|spi_driver|Add5~14_combout\ & !\adc|spi_driver|count[17]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|Add5~14_combout\,
	datad => \adc|spi_driver|count[17]~0_combout\,
	combout => \adc|spi_driver|count~28_combout\);

\adc|spi_driver|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \adc|spi_driver|count~28_combout\,
	ena => \adc|spi_driver|count[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|count\(7));

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

\adc|spi_driver|count~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~27_combout\ = (\adc|spi_driver|Add5~16_combout\ & !\adc|spi_driver|count[17]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|Add5~16_combout\,
	datad => \adc|spi_driver|count[17]~0_combout\,
	combout => \adc|spi_driver|count~27_combout\);

\adc|spi_driver|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \adc|spi_driver|count~27_combout\,
	ena => \adc|spi_driver|count[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|count\(8));

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

\adc|spi_driver|count~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~26_combout\ = (\adc|spi_driver|Add5~18_combout\ & !\adc|spi_driver|count[17]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|Add5~18_combout\,
	datad => \adc|spi_driver|count[17]~0_combout\,
	combout => \adc|spi_driver|count~26_combout\);

\adc|spi_driver|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \adc|spi_driver|count~26_combout\,
	ena => \adc|spi_driver|count[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|count\(9));

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

\adc|spi_driver|count~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~25_combout\ = (\adc|spi_driver|Add5~20_combout\ & !\adc|spi_driver|count[17]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|Add5~20_combout\,
	datad => \adc|spi_driver|count[17]~0_combout\,
	combout => \adc|spi_driver|count~25_combout\);

\adc|spi_driver|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \adc|spi_driver|count~25_combout\,
	ena => \adc|spi_driver|count[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|count\(10));

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

\adc|spi_driver|count~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~24_combout\ = (\adc|spi_driver|Add5~22_combout\ & !\adc|spi_driver|count[17]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|Add5~22_combout\,
	datad => \adc|spi_driver|count[17]~0_combout\,
	combout => \adc|spi_driver|count~24_combout\);

\adc|spi_driver|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \adc|spi_driver|count~24_combout\,
	ena => \adc|spi_driver|count[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|count\(11));

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

\adc|spi_driver|count~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~23_combout\ = (\adc|spi_driver|Add5~24_combout\ & !\adc|spi_driver|count[17]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|Add5~24_combout\,
	datad => \adc|spi_driver|count[17]~0_combout\,
	combout => \adc|spi_driver|count~23_combout\);

\adc|spi_driver|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \adc|spi_driver|count~23_combout\,
	ena => \adc|spi_driver|count[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|count\(12));

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

\adc|spi_driver|count~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~22_combout\ = (\adc|spi_driver|Add5~26_combout\ & !\adc|spi_driver|count[17]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|Add5~26_combout\,
	datad => \adc|spi_driver|count[17]~0_combout\,
	combout => \adc|spi_driver|count~22_combout\);

\adc|spi_driver|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \adc|spi_driver|count~22_combout\,
	ena => \adc|spi_driver|count[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|count\(13));

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

\adc|spi_driver|count~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~21_combout\ = (\adc|spi_driver|Add5~28_combout\ & !\adc|spi_driver|count[17]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|Add5~28_combout\,
	datad => \adc|spi_driver|count[17]~0_combout\,
	combout => \adc|spi_driver|count~21_combout\);

\adc|spi_driver|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \adc|spi_driver|count~21_combout\,
	ena => \adc|spi_driver|count[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|count\(14));

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

\adc|spi_driver|count~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~20_combout\ = (\adc|spi_driver|Add5~30_combout\ & !\adc|spi_driver|count[17]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|Add5~30_combout\,
	datad => \adc|spi_driver|count[17]~0_combout\,
	combout => \adc|spi_driver|count~20_combout\);

\adc|spi_driver|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \adc|spi_driver|count~20_combout\,
	ena => \adc|spi_driver|count[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|count\(15));

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

\adc|spi_driver|count~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~19_combout\ = (\adc|spi_driver|Add5~32_combout\ & !\adc|spi_driver|count[17]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|Add5~32_combout\,
	datad => \adc|spi_driver|count[17]~0_combout\,
	combout => \adc|spi_driver|count~19_combout\);

\adc|spi_driver|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \adc|spi_driver|count~19_combout\,
	ena => \adc|spi_driver|count[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|count\(16));

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

\adc|spi_driver|count~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~18_combout\ = (\adc|spi_driver|Add5~34_combout\ & !\adc|spi_driver|count[17]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|Add5~34_combout\,
	datad => \adc|spi_driver|count[17]~0_combout\,
	combout => \adc|spi_driver|count~18_combout\);

\adc|spi_driver|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \adc|spi_driver|count~18_combout\,
	ena => \adc|spi_driver|count[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|count\(17));

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

\adc|spi_driver|count~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~17_combout\ = (\adc|spi_driver|Add5~36_combout\ & !\adc|spi_driver|count[17]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|Add5~36_combout\,
	datad => \adc|spi_driver|count[17]~0_combout\,
	combout => \adc|spi_driver|count~17_combout\);

\adc|spi_driver|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \adc|spi_driver|count~17_combout\,
	ena => \adc|spi_driver|count[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|count\(18));

\adc|spi_driver|Equal1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Equal1~5_combout\ = (!\adc|spi_driver|count\(18) & (!\adc|spi_driver|count\(17) & (!\adc|spi_driver|count\(16) & !\adc|spi_driver|count\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|count\(18),
	datab => \adc|spi_driver|count\(17),
	datac => \adc|spi_driver|count\(16),
	datad => \adc|spi_driver|count\(15),
	combout => \adc|spi_driver|Equal1~5_combout\);

\adc|spi_driver|Equal1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Equal1~6_combout\ = (!\adc|spi_driver|count\(14) & (!\adc|spi_driver|count\(13) & (!\adc|spi_driver|count\(12) & !\adc|spi_driver|count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|count\(14),
	datab => \adc|spi_driver|count\(13),
	datac => \adc|spi_driver|count\(12),
	datad => \adc|spi_driver|count\(11),
	combout => \adc|spi_driver|Equal1~6_combout\);

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

\adc|spi_driver|Equal1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Equal1~8_combout\ = (!\adc|spi_driver|count\(6) & (!\adc|spi_driver|count\(5) & (!\adc|spi_driver|count\(3) & !\adc|spi_driver|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|count\(6),
	datab => \adc|spi_driver|count\(5),
	datac => \adc|spi_driver|count\(3),
	datad => \adc|spi_driver|count\(2),
	combout => \adc|spi_driver|Equal1~8_combout\);

\adc|spi_driver|Equal1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Equal1~9_combout\ = (\adc|spi_driver|Equal1~5_combout\ & (\adc|spi_driver|Equal1~6_combout\ & (\adc|spi_driver|Equal1~7_combout\ & \adc|spi_driver|Equal1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|Equal1~5_combout\,
	datab => \adc|spi_driver|Equal1~6_combout\,
	datac => \adc|spi_driver|Equal1~7_combout\,
	datad => \adc|spi_driver|Equal1~8_combout\,
	combout => \adc|spi_driver|Equal1~9_combout\);

\adc|spi_driver|count[17]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count[17]~0_combout\ = ((\adc|spi_driver|Equal1~4_combout\ & (\adc|spi_driver|Equal1~9_combout\ & !\adc|spi_driver|count\(1)))) # (!\adc|spi_driver|state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|Equal1~4_combout\,
	datab => \adc|spi_driver|Equal1~9_combout\,
	datac => \adc|spi_driver|count\(1),
	datad => \adc|spi_driver|state~q\,
	combout => \adc|spi_driver|count[17]~0_combout\);

\adc|spi_driver|count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~1_combout\ = (\adc|spi_driver|count[17]~0_combout\ & (!\adc|spi_driver|state~q\)) # (!\adc|spi_driver|count[17]~0_combout\ & ((!\adc|spi_driver|Add5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|state~q\,
	datab => \adc|spi_driver|Add5~0_combout\,
	datad => \adc|spi_driver|count[17]~0_combout\,
	combout => \adc|spi_driver|count~1_combout\);

\adc|spi_driver|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \adc|spi_driver|count~1_combout\,
	ena => \adc|spi_driver|count[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|count\(0));

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

\adc|spi_driver|count~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~16_combout\ = (\adc|spi_driver|Add5~38_combout\ & !\adc|spi_driver|count[17]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|Add5~38_combout\,
	datad => \adc|spi_driver|count[17]~0_combout\,
	combout => \adc|spi_driver|count~16_combout\);

\adc|spi_driver|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \adc|spi_driver|count~16_combout\,
	ena => \adc|spi_driver|count[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|count\(19));

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

\adc|spi_driver|count~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~15_combout\ = (\adc|spi_driver|Add5~40_combout\ & !\adc|spi_driver|count[17]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|Add5~40_combout\,
	datad => \adc|spi_driver|count[17]~0_combout\,
	combout => \adc|spi_driver|count~15_combout\);

\adc|spi_driver|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \adc|spi_driver|count~15_combout\,
	ena => \adc|spi_driver|count[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|count\(20));

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

\adc|spi_driver|count~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~14_combout\ = (\adc|spi_driver|Add5~42_combout\ & !\adc|spi_driver|count[17]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|Add5~42_combout\,
	datad => \adc|spi_driver|count[17]~0_combout\,
	combout => \adc|spi_driver|count~14_combout\);

\adc|spi_driver|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \adc|spi_driver|count~14_combout\,
	ena => \adc|spi_driver|count[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|count\(21));

\adc|spi_driver|Add5~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Add5~44_combout\ = (\adc|spi_driver|count\(22) & (\adc|spi_driver|Add5~43\ $ (GND))) # (!\adc|spi_driver|count\(22) & (!\adc|spi_driver|Add5~43\ & VCC))
-- \adc|spi_driver|Add5~45\ = CARRY((\adc|spi_driver|count\(22) & !\adc|spi_driver|Add5~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|count\(22),
	datad => VCC,
	cin => \adc|spi_driver|Add5~43\,
	combout => \adc|spi_driver|Add5~44_combout\,
	cout => \adc|spi_driver|Add5~45\);

\adc|spi_driver|count~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~13_combout\ = (\adc|spi_driver|Add5~44_combout\ & !\adc|spi_driver|count[17]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|Add5~44_combout\,
	datad => \adc|spi_driver|count[17]~0_combout\,
	combout => \adc|spi_driver|count~13_combout\);

\adc|spi_driver|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \adc|spi_driver|count~13_combout\,
	ena => \adc|spi_driver|count[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|count\(22));

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

\adc|spi_driver|count~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~12_combout\ = (\adc|spi_driver|Add5~46_combout\ & !\adc|spi_driver|count[17]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|Add5~46_combout\,
	datad => \adc|spi_driver|count[17]~0_combout\,
	combout => \adc|spi_driver|count~12_combout\);

\adc|spi_driver|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \adc|spi_driver|count~12_combout\,
	ena => \adc|spi_driver|count[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|count\(23));

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

\adc|spi_driver|count~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~11_combout\ = (\adc|spi_driver|Add5~48_combout\ & !\adc|spi_driver|count[17]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|Add5~48_combout\,
	datad => \adc|spi_driver|count[17]~0_combout\,
	combout => \adc|spi_driver|count~11_combout\);

\adc|spi_driver|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \adc|spi_driver|count~11_combout\,
	ena => \adc|spi_driver|count[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|count\(24));

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

\adc|spi_driver|count~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~10_combout\ = (\adc|spi_driver|Add5~50_combout\ & !\adc|spi_driver|count[17]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|Add5~50_combout\,
	datad => \adc|spi_driver|count[17]~0_combout\,
	combout => \adc|spi_driver|count~10_combout\);

\adc|spi_driver|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \adc|spi_driver|count~10_combout\,
	ena => \adc|spi_driver|count[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|count\(25));

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

\adc|spi_driver|count~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~9_combout\ = (\adc|spi_driver|Add5~52_combout\ & !\adc|spi_driver|count[17]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|Add5~52_combout\,
	datad => \adc|spi_driver|count[17]~0_combout\,
	combout => \adc|spi_driver|count~9_combout\);

\adc|spi_driver|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \adc|spi_driver|count~9_combout\,
	ena => \adc|spi_driver|count[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|count\(26));

\adc|spi_driver|Add5~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Add5~54_combout\ = (\adc|spi_driver|count\(27) & (!\adc|spi_driver|Add5~53\)) # (!\adc|spi_driver|count\(27) & ((\adc|spi_driver|Add5~53\) # (GND)))
-- \adc|spi_driver|Add5~55\ = CARRY((!\adc|spi_driver|Add5~53\) # (!\adc|spi_driver|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|count\(27),
	datad => VCC,
	cin => \adc|spi_driver|Add5~53\,
	combout => \adc|spi_driver|Add5~54_combout\,
	cout => \adc|spi_driver|Add5~55\);

\adc|spi_driver|count~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~8_combout\ = (\adc|spi_driver|Add5~54_combout\ & !\adc|spi_driver|count[17]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|Add5~54_combout\,
	datad => \adc|spi_driver|count[17]~0_combout\,
	combout => \adc|spi_driver|count~8_combout\);

\adc|spi_driver|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \adc|spi_driver|count~8_combout\,
	ena => \adc|spi_driver|count[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|count\(27));

\adc|spi_driver|Add5~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Add5~56_combout\ = (\adc|spi_driver|count\(28) & (\adc|spi_driver|Add5~55\ $ (GND))) # (!\adc|spi_driver|count\(28) & (!\adc|spi_driver|Add5~55\ & VCC))
-- \adc|spi_driver|Add5~57\ = CARRY((\adc|spi_driver|count\(28) & !\adc|spi_driver|Add5~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|count\(28),
	datad => VCC,
	cin => \adc|spi_driver|Add5~55\,
	combout => \adc|spi_driver|Add5~56_combout\,
	cout => \adc|spi_driver|Add5~57\);

\adc|spi_driver|count~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~7_combout\ = (\adc|spi_driver|Add5~56_combout\ & !\adc|spi_driver|count[17]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|Add5~56_combout\,
	datad => \adc|spi_driver|count[17]~0_combout\,
	combout => \adc|spi_driver|count~7_combout\);

\adc|spi_driver|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \adc|spi_driver|count~7_combout\,
	ena => \adc|spi_driver|count[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|count\(28));

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

\adc|spi_driver|count~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~6_combout\ = (\adc|spi_driver|state~q\ & (\adc|spi_driver|Add5~58_combout\ & !\adc|spi_driver|Equal1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|state~q\,
	datab => \adc|spi_driver|Add5~58_combout\,
	datad => \adc|spi_driver|Equal1~10_combout\,
	combout => \adc|spi_driver|count~6_combout\);

\adc|spi_driver|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \adc|spi_driver|count~6_combout\,
	ena => \adc|spi_driver|count[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|count\(29));

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

\adc|spi_driver|count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~5_combout\ = (\adc|spi_driver|Add5~60_combout\ & !\adc|spi_driver|count[17]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|Add5~60_combout\,
	datad => \adc|spi_driver|count[17]~0_combout\,
	combout => \adc|spi_driver|count~5_combout\);

\adc|spi_driver|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \adc|spi_driver|count~5_combout\,
	ena => \adc|spi_driver|count[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|count\(30));

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

\adc|spi_driver|count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|count~4_combout\ = (\adc|spi_driver|count[17]~0_combout\) # (!\adc|spi_driver|Add5~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|Add5~62_combout\,
	datad => \adc|spi_driver|count[17]~0_combout\,
	combout => \adc|spi_driver|count~4_combout\);

\adc|spi_driver|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \adc|spi_driver|count~4_combout\,
	ena => \adc|spi_driver|count[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|count\(31));

\adc|spi_driver|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Equal1~0_combout\ = (\adc|spi_driver|clk_ratio\(0) & (\adc|spi_driver|count\(0) & (\adc|spi_driver|count\(4) & \adc|spi_driver|count\(31)))) # (!\adc|spi_driver|clk_ratio\(0) & (!\adc|spi_driver|count\(0) & (!\adc|spi_driver|count\(4) & 
-- !\adc|spi_driver|count\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|clk_ratio\(0),
	datab => \adc|spi_driver|count\(0),
	datac => \adc|spi_driver|count\(4),
	datad => \adc|spi_driver|count\(31),
	combout => \adc|spi_driver|Equal1~0_combout\);

\adc|spi_driver|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Equal1~1_combout\ = (!\adc|spi_driver|count\(30) & (!\adc|spi_driver|count\(29) & (!\adc|spi_driver|count\(28) & !\adc|spi_driver|count\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|count\(30),
	datab => \adc|spi_driver|count\(29),
	datac => \adc|spi_driver|count\(28),
	datad => \adc|spi_driver|count\(27),
	combout => \adc|spi_driver|Equal1~1_combout\);

\adc|spi_driver|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Equal1~2_combout\ = (!\adc|spi_driver|count\(26) & (!\adc|spi_driver|count\(25) & (!\adc|spi_driver|count\(24) & !\adc|spi_driver|count\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|count\(26),
	datab => \adc|spi_driver|count\(25),
	datac => \adc|spi_driver|count\(24),
	datad => \adc|spi_driver|count\(23),
	combout => \adc|spi_driver|Equal1~2_combout\);

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

\adc|spi_driver|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Equal1~4_combout\ = (\adc|spi_driver|Equal1~0_combout\ & (\adc|spi_driver|Equal1~1_combout\ & (\adc|spi_driver|Equal1~2_combout\ & \adc|spi_driver|Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|Equal1~0_combout\,
	datab => \adc|spi_driver|Equal1~1_combout\,
	datac => \adc|spi_driver|Equal1~2_combout\,
	datad => \adc|spi_driver|Equal1~3_combout\,
	combout => \adc|spi_driver|Equal1~4_combout\);

\adc|spi_driver|Equal1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Equal1~10_combout\ = (\adc|spi_driver|Equal1~4_combout\ & (\adc|spi_driver|Equal1~9_combout\ & !\adc|spi_driver|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|Equal1~4_combout\,
	datab => \adc|spi_driver|Equal1~9_combout\,
	datad => \adc|spi_driver|count\(1),
	combout => \adc|spi_driver|Equal1~10_combout\);

\adc|spi_driver|clk_toggles[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|clk_toggles[5]~10_combout\ = (\adc|reset~q\ & ((\adc|spi_driver|state~q\ & (\adc|spi_driver|Equal1~10_combout\)) # (!\adc|spi_driver|state~q\ & ((\adc|enable~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|reset~q\,
	datab => \adc|spi_driver|Equal1~10_combout\,
	datac => \adc|enable~q\,
	datad => \adc|spi_driver|state~q\,
	combout => \adc|spi_driver|clk_toggles[5]~10_combout\);

\adc|spi_driver|clk_toggles[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \adc|spi_driver|clk_toggles[0]~6_combout\,
	sclr => \adc|spi_driver|mosi~1_combout\,
	ena => \adc|spi_driver|clk_toggles[5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|clk_toggles\(0));

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

\adc|spi_driver|clk_toggles[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \adc|spi_driver|clk_toggles[1]~8_combout\,
	sclr => \adc|spi_driver|mosi~1_combout\,
	ena => \adc|spi_driver|clk_toggles[5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|clk_toggles\(1));

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

\adc|spi_driver|clk_toggles[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \adc|spi_driver|clk_toggles[2]~11_combout\,
	sclr => \adc|spi_driver|mosi~1_combout\,
	ena => \adc|spi_driver|clk_toggles[5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|clk_toggles\(2));

\adc|spi_driver|clk_toggles[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|clk_toggles[3]~13_combout\ = (\adc|spi_driver|clk_toggles\(3) & (!\adc|spi_driver|clk_toggles[2]~12\)) # (!\adc|spi_driver|clk_toggles\(3) & ((\adc|spi_driver|clk_toggles[2]~12\) # (GND)))
-- \adc|spi_driver|clk_toggles[3]~14\ = CARRY((!\adc|spi_driver|clk_toggles[2]~12\) # (!\adc|spi_driver|clk_toggles\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|clk_toggles\(3),
	datad => VCC,
	cin => \adc|spi_driver|clk_toggles[2]~12\,
	combout => \adc|spi_driver|clk_toggles[3]~13_combout\,
	cout => \adc|spi_driver|clk_toggles[3]~14\);

\adc|spi_driver|clk_toggles[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \adc|spi_driver|clk_toggles[3]~13_combout\,
	sclr => \adc|spi_driver|mosi~1_combout\,
	ena => \adc|spi_driver|clk_toggles[5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|clk_toggles\(3));

\adc|spi_driver|clk_toggles[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|clk_toggles[4]~15_combout\ = (\adc|spi_driver|clk_toggles\(4) & (\adc|spi_driver|clk_toggles[3]~14\ $ (GND))) # (!\adc|spi_driver|clk_toggles\(4) & (!\adc|spi_driver|clk_toggles[3]~14\ & VCC))
-- \adc|spi_driver|clk_toggles[4]~16\ = CARRY((\adc|spi_driver|clk_toggles\(4) & !\adc|spi_driver|clk_toggles[3]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|clk_toggles\(4),
	datad => VCC,
	cin => \adc|spi_driver|clk_toggles[3]~14\,
	combout => \adc|spi_driver|clk_toggles[4]~15_combout\,
	cout => \adc|spi_driver|clk_toggles[4]~16\);

\adc|spi_driver|clk_toggles[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \adc|spi_driver|clk_toggles[4]~15_combout\,
	sclr => \adc|spi_driver|mosi~1_combout\,
	ena => \adc|spi_driver|clk_toggles[5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|clk_toggles\(4));

\adc|spi_driver|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|Equal3~0_combout\ = (!\adc|spi_driver|clk_toggles\(1) & (!\adc|spi_driver|clk_toggles\(2) & (!\adc|spi_driver|clk_toggles\(3) & !\adc|spi_driver|clk_toggles\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|clk_toggles\(1),
	datab => \adc|spi_driver|clk_toggles\(2),
	datac => \adc|spi_driver|clk_toggles\(3),
	datad => \adc|spi_driver|clk_toggles\(4),
	combout => \adc|spi_driver|Equal3~0_combout\);

\adc|spi_driver|clk_toggles[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|clk_toggles[5]~17_combout\ = \adc|spi_driver|clk_toggles\(5) $ (\adc|spi_driver|clk_toggles[4]~16\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|clk_toggles\(5),
	cin => \adc|spi_driver|clk_toggles[4]~16\,
	combout => \adc|spi_driver|clk_toggles[5]~17_combout\);

\adc|spi_driver|clk_toggles[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \adc|spi_driver|clk_toggles[5]~17_combout\,
	sclr => \adc|spi_driver|mosi~1_combout\,
	ena => \adc|spi_driver|clk_toggles[5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|clk_toggles\(5));

\adc|spi_driver|mosi~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|mosi~1_combout\ = ((\adc|spi_driver|Equal3~0_combout\ & (\adc|spi_driver|clk_toggles\(0) & \adc|spi_driver|clk_toggles\(5)))) # (!\adc|spi_driver|state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|state~q\,
	datab => \adc|spi_driver|Equal3~0_combout\,
	datac => \adc|spi_driver|clk_toggles\(0),
	datad => \adc|spi_driver|clk_toggles\(5),
	combout => \adc|spi_driver|mosi~1_combout\);

\adc|spi_driver|busy~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|busy~0_combout\ = (((\adc|enable~q\ & !\adc|spi_driver|state~q\)) # (!\adc|spi_driver|count[17]~0_combout\)) # (!\adc|spi_driver|mosi~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|mosi~1_combout\,
	datab => \adc|enable~q\,
	datac => \adc|spi_driver|state~q\,
	datad => \adc|spi_driver|count[17]~0_combout\,
	combout => \adc|spi_driver|busy~0_combout\);

\adc|spi_driver|state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \adc|spi_driver|busy~0_combout\,
	clrn => \adc|reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|state~q\);

\adc|spi_driver|assert_data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|assert_data~0_combout\ = (\adc|spi_driver|assert_data~q\ & ((!\adc|spi_driver|state~q\) # (!\adc|spi_driver|clk_toggles[5]~10_combout\))) # (!\adc|spi_driver|assert_data~q\ & (\adc|spi_driver|clk_toggles[5]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc|spi_driver|assert_data~q\,
	datac => \adc|spi_driver|clk_toggles[5]~10_combout\,
	datad => \adc|spi_driver|state~q\,
	combout => \adc|spi_driver|assert_data~0_combout\);

\adc|spi_driver|assert_data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \adc|spi_driver|assert_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|assert_data~q\);

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

\adc|spi_driver|LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|LessThan3~0_combout\ = (((!\adc|spi_driver|clk_toggles\(0)) # (!\adc|spi_driver|clk_toggles\(3))) # (!\adc|spi_driver|clk_toggles\(2))) # (!\adc|spi_driver|clk_toggles\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|clk_toggles\(1),
	datab => \adc|spi_driver|clk_toggles\(2),
	datac => \adc|spi_driver|clk_toggles\(3),
	datad => \adc|spi_driver|clk_toggles\(0),
	combout => \adc|spi_driver|LessThan3~0_combout\);

\adc|spi_driver|mosi~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|mosi~2_combout\ = (\adc|spi_driver|clk_ratio\(0) & (!\adc|spi_driver|clk_toggles\(5) & ((\adc|spi_driver|LessThan3~0_combout\) # (!\adc|spi_driver|clk_toggles\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|clk_ratio\(0),
	datab => \adc|spi_driver|clk_toggles\(5),
	datac => \adc|spi_driver|LessThan3~0_combout\,
	datad => \adc|spi_driver|clk_toggles\(4),
	combout => \adc|spi_driver|mosi~2_combout\);

\adc|spi_driver|mosi~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|mosi~3_combout\ = (\adc|spi_driver|Equal1~10_combout\ & (((\adc|spi_driver|assert_data~q\ & \adc|spi_driver|mosi~2_combout\)) # (!\adc|spi_driver|Equal3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|assert_data~q\,
	datab => \adc|spi_driver|Equal1~10_combout\,
	datac => \adc|spi_driver|Equal3~1_combout\,
	datad => \adc|spi_driver|mosi~2_combout\,
	combout => \adc|spi_driver|mosi~3_combout\);

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

\adc|spi_driver|mosi~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \adc|spi_driver|mosi~4_combout\,
	clrn => \adc|reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|mosi~en_q\);

\adc|spi_driver|busy~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|busy~1_combout\ = !\adc|spi_driver|busy~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|busy~0_combout\,
	combout => \adc|spi_driver|busy~1_combout\);

\adc|spi_driver|busy\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \adc|spi_driver|busy~1_combout\,
	clrn => \adc|reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|busy~q\);

\adc|spi_driver|ss_n~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|ss_n~0_combout\ = ((!\adc|spi_driver|clk_ratio\(0) & !\adc|spi_driver|ss_n\(0))) # (!\adc|spi_driver|state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc|spi_driver|clk_ratio\(0),
	datac => \adc|spi_driver|ss_n\(0),
	datad => \adc|spi_driver|state~q\,
	combout => \adc|spi_driver|ss_n~0_combout\);

\adc|spi_driver|ss_n~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|ss_n~1_combout\ = (!\adc|spi_driver|ss_n~0_combout\ & ((\adc|spi_driver|Equal3~1_combout\) # (!\adc|spi_driver|Equal1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|ss_n~0_combout\,
	datab => \adc|spi_driver|Equal1~10_combout\,
	datad => \adc|spi_driver|Equal3~1_combout\,
	combout => \adc|spi_driver|ss_n~1_combout\);

\adc|spi_driver|ss_n[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \adc|spi_driver|ss_n~1_combout\,
	clrn => \adc|reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|ss_n\(0));

\adc|spi_driver|sclk~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|sclk~0_combout\ = (\adc|spi_driver|ss_n\(0) & (((\adc|spi_driver|Equal3~0_combout\ & !\adc|spi_driver|clk_toggles\(0))) # (!\adc|spi_driver|clk_toggles\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|ss_n\(0),
	datab => \adc|spi_driver|Equal3~0_combout\,
	datac => \adc|spi_driver|clk_toggles\(0),
	datad => \adc|spi_driver|clk_toggles\(5),
	combout => \adc|spi_driver|sclk~0_combout\);

\adc|spi_driver|sclk~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|sclk~1_combout\ = (\adc|reset~q\ & ((\adc|spi_driver|state~q\ & ((\adc|spi_driver|sclk~0_combout\))) # (!\adc|spi_driver|state~q\ & (\adc|enable~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|state~q\,
	datab => \adc|enable~q\,
	datac => \adc|reset~q\,
	datad => \adc|spi_driver|sclk~0_combout\,
	combout => \adc|spi_driver|sclk~1_combout\);

\adc|spi_driver|sclk~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|sclk~2_combout\ = (\adc|spi_driver|sclk~1_combout\ & (\adc|spi_driver|state~q\ & (\adc|spi_driver|sclk~q\ $ (\adc|spi_driver|Equal1~10_combout\)))) # (!\adc|spi_driver|sclk~1_combout\ & (\adc|spi_driver|sclk~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|sclk~q\,
	datab => \adc|spi_driver|Equal1~10_combout\,
	datac => \adc|spi_driver|state~q\,
	datad => \adc|spi_driver|sclk~1_combout\,
	combout => \adc|spi_driver|sclk~2_combout\);

\adc|spi_driver|sclk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \adc|spi_driver|sclk~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|sclk~q\);

\ADC_SDAT~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_SDAT,
	o => \ADC_SDAT~input_o\);

\adc|spi_driver|rx_buffer[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|rx_buffer[0]~0_combout\ = (\adc|spi_driver|ss_n\(0) & ((\adc|spi_driver|clk_ratio\(0)) # ((\adc|spi_driver|Equal3~0_combout\ & !\adc|spi_driver|clk_toggles\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|ss_n\(0),
	datab => \adc|spi_driver|clk_ratio\(0),
	datac => \adc|spi_driver|Equal3~0_combout\,
	datad => \adc|spi_driver|clk_toggles\(0),
	combout => \adc|spi_driver|rx_buffer[0]~0_combout\);

\adc|spi_driver|rx_buffer[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|rx_buffer[0]~1_combout\ = (!\adc|spi_driver|clk_toggles\(5) & (\adc|spi_driver|state~q\ & \adc|spi_driver|Equal1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|clk_toggles\(5),
	datab => \adc|spi_driver|state~q\,
	datac => \adc|spi_driver|Equal1~10_combout\,
	combout => \adc|spi_driver|rx_buffer[0]~1_combout\);

\adc|spi_driver|rx_buffer[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|rx_buffer[0]~2_combout\ = (!\adc|spi_driver|assert_data~q\ & (\adc|reset~q\ & (\adc|spi_driver|rx_buffer[0]~0_combout\ & \adc|spi_driver|rx_buffer[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|assert_data~q\,
	datab => \adc|reset~q\,
	datac => \adc|spi_driver|rx_buffer[0]~0_combout\,
	datad => \adc|spi_driver|rx_buffer[0]~1_combout\,
	combout => \adc|spi_driver|rx_buffer[0]~2_combout\);

\adc|spi_driver|rx_buffer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ADC_SDAT~input_o\,
	ena => \adc|spi_driver|rx_buffer[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_buffer\(0));

\adc|spi_driver|rx_data[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc|spi_driver|rx_data[0]~0_combout\ = (\adc|spi_driver|state~q\ & (\adc|spi_driver|Equal1~10_combout\ & !\adc|spi_driver|Equal3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc|spi_driver|state~q\,
	datab => \adc|spi_driver|Equal1~10_combout\,
	datad => \adc|spi_driver|Equal3~1_combout\,
	combout => \adc|spi_driver|rx_data[0]~0_combout\);

\adc|spi_driver|rx_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \adc|spi_driver|rx_buffer\(0),
	clrn => \adc|reset~q\,
	ena => \adc|spi_driver|rx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_data\(0));

\adc_data_out[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vclock|virt_clk~q\,
	d => \adc|spi_driver|rx_data\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_data_out[0]~reg0_q\);

\adc|spi_driver|rx_buffer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \adc|spi_driver|rx_buffer\(0),
	ena => \adc|spi_driver|rx_buffer[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_buffer\(1));

\adc|spi_driver|rx_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \adc|spi_driver|rx_buffer\(1),
	clrn => \adc|reset~q\,
	ena => \adc|spi_driver|rx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_data\(1));

\adc_data_out[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vclock|virt_clk~q\,
	d => \adc|spi_driver|rx_data\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_data_out[1]~reg0_q\);

\adc|spi_driver|rx_buffer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \adc|spi_driver|rx_buffer\(1),
	ena => \adc|spi_driver|rx_buffer[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_buffer\(2));

\adc|spi_driver|rx_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \adc|spi_driver|rx_buffer\(2),
	clrn => \adc|reset~q\,
	ena => \adc|spi_driver|rx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_data\(2));

\adc_data_out[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vclock|virt_clk~q\,
	d => \adc|spi_driver|rx_data\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_data_out[2]~reg0_q\);

\adc|spi_driver|rx_buffer[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \adc|spi_driver|rx_buffer\(2),
	ena => \adc|spi_driver|rx_buffer[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_buffer\(3));

\adc|spi_driver|rx_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \adc|spi_driver|rx_buffer\(3),
	clrn => \adc|reset~q\,
	ena => \adc|spi_driver|rx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_data\(3));

\adc_data_out[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vclock|virt_clk~q\,
	d => \adc|spi_driver|rx_data\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_data_out[3]~reg0_q\);

\adc|spi_driver|rx_buffer[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \adc|spi_driver|rx_buffer\(3),
	ena => \adc|spi_driver|rx_buffer[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_buffer\(4));

\adc|spi_driver|rx_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \adc|spi_driver|rx_buffer\(4),
	clrn => \adc|reset~q\,
	ena => \adc|spi_driver|rx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_data\(4));

\adc_data_out[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vclock|virt_clk~q\,
	d => \adc|spi_driver|rx_data\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_data_out[4]~reg0_q\);

\adc|spi_driver|rx_buffer[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \adc|spi_driver|rx_buffer\(4),
	ena => \adc|spi_driver|rx_buffer[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_buffer\(5));

\adc|spi_driver|rx_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \adc|spi_driver|rx_buffer\(5),
	clrn => \adc|reset~q\,
	ena => \adc|spi_driver|rx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_data\(5));

\adc_data_out[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vclock|virt_clk~q\,
	d => \adc|spi_driver|rx_data\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_data_out[5]~reg0_q\);

\adc|spi_driver|rx_buffer[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \adc|spi_driver|rx_buffer\(5),
	ena => \adc|spi_driver|rx_buffer[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_buffer\(6));

\adc|spi_driver|rx_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \adc|spi_driver|rx_buffer\(6),
	clrn => \adc|reset~q\,
	ena => \adc|spi_driver|rx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_data\(6));

\adc_data_out[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vclock|virt_clk~q\,
	d => \adc|spi_driver|rx_data\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_data_out[6]~reg0_q\);

\adc|spi_driver|rx_buffer[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \adc|spi_driver|rx_buffer\(6),
	ena => \adc|spi_driver|rx_buffer[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_buffer\(7));

\adc|spi_driver|rx_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \adc|spi_driver|rx_buffer\(7),
	clrn => \adc|reset~q\,
	ena => \adc|spi_driver|rx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_data\(7));

\adc_data_out[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vclock|virt_clk~q\,
	d => \adc|spi_driver|rx_data\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_data_out[7]~reg0_q\);

\adc|spi_driver|rx_buffer[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \adc|spi_driver|rx_buffer\(7),
	ena => \adc|spi_driver|rx_buffer[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_buffer\(8));

\adc|spi_driver|rx_data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \adc|spi_driver|rx_buffer\(8),
	clrn => \adc|reset~q\,
	ena => \adc|spi_driver|rx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_data\(8));

\adc_data_out[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vclock|virt_clk~q\,
	d => \adc|spi_driver|rx_data\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_data_out[8]~reg0_q\);

\adc|spi_driver|rx_buffer[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \adc|spi_driver|rx_buffer\(8),
	ena => \adc|spi_driver|rx_buffer[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_buffer\(9));

\adc|spi_driver|rx_data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \adc|spi_driver|rx_buffer\(9),
	clrn => \adc|reset~q\,
	ena => \adc|spi_driver|rx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_data\(9));

\adc_data_out[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vclock|virt_clk~q\,
	d => \adc|spi_driver|rx_data\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_data_out[9]~reg0_q\);

\adc|spi_driver|rx_buffer[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \adc|spi_driver|rx_buffer\(9),
	ena => \adc|spi_driver|rx_buffer[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_buffer\(10));

\adc|spi_driver|rx_data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \adc|spi_driver|rx_buffer\(10),
	clrn => \adc|reset~q\,
	ena => \adc|spi_driver|rx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_data\(10));

\adc_data_out[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vclock|virt_clk~q\,
	d => \adc|spi_driver|rx_data\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_data_out[10]~reg0_q\);

\adc|spi_driver|rx_buffer[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \adc|spi_driver|rx_buffer\(10),
	ena => \adc|spi_driver|rx_buffer[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_buffer\(11));

\adc|spi_driver|rx_data[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \adc|spi_driver|rx_buffer\(11),
	clrn => \adc|reset~q\,
	ena => \adc|spi_driver|rx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_data\(11));

\adc_data_out[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vclock|virt_clk~q\,
	d => \adc|spi_driver|rx_data\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_data_out[11]~reg0_q\);

\adc|spi_driver|rx_buffer[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \adc|spi_driver|rx_buffer\(11),
	ena => \adc|spi_driver|rx_buffer[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_buffer\(12));

\adc|spi_driver|rx_data[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \adc|spi_driver|rx_buffer\(12),
	clrn => \adc|reset~q\,
	ena => \adc|spi_driver|rx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_data\(12));

\adc_data_out[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vclock|virt_clk~q\,
	d => \adc|spi_driver|rx_data\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_data_out[12]~reg0_q\);

\adc|spi_driver|rx_buffer[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \adc|spi_driver|rx_buffer\(12),
	ena => \adc|spi_driver|rx_buffer[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_buffer\(13));

\adc|spi_driver|rx_data[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \adc|spi_driver|rx_buffer\(13),
	clrn => \adc|reset~q\,
	ena => \adc|spi_driver|rx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_data\(13));

\adc_data_out[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vclock|virt_clk~q\,
	d => \adc|spi_driver|rx_data\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_data_out[13]~reg0_q\);

\adc|spi_driver|rx_buffer[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \adc|spi_driver|rx_buffer\(13),
	ena => \adc|spi_driver|rx_buffer[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_buffer\(14));

\adc|spi_driver|rx_data[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \adc|spi_driver|rx_buffer\(14),
	clrn => \adc|reset~q\,
	ena => \adc|spi_driver|rx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_data\(14));

\adc_data_out[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vclock|virt_clk~q\,
	d => \adc|spi_driver|rx_data\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_data_out[14]~reg0_q\);

\adc|spi_driver|rx_buffer[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \adc|spi_driver|rx_buffer\(14),
	ena => \adc|spi_driver|rx_buffer[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_buffer\(15));

\adc|spi_driver|rx_data[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \adc|spi_driver|rx_buffer\(15),
	clrn => \adc|reset~q\,
	ena => \adc|spi_driver|rx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc|spi_driver|rx_data\(15));

\adc_data_out[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vclock|virt_clk~q\,
	d => \adc|spi_driver|rx_data\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_data_out[15]~reg0_q\);

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

ww_adc_data_out(12) <= \adc_data_out[12]~output_o\;

ww_adc_data_out(13) <= \adc_data_out[13]~output_o\;

ww_adc_data_out(14) <= \adc_data_out[14]~output_o\;

ww_adc_data_out(15) <= \adc_data_out[15]~output_o\;
END structure;


