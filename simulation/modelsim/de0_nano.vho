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

-- DATE "11/01/2024 13:53:26"

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
-- data_out[0]	=>  Location: PIN_L13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- data_out[1]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- data_out[2]	=>  Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- data_out[3]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- data_out[4]	=>  Location: PIN_L16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- data_out[5]	=>  Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- data_out[6]	=>  Location: PIN_K15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- data_out[7]	=>  Location: PIN_L15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- data_out[8]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- data_out[9]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- data_out[10]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- data_out[11]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ADC_SDAT	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_SADDR	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ADC_CS_N	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ADC_SCLK	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SDA	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SCL	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- CLOCK_50	=>  Location: PIN_R8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RST	=>  Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ADC_SDAT~input_o\ : std_logic;
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
SIGNAL \ADC_SADDR~output_o\ : std_logic;
SIGNAL \ADC_CS_N~output_o\ : std_logic;
SIGNAL \ADC_SCLK~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \dac|i2c_master_inst|bit_cnt[0]~5_combout\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \dac|i2c_master_inst|Selector25~0_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Add1~0_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Equal1~0_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Selector19~0_combout\ : std_logic;
SIGNAL \SCL~input_o\ : std_logic;
SIGNAL \dac|i2c_master_inst|stretch~0_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|stretch~q\ : std_logic;
SIGNAL \dac|i2c_master_inst|Add0~0_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|count~2_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Add0~1\ : std_logic;
SIGNAL \dac|i2c_master_inst|Add0~2_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|count~4_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Add0~3\ : std_logic;
SIGNAL \dac|i2c_master_inst|Add0~4_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|count~3_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Equal0~2_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Add0~5\ : std_logic;
SIGNAL \dac|i2c_master_inst|Add0~6_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|count~1_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Add0~7\ : std_logic;
SIGNAL \dac|i2c_master_inst|Add0~8_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|count~5_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Add0~9\ : std_logic;
SIGNAL \dac|i2c_master_inst|Add0~11\ : std_logic;
SIGNAL \dac|i2c_master_inst|Add0~12_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|count~0_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Equal0~0_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|count~6_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Add0~10_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|process_0~3_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|process_0~5_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|process_0~6_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|process_0~7_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Equal0~1_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|process_0~0_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|process_0~1_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|LessThan1~0_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|process_0~2_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|process_0~4_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|data_clk~0_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|data_clk~q\ : std_logic;
SIGNAL \dac|i2c_master_inst|data_clk_prev~q\ : std_logic;
SIGNAL \dac|i2c_master_inst|process_1~0_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|state.command~q\ : std_logic;
SIGNAL \dac|i2c_master_inst|state~15_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|state.slv_ack1~q\ : std_logic;
SIGNAL \dac|i2c_master_inst|state~13_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|state.slv_ack2~q\ : std_logic;
SIGNAL \dac|i2c_master_inst|Selector20~0_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Selector20~1_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|state.wr~q\ : std_logic;
SIGNAL \dac|i2c_master_inst|Selector21~1_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|state.rd~q\ : std_logic;
SIGNAL \dac|i2c_master_inst|Selector0~0_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|bit_cnt[2]~4_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|state~14_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|state.mstr_ack~q\ : std_logic;
SIGNAL \dac|i2c_master_inst|Selector22~0_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|state.stop~q\ : std_logic;
SIGNAL \dac|i2c_master_inst|Selector17~0_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|state.ready~q\ : std_logic;
SIGNAL \dac|i2c_master_inst|Selector18~0_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|state.start~q\ : std_logic;
SIGNAL \dac|i2c_master_inst|Selector0~1_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Selector0~2_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|busy~q\ : std_logic;
SIGNAL \dac|busy_prev[0]~0_combout\ : std_logic;
SIGNAL \dac|busy_prev[1]~feeder_combout\ : std_logic;
SIGNAL \dac|ena~0_combout\ : std_logic;
SIGNAL \dac|Selector2~0_combout\ : std_logic;
SIGNAL \dac|state.ST_WR_1~q\ : std_logic;
SIGNAL \dac|i2c_master_inst|data_tx[7]~0_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Selector27~0_combout\ : std_logic;
SIGNAL \SDA~input_o\ : std_logic;
SIGNAL \dac|i2c_master_inst|Selector28~0_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Selector27~1_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|process_1~1_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|scl_ena~q\ : std_logic;
SIGNAL \dac|i2c_master_inst|Selector28~1_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Selector28~2_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|ack_error~q\ : std_logic;
SIGNAL \dac|state.ST_WR_2~0_combout\ : std_logic;
SIGNAL \dac|state.ST_WR_2~q\ : std_logic;
SIGNAL \dac|Selector4~0_combout\ : std_logic;
SIGNAL \dac|state.ST_STOP~q\ : std_logic;
SIGNAL \dac|Selector0~0_combout\ : std_logic;
SIGNAL \dac|state.ST_IDLE~q\ : std_logic;
SIGNAL \dac|state.ST_START~0_combout\ : std_logic;
SIGNAL \dac|state.ST_START~q\ : std_logic;
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
SIGNAL \dac|Equal2~6_combout\ : std_logic;
SIGNAL \dac|Equal2~7_combout\ : std_logic;
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
SIGNAL \dac|Equal2~2_combout\ : std_logic;
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
SIGNAL \dac|Equal2~3_combout\ : std_logic;
SIGNAL \dac|Equal2~4_combout\ : std_logic;
SIGNAL \dac|Equal2~10_combout\ : std_logic;
SIGNAL \dac|Selector5~0_combout\ : std_logic;
SIGNAL \dac|Selector5~1_combout\ : std_logic;
SIGNAL \dac|Selector5~2_combout\ : std_logic;
SIGNAL \dac|Selector5~3_combout\ : std_logic;
SIGNAL \dac|ena~q\ : std_logic;
SIGNAL \dac|i2c_master_inst|Selector21~0_combout\ : std_logic;
SIGNAL \DATA[0]~12_combout\ : std_logic;
SIGNAL \counter[0]~20_combout\ : std_logic;
SIGNAL \counter[0]~21\ : std_logic;
SIGNAL \counter[1]~22_combout\ : std_logic;
SIGNAL \counter[1]~23\ : std_logic;
SIGNAL \counter[2]~24_combout\ : std_logic;
SIGNAL \counter[2]~25\ : std_logic;
SIGNAL \counter[3]~26_combout\ : std_logic;
SIGNAL \counter[3]~27\ : std_logic;
SIGNAL \counter[4]~28_combout\ : std_logic;
SIGNAL \counter[4]~29\ : std_logic;
SIGNAL \counter[5]~30_combout\ : std_logic;
SIGNAL \counter[5]~31\ : std_logic;
SIGNAL \counter[6]~32_combout\ : std_logic;
SIGNAL \counter[6]~33\ : std_logic;
SIGNAL \counter[7]~34_combout\ : std_logic;
SIGNAL \counter[7]~35\ : std_logic;
SIGNAL \counter[8]~36_combout\ : std_logic;
SIGNAL \counter[8]~37\ : std_logic;
SIGNAL \counter[9]~38_combout\ : std_logic;
SIGNAL \counter[9]~39\ : std_logic;
SIGNAL \counter[10]~40_combout\ : std_logic;
SIGNAL \counter[10]~41\ : std_logic;
SIGNAL \counter[11]~42_combout\ : std_logic;
SIGNAL \counter[11]~43\ : std_logic;
SIGNAL \counter[12]~44_combout\ : std_logic;
SIGNAL \counter[12]~45\ : std_logic;
SIGNAL \counter[13]~46_combout\ : std_logic;
SIGNAL \counter[13]~47\ : std_logic;
SIGNAL \counter[14]~48_combout\ : std_logic;
SIGNAL \counter[14]~49\ : std_logic;
SIGNAL \counter[15]~50_combout\ : std_logic;
SIGNAL \counter[15]~51\ : std_logic;
SIGNAL \counter[16]~52_combout\ : std_logic;
SIGNAL \counter[16]~53\ : std_logic;
SIGNAL \counter[17]~54_combout\ : std_logic;
SIGNAL \counter[17]~55\ : std_logic;
SIGNAL \counter[18]~56_combout\ : std_logic;
SIGNAL \counter[18]~57\ : std_logic;
SIGNAL \counter[19]~58_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \DATA[0]~14_combout\ : std_logic;
SIGNAL \DATA[0]~13\ : std_logic;
SIGNAL \DATA[1]~15_combout\ : std_logic;
SIGNAL \DATA[1]~16\ : std_logic;
SIGNAL \DATA[2]~17_combout\ : std_logic;
SIGNAL \DATA[2]~18\ : std_logic;
SIGNAL \DATA[3]~19_combout\ : std_logic;
SIGNAL \DATA[3]~20\ : std_logic;
SIGNAL \DATA[4]~21_combout\ : std_logic;
SIGNAL \DATA[4]~22\ : std_logic;
SIGNAL \DATA[5]~23_combout\ : std_logic;
SIGNAL \DATA[5]~24\ : std_logic;
SIGNAL \DATA[6]~25_combout\ : std_logic;
SIGNAL \DATA[6]~26\ : std_logic;
SIGNAL \DATA[7]~27_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \DATA[7]~28\ : std_logic;
SIGNAL \DATA[8]~29_combout\ : std_logic;
SIGNAL \DATA[8]~30\ : std_logic;
SIGNAL \DATA[9]~31_combout\ : std_logic;
SIGNAL \DATA[9]~32\ : std_logic;
SIGNAL \DATA[10]~34\ : std_logic;
SIGNAL \DATA[11]~35_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \r~0_combout\ : std_logic;
SIGNAL \r~1_combout\ : std_logic;
SIGNAL \r~q\ : std_logic;
SIGNAL \DATA[10]~33_combout\ : std_logic;
SIGNAL \dac|data_buffer[10]~feeder_combout\ : std_logic;
SIGNAL \dac|data_buffer[7]~0_combout\ : std_logic;
SIGNAL \dac|data_buffer[2]~feeder_combout\ : std_logic;
SIGNAL \dac|Selector11~0_combout\ : std_logic;
SIGNAL \dac|process_0~0_combout\ : std_logic;
SIGNAL \dac|data_wr[3]~4_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|data_tx[7]~1_combout\ : std_logic;
SIGNAL \dac|data_buffer[11]~feeder_combout\ : std_logic;
SIGNAL \dac|data_buffer[3]~feeder_combout\ : std_logic;
SIGNAL \dac|Selector10~0_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Mux3~0_combout\ : std_logic;
SIGNAL \dac|data_buffer[8]~feeder_combout\ : std_logic;
SIGNAL \dac|data_buffer[0]~feeder_combout\ : std_logic;
SIGNAL \dac|Selector13~0_combout\ : std_logic;
SIGNAL \dac|data_buffer[1]~feeder_combout\ : std_logic;
SIGNAL \dac|data_buffer[9]~feeder_combout\ : std_logic;
SIGNAL \dac|Selector12~0_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Mux3~1_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Selector23~2_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Selector23~3_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Selector23~4_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Selector23~5_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Selector23~6_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Mux4~2_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Mux4~3_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Selector23~14_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Selector23~11_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Mux2~0_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Mux2~1_combout\ : std_logic;
SIGNAL \dac|data_buffer[7]~feeder_combout\ : std_logic;
SIGNAL \dac|data_wr[7]~3_combout\ : std_logic;
SIGNAL \dac|Selector6~0_combout\ : std_logic;
SIGNAL \dac|data_buffer[4]~feeder_combout\ : std_logic;
SIGNAL \dac|data_wr[4]~2_combout\ : std_logic;
SIGNAL \dac|Selector9~0_combout\ : std_logic;
SIGNAL \dac|data_buffer[6]~feeder_combout\ : std_logic;
SIGNAL \dac|data_wr[6]~0_combout\ : std_logic;
SIGNAL \dac|Selector7~0_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Mux2~2_combout\ : std_logic;
SIGNAL \dac|data_buffer[5]~feeder_combout\ : std_logic;
SIGNAL \dac|data_wr[5]~1_combout\ : std_logic;
SIGNAL \dac|Selector8~0_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Mux2~3_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Selector23~10_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Selector23~12_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Mux3~2_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Mux3~3_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Selector23~7_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Mux4~0_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Mux4~1_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Selector23~8_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Selector23~9_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|Selector23~13_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|sda_int~q\ : std_logic;
SIGNAL \dac|i2c_master_inst|Selector29~0_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|scl_clk~0_combout\ : std_logic;
SIGNAL \dac|i2c_master_inst|scl_clk~q\ : std_logic;
SIGNAL \dac|i2c_master_inst|scl~1_combout\ : std_logic;
SIGNAL \data_out[0]~reg0feeder_combout\ : std_logic;
SIGNAL \data_out[0]~reg0_q\ : std_logic;
SIGNAL \data_out[1]~reg0feeder_combout\ : std_logic;
SIGNAL \data_out[1]~reg0_q\ : std_logic;
SIGNAL \data_out[2]~reg0feeder_combout\ : std_logic;
SIGNAL \data_out[2]~reg0_q\ : std_logic;
SIGNAL \data_out[3]~reg0feeder_combout\ : std_logic;
SIGNAL \data_out[3]~reg0_q\ : std_logic;
SIGNAL \data_out[4]~reg0feeder_combout\ : std_logic;
SIGNAL \data_out[4]~reg0_q\ : std_logic;
SIGNAL \data_out[5]~reg0feeder_combout\ : std_logic;
SIGNAL \data_out[5]~reg0_q\ : std_logic;
SIGNAL \data_out[6]~reg0feeder_combout\ : std_logic;
SIGNAL \data_out[6]~reg0_q\ : std_logic;
SIGNAL \data_out[7]~reg0feeder_combout\ : std_logic;
SIGNAL \data_out[7]~reg0_q\ : std_logic;
SIGNAL \data_out[8]~reg0_q\ : std_logic;
SIGNAL \data_out[9]~reg0feeder_combout\ : std_logic;
SIGNAL \data_out[9]~reg0_q\ : std_logic;
SIGNAL \data_out[10]~reg0feeder_combout\ : std_logic;
SIGNAL \data_out[10]~reg0_q\ : std_logic;
SIGNAL \data_out[11]~reg0feeder_combout\ : std_logic;
SIGNAL \data_out[11]~reg0_q\ : std_logic;
SIGNAL \dac|busy_prev\ : std_logic_vector(1 DOWNTO 0);
SIGNAL DATA : std_logic_vector(11 DOWNTO 0);
SIGNAL \dac|data_buffer\ : std_logic_vector(15 DOWNTO 0);
SIGNAL counter : std_logic_vector(19 DOWNTO 0);
SIGNAL \dac|data_wr\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \dac|i2c_master_inst|bit_cnt\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \dac|i2c_master_inst|data_tx\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \dac|i2c_master_inst|count\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \dac|wait_cnt\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \dac|ALT_INV_state.ST_WR_1~q\ : std_logic;

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

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\dac|ALT_INV_state.ST_WR_1~q\ <= NOT \dac|state.ST_WR_1~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

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

-- Location: IOOBUF_X53_Y10_N16
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

-- Location: IOOBUF_X53_Y22_N9
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

-- Location: IOOBUF_X53_Y12_N2
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

-- Location: IOOBUF_X53_Y20_N23
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

-- Location: IOOBUF_X53_Y11_N9
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

-- Location: IOOBUF_X53_Y14_N9
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

-- Location: IOOBUF_X53_Y13_N9
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

-- Location: IOOBUF_X53_Y11_N2
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

-- Location: IOOBUF_X53_Y21_N23
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

-- Location: IOOBUF_X53_Y20_N16
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

-- Location: IOOBUF_X53_Y16_N9
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

-- Location: IOOBUF_X53_Y15_N9
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

-- Location: IOOBUF_X34_Y34_N16
\ADC_SADDR~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ADC_SADDR~output_o\);

-- Location: IOOBUF_X34_Y34_N9
\ADC_CS_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
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
	i => GND,
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

-- Location: LCCOMB_X45_Y17_N30
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

-- Location: LCCOMB_X45_Y17_N12
\dac|i2c_master_inst|Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Selector25~0_combout\ = \dac|i2c_master_inst|bit_cnt\(0) $ (\dac|i2c_master_inst|bit_cnt\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|bit_cnt\(0),
	datac => \dac|i2c_master_inst|bit_cnt\(1),
	combout => \dac|i2c_master_inst|Selector25~0_combout\);

-- Location: FF_X45_Y17_N13
\dac|i2c_master_inst|bit_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|i2c_master_inst|Selector25~0_combout\,
	clrn => \RST~input_o\,
	ena => \dac|i2c_master_inst|bit_cnt[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|i2c_master_inst|bit_cnt\(1));

-- Location: LCCOMB_X45_Y17_N0
\dac|i2c_master_inst|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Add1~0_combout\ = \dac|i2c_master_inst|bit_cnt\(2) $ (((\dac|i2c_master_inst|bit_cnt\(0) & \dac|i2c_master_inst|bit_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|bit_cnt\(0),
	datab => \dac|i2c_master_inst|bit_cnt\(1),
	datac => \dac|i2c_master_inst|bit_cnt\(2),
	combout => \dac|i2c_master_inst|Add1~0_combout\);

-- Location: FF_X46_Y17_N1
\dac|i2c_master_inst|bit_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \dac|i2c_master_inst|Add1~0_combout\,
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \dac|i2c_master_inst|bit_cnt[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|i2c_master_inst|bit_cnt\(2));

-- Location: LCCOMB_X46_Y17_N26
\dac|i2c_master_inst|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Equal1~0_combout\ = (\dac|i2c_master_inst|bit_cnt\(0) & (\dac|i2c_master_inst|bit_cnt\(2) & \dac|i2c_master_inst|bit_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|bit_cnt\(0),
	datab => \dac|i2c_master_inst|bit_cnt\(2),
	datac => \dac|i2c_master_inst|bit_cnt\(1),
	combout => \dac|i2c_master_inst|Equal1~0_combout\);

-- Location: LCCOMB_X47_Y17_N14
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

-- Location: LCCOMB_X48_Y19_N2
\dac|i2c_master_inst|stretch~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|stretch~0_combout\ = (\dac|i2c_master_inst|process_0~7_combout\ & ((\dac|i2c_master_inst|stretch~q\))) # (!\dac|i2c_master_inst|process_0~7_combout\ & (!\SCL~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SCL~input_o\,
	datac => \dac|i2c_master_inst|stretch~q\,
	datad => \dac|i2c_master_inst|process_0~7_combout\,
	combout => \dac|i2c_master_inst|stretch~0_combout\);

-- Location: FF_X48_Y19_N3
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

-- Location: LCCOMB_X47_Y19_N6
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

-- Location: LCCOMB_X47_Y19_N0
\dac|i2c_master_inst|count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|count~2_combout\ = (\dac|i2c_master_inst|Add0~0_combout\ & ((!\dac|i2c_master_inst|Equal0~2_combout\) # (!\dac|i2c_master_inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dac|i2c_master_inst|Equal0~0_combout\,
	datac => \dac|i2c_master_inst|Equal0~2_combout\,
	datad => \dac|i2c_master_inst|Add0~0_combout\,
	combout => \dac|i2c_master_inst|count~2_combout\);

-- Location: FF_X47_Y19_N1
\dac|i2c_master_inst|count[0]\ : dffeas
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
	q => \dac|i2c_master_inst|count\(0));

-- Location: LCCOMB_X47_Y19_N8
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

-- Location: LCCOMB_X47_Y19_N4
\dac|i2c_master_inst|count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|count~4_combout\ = (\dac|i2c_master_inst|Add0~2_combout\ & ((!\dac|i2c_master_inst|Equal0~0_combout\) # (!\dac|i2c_master_inst|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|Equal0~2_combout\,
	datac => \dac|i2c_master_inst|Add0~2_combout\,
	datad => \dac|i2c_master_inst|Equal0~0_combout\,
	combout => \dac|i2c_master_inst|count~4_combout\);

-- Location: FF_X47_Y19_N5
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

-- Location: LCCOMB_X47_Y19_N10
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

-- Location: LCCOMB_X47_Y19_N22
\dac|i2c_master_inst|count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|count~3_combout\ = (\dac|i2c_master_inst|Add0~4_combout\ & ((!\dac|i2c_master_inst|Equal0~2_combout\) # (!\dac|i2c_master_inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dac|i2c_master_inst|Equal0~0_combout\,
	datac => \dac|i2c_master_inst|Equal0~2_combout\,
	datad => \dac|i2c_master_inst|Add0~4_combout\,
	combout => \dac|i2c_master_inst|count~3_combout\);

-- Location: FF_X47_Y19_N23
\dac|i2c_master_inst|count[2]\ : dffeas
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
	q => \dac|i2c_master_inst|count\(2));

-- Location: LCCOMB_X48_Y19_N30
\dac|i2c_master_inst|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Equal0~2_combout\ = (\dac|i2c_master_inst|count\(0) & (\dac|i2c_master_inst|count\(1) & !\dac|i2c_master_inst|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|count\(0),
	datac => \dac|i2c_master_inst|count\(1),
	datad => \dac|i2c_master_inst|count\(2),
	combout => \dac|i2c_master_inst|Equal0~2_combout\);

-- Location: LCCOMB_X47_Y19_N12
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

-- Location: LCCOMB_X47_Y19_N30
\dac|i2c_master_inst|count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|count~1_combout\ = (\dac|i2c_master_inst|Add0~6_combout\ & ((!\dac|i2c_master_inst|Equal0~2_combout\) # (!\dac|i2c_master_inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dac|i2c_master_inst|Equal0~0_combout\,
	datac => \dac|i2c_master_inst|Equal0~2_combout\,
	datad => \dac|i2c_master_inst|Add0~6_combout\,
	combout => \dac|i2c_master_inst|count~1_combout\);

-- Location: FF_X47_Y19_N25
\dac|i2c_master_inst|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \dac|i2c_master_inst|count~1_combout\,
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|i2c_master_inst|count\(3));

-- Location: LCCOMB_X47_Y19_N14
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

-- Location: LCCOMB_X47_Y19_N26
\dac|i2c_master_inst|count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|count~5_combout\ = (\dac|i2c_master_inst|Add0~8_combout\ & ((!\dac|i2c_master_inst|Equal0~0_combout\) # (!\dac|i2c_master_inst|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|Equal0~2_combout\,
	datac => \dac|i2c_master_inst|Add0~8_combout\,
	datad => \dac|i2c_master_inst|Equal0~0_combout\,
	combout => \dac|i2c_master_inst|count~5_combout\);

-- Location: FF_X47_Y19_N27
\dac|i2c_master_inst|count[4]\ : dffeas
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
	q => \dac|i2c_master_inst|count\(4));

-- Location: LCCOMB_X47_Y19_N16
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

-- Location: LCCOMB_X47_Y19_N18
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

-- Location: LCCOMB_X48_Y19_N4
\dac|i2c_master_inst|count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|count~0_combout\ = (\dac|i2c_master_inst|Add0~12_combout\ & ((!\dac|i2c_master_inst|Equal0~2_combout\) # (!\dac|i2c_master_inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dac|i2c_master_inst|Equal0~0_combout\,
	datac => \dac|i2c_master_inst|Equal0~2_combout\,
	datad => \dac|i2c_master_inst|Add0~12_combout\,
	combout => \dac|i2c_master_inst|count~0_combout\);

-- Location: FF_X48_Y19_N19
\dac|i2c_master_inst|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \dac|i2c_master_inst|count~0_combout\,
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|i2c_master_inst|count\(6));

-- Location: LCCOMB_X47_Y19_N24
\dac|i2c_master_inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Equal0~0_combout\ = (\dac|i2c_master_inst|count\(4) & (\dac|i2c_master_inst|count\(6) & (\dac|i2c_master_inst|count\(3) & \dac|i2c_master_inst|count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|count\(4),
	datab => \dac|i2c_master_inst|count\(6),
	datac => \dac|i2c_master_inst|count\(3),
	datad => \dac|i2c_master_inst|count\(5),
	combout => \dac|i2c_master_inst|Equal0~0_combout\);

-- Location: LCCOMB_X47_Y19_N28
\dac|i2c_master_inst|count~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|count~6_combout\ = (\dac|i2c_master_inst|Add0~10_combout\ & ((!\dac|i2c_master_inst|Equal0~2_combout\) # (!\dac|i2c_master_inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dac|i2c_master_inst|Equal0~0_combout\,
	datac => \dac|i2c_master_inst|Equal0~2_combout\,
	datad => \dac|i2c_master_inst|Add0~10_combout\,
	combout => \dac|i2c_master_inst|count~6_combout\);

-- Location: FF_X47_Y19_N29
\dac|i2c_master_inst|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|i2c_master_inst|count~6_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|i2c_master_inst|count\(5));

-- Location: LCCOMB_X48_Y19_N26
\dac|i2c_master_inst|process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|process_0~3_combout\ = (\dac|i2c_master_inst|Add0~4_combout\ & (\dac|i2c_master_inst|Add0~8_combout\ & (\dac|i2c_master_inst|Add0~2_combout\ & \dac|i2c_master_inst|count~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|Add0~4_combout\,
	datab => \dac|i2c_master_inst|Add0~8_combout\,
	datac => \dac|i2c_master_inst|Add0~2_combout\,
	datad => \dac|i2c_master_inst|count~1_combout\,
	combout => \dac|i2c_master_inst|process_0~3_combout\);

-- Location: LCCOMB_X48_Y19_N22
\dac|i2c_master_inst|process_0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|process_0~5_combout\ = (\dac|i2c_master_inst|Add0~4_combout\ & ((\dac|i2c_master_inst|Add0~2_combout\ & ((!\dac|i2c_master_inst|Add0~10_combout\))) # (!\dac|i2c_master_inst|Add0~2_combout\ & (\dac|i2c_master_inst|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|Add0~2_combout\,
	datab => \dac|i2c_master_inst|Add0~0_combout\,
	datac => \dac|i2c_master_inst|Add0~10_combout\,
	datad => \dac|i2c_master_inst|Add0~4_combout\,
	combout => \dac|i2c_master_inst|process_0~5_combout\);

-- Location: LCCOMB_X48_Y19_N16
\dac|i2c_master_inst|process_0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|process_0~6_combout\ = (\dac|i2c_master_inst|Add0~8_combout\ & (\dac|i2c_master_inst|process_0~5_combout\ & \dac|i2c_master_inst|count~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|Add0~8_combout\,
	datac => \dac|i2c_master_inst|process_0~5_combout\,
	datad => \dac|i2c_master_inst|count~1_combout\,
	combout => \dac|i2c_master_inst|process_0~6_combout\);

-- Location: LCCOMB_X48_Y19_N10
\dac|i2c_master_inst|process_0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|process_0~7_combout\ = (\dac|i2c_master_inst|process_0~6_combout\) # ((\dac|i2c_master_inst|count~0_combout\ & (\dac|i2c_master_inst|Add0~10_combout\)) # (!\dac|i2c_master_inst|count~0_combout\ & 
-- ((!\dac|i2c_master_inst|process_0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|Add0~10_combout\,
	datab => \dac|i2c_master_inst|count~0_combout\,
	datac => \dac|i2c_master_inst|process_0~3_combout\,
	datad => \dac|i2c_master_inst|process_0~6_combout\,
	combout => \dac|i2c_master_inst|process_0~7_combout\);

-- Location: LCCOMB_X47_Y19_N2
\dac|i2c_master_inst|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Equal0~1_combout\ = (!\dac|i2c_master_inst|count\(2) & (\dac|i2c_master_inst|count\(0) & (\dac|i2c_master_inst|count\(1) & \dac|i2c_master_inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|count\(2),
	datab => \dac|i2c_master_inst|count\(0),
	datac => \dac|i2c_master_inst|count\(1),
	datad => \dac|i2c_master_inst|Equal0~0_combout\,
	combout => \dac|i2c_master_inst|Equal0~1_combout\);

-- Location: LCCOMB_X47_Y19_N20
\dac|i2c_master_inst|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|process_0~0_combout\ = (\dac|i2c_master_inst|Add0~6_combout\ & (\dac|i2c_master_inst|Add0~2_combout\ & (\dac|i2c_master_inst|Add0~8_combout\ & !\dac|i2c_master_inst|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|Add0~6_combout\,
	datab => \dac|i2c_master_inst|Add0~2_combout\,
	datac => \dac|i2c_master_inst|Add0~8_combout\,
	datad => \dac|i2c_master_inst|Equal0~1_combout\,
	combout => \dac|i2c_master_inst|process_0~0_combout\);

-- Location: LCCOMB_X48_Y19_N24
\dac|i2c_master_inst|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|process_0~1_combout\ = (\dac|i2c_master_inst|Add0~4_combout\ & (\dac|i2c_master_inst|Add0~0_combout\ & (!\dac|i2c_master_inst|Equal0~1_combout\ & \dac|i2c_master_inst|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|Add0~4_combout\,
	datab => \dac|i2c_master_inst|Add0~0_combout\,
	datac => \dac|i2c_master_inst|Equal0~1_combout\,
	datad => \dac|i2c_master_inst|process_0~0_combout\,
	combout => \dac|i2c_master_inst|process_0~1_combout\);

-- Location: LCCOMB_X48_Y19_N14
\dac|i2c_master_inst|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|LessThan1~0_combout\ = (\dac|i2c_master_inst|count~0_combout\) # ((\dac|i2c_master_inst|process_0~1_combout\) # ((!\dac|i2c_master_inst|Equal0~1_combout\ & \dac|i2c_master_inst|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|Equal0~1_combout\,
	datab => \dac|i2c_master_inst|count~0_combout\,
	datac => \dac|i2c_master_inst|Add0~10_combout\,
	datad => \dac|i2c_master_inst|process_0~1_combout\,
	combout => \dac|i2c_master_inst|LessThan1~0_combout\);

-- Location: LCCOMB_X48_Y19_N20
\dac|i2c_master_inst|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|process_0~2_combout\ = (\dac|i2c_master_inst|Add0~12_combout\) # ((\dac|i2c_master_inst|Equal0~0_combout\ & \dac|i2c_master_inst|Equal0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dac|i2c_master_inst|Equal0~0_combout\,
	datac => \dac|i2c_master_inst|Equal0~2_combout\,
	datad => \dac|i2c_master_inst|Add0~12_combout\,
	combout => \dac|i2c_master_inst|process_0~2_combout\);

-- Location: LCCOMB_X48_Y19_N12
\dac|i2c_master_inst|process_0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|process_0~4_combout\ = (\dac|i2c_master_inst|process_0~2_combout\) # ((\dac|i2c_master_inst|Add0~10_combout\ & (\dac|i2c_master_inst|process_0~3_combout\)) # (!\dac|i2c_master_inst|Add0~10_combout\ & 
-- ((!\dac|i2c_master_inst|process_0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|Add0~10_combout\,
	datab => \dac|i2c_master_inst|process_0~2_combout\,
	datac => \dac|i2c_master_inst|process_0~3_combout\,
	datad => \dac|i2c_master_inst|process_0~1_combout\,
	combout => \dac|i2c_master_inst|process_0~4_combout\);

-- Location: LCCOMB_X48_Y19_N8
\dac|i2c_master_inst|data_clk~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|data_clk~0_combout\ = (\dac|i2c_master_inst|LessThan1~0_combout\ & ((!\dac|i2c_master_inst|process_0~4_combout\) # (!\dac|i2c_master_inst|process_0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|process_0~7_combout\,
	datac => \dac|i2c_master_inst|LessThan1~0_combout\,
	datad => \dac|i2c_master_inst|process_0~4_combout\,
	combout => \dac|i2c_master_inst|data_clk~0_combout\);

-- Location: FF_X48_Y19_N9
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

-- Location: FF_X48_Y17_N9
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

-- Location: LCCOMB_X48_Y17_N4
\dac|i2c_master_inst|process_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|process_1~0_combout\ = (!\dac|i2c_master_inst|data_clk_prev~q\ & \dac|i2c_master_inst|data_clk~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dac|i2c_master_inst|data_clk_prev~q\,
	datad => \dac|i2c_master_inst|data_clk~q\,
	combout => \dac|i2c_master_inst|process_1~0_combout\);

-- Location: FF_X47_Y17_N15
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

-- Location: LCCOMB_X47_Y17_N18
\dac|i2c_master_inst|state~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|state~15_combout\ = (\dac|i2c_master_inst|bit_cnt\(2) & (\dac|i2c_master_inst|bit_cnt\(1) & (\dac|i2c_master_inst|bit_cnt\(0) & \dac|i2c_master_inst|state.command~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|bit_cnt\(2),
	datab => \dac|i2c_master_inst|bit_cnt\(1),
	datac => \dac|i2c_master_inst|bit_cnt\(0),
	datad => \dac|i2c_master_inst|state.command~q\,
	combout => \dac|i2c_master_inst|state~15_combout\);

-- Location: FF_X47_Y17_N19
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

-- Location: LCCOMB_X46_Y17_N14
\dac|i2c_master_inst|state~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|state~13_combout\ = (\dac|i2c_master_inst|bit_cnt\(0) & (\dac|i2c_master_inst|bit_cnt\(2) & (\dac|i2c_master_inst|bit_cnt\(1) & \dac|i2c_master_inst|state.wr~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|bit_cnt\(0),
	datab => \dac|i2c_master_inst|bit_cnt\(2),
	datac => \dac|i2c_master_inst|bit_cnt\(1),
	datad => \dac|i2c_master_inst|state.wr~q\,
	combout => \dac|i2c_master_inst|state~13_combout\);

-- Location: FF_X46_Y17_N15
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

-- Location: LCCOMB_X46_Y17_N30
\dac|i2c_master_inst|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Selector20~0_combout\ = (\dac|i2c_master_inst|state.slv_ack2~q\ & \dac|ena~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dac|i2c_master_inst|state.slv_ack2~q\,
	datac => \dac|ena~q\,
	combout => \dac|i2c_master_inst|Selector20~0_combout\);

-- Location: LCCOMB_X46_Y17_N20
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

-- Location: FF_X46_Y17_N21
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

-- Location: LCCOMB_X46_Y17_N18
\dac|i2c_master_inst|Selector21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Selector21~1_combout\ = (\dac|i2c_master_inst|Equal1~0_combout\ & (\dac|ena~q\ & ((\dac|i2c_master_inst|state.mstr_ack~q\)))) # (!\dac|i2c_master_inst|Equal1~0_combout\ & ((\dac|i2c_master_inst|state.rd~q\) # ((\dac|ena~q\ & 
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
	combout => \dac|i2c_master_inst|Selector21~1_combout\);

-- Location: FF_X46_Y17_N19
\dac|i2c_master_inst|state.rd\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|i2c_master_inst|Selector21~1_combout\,
	clrn => \RST~input_o\,
	ena => \dac|i2c_master_inst|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|i2c_master_inst|state.rd~q\);

-- Location: LCCOMB_X47_Y17_N2
\dac|i2c_master_inst|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Selector0~0_combout\ = (!\dac|i2c_master_inst|state.wr~q\ & !\dac|i2c_master_inst|state.rd~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dac|i2c_master_inst|state.wr~q\,
	datad => \dac|i2c_master_inst|state.rd~q\,
	combout => \dac|i2c_master_inst|Selector0~0_combout\);

-- Location: LCCOMB_X48_Y17_N2
\dac|i2c_master_inst|bit_cnt[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|bit_cnt[2]~4_combout\ = (!\dac|i2c_master_inst|data_clk_prev~q\ & (\dac|i2c_master_inst|data_clk~q\ & ((\dac|i2c_master_inst|state.command~q\) # (!\dac|i2c_master_inst|Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|state.command~q\,
	datab => \dac|i2c_master_inst|Selector0~0_combout\,
	datac => \dac|i2c_master_inst|data_clk_prev~q\,
	datad => \dac|i2c_master_inst|data_clk~q\,
	combout => \dac|i2c_master_inst|bit_cnt[2]~4_combout\);

-- Location: FF_X45_Y17_N31
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

-- Location: LCCOMB_X46_Y17_N16
\dac|i2c_master_inst|state~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|state~14_combout\ = (\dac|i2c_master_inst|bit_cnt\(0) & (\dac|i2c_master_inst|state.rd~q\ & (\dac|i2c_master_inst|bit_cnt\(2) & \dac|i2c_master_inst|bit_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|bit_cnt\(0),
	datab => \dac|i2c_master_inst|state.rd~q\,
	datac => \dac|i2c_master_inst|bit_cnt\(2),
	datad => \dac|i2c_master_inst|bit_cnt\(1),
	combout => \dac|i2c_master_inst|state~14_combout\);

-- Location: FF_X46_Y17_N17
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

-- Location: LCCOMB_X47_Y17_N8
\dac|i2c_master_inst|Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Selector22~0_combout\ = (!\dac|ena~q\ & ((\dac|i2c_master_inst|state.mstr_ack~q\) # (\dac|i2c_master_inst|state.slv_ack2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|state.mstr_ack~q\,
	datab => \dac|ena~q\,
	datad => \dac|i2c_master_inst|state.slv_ack2~q\,
	combout => \dac|i2c_master_inst|Selector22~0_combout\);

-- Location: FF_X47_Y17_N23
\dac|i2c_master_inst|state.stop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \dac|i2c_master_inst|Selector22~0_combout\,
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \dac|i2c_master_inst|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|i2c_master_inst|state.stop~q\);

-- Location: LCCOMB_X47_Y17_N24
\dac|i2c_master_inst|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Selector17~0_combout\ = (!\dac|i2c_master_inst|state.stop~q\ & ((\dac|i2c_master_inst|state.ready~q\) # (\dac|ena~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dac|i2c_master_inst|state.stop~q\,
	datac => \dac|i2c_master_inst|state.ready~q\,
	datad => \dac|ena~q\,
	combout => \dac|i2c_master_inst|Selector17~0_combout\);

-- Location: FF_X47_Y17_N25
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

-- Location: LCCOMB_X47_Y17_N22
\dac|i2c_master_inst|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Selector18~0_combout\ = (!\dac|i2c_master_inst|state.ready~q\ & \dac|ena~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dac|i2c_master_inst|state.ready~q\,
	datad => \dac|ena~q\,
	combout => \dac|i2c_master_inst|Selector18~0_combout\);

-- Location: FF_X47_Y17_N9
\dac|i2c_master_inst|state.start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \dac|i2c_master_inst|Selector18~0_combout\,
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \dac|i2c_master_inst|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|i2c_master_inst|state.start~q\);

-- Location: LCCOMB_X47_Y17_N6
\dac|i2c_master_inst|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Selector0~1_combout\ = (!\dac|i2c_master_inst|busy~q\ & ((\dac|i2c_master_inst|Selector22~0_combout\) # ((\dac|i2c_master_inst|state.slv_ack1~q\) # (\dac|i2c_master_inst|state.command~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|Selector22~0_combout\,
	datab => \dac|i2c_master_inst|state.slv_ack1~q\,
	datac => \dac|i2c_master_inst|busy~q\,
	datad => \dac|i2c_master_inst|state.command~q\,
	combout => \dac|i2c_master_inst|Selector0~1_combout\);

-- Location: LCCOMB_X47_Y17_N26
\dac|i2c_master_inst|Selector0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Selector0~2_combout\ = (!\dac|i2c_master_inst|state.start~q\ & (\dac|i2c_master_inst|Selector0~0_combout\ & (!\dac|i2c_master_inst|Selector18~0_combout\ & !\dac|i2c_master_inst|Selector0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|state.start~q\,
	datab => \dac|i2c_master_inst|Selector0~0_combout\,
	datac => \dac|i2c_master_inst|Selector18~0_combout\,
	datad => \dac|i2c_master_inst|Selector0~1_combout\,
	combout => \dac|i2c_master_inst|Selector0~2_combout\);

-- Location: FF_X47_Y17_N27
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

-- Location: LCCOMB_X46_Y19_N4
\dac|busy_prev[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|busy_prev[0]~0_combout\ = !\dac|i2c_master_inst|busy~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dac|i2c_master_inst|busy~q\,
	combout => \dac|busy_prev[0]~0_combout\);

-- Location: FF_X46_Y19_N5
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

-- Location: LCCOMB_X38_Y19_N2
\dac|busy_prev[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|busy_prev[1]~feeder_combout\ = \dac|busy_prev\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dac|busy_prev\(0),
	combout => \dac|busy_prev[1]~feeder_combout\);

-- Location: FF_X38_Y19_N3
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

-- Location: LCCOMB_X38_Y19_N12
\dac|ena~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|ena~0_combout\ = (!\dac|busy_prev\(0) & \dac|busy_prev\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dac|busy_prev\(0),
	datad => \dac|busy_prev\(1),
	combout => \dac|ena~0_combout\);

-- Location: LCCOMB_X38_Y19_N24
\dac|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Selector2~0_combout\ = (\dac|state.ST_START~q\) # ((\dac|state.ST_WR_1~q\ & ((\dac|busy_prev\(0)) # (!\dac|busy_prev\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|state.ST_START~q\,
	datab => \dac|busy_prev\(0),
	datac => \dac|state.ST_WR_1~q\,
	datad => \dac|busy_prev\(1),
	combout => \dac|Selector2~0_combout\);

-- Location: FF_X38_Y19_N25
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

-- Location: LCCOMB_X47_Y17_N4
\dac|i2c_master_inst|data_tx[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|data_tx[7]~0_combout\ = (!\dac|i2c_master_inst|state.slv_ack2~q\ & (!\dac|i2c_master_inst|state.mstr_ack~q\ & \dac|i2c_master_inst|state.ready~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|state.slv_ack2~q\,
	datac => \dac|i2c_master_inst|state.mstr_ack~q\,
	datad => \dac|i2c_master_inst|state.ready~q\,
	combout => \dac|i2c_master_inst|data_tx[7]~0_combout\);

-- Location: LCCOMB_X47_Y17_N30
\dac|i2c_master_inst|Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Selector27~0_combout\ = (!\dac|i2c_master_inst|state.command~q\ & (!\dac|i2c_master_inst|state.slv_ack1~q\ & (\dac|i2c_master_inst|data_tx[7]~0_combout\ & \dac|i2c_master_inst|Selector0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|state.command~q\,
	datab => \dac|i2c_master_inst|state.slv_ack1~q\,
	datac => \dac|i2c_master_inst|data_tx[7]~0_combout\,
	datad => \dac|i2c_master_inst|Selector0~0_combout\,
	combout => \dac|i2c_master_inst|Selector27~0_combout\);

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

-- Location: LCCOMB_X47_Y17_N28
\dac|i2c_master_inst|Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Selector28~0_combout\ = (\SDA~input_o\ & ((\dac|i2c_master_inst|state.slv_ack2~q\) # (\dac|i2c_master_inst|state.slv_ack1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|state.slv_ack2~q\,
	datab => \dac|i2c_master_inst|state.slv_ack1~q\,
	datad => \SDA~input_o\,
	combout => \dac|i2c_master_inst|Selector28~0_combout\);

-- Location: LCCOMB_X48_Y17_N22
\dac|i2c_master_inst|Selector27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Selector27~1_combout\ = (\dac|i2c_master_inst|state.start~q\) # ((\dac|i2c_master_inst|scl_ena~q\ & !\dac|i2c_master_inst|Selector27~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|state.start~q\,
	datac => \dac|i2c_master_inst|scl_ena~q\,
	datad => \dac|i2c_master_inst|Selector27~0_combout\,
	combout => \dac|i2c_master_inst|Selector27~1_combout\);

-- Location: LCCOMB_X48_Y17_N18
\dac|i2c_master_inst|process_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|process_1~1_combout\ = (\dac|i2c_master_inst|data_clk_prev~q\ & !\dac|i2c_master_inst|data_clk~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dac|i2c_master_inst|data_clk_prev~q\,
	datad => \dac|i2c_master_inst|data_clk~q\,
	combout => \dac|i2c_master_inst|process_1~1_combout\);

-- Location: FF_X48_Y17_N23
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

-- Location: LCCOMB_X48_Y17_N16
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

-- Location: LCCOMB_X47_Y17_N20
\dac|i2c_master_inst|Selector28~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Selector28~2_combout\ = (\dac|i2c_master_inst|Selector28~0_combout\) # ((\dac|i2c_master_inst|ack_error~q\ & ((\dac|i2c_master_inst|Selector28~1_combout\) # (!\dac|i2c_master_inst|Selector27~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|Selector27~0_combout\,
	datab => \dac|i2c_master_inst|Selector28~0_combout\,
	datac => \dac|i2c_master_inst|ack_error~q\,
	datad => \dac|i2c_master_inst|Selector28~1_combout\,
	combout => \dac|i2c_master_inst|Selector28~2_combout\);

-- Location: FF_X47_Y17_N21
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

-- Location: LCCOMB_X38_Y19_N22
\dac|state.ST_WR_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|state.ST_WR_2~0_combout\ = (\dac|ena~0_combout\ & (\dac|state.ST_WR_1~q\ & ((!\dac|i2c_master_inst|ack_error~q\)))) # (!\dac|ena~0_combout\ & (((\dac|state.ST_WR_2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|ena~0_combout\,
	datab => \dac|state.ST_WR_1~q\,
	datac => \dac|state.ST_WR_2~q\,
	datad => \dac|i2c_master_inst|ack_error~q\,
	combout => \dac|state.ST_WR_2~0_combout\);

-- Location: FF_X38_Y19_N23
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

-- Location: LCCOMB_X38_Y19_N6
\dac|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Selector4~0_combout\ = (\dac|ena~0_combout\ & (\dac|i2c_master_inst|ack_error~q\ & ((\dac|state.ST_WR_1~q\) # (\dac|state.ST_WR_2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|ena~0_combout\,
	datab => \dac|state.ST_WR_1~q\,
	datac => \dac|state.ST_WR_2~q\,
	datad => \dac|i2c_master_inst|ack_error~q\,
	combout => \dac|Selector4~0_combout\);

-- Location: FF_X38_Y19_N7
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

-- Location: LCCOMB_X38_Y19_N26
\dac|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Selector0~0_combout\ = (!\dac|state.ST_STOP~q\ & ((\dac|i2c_master_inst|ack_error~q\) # ((!\dac|ena~0_combout\) # (!\dac|state.ST_WR_2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|state.ST_STOP~q\,
	datab => \dac|i2c_master_inst|ack_error~q\,
	datac => \dac|state.ST_WR_2~q\,
	datad => \dac|ena~0_combout\,
	combout => \dac|Selector0~0_combout\);

-- Location: FF_X38_Y19_N27
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

-- Location: LCCOMB_X38_Y19_N30
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

-- Location: FF_X38_Y19_N31
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

-- Location: LCCOMB_X40_Y19_N0
\dac|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Add0~0_combout\ = \dac|wait_cnt\(0) $ (VCC)
-- \dac|Add0~1\ = CARRY(\dac|wait_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dac|wait_cnt\(0),
	datad => VCC,
	combout => \dac|Add0~0_combout\,
	cout => \dac|Add0~1\);

-- Location: LCCOMB_X39_Y19_N6
\dac|wait_cnt~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|wait_cnt~26_combout\ = (\dac|Add0~0_combout\ & !\dac|Equal2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dac|Add0~0_combout\,
	datad => \dac|Equal2~10_combout\,
	combout => \dac|wait_cnt~26_combout\);

-- Location: FF_X40_Y19_N5
\dac|wait_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \dac|wait_cnt~26_combout\,
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \dac|state.ST_STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|wait_cnt\(0));

-- Location: LCCOMB_X40_Y19_N2
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

-- Location: LCCOMB_X39_Y19_N4
\dac|wait_cnt~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|wait_cnt~25_combout\ = (\dac|Add0~2_combout\ & !\dac|Equal2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|Add0~2_combout\,
	datad => \dac|Equal2~10_combout\,
	combout => \dac|wait_cnt~25_combout\);

-- Location: FF_X40_Y19_N31
\dac|wait_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \dac|wait_cnt~25_combout\,
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \dac|state.ST_STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|wait_cnt\(1));

-- Location: LCCOMB_X40_Y19_N4
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

-- Location: LCCOMB_X39_Y19_N26
\dac|wait_cnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|wait_cnt~24_combout\ = (\dac|Add0~4_combout\ & !\dac|Equal2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|Add0~4_combout\,
	datad => \dac|Equal2~10_combout\,
	combout => \dac|wait_cnt~24_combout\);

-- Location: FF_X40_Y19_N27
\dac|wait_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \dac|wait_cnt~24_combout\,
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \dac|state.ST_STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|wait_cnt\(2));

-- Location: LCCOMB_X40_Y19_N6
\dac|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Add0~6_combout\ = (\dac|wait_cnt\(3) & (\dac|Add0~5\ & VCC)) # (!\dac|wait_cnt\(3) & (!\dac|Add0~5\))
-- \dac|Add0~7\ = CARRY((!\dac|wait_cnt\(3) & !\dac|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dac|wait_cnt\(3),
	datad => VCC,
	cin => \dac|Add0~5\,
	combout => \dac|Add0~6_combout\,
	cout => \dac|Add0~7\);

-- Location: LCCOMB_X39_Y19_N16
\dac|wait_cnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|wait_cnt~23_combout\ = (\dac|Add0~6_combout\ & !\dac|Equal2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|Add0~6_combout\,
	datad => \dac|Equal2~10_combout\,
	combout => \dac|wait_cnt~23_combout\);

-- Location: FF_X40_Y19_N17
\dac|wait_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \dac|wait_cnt~23_combout\,
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \dac|state.ST_STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|wait_cnt\(3));

-- Location: LCCOMB_X40_Y19_N8
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

-- Location: LCCOMB_X41_Y19_N0
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

-- Location: FF_X40_Y19_N13
\dac|wait_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \dac|wait_cnt[4]~31_combout\,
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \dac|state.ST_STOP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|wait_cnt\(4));

-- Location: LCCOMB_X40_Y19_N10
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

-- Location: LCCOMB_X39_Y19_N14
\dac|wait_cnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|wait_cnt~22_combout\ = (\dac|Add0~10_combout\ & !\dac|Equal2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dac|Add0~10_combout\,
	datad => \dac|Equal2~10_combout\,
	combout => \dac|wait_cnt~22_combout\);

-- Location: FF_X39_Y19_N15
\dac|wait_cnt[5]\ : dffeas
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
	q => \dac|wait_cnt\(5));

-- Location: LCCOMB_X40_Y19_N12
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

-- Location: LCCOMB_X39_Y19_N0
\dac|wait_cnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|wait_cnt~21_combout\ = (\dac|Add0~12_combout\ & !\dac|Equal2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dac|Add0~12_combout\,
	datad => \dac|Equal2~10_combout\,
	combout => \dac|wait_cnt~21_combout\);

-- Location: FF_X39_Y19_N1
\dac|wait_cnt[6]\ : dffeas
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
	q => \dac|wait_cnt\(6));

-- Location: LCCOMB_X40_Y19_N14
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

-- Location: LCCOMB_X39_Y19_N2
\dac|wait_cnt~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|wait_cnt~20_combout\ = (\dac|Add0~14_combout\ & !\dac|Equal2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dac|Add0~14_combout\,
	datad => \dac|Equal2~10_combout\,
	combout => \dac|wait_cnt~20_combout\);

-- Location: FF_X39_Y19_N3
\dac|wait_cnt[7]\ : dffeas
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
	q => \dac|wait_cnt\(7));

-- Location: LCCOMB_X39_Y19_N20
\dac|Equal2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Equal2~8_combout\ = (\dac|wait_cnt\(4) & (!\dac|wait_cnt\(6) & (!\dac|wait_cnt\(5) & !\dac|wait_cnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|wait_cnt\(4),
	datab => \dac|wait_cnt\(6),
	datac => \dac|wait_cnt\(5),
	datad => \dac|wait_cnt\(7),
	combout => \dac|Equal2~8_combout\);

-- Location: LCCOMB_X40_Y19_N16
\dac|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Add0~16_combout\ = (\dac|wait_cnt\(8) & (\dac|Add0~15\ $ (GND))) # (!\dac|wait_cnt\(8) & ((GND) # (!\dac|Add0~15\)))
-- \dac|Add0~17\ = CARRY((!\dac|Add0~15\) # (!\dac|wait_cnt\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dac|wait_cnt\(8),
	datad => VCC,
	cin => \dac|Add0~15\,
	combout => \dac|Add0~16_combout\,
	cout => \dac|Add0~17\);

-- Location: LCCOMB_X41_Y19_N20
\dac|wait_cnt[8]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|wait_cnt[8]~30_combout\ = !\dac|Add0~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dac|Add0~16_combout\,
	combout => \dac|wait_cnt[8]~30_combout\);

-- Location: FF_X41_Y19_N21
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

-- Location: LCCOMB_X40_Y19_N18
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

-- Location: LCCOMB_X39_Y19_N12
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

-- Location: FF_X39_Y19_N13
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

-- Location: LCCOMB_X40_Y19_N20
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

-- Location: LCCOMB_X41_Y19_N2
\dac|wait_cnt[10]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|wait_cnt[10]~28_combout\ = !\dac|Add0~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dac|Add0~20_combout\,
	combout => \dac|wait_cnt[10]~28_combout\);

-- Location: FF_X41_Y19_N3
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

-- Location: LCCOMB_X40_Y19_N22
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

-- Location: LCCOMB_X41_Y19_N28
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

-- Location: FF_X41_Y19_N29
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

-- Location: LCCOMB_X40_Y19_N24
\dac|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Add0~24_combout\ = (\dac|wait_cnt\(12) & ((GND) # (!\dac|Add0~23\))) # (!\dac|wait_cnt\(12) & (\dac|Add0~23\ $ (GND)))
-- \dac|Add0~25\ = CARRY((\dac|wait_cnt\(12)) # (!\dac|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dac|wait_cnt\(12),
	datad => VCC,
	cin => \dac|Add0~23\,
	combout => \dac|Add0~24_combout\,
	cout => \dac|Add0~25\);

-- Location: LCCOMB_X39_Y19_N8
\dac|wait_cnt~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|wait_cnt~18_combout\ = (\dac|Add0~24_combout\ & !\dac|Equal2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dac|Add0~24_combout\,
	datad => \dac|Equal2~10_combout\,
	combout => \dac|wait_cnt~18_combout\);

-- Location: FF_X39_Y19_N9
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

-- Location: LCCOMB_X40_Y19_N26
\dac|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Add0~26_combout\ = (\dac|wait_cnt\(13) & (!\dac|Add0~25\)) # (!\dac|wait_cnt\(13) & (\dac|Add0~25\ & VCC))
-- \dac|Add0~27\ = CARRY((\dac|wait_cnt\(13) & !\dac|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dac|wait_cnt\(13),
	datad => VCC,
	cin => \dac|Add0~25\,
	combout => \dac|Add0~26_combout\,
	cout => \dac|Add0~27\);

-- Location: LCCOMB_X39_Y19_N30
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

-- Location: FF_X39_Y19_N31
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

-- Location: LCCOMB_X40_Y19_N28
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

-- Location: LCCOMB_X39_Y19_N22
\dac|wait_cnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|wait_cnt~17_combout\ = (!\dac|Equal2~10_combout\ & \dac|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|Equal2~10_combout\,
	datad => \dac|Add0~28_combout\,
	combout => \dac|wait_cnt~17_combout\);

-- Location: FF_X39_Y19_N23
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

-- Location: LCCOMB_X40_Y19_N30
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

-- Location: LCCOMB_X39_Y19_N24
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

-- Location: FF_X39_Y19_N25
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

-- Location: LCCOMB_X39_Y19_N18
\dac|Equal2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Equal2~5_combout\ = (\dac|wait_cnt\(13) & (!\dac|wait_cnt\(12) & (!\dac|wait_cnt\(14) & !\dac|wait_cnt\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|wait_cnt\(13),
	datab => \dac|wait_cnt\(12),
	datac => \dac|wait_cnt\(14),
	datad => \dac|wait_cnt\(15),
	combout => \dac|Equal2~5_combout\);

-- Location: LCCOMB_X41_Y19_N30
\dac|Equal2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Equal2~6_combout\ = (\dac|wait_cnt\(10) & !\dac|wait_cnt\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dac|wait_cnt\(10),
	datad => \dac|wait_cnt\(11),
	combout => \dac|Equal2~6_combout\);

-- Location: LCCOMB_X38_Y19_N4
\dac|Equal2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Equal2~7_combout\ = (\dac|wait_cnt\(8) & (\dac|Equal2~5_combout\ & (\dac|wait_cnt\(9) & \dac|Equal2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|wait_cnt\(8),
	datab => \dac|Equal2~5_combout\,
	datac => \dac|wait_cnt\(9),
	datad => \dac|Equal2~6_combout\,
	combout => \dac|Equal2~7_combout\);

-- Location: LCCOMB_X39_Y19_N10
\dac|Equal2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Equal2~9_combout\ = (!\dac|wait_cnt\(2) & (!\dac|wait_cnt\(1) & (!\dac|wait_cnt\(0) & !\dac|wait_cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|wait_cnt\(2),
	datab => \dac|wait_cnt\(1),
	datac => \dac|wait_cnt\(0),
	datad => \dac|wait_cnt\(3),
	combout => \dac|Equal2~9_combout\);

-- Location: LCCOMB_X40_Y18_N0
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

-- Location: LCCOMB_X39_Y18_N14
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

-- Location: FF_X39_Y18_N15
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

-- Location: LCCOMB_X40_Y18_N2
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

-- Location: LCCOMB_X39_Y18_N24
\dac|wait_cnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|wait_cnt~14_combout\ = (!\dac|Equal2~10_combout\ & \dac|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dac|Equal2~10_combout\,
	datad => \dac|Add0~34_combout\,
	combout => \dac|wait_cnt~14_combout\);

-- Location: FF_X39_Y18_N25
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

-- Location: LCCOMB_X40_Y18_N4
\dac|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Add0~36_combout\ = (\dac|wait_cnt\(18) & ((GND) # (!\dac|Add0~35\))) # (!\dac|wait_cnt\(18) & (\dac|Add0~35\ $ (GND)))
-- \dac|Add0~37\ = CARRY((\dac|wait_cnt\(18)) # (!\dac|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dac|wait_cnt\(18),
	datad => VCC,
	cin => \dac|Add0~35\,
	combout => \dac|Add0~36_combout\,
	cout => \dac|Add0~37\);

-- Location: LCCOMB_X39_Y18_N18
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

-- Location: FF_X39_Y18_N19
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

-- Location: LCCOMB_X40_Y18_N6
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

-- Location: LCCOMB_X39_Y18_N4
\dac|wait_cnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|wait_cnt~12_combout\ = (!\dac|Equal2~10_combout\ & \dac|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dac|Equal2~10_combout\,
	datad => \dac|Add0~38_combout\,
	combout => \dac|wait_cnt~12_combout\);

-- Location: FF_X39_Y18_N5
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

-- Location: LCCOMB_X40_Y18_N8
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

-- Location: LCCOMB_X39_Y18_N20
\dac|wait_cnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|wait_cnt~11_combout\ = (\dac|Add0~40_combout\ & !\dac|Equal2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dac|Add0~40_combout\,
	datad => \dac|Equal2~10_combout\,
	combout => \dac|wait_cnt~11_combout\);

-- Location: FF_X39_Y18_N21
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

-- Location: LCCOMB_X40_Y18_N10
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

-- Location: LCCOMB_X39_Y18_N22
\dac|wait_cnt~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|wait_cnt~10_combout\ = (\dac|Add0~42_combout\ & !\dac|Equal2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dac|Add0~42_combout\,
	datad => \dac|Equal2~10_combout\,
	combout => \dac|wait_cnt~10_combout\);

-- Location: FF_X39_Y18_N23
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

-- Location: LCCOMB_X40_Y18_N12
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

-- Location: LCCOMB_X39_Y18_N16
\dac|wait_cnt~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|wait_cnt~9_combout\ = (\dac|Add0~44_combout\ & !\dac|Equal2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dac|Add0~44_combout\,
	datad => \dac|Equal2~10_combout\,
	combout => \dac|wait_cnt~9_combout\);

-- Location: FF_X39_Y18_N17
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

-- Location: LCCOMB_X40_Y18_N14
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

-- Location: LCCOMB_X39_Y18_N26
\dac|wait_cnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|wait_cnt~8_combout\ = (\dac|Add0~46_combout\ & !\dac|Equal2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dac|Add0~46_combout\,
	datad => \dac|Equal2~10_combout\,
	combout => \dac|wait_cnt~8_combout\);

-- Location: FF_X39_Y18_N27
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

-- Location: LCCOMB_X39_Y18_N30
\dac|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Equal2~2_combout\ = (!\dac|wait_cnt\(21) & (!\dac|wait_cnt\(20) & (!\dac|wait_cnt\(23) & !\dac|wait_cnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|wait_cnt\(21),
	datab => \dac|wait_cnt\(20),
	datac => \dac|wait_cnt\(23),
	datad => \dac|wait_cnt\(22),
	combout => \dac|Equal2~2_combout\);

-- Location: LCCOMB_X40_Y18_N16
\dac|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Add0~48_combout\ = (\dac|wait_cnt\(24) & ((GND) # (!\dac|Add0~47\))) # (!\dac|wait_cnt\(24) & (\dac|Add0~47\ $ (GND)))
-- \dac|Add0~49\ = CARRY((\dac|wait_cnt\(24)) # (!\dac|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dac|wait_cnt\(24),
	datad => VCC,
	cin => \dac|Add0~47\,
	combout => \dac|Add0~48_combout\,
	cout => \dac|Add0~49\);

-- Location: LCCOMB_X39_Y19_N28
\dac|wait_cnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|wait_cnt~7_combout\ = (!\dac|Equal2~10_combout\ & \dac|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|Equal2~10_combout\,
	datad => \dac|Add0~48_combout\,
	combout => \dac|wait_cnt~7_combout\);

-- Location: FF_X39_Y19_N29
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

-- Location: LCCOMB_X40_Y18_N18
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

-- Location: LCCOMB_X39_Y18_N0
\dac|wait_cnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|wait_cnt~6_combout\ = (!\dac|Equal2~10_combout\ & \dac|Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dac|Equal2~10_combout\,
	datad => \dac|Add0~50_combout\,
	combout => \dac|wait_cnt~6_combout\);

-- Location: FF_X39_Y18_N1
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

-- Location: LCCOMB_X40_Y18_N20
\dac|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Add0~52_combout\ = (\dac|wait_cnt\(26) & ((GND) # (!\dac|Add0~51\))) # (!\dac|wait_cnt\(26) & (\dac|Add0~51\ $ (GND)))
-- \dac|Add0~53\ = CARRY((\dac|wait_cnt\(26)) # (!\dac|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dac|wait_cnt\(26),
	datad => VCC,
	cin => \dac|Add0~51\,
	combout => \dac|Add0~52_combout\,
	cout => \dac|Add0~53\);

-- Location: LCCOMB_X39_Y18_N10
\dac|wait_cnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|wait_cnt~5_combout\ = (\dac|Add0~52_combout\ & !\dac|Equal2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dac|Add0~52_combout\,
	datad => \dac|Equal2~10_combout\,
	combout => \dac|wait_cnt~5_combout\);

-- Location: FF_X39_Y18_N11
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

-- Location: LCCOMB_X40_Y18_N22
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

-- Location: LCCOMB_X39_Y18_N8
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

-- Location: FF_X39_Y18_N9
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

-- Location: LCCOMB_X40_Y18_N24
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

-- Location: LCCOMB_X39_Y18_N2
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

-- Location: FF_X39_Y18_N3
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

-- Location: LCCOMB_X40_Y18_N26
\dac|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Add0~58_combout\ = (\dac|wait_cnt\(29) & (\dac|Add0~57\ & VCC)) # (!\dac|wait_cnt\(29) & (!\dac|Add0~57\))
-- \dac|Add0~59\ = CARRY((!\dac|wait_cnt\(29) & !\dac|Add0~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dac|wait_cnt\(29),
	datad => VCC,
	cin => \dac|Add0~57\,
	combout => \dac|Add0~58_combout\,
	cout => \dac|Add0~59\);

-- Location: LCCOMB_X39_Y18_N12
\dac|wait_cnt~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|wait_cnt~2_combout\ = (!\dac|Equal2~10_combout\ & \dac|Add0~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dac|Equal2~10_combout\,
	datad => \dac|Add0~58_combout\,
	combout => \dac|wait_cnt~2_combout\);

-- Location: FF_X39_Y18_N13
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

-- Location: LCCOMB_X40_Y18_N28
\dac|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Add0~60_combout\ = (\dac|wait_cnt\(30) & ((GND) # (!\dac|Add0~59\))) # (!\dac|wait_cnt\(30) & (\dac|Add0~59\ $ (GND)))
-- \dac|Add0~61\ = CARRY((\dac|wait_cnt\(30)) # (!\dac|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dac|wait_cnt\(30),
	datad => VCC,
	cin => \dac|Add0~59\,
	combout => \dac|Add0~60_combout\,
	cout => \dac|Add0~61\);

-- Location: LCCOMB_X39_Y18_N6
\dac|wait_cnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|wait_cnt~1_combout\ = (!\dac|Equal2~10_combout\ & \dac|Add0~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dac|Equal2~10_combout\,
	datad => \dac|Add0~60_combout\,
	combout => \dac|wait_cnt~1_combout\);

-- Location: FF_X39_Y18_N7
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

-- Location: LCCOMB_X40_Y18_N30
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

-- Location: LCCOMB_X39_Y18_N28
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

-- Location: FF_X39_Y18_N29
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

-- Location: LCCOMB_X38_Y18_N0
\dac|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Equal2~0_combout\ = (!\dac|wait_cnt\(30) & (!\dac|wait_cnt\(31) & (!\dac|wait_cnt\(29) & !\dac|wait_cnt\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|wait_cnt\(30),
	datab => \dac|wait_cnt\(31),
	datac => \dac|wait_cnt\(29),
	datad => \dac|wait_cnt\(28),
	combout => \dac|Equal2~0_combout\);

-- Location: LCCOMB_X38_Y19_N8
\dac|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Equal2~1_combout\ = (!\dac|wait_cnt\(27) & (!\dac|wait_cnt\(26) & (!\dac|wait_cnt\(25) & !\dac|wait_cnt\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|wait_cnt\(27),
	datab => \dac|wait_cnt\(26),
	datac => \dac|wait_cnt\(25),
	datad => \dac|wait_cnt\(24),
	combout => \dac|Equal2~1_combout\);

-- Location: LCCOMB_X38_Y18_N2
\dac|Equal2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Equal2~3_combout\ = (!\dac|wait_cnt\(19) & (!\dac|wait_cnt\(18) & (!\dac|wait_cnt\(16) & !\dac|wait_cnt\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|wait_cnt\(19),
	datab => \dac|wait_cnt\(18),
	datac => \dac|wait_cnt\(16),
	datad => \dac|wait_cnt\(17),
	combout => \dac|Equal2~3_combout\);

-- Location: LCCOMB_X38_Y19_N18
\dac|Equal2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Equal2~4_combout\ = (\dac|Equal2~2_combout\ & (\dac|Equal2~0_combout\ & (\dac|Equal2~1_combout\ & \dac|Equal2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|Equal2~2_combout\,
	datab => \dac|Equal2~0_combout\,
	datac => \dac|Equal2~1_combout\,
	datad => \dac|Equal2~3_combout\,
	combout => \dac|Equal2~4_combout\);

-- Location: LCCOMB_X38_Y19_N14
\dac|Equal2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Equal2~10_combout\ = (\dac|Equal2~8_combout\ & (\dac|Equal2~7_combout\ & (\dac|Equal2~9_combout\ & \dac|Equal2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|Equal2~8_combout\,
	datab => \dac|Equal2~7_combout\,
	datac => \dac|Equal2~9_combout\,
	datad => \dac|Equal2~4_combout\,
	combout => \dac|Equal2~10_combout\);

-- Location: LCCOMB_X38_Y19_N16
\dac|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Selector5~0_combout\ = (\dac|state.ST_WR_1~q\ & (((\dac|busy_prev\(0)) # (!\dac|i2c_master_inst|ack_error~q\)) # (!\dac|busy_prev\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|busy_prev\(1),
	datab => \dac|state.ST_WR_1~q\,
	datac => \dac|busy_prev\(0),
	datad => \dac|i2c_master_inst|ack_error~q\,
	combout => \dac|Selector5~0_combout\);

-- Location: LCCOMB_X38_Y19_N20
\dac|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Selector5~1_combout\ = (\dac|Selector5~0_combout\) # ((\dac|state.ST_WR_2~q\ & ((\dac|busy_prev\(1)) # (!\dac|busy_prev\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|state.ST_WR_2~q\,
	datab => \dac|busy_prev\(1),
	datac => \dac|busy_prev\(0),
	datad => \dac|Selector5~0_combout\,
	combout => \dac|Selector5~1_combout\);

-- Location: LCCOMB_X38_Y19_N0
\dac|Selector5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Selector5~2_combout\ = (\dac|ena~q\ & ((\dac|Selector5~1_combout\) # ((\dac|state.ST_STOP~q\ & !\dac|Equal2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|state.ST_STOP~q\,
	datab => \dac|ena~q\,
	datac => \dac|Equal2~10_combout\,
	datad => \dac|Selector5~1_combout\,
	combout => \dac|Selector5~2_combout\);

-- Location: LCCOMB_X38_Y19_N28
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

-- Location: FF_X38_Y19_N29
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

-- Location: LCCOMB_X46_Y17_N6
\dac|i2c_master_inst|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Selector21~0_combout\ = (\dac|ena~q\ & \dac|i2c_master_inst|state.mstr_ack~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dac|ena~q\,
	datad => \dac|i2c_master_inst|state.mstr_ack~q\,
	combout => \dac|i2c_master_inst|Selector21~0_combout\);

-- Location: LCCOMB_X45_Y18_N0
\DATA[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA[0]~12_combout\ = DATA(0) $ (VCC)
-- \DATA[0]~13\ = CARRY(DATA(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => DATA(0),
	datad => VCC,
	combout => \DATA[0]~12_combout\,
	cout => \DATA[0]~13\);

-- Location: LCCOMB_X46_Y19_N12
\counter[0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[0]~20_combout\ = counter(0) $ (VCC)
-- \counter[0]~21\ = CARRY(counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datad => VCC,
	combout => \counter[0]~20_combout\,
	cout => \counter[0]~21\);

-- Location: FF_X46_Y19_N13
\counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter[0]~20_combout\,
	sclr => \LessThan0~6_combout\,
	ena => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(0));

-- Location: LCCOMB_X46_Y19_N14
\counter[1]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[1]~22_combout\ = (counter(1) & (!\counter[0]~21\)) # (!counter(1) & ((\counter[0]~21\) # (GND)))
-- \counter[1]~23\ = CARRY((!\counter[0]~21\) # (!counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(1),
	datad => VCC,
	cin => \counter[0]~21\,
	combout => \counter[1]~22_combout\,
	cout => \counter[1]~23\);

-- Location: FF_X46_Y19_N15
\counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter[1]~22_combout\,
	sclr => \LessThan0~6_combout\,
	ena => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(1));

-- Location: LCCOMB_X46_Y19_N16
\counter[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[2]~24_combout\ = (counter(2) & (\counter[1]~23\ $ (GND))) # (!counter(2) & (!\counter[1]~23\ & VCC))
-- \counter[2]~25\ = CARRY((counter(2) & !\counter[1]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(2),
	datad => VCC,
	cin => \counter[1]~23\,
	combout => \counter[2]~24_combout\,
	cout => \counter[2]~25\);

-- Location: FF_X46_Y19_N17
\counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter[2]~24_combout\,
	sclr => \LessThan0~6_combout\,
	ena => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(2));

-- Location: LCCOMB_X46_Y19_N18
\counter[3]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[3]~26_combout\ = (counter(3) & (!\counter[2]~25\)) # (!counter(3) & ((\counter[2]~25\) # (GND)))
-- \counter[3]~27\ = CARRY((!\counter[2]~25\) # (!counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(3),
	datad => VCC,
	cin => \counter[2]~25\,
	combout => \counter[3]~26_combout\,
	cout => \counter[3]~27\);

-- Location: FF_X46_Y19_N19
\counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter[3]~26_combout\,
	sclr => \LessThan0~6_combout\,
	ena => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(3));

-- Location: LCCOMB_X46_Y19_N20
\counter[4]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[4]~28_combout\ = (counter(4) & (\counter[3]~27\ $ (GND))) # (!counter(4) & (!\counter[3]~27\ & VCC))
-- \counter[4]~29\ = CARRY((counter(4) & !\counter[3]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(4),
	datad => VCC,
	cin => \counter[3]~27\,
	combout => \counter[4]~28_combout\,
	cout => \counter[4]~29\);

-- Location: FF_X46_Y19_N21
\counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter[4]~28_combout\,
	sclr => \LessThan0~6_combout\,
	ena => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(4));

-- Location: LCCOMB_X46_Y19_N22
\counter[5]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[5]~30_combout\ = (counter(5) & (!\counter[4]~29\)) # (!counter(5) & ((\counter[4]~29\) # (GND)))
-- \counter[5]~31\ = CARRY((!\counter[4]~29\) # (!counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(5),
	datad => VCC,
	cin => \counter[4]~29\,
	combout => \counter[5]~30_combout\,
	cout => \counter[5]~31\);

-- Location: FF_X46_Y19_N23
\counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter[5]~30_combout\,
	sclr => \LessThan0~6_combout\,
	ena => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(5));

-- Location: LCCOMB_X46_Y19_N24
\counter[6]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[6]~32_combout\ = (counter(6) & (\counter[5]~31\ $ (GND))) # (!counter(6) & (!\counter[5]~31\ & VCC))
-- \counter[6]~33\ = CARRY((counter(6) & !\counter[5]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(6),
	datad => VCC,
	cin => \counter[5]~31\,
	combout => \counter[6]~32_combout\,
	cout => \counter[6]~33\);

-- Location: FF_X46_Y19_N25
\counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter[6]~32_combout\,
	sclr => \LessThan0~6_combout\,
	ena => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(6));

-- Location: LCCOMB_X46_Y19_N26
\counter[7]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[7]~34_combout\ = (counter(7) & (!\counter[6]~33\)) # (!counter(7) & ((\counter[6]~33\) # (GND)))
-- \counter[7]~35\ = CARRY((!\counter[6]~33\) # (!counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(7),
	datad => VCC,
	cin => \counter[6]~33\,
	combout => \counter[7]~34_combout\,
	cout => \counter[7]~35\);

-- Location: FF_X46_Y19_N27
\counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter[7]~34_combout\,
	sclr => \LessThan0~6_combout\,
	ena => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(7));

-- Location: LCCOMB_X46_Y19_N28
\counter[8]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[8]~36_combout\ = (counter(8) & (\counter[7]~35\ $ (GND))) # (!counter(8) & (!\counter[7]~35\ & VCC))
-- \counter[8]~37\ = CARRY((counter(8) & !\counter[7]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(8),
	datad => VCC,
	cin => \counter[7]~35\,
	combout => \counter[8]~36_combout\,
	cout => \counter[8]~37\);

-- Location: FF_X46_Y19_N29
\counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter[8]~36_combout\,
	sclr => \LessThan0~6_combout\,
	ena => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(8));

-- Location: LCCOMB_X46_Y19_N30
\counter[9]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[9]~38_combout\ = (counter(9) & (!\counter[8]~37\)) # (!counter(9) & ((\counter[8]~37\) # (GND)))
-- \counter[9]~39\ = CARRY((!\counter[8]~37\) # (!counter(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(9),
	datad => VCC,
	cin => \counter[8]~37\,
	combout => \counter[9]~38_combout\,
	cout => \counter[9]~39\);

-- Location: FF_X46_Y19_N31
\counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter[9]~38_combout\,
	sclr => \LessThan0~6_combout\,
	ena => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(9));

-- Location: LCCOMB_X46_Y18_N0
\counter[10]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[10]~40_combout\ = (counter(10) & (\counter[9]~39\ $ (GND))) # (!counter(10) & (!\counter[9]~39\ & VCC))
-- \counter[10]~41\ = CARRY((counter(10) & !\counter[9]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(10),
	datad => VCC,
	cin => \counter[9]~39\,
	combout => \counter[10]~40_combout\,
	cout => \counter[10]~41\);

-- Location: FF_X46_Y18_N1
\counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter[10]~40_combout\,
	sclr => \LessThan0~6_combout\,
	ena => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(10));

-- Location: LCCOMB_X46_Y18_N2
\counter[11]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[11]~42_combout\ = (counter(11) & (!\counter[10]~41\)) # (!counter(11) & ((\counter[10]~41\) # (GND)))
-- \counter[11]~43\ = CARRY((!\counter[10]~41\) # (!counter(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(11),
	datad => VCC,
	cin => \counter[10]~41\,
	combout => \counter[11]~42_combout\,
	cout => \counter[11]~43\);

-- Location: FF_X46_Y18_N3
\counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter[11]~42_combout\,
	sclr => \LessThan0~6_combout\,
	ena => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(11));

-- Location: LCCOMB_X46_Y18_N4
\counter[12]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[12]~44_combout\ = (counter(12) & (\counter[11]~43\ $ (GND))) # (!counter(12) & (!\counter[11]~43\ & VCC))
-- \counter[12]~45\ = CARRY((counter(12) & !\counter[11]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(12),
	datad => VCC,
	cin => \counter[11]~43\,
	combout => \counter[12]~44_combout\,
	cout => \counter[12]~45\);

-- Location: FF_X46_Y18_N5
\counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter[12]~44_combout\,
	sclr => \LessThan0~6_combout\,
	ena => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(12));

-- Location: LCCOMB_X46_Y18_N6
\counter[13]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[13]~46_combout\ = (counter(13) & (!\counter[12]~45\)) # (!counter(13) & ((\counter[12]~45\) # (GND)))
-- \counter[13]~47\ = CARRY((!\counter[12]~45\) # (!counter(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(13),
	datad => VCC,
	cin => \counter[12]~45\,
	combout => \counter[13]~46_combout\,
	cout => \counter[13]~47\);

-- Location: FF_X46_Y18_N7
\counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter[13]~46_combout\,
	sclr => \LessThan0~6_combout\,
	ena => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(13));

-- Location: LCCOMB_X46_Y18_N8
\counter[14]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[14]~48_combout\ = (counter(14) & (\counter[13]~47\ $ (GND))) # (!counter(14) & (!\counter[13]~47\ & VCC))
-- \counter[14]~49\ = CARRY((counter(14) & !\counter[13]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(14),
	datad => VCC,
	cin => \counter[13]~47\,
	combout => \counter[14]~48_combout\,
	cout => \counter[14]~49\);

-- Location: FF_X46_Y18_N9
\counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter[14]~48_combout\,
	sclr => \LessThan0~6_combout\,
	ena => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(14));

-- Location: LCCOMB_X46_Y18_N10
\counter[15]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[15]~50_combout\ = (counter(15) & (!\counter[14]~49\)) # (!counter(15) & ((\counter[14]~49\) # (GND)))
-- \counter[15]~51\ = CARRY((!\counter[14]~49\) # (!counter(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(15),
	datad => VCC,
	cin => \counter[14]~49\,
	combout => \counter[15]~50_combout\,
	cout => \counter[15]~51\);

-- Location: FF_X46_Y18_N11
\counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter[15]~50_combout\,
	sclr => \LessThan0~6_combout\,
	ena => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(15));

-- Location: LCCOMB_X46_Y18_N12
\counter[16]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[16]~52_combout\ = (counter(16) & (\counter[15]~51\ $ (GND))) # (!counter(16) & (!\counter[15]~51\ & VCC))
-- \counter[16]~53\ = CARRY((counter(16) & !\counter[15]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(16),
	datad => VCC,
	cin => \counter[15]~51\,
	combout => \counter[16]~52_combout\,
	cout => \counter[16]~53\);

-- Location: FF_X46_Y18_N13
\counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter[16]~52_combout\,
	sclr => \LessThan0~6_combout\,
	ena => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(16));

-- Location: LCCOMB_X46_Y18_N14
\counter[17]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[17]~54_combout\ = (counter(17) & (!\counter[16]~53\)) # (!counter(17) & ((\counter[16]~53\) # (GND)))
-- \counter[17]~55\ = CARRY((!\counter[16]~53\) # (!counter(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(17),
	datad => VCC,
	cin => \counter[16]~53\,
	combout => \counter[17]~54_combout\,
	cout => \counter[17]~55\);

-- Location: FF_X46_Y18_N15
\counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter[17]~54_combout\,
	sclr => \LessThan0~6_combout\,
	ena => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(17));

-- Location: LCCOMB_X46_Y18_N16
\counter[18]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[18]~56_combout\ = (counter(18) & (\counter[17]~55\ $ (GND))) # (!counter(18) & (!\counter[17]~55\ & VCC))
-- \counter[18]~57\ = CARRY((counter(18) & !\counter[17]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(18),
	datad => VCC,
	cin => \counter[17]~55\,
	combout => \counter[18]~56_combout\,
	cout => \counter[18]~57\);

-- Location: FF_X46_Y18_N17
\counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter[18]~56_combout\,
	sclr => \LessThan0~6_combout\,
	ena => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(18));

-- Location: LCCOMB_X46_Y18_N18
\counter[19]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[19]~58_combout\ = \counter[18]~57\ $ (counter(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => counter(19),
	cin => \counter[18]~57\,
	combout => \counter[19]~58_combout\);

-- Location: FF_X46_Y18_N19
\counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \counter[19]~58_combout\,
	sclr => \LessThan0~6_combout\,
	ena => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(19));

-- Location: LCCOMB_X46_Y18_N28
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!counter(16) & (!counter(18) & (!counter(17) & !counter(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(16),
	datab => counter(18),
	datac => counter(17),
	datad => counter(19),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X46_Y19_N8
\LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (((!counter(2)) # (!counter(1))) # (!counter(3))) # (!counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => counter(3),
	datac => counter(1),
	datad => counter(2),
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X46_Y18_N22
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (!counter(13) & (!counter(11) & (!counter(12) & !counter(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(13),
	datab => counter(11),
	datac => counter(12),
	datad => counter(10),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X46_Y19_N6
\LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (!counter(5) & (!counter(7) & !counter(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(5),
	datac => counter(7),
	datad => counter(4),
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X46_Y19_N10
\LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (((!counter(7) & !counter(6))) # (!counter(8))) # (!counter(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(7),
	datab => counter(6),
	datac => counter(9),
	datad => counter(8),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X46_Y18_N24
\LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (\LessThan0~1_combout\ & ((\LessThan0~2_combout\) # ((\LessThan0~3_combout\ & \LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~3_combout\,
	datab => \LessThan0~1_combout\,
	datac => \LessThan0~4_combout\,
	datad => \LessThan0~2_combout\,
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X46_Y18_N26
\LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = ((counter(15) & (counter(14) & !\LessThan0~5_combout\))) # (!\LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(15),
	datab => \LessThan0~0_combout\,
	datac => counter(14),
	datad => \LessThan0~5_combout\,
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X45_Y18_N30
\DATA[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA[0]~14_combout\ = (\RST~input_o\ & \LessThan0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datad => \LessThan0~6_combout\,
	combout => \DATA[0]~14_combout\);

-- Location: FF_X45_Y18_N1
\DATA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DATA[0]~12_combout\,
	ena => \DATA[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATA(0));

-- Location: LCCOMB_X45_Y18_N2
\DATA[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA[1]~15_combout\ = (\r~q\ & ((DATA(1) & (\DATA[0]~13\ & VCC)) # (!DATA(1) & (!\DATA[0]~13\)))) # (!\r~q\ & ((DATA(1) & (!\DATA[0]~13\)) # (!DATA(1) & ((\DATA[0]~13\) # (GND)))))
-- \DATA[1]~16\ = CARRY((\r~q\ & (!DATA(1) & !\DATA[0]~13\)) # (!\r~q\ & ((!\DATA[0]~13\) # (!DATA(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r~q\,
	datab => DATA(1),
	datad => VCC,
	cin => \DATA[0]~13\,
	combout => \DATA[1]~15_combout\,
	cout => \DATA[1]~16\);

-- Location: FF_X45_Y18_N3
\DATA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DATA[1]~15_combout\,
	ena => \DATA[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATA(1));

-- Location: LCCOMB_X45_Y18_N4
\DATA[2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA[2]~17_combout\ = ((\r~q\ $ (DATA(2) $ (!\DATA[1]~16\)))) # (GND)
-- \DATA[2]~18\ = CARRY((\r~q\ & ((DATA(2)) # (!\DATA[1]~16\))) # (!\r~q\ & (DATA(2) & !\DATA[1]~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r~q\,
	datab => DATA(2),
	datad => VCC,
	cin => \DATA[1]~16\,
	combout => \DATA[2]~17_combout\,
	cout => \DATA[2]~18\);

-- Location: FF_X45_Y18_N5
\DATA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DATA[2]~17_combout\,
	ena => \DATA[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATA(2));

-- Location: LCCOMB_X45_Y18_N6
\DATA[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA[3]~19_combout\ = (\r~q\ & ((DATA(3) & (\DATA[2]~18\ & VCC)) # (!DATA(3) & (!\DATA[2]~18\)))) # (!\r~q\ & ((DATA(3) & (!\DATA[2]~18\)) # (!DATA(3) & ((\DATA[2]~18\) # (GND)))))
-- \DATA[3]~20\ = CARRY((\r~q\ & (!DATA(3) & !\DATA[2]~18\)) # (!\r~q\ & ((!\DATA[2]~18\) # (!DATA(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r~q\,
	datab => DATA(3),
	datad => VCC,
	cin => \DATA[2]~18\,
	combout => \DATA[3]~19_combout\,
	cout => \DATA[3]~20\);

-- Location: FF_X45_Y18_N7
\DATA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DATA[3]~19_combout\,
	ena => \DATA[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATA(3));

-- Location: LCCOMB_X45_Y18_N8
\DATA[4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA[4]~21_combout\ = ((\r~q\ $ (DATA(4) $ (!\DATA[3]~20\)))) # (GND)
-- \DATA[4]~22\ = CARRY((\r~q\ & ((DATA(4)) # (!\DATA[3]~20\))) # (!\r~q\ & (DATA(4) & !\DATA[3]~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r~q\,
	datab => DATA(4),
	datad => VCC,
	cin => \DATA[3]~20\,
	combout => \DATA[4]~21_combout\,
	cout => \DATA[4]~22\);

-- Location: FF_X45_Y18_N9
\DATA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DATA[4]~21_combout\,
	ena => \DATA[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATA(4));

-- Location: LCCOMB_X45_Y18_N10
\DATA[5]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA[5]~23_combout\ = (\r~q\ & ((DATA(5) & (\DATA[4]~22\ & VCC)) # (!DATA(5) & (!\DATA[4]~22\)))) # (!\r~q\ & ((DATA(5) & (!\DATA[4]~22\)) # (!DATA(5) & ((\DATA[4]~22\) # (GND)))))
-- \DATA[5]~24\ = CARRY((\r~q\ & (!DATA(5) & !\DATA[4]~22\)) # (!\r~q\ & ((!\DATA[4]~22\) # (!DATA(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r~q\,
	datab => DATA(5),
	datad => VCC,
	cin => \DATA[4]~22\,
	combout => \DATA[5]~23_combout\,
	cout => \DATA[5]~24\);

-- Location: FF_X45_Y18_N11
\DATA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DATA[5]~23_combout\,
	ena => \DATA[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATA(5));

-- Location: LCCOMB_X45_Y18_N12
\DATA[6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA[6]~25_combout\ = ((\r~q\ $ (DATA(6) $ (!\DATA[5]~24\)))) # (GND)
-- \DATA[6]~26\ = CARRY((\r~q\ & ((DATA(6)) # (!\DATA[5]~24\))) # (!\r~q\ & (DATA(6) & !\DATA[5]~24\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r~q\,
	datab => DATA(6),
	datad => VCC,
	cin => \DATA[5]~24\,
	combout => \DATA[6]~25_combout\,
	cout => \DATA[6]~26\);

-- Location: FF_X45_Y18_N13
\DATA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DATA[6]~25_combout\,
	ena => \DATA[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATA(6));

-- Location: LCCOMB_X45_Y18_N14
\DATA[7]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA[7]~27_combout\ = (\r~q\ & ((DATA(7) & (\DATA[6]~26\ & VCC)) # (!DATA(7) & (!\DATA[6]~26\)))) # (!\r~q\ & ((DATA(7) & (!\DATA[6]~26\)) # (!DATA(7) & ((\DATA[6]~26\) # (GND)))))
-- \DATA[7]~28\ = CARRY((\r~q\ & (!DATA(7) & !\DATA[6]~26\)) # (!\r~q\ & ((!\DATA[6]~26\) # (!DATA(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r~q\,
	datab => DATA(7),
	datad => VCC,
	cin => \DATA[6]~26\,
	combout => \DATA[7]~27_combout\,
	cout => \DATA[7]~28\);

-- Location: FF_X45_Y18_N15
\DATA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DATA[7]~27_combout\,
	ena => \DATA[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATA(7));

-- Location: LCCOMB_X45_Y15_N6
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (DATA(5) & (DATA(6) & (DATA(7) & DATA(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA(5),
	datab => DATA(6),
	datac => DATA(7),
	datad => DATA(4),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X45_Y15_N24
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (DATA(3) & (DATA(2) & (DATA(1) & DATA(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA(3),
	datab => DATA(2),
	datac => DATA(1),
	datad => DATA(0),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X45_Y18_N16
\DATA[8]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA[8]~29_combout\ = ((\r~q\ $ (DATA(8) $ (!\DATA[7]~28\)))) # (GND)
-- \DATA[8]~30\ = CARRY((\r~q\ & ((DATA(8)) # (!\DATA[7]~28\))) # (!\r~q\ & (DATA(8) & !\DATA[7]~28\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r~q\,
	datab => DATA(8),
	datad => VCC,
	cin => \DATA[7]~28\,
	combout => \DATA[8]~29_combout\,
	cout => \DATA[8]~30\);

-- Location: FF_X45_Y18_N17
\DATA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DATA[8]~29_combout\,
	ena => \DATA[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATA(8));

-- Location: LCCOMB_X45_Y18_N18
\DATA[9]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA[9]~31_combout\ = (\r~q\ & ((DATA(9) & (\DATA[8]~30\ & VCC)) # (!DATA(9) & (!\DATA[8]~30\)))) # (!\r~q\ & ((DATA(9) & (!\DATA[8]~30\)) # (!DATA(9) & ((\DATA[8]~30\) # (GND)))))
-- \DATA[9]~32\ = CARRY((\r~q\ & (!DATA(9) & !\DATA[8]~30\)) # (!\r~q\ & ((!\DATA[8]~30\) # (!DATA(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r~q\,
	datab => DATA(9),
	datad => VCC,
	cin => \DATA[8]~30\,
	combout => \DATA[9]~31_combout\,
	cout => \DATA[9]~32\);

-- Location: FF_X45_Y18_N19
\DATA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DATA[9]~31_combout\,
	ena => \DATA[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATA(9));

-- Location: LCCOMB_X45_Y18_N20
\DATA[10]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA[10]~33_combout\ = ((\r~q\ $ (DATA(10) $ (!\DATA[9]~32\)))) # (GND)
-- \DATA[10]~34\ = CARRY((\r~q\ & ((DATA(10)) # (!\DATA[9]~32\))) # (!\r~q\ & (DATA(10) & !\DATA[9]~32\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r~q\,
	datab => DATA(10),
	datad => VCC,
	cin => \DATA[9]~32\,
	combout => \DATA[10]~33_combout\,
	cout => \DATA[10]~34\);

-- Location: LCCOMB_X45_Y18_N22
\DATA[11]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA[11]~35_combout\ = DATA(11) $ (\DATA[10]~34\ $ (\r~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => DATA(11),
	datad => \r~q\,
	cin => \DATA[10]~34\,
	combout => \DATA[11]~35_combout\);

-- Location: FF_X45_Y18_N23
\DATA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DATA[11]~35_combout\,
	ena => \DATA[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATA(11));

-- Location: LCCOMB_X45_Y15_N4
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (DATA(10) & (DATA(8) & (DATA(9) & DATA(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA(10),
	datab => DATA(8),
	datac => DATA(9),
	datad => DATA(11),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X45_Y15_N12
\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!DATA(3) & (!DATA(2) & (!DATA(1) & !DATA(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA(3),
	datab => DATA(2),
	datac => DATA(1),
	datad => DATA(0),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X45_Y15_N16
\Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (!DATA(10) & (!DATA(8) & (!DATA(9) & !DATA(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA(10),
	datab => DATA(8),
	datac => DATA(9),
	datad => DATA(11),
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X45_Y15_N22
\Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!DATA(5) & (!DATA(6) & (!DATA(7) & !DATA(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DATA(5),
	datab => DATA(6),
	datac => DATA(7),
	datad => DATA(4),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X45_Y15_N2
\r~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r~0_combout\ = (\r~q\ & (((!\Equal1~1_combout\) # (!\Equal1~2_combout\)) # (!\Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \Equal1~2_combout\,
	datac => \Equal1~1_combout\,
	datad => \r~q\,
	combout => \r~0_combout\);

-- Location: LCCOMB_X45_Y15_N10
\r~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \r~1_combout\ = (\r~0_combout\) # ((\Equal0~1_combout\ & (\Equal0~0_combout\ & \Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~0_combout\,
	datac => \Equal0~2_combout\,
	datad => \r~0_combout\,
	combout => \r~1_combout\);

-- Location: FF_X45_Y15_N11
r : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \r~1_combout\,
	ena => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r~q\);

-- Location: FF_X45_Y18_N21
\DATA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DATA[10]~33_combout\,
	ena => \DATA[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATA(10));

-- Location: LCCOMB_X45_Y19_N30
\dac|data_buffer[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|data_buffer[10]~feeder_combout\ = DATA(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => DATA(10),
	combout => \dac|data_buffer[10]~feeder_combout\);

-- Location: LCCOMB_X38_Y19_N10
\dac|data_buffer[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|data_buffer[7]~0_combout\ = (\RST~input_o\ & !\dac|state.ST_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datac => \dac|state.ST_IDLE~q\,
	combout => \dac|data_buffer[7]~0_combout\);

-- Location: FF_X45_Y19_N31
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

-- Location: LCCOMB_X45_Y19_N16
\dac|data_buffer[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|data_buffer[2]~feeder_combout\ = DATA(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => DATA(2),
	combout => \dac|data_buffer[2]~feeder_combout\);

-- Location: FF_X45_Y19_N17
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

-- Location: LCCOMB_X45_Y19_N28
\dac|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Selector11~0_combout\ = (\dac|state.ST_WR_1~q\ & ((\dac|data_buffer\(2)))) # (!\dac|state.ST_WR_1~q\ & (\dac|data_buffer\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|data_buffer\(10),
	datac => \dac|state.ST_WR_1~q\,
	datad => \dac|data_buffer\(2),
	combout => \dac|Selector11~0_combout\);

-- Location: LCCOMB_X46_Y19_N2
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

-- Location: LCCOMB_X44_Y19_N16
\dac|data_wr[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|data_wr[3]~4_combout\ = (\RST~input_o\ & ((\dac|state.ST_WR_1~q\ & (\dac|process_0~0_combout\)) # (!\dac|state.ST_WR_1~q\ & ((\dac|state.ST_START~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datab => \dac|process_0~0_combout\,
	datac => \dac|state.ST_START~q\,
	datad => \dac|state.ST_WR_1~q\,
	combout => \dac|data_wr[3]~4_combout\);

-- Location: FF_X45_Y19_N29
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

-- Location: LCCOMB_X45_Y17_N26
\dac|i2c_master_inst|data_tx[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|data_tx[7]~1_combout\ = (\dac|i2c_master_inst|process_1~0_combout\ & (\RST~input_o\ & (!\dac|i2c_master_inst|data_tx[7]~0_combout\ & \dac|ena~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|process_1~0_combout\,
	datab => \RST~input_o\,
	datac => \dac|i2c_master_inst|data_tx[7]~0_combout\,
	datad => \dac|ena~q\,
	combout => \dac|i2c_master_inst|data_tx[7]~1_combout\);

-- Location: FF_X45_Y17_N21
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

-- Location: LCCOMB_X45_Y19_N10
\dac|data_buffer[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|data_buffer[11]~feeder_combout\ = DATA(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => DATA(11),
	combout => \dac|data_buffer[11]~feeder_combout\);

-- Location: FF_X45_Y19_N11
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

-- Location: LCCOMB_X45_Y19_N20
\dac|data_buffer[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|data_buffer[3]~feeder_combout\ = DATA(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => DATA(3),
	combout => \dac|data_buffer[3]~feeder_combout\);

-- Location: FF_X45_Y19_N21
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

-- Location: LCCOMB_X45_Y19_N14
\dac|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Selector10~0_combout\ = (\dac|state.ST_WR_1~q\ & ((\dac|data_buffer\(3)))) # (!\dac|state.ST_WR_1~q\ & (\dac|data_buffer\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|data_buffer\(11),
	datac => \dac|state.ST_WR_1~q\,
	datad => \dac|data_buffer\(3),
	combout => \dac|Selector10~0_combout\);

-- Location: FF_X45_Y19_N15
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

-- Location: FF_X45_Y17_N11
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

-- Location: LCCOMB_X45_Y17_N20
\dac|i2c_master_inst|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Mux3~0_combout\ = (\dac|i2c_master_inst|bit_cnt\(0) & (\dac|i2c_master_inst|bit_cnt\(1) & ((\dac|i2c_master_inst|data_tx\(3))))) # (!\dac|i2c_master_inst|bit_cnt\(0) & ((\dac|i2c_master_inst|bit_cnt\(1)) # 
-- ((\dac|i2c_master_inst|data_tx\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|bit_cnt\(0),
	datab => \dac|i2c_master_inst|bit_cnt\(1),
	datac => \dac|i2c_master_inst|data_tx\(2),
	datad => \dac|i2c_master_inst|data_tx\(3),
	combout => \dac|i2c_master_inst|Mux3~0_combout\);

-- Location: LCCOMB_X45_Y19_N22
\dac|data_buffer[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|data_buffer[8]~feeder_combout\ = DATA(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => DATA(8),
	combout => \dac|data_buffer[8]~feeder_combout\);

-- Location: FF_X45_Y19_N23
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

-- Location: LCCOMB_X45_Y19_N0
\dac|data_buffer[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|data_buffer[0]~feeder_combout\ = DATA(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => DATA(0),
	combout => \dac|data_buffer[0]~feeder_combout\);

-- Location: FF_X45_Y19_N1
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

-- Location: LCCOMB_X45_Y19_N8
\dac|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Selector13~0_combout\ = (\dac|state.ST_WR_1~q\ & ((\dac|data_buffer\(0)))) # (!\dac|state.ST_WR_1~q\ & (\dac|data_buffer\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|data_buffer\(8),
	datac => \dac|state.ST_WR_1~q\,
	datad => \dac|data_buffer\(0),
	combout => \dac|Selector13~0_combout\);

-- Location: FF_X45_Y19_N9
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

-- Location: FF_X45_Y17_N15
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

-- Location: LCCOMB_X45_Y19_N12
\dac|data_buffer[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|data_buffer[1]~feeder_combout\ = DATA(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => DATA(1),
	combout => \dac|data_buffer[1]~feeder_combout\);

-- Location: FF_X45_Y19_N13
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

-- Location: LCCOMB_X45_Y19_N6
\dac|data_buffer[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|data_buffer[9]~feeder_combout\ = DATA(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => DATA(9),
	combout => \dac|data_buffer[9]~feeder_combout\);

-- Location: FF_X45_Y19_N7
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

-- Location: LCCOMB_X45_Y19_N18
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

-- Location: FF_X45_Y19_N19
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

-- Location: FF_X45_Y17_N9
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

-- Location: LCCOMB_X45_Y17_N8
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

-- Location: LCCOMB_X46_Y17_N24
\dac|i2c_master_inst|Selector23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Selector23~2_combout\ = (\dac|i2c_master_inst|Equal1~0_combout\ & ((\dac|i2c_master_inst|state.wr~q\) # ((!\dac|ena~q\ & \dac|i2c_master_inst|state.rd~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|Equal1~0_combout\,
	datab => \dac|i2c_master_inst|state.wr~q\,
	datac => \dac|ena~q\,
	datad => \dac|i2c_master_inst|state.rd~q\,
	combout => \dac|i2c_master_inst|Selector23~2_combout\);

-- Location: LCCOMB_X46_Y17_N22
\dac|i2c_master_inst|Selector23~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Selector23~3_combout\ = (\dac|i2c_master_inst|Selector23~2_combout\) # ((\dac|i2c_master_inst|Mux3~1_combout\ & (\dac|i2c_master_inst|state.wr~q\ & \dac|i2c_master_inst|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|Mux3~1_combout\,
	datab => \dac|i2c_master_inst|state.wr~q\,
	datac => \dac|i2c_master_inst|Add1~0_combout\,
	datad => \dac|i2c_master_inst|Selector23~2_combout\,
	combout => \dac|i2c_master_inst|Selector23~3_combout\);

-- Location: LCCOMB_X47_Y17_N10
\dac|i2c_master_inst|Selector23~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Selector23~4_combout\ = ((\dac|i2c_master_inst|state.mstr_ack~q\) # ((\dac|i2c_master_inst|state.slv_ack2~q\ & !\dac|ena~q\))) # (!\dac|i2c_master_inst|state.ready~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|state.slv_ack2~q\,
	datab => \dac|i2c_master_inst|state.ready~q\,
	datac => \dac|i2c_master_inst|state.mstr_ack~q\,
	datad => \dac|ena~q\,
	combout => \dac|i2c_master_inst|Selector23~4_combout\);

-- Location: LCCOMB_X47_Y17_N16
\dac|i2c_master_inst|Selector23~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Selector23~5_combout\ = (\dac|i2c_master_inst|Selector23~4_combout\) # ((\dac|i2c_master_inst|state.stop~q\) # ((!\dac|i2c_master_inst|Equal1~0_combout\ & \dac|i2c_master_inst|state.rd~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|Equal1~0_combout\,
	datab => \dac|i2c_master_inst|state.rd~q\,
	datac => \dac|i2c_master_inst|Selector23~4_combout\,
	datad => \dac|i2c_master_inst|state.stop~q\,
	combout => \dac|i2c_master_inst|Selector23~5_combout\);

-- Location: LCCOMB_X46_Y17_N28
\dac|i2c_master_inst|Selector23~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Selector23~6_combout\ = (\dac|i2c_master_inst|Selector23~3_combout\) # ((!\dac|i2c_master_inst|sda_int~q\ & \dac|i2c_master_inst|Selector23~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|sda_int~q\,
	datac => \dac|i2c_master_inst|Selector23~3_combout\,
	datad => \dac|i2c_master_inst|Selector23~5_combout\,
	combout => \dac|i2c_master_inst|Selector23~6_combout\);

-- Location: LCCOMB_X45_Y17_N28
\dac|i2c_master_inst|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Mux4~2_combout\ = (\dac|i2c_master_inst|bit_cnt\(0) & (((\dac|i2c_master_inst|bit_cnt\(1) & \dac|data_wr\(0))))) # (!\dac|i2c_master_inst|bit_cnt\(0) & ((\dac|data_wr\(1)) # ((!\dac|i2c_master_inst|bit_cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|bit_cnt\(0),
	datab => \dac|data_wr\(1),
	datac => \dac|i2c_master_inst|bit_cnt\(1),
	datad => \dac|data_wr\(0),
	combout => \dac|i2c_master_inst|Mux4~2_combout\);

-- Location: LCCOMB_X45_Y17_N22
\dac|i2c_master_inst|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Mux4~3_combout\ = (\dac|i2c_master_inst|bit_cnt\(1) & (((\dac|i2c_master_inst|Mux4~2_combout\)))) # (!\dac|i2c_master_inst|bit_cnt\(1) & ((\dac|i2c_master_inst|Mux4~2_combout\ & (\dac|data_wr\(3))) # 
-- (!\dac|i2c_master_inst|Mux4~2_combout\ & ((\dac|data_wr\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|bit_cnt\(1),
	datab => \dac|data_wr\(3),
	datac => \dac|data_wr\(2),
	datad => \dac|i2c_master_inst|Mux4~2_combout\,
	combout => \dac|i2c_master_inst|Mux4~3_combout\);

-- Location: LCCOMB_X46_Y17_N10
\dac|i2c_master_inst|Selector23~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Selector23~14_combout\ = (\dac|ena~q\ & (\dac|i2c_master_inst|bit_cnt\(2) & (\dac|i2c_master_inst|state.slv_ack2~q\ & \dac|i2c_master_inst|Mux4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|ena~q\,
	datab => \dac|i2c_master_inst|bit_cnt\(2),
	datac => \dac|i2c_master_inst|state.slv_ack2~q\,
	datad => \dac|i2c_master_inst|Mux4~3_combout\,
	combout => \dac|i2c_master_inst|Selector23~14_combout\);

-- Location: LCCOMB_X47_Y17_N0
\dac|i2c_master_inst|Selector23~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Selector23~11_combout\ = (!\dac|i2c_master_inst|bit_cnt\(1) & \dac|i2c_master_inst|state.start~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dac|i2c_master_inst|bit_cnt\(1),
	datad => \dac|i2c_master_inst|state.start~q\,
	combout => \dac|i2c_master_inst|Selector23~11_combout\);

-- Location: LCCOMB_X45_Y17_N14
\dac|i2c_master_inst|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Mux2~0_combout\ = (\dac|i2c_master_inst|bit_cnt\(0) & (\dac|i2c_master_inst|bit_cnt\(1) & (\dac|i2c_master_inst|data_tx\(0)))) # (!\dac|i2c_master_inst|bit_cnt\(0) & (((\dac|i2c_master_inst|data_tx\(1))) # 
-- (!\dac|i2c_master_inst|bit_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|bit_cnt\(0),
	datab => \dac|i2c_master_inst|bit_cnt\(1),
	datac => \dac|i2c_master_inst|data_tx\(0),
	datad => \dac|i2c_master_inst|data_tx\(1),
	combout => \dac|i2c_master_inst|Mux2~0_combout\);

-- Location: LCCOMB_X45_Y17_N10
\dac|i2c_master_inst|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Mux2~1_combout\ = (\dac|i2c_master_inst|Mux2~0_combout\ & ((\dac|i2c_master_inst|bit_cnt\(1)) # ((\dac|i2c_master_inst|data_tx\(3))))) # (!\dac|i2c_master_inst|Mux2~0_combout\ & (!\dac|i2c_master_inst|bit_cnt\(1) & 
-- ((\dac|i2c_master_inst|data_tx\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|Mux2~0_combout\,
	datab => \dac|i2c_master_inst|bit_cnt\(1),
	datac => \dac|i2c_master_inst|data_tx\(3),
	datad => \dac|i2c_master_inst|data_tx\(2),
	combout => \dac|i2c_master_inst|Mux2~1_combout\);

-- Location: LCCOMB_X45_Y19_N26
\dac|data_buffer[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|data_buffer[7]~feeder_combout\ = DATA(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => DATA(7),
	combout => \dac|data_buffer[7]~feeder_combout\);

-- Location: FF_X45_Y19_N27
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

-- Location: LCCOMB_X41_Y19_N12
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

-- Location: LCCOMB_X41_Y19_N22
\dac|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Selector6~0_combout\ = (!\dac|state.ST_START~q\ & \dac|data_wr\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dac|state.ST_START~q\,
	datad => \dac|data_wr\(7),
	combout => \dac|Selector6~0_combout\);

-- Location: FF_X41_Y19_N13
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

-- Location: FF_X45_Y17_N25
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

-- Location: LCCOMB_X45_Y19_N24
\dac|data_buffer[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|data_buffer[4]~feeder_combout\ = DATA(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => DATA(4),
	combout => \dac|data_buffer[4]~feeder_combout\);

-- Location: FF_X45_Y19_N25
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

-- Location: LCCOMB_X44_Y19_N8
\dac|data_wr[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|data_wr[4]~2_combout\ = (\dac|process_0~0_combout\ & ((\dac|data_buffer\(4)))) # (!\dac|process_0~0_combout\ & (\dac|data_wr\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dac|process_0~0_combout\,
	datac => \dac|data_wr\(4),
	datad => \dac|data_buffer\(4),
	combout => \dac|data_wr[4]~2_combout\);

-- Location: LCCOMB_X44_Y19_N22
\dac|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Selector9~0_combout\ = (\dac|data_wr\(4) & !\dac|state.ST_START~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dac|data_wr\(4),
	datac => \dac|state.ST_START~q\,
	combout => \dac|Selector9~0_combout\);

-- Location: FF_X44_Y19_N9
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

-- Location: FF_X45_Y17_N7
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

-- Location: LCCOMB_X45_Y19_N4
\dac|data_buffer[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|data_buffer[6]~feeder_combout\ = DATA(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => DATA(6),
	combout => \dac|data_buffer[6]~feeder_combout\);

-- Location: FF_X45_Y19_N5
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

-- Location: LCCOMB_X41_Y19_N4
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

-- Location: LCCOMB_X41_Y19_N26
\dac|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Selector7~0_combout\ = (\dac|data_wr\(6) & !\dac|state.ST_START~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dac|data_wr\(6),
	datac => \dac|state.ST_START~q\,
	combout => \dac|Selector7~0_combout\);

-- Location: FF_X41_Y19_N5
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

-- Location: FF_X45_Y17_N17
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

-- Location: LCCOMB_X45_Y17_N6
\dac|i2c_master_inst|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Mux2~2_combout\ = (\dac|i2c_master_inst|bit_cnt\(0) & ((\dac|i2c_master_inst|bit_cnt\(1) & (\dac|i2c_master_inst|data_tx\(4))) # (!\dac|i2c_master_inst|bit_cnt\(1) & ((\dac|i2c_master_inst|data_tx\(6)))))) # 
-- (!\dac|i2c_master_inst|bit_cnt\(0) & (!\dac|i2c_master_inst|bit_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|bit_cnt\(0),
	datab => \dac|i2c_master_inst|bit_cnt\(1),
	datac => \dac|i2c_master_inst|data_tx\(4),
	datad => \dac|i2c_master_inst|data_tx\(6),
	combout => \dac|i2c_master_inst|Mux2~2_combout\);

-- Location: LCCOMB_X45_Y19_N2
\dac|data_buffer[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|data_buffer[5]~feeder_combout\ = DATA(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => DATA(5),
	combout => \dac|data_buffer[5]~feeder_combout\);

-- Location: FF_X45_Y19_N3
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

-- Location: LCCOMB_X41_Y19_N6
\dac|data_wr[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|data_wr[5]~1_combout\ = (\dac|process_0~0_combout\ & (\dac|data_buffer\(5))) # (!\dac|process_0~0_combout\ & ((\dac|data_wr\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|data_buffer\(5),
	datac => \dac|data_wr\(5),
	datad => \dac|process_0~0_combout\,
	combout => \dac|data_wr[5]~1_combout\);

-- Location: LCCOMB_X41_Y19_N8
\dac|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|Selector8~0_combout\ = (!\dac|state.ST_START~q\ & \dac|data_wr\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dac|state.ST_START~q\,
	datad => \dac|data_wr\(5),
	combout => \dac|Selector8~0_combout\);

-- Location: FF_X41_Y19_N7
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

-- Location: FF_X45_Y17_N19
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

-- Location: LCCOMB_X45_Y17_N4
\dac|i2c_master_inst|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Mux2~3_combout\ = (\dac|i2c_master_inst|bit_cnt\(0) & (((\dac|i2c_master_inst|Mux2~2_combout\)))) # (!\dac|i2c_master_inst|bit_cnt\(0) & ((\dac|i2c_master_inst|Mux2~2_combout\ & (\dac|i2c_master_inst|data_tx\(7))) # 
-- (!\dac|i2c_master_inst|Mux2~2_combout\ & ((\dac|i2c_master_inst|data_tx\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|bit_cnt\(0),
	datab => \dac|i2c_master_inst|data_tx\(7),
	datac => \dac|i2c_master_inst|Mux2~2_combout\,
	datad => \dac|i2c_master_inst|data_tx\(5),
	combout => \dac|i2c_master_inst|Mux2~3_combout\);

-- Location: LCCOMB_X46_Y17_N0
\dac|i2c_master_inst|Selector23~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Selector23~10_combout\ = (\dac|i2c_master_inst|state.slv_ack1~q\ & ((\dac|i2c_master_inst|bit_cnt\(2) & (\dac|i2c_master_inst|Mux2~1_combout\)) # (!\dac|i2c_master_inst|bit_cnt\(2) & ((\dac|i2c_master_inst|Mux2~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|Mux2~1_combout\,
	datab => \dac|i2c_master_inst|Mux2~3_combout\,
	datac => \dac|i2c_master_inst|bit_cnt\(2),
	datad => \dac|i2c_master_inst|state.slv_ack1~q\,
	combout => \dac|i2c_master_inst|Selector23~10_combout\);

-- Location: LCCOMB_X46_Y17_N8
\dac|i2c_master_inst|Selector23~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Selector23~12_combout\ = (\dac|i2c_master_inst|Selector23~14_combout\) # ((\dac|i2c_master_inst|Selector23~10_combout\) # ((!\dac|i2c_master_inst|bit_cnt\(2) & \dac|i2c_master_inst|Selector23~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|Selector23~14_combout\,
	datab => \dac|i2c_master_inst|bit_cnt\(2),
	datac => \dac|i2c_master_inst|Selector23~11_combout\,
	datad => \dac|i2c_master_inst|Selector23~10_combout\,
	combout => \dac|i2c_master_inst|Selector23~12_combout\);

-- Location: LCCOMB_X45_Y17_N16
\dac|i2c_master_inst|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Mux3~2_combout\ = (\dac|i2c_master_inst|bit_cnt\(0) & (\dac|i2c_master_inst|bit_cnt\(1) & ((\dac|i2c_master_inst|data_tx\(7))))) # (!\dac|i2c_master_inst|bit_cnt\(0) & ((\dac|i2c_master_inst|bit_cnt\(1)) # 
-- ((\dac|i2c_master_inst|data_tx\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|bit_cnt\(0),
	datab => \dac|i2c_master_inst|bit_cnt\(1),
	datac => \dac|i2c_master_inst|data_tx\(6),
	datad => \dac|i2c_master_inst|data_tx\(7),
	combout => \dac|i2c_master_inst|Mux3~2_combout\);

-- Location: LCCOMB_X45_Y17_N18
\dac|i2c_master_inst|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Mux3~3_combout\ = (\dac|i2c_master_inst|Mux3~2_combout\ & ((\dac|i2c_master_inst|data_tx\(4)) # ((!\dac|i2c_master_inst|Selector25~0_combout\)))) # (!\dac|i2c_master_inst|Mux3~2_combout\ & (((\dac|i2c_master_inst|data_tx\(5) & 
-- \dac|i2c_master_inst|Selector25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|data_tx\(4),
	datab => \dac|i2c_master_inst|Mux3~2_combout\,
	datac => \dac|i2c_master_inst|data_tx\(5),
	datad => \dac|i2c_master_inst|Selector25~0_combout\,
	combout => \dac|i2c_master_inst|Mux3~3_combout\);

-- Location: LCCOMB_X47_Y17_N12
\dac|i2c_master_inst|Selector23~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Selector23~7_combout\ = (\dac|i2c_master_inst|state.command~q\ & ((\dac|i2c_master_inst|bit_cnt\(0) & (\dac|i2c_master_inst|bit_cnt\(1) & \dac|i2c_master_inst|bit_cnt\(2))) # (!\dac|i2c_master_inst|bit_cnt\(0) & 
-- (!\dac|i2c_master_inst|bit_cnt\(1) & !\dac|i2c_master_inst|bit_cnt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|bit_cnt\(0),
	datab => \dac|i2c_master_inst|bit_cnt\(1),
	datac => \dac|i2c_master_inst|bit_cnt\(2),
	datad => \dac|i2c_master_inst|state.command~q\,
	combout => \dac|i2c_master_inst|Selector23~7_combout\);

-- Location: LCCOMB_X45_Y17_N2
\dac|i2c_master_inst|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Mux4~0_combout\ = (\dac|i2c_master_inst|bit_cnt\(1) & ((\dac|i2c_master_inst|bit_cnt\(0) & (\dac|data_wr\(4))) # (!\dac|i2c_master_inst|bit_cnt\(0) & ((\dac|data_wr\(5)))))) # (!\dac|i2c_master_inst|bit_cnt\(1) & 
-- (((!\dac|i2c_master_inst|bit_cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|data_wr\(4),
	datab => \dac|i2c_master_inst|bit_cnt\(1),
	datac => \dac|i2c_master_inst|bit_cnt\(0),
	datad => \dac|data_wr\(5),
	combout => \dac|i2c_master_inst|Mux4~0_combout\);

-- Location: LCCOMB_X45_Y17_N24
\dac|i2c_master_inst|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Mux4~1_combout\ = (\dac|i2c_master_inst|bit_cnt\(1) & (((\dac|i2c_master_inst|Mux4~0_combout\)))) # (!\dac|i2c_master_inst|bit_cnt\(1) & ((\dac|i2c_master_inst|Mux4~0_combout\ & ((\dac|data_wr\(7)))) # 
-- (!\dac|i2c_master_inst|Mux4~0_combout\ & (\dac|data_wr\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|data_wr\(6),
	datab => \dac|i2c_master_inst|bit_cnt\(1),
	datac => \dac|data_wr\(7),
	datad => \dac|i2c_master_inst|Mux4~0_combout\,
	combout => \dac|i2c_master_inst|Mux4~1_combout\);

-- Location: LCCOMB_X46_Y17_N4
\dac|i2c_master_inst|Selector23~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Selector23~8_combout\ = (\dac|i2c_master_inst|Selector23~7_combout\) # ((\dac|i2c_master_inst|Selector20~0_combout\ & (!\dac|i2c_master_inst|bit_cnt\(2) & \dac|i2c_master_inst|Mux4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|Selector20~0_combout\,
	datab => \dac|i2c_master_inst|bit_cnt\(2),
	datac => \dac|i2c_master_inst|Selector23~7_combout\,
	datad => \dac|i2c_master_inst|Mux4~1_combout\,
	combout => \dac|i2c_master_inst|Selector23~8_combout\);

-- Location: LCCOMB_X46_Y17_N2
\dac|i2c_master_inst|Selector23~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Selector23~9_combout\ = (\dac|i2c_master_inst|Selector23~8_combout\) # ((!\dac|i2c_master_inst|Add1~0_combout\ & (\dac|i2c_master_inst|Mux3~3_combout\ & \dac|i2c_master_inst|state.wr~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|Add1~0_combout\,
	datab => \dac|i2c_master_inst|Mux3~3_combout\,
	datac => \dac|i2c_master_inst|Selector23~8_combout\,
	datad => \dac|i2c_master_inst|state.wr~q\,
	combout => \dac|i2c_master_inst|Selector23~9_combout\);

-- Location: LCCOMB_X46_Y17_N12
\dac|i2c_master_inst|Selector23~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Selector23~13_combout\ = (!\dac|i2c_master_inst|Selector21~0_combout\ & (!\dac|i2c_master_inst|Selector23~6_combout\ & (!\dac|i2c_master_inst|Selector23~12_combout\ & !\dac|i2c_master_inst|Selector23~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|Selector21~0_combout\,
	datab => \dac|i2c_master_inst|Selector23~6_combout\,
	datac => \dac|i2c_master_inst|Selector23~12_combout\,
	datad => \dac|i2c_master_inst|Selector23~9_combout\,
	combout => \dac|i2c_master_inst|Selector23~13_combout\);

-- Location: FF_X46_Y17_N13
\dac|i2c_master_inst|sda_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dac|i2c_master_inst|Selector23~13_combout\,
	clrn => \RST~input_o\,
	ena => \dac|i2c_master_inst|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac|i2c_master_inst|sda_int~q\);

-- Location: LCCOMB_X48_Y17_N8
\dac|i2c_master_inst|Selector29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|Selector29~0_combout\ = (\dac|i2c_master_inst|state.start~q\ & (((\dac|i2c_master_inst|data_clk_prev~q\)))) # (!\dac|i2c_master_inst|state.start~q\ & ((\dac|i2c_master_inst|state.stop~q\ & ((!\dac|i2c_master_inst|data_clk_prev~q\))) # 
-- (!\dac|i2c_master_inst|state.stop~q\ & (!\dac|i2c_master_inst|sda_int~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dac|i2c_master_inst|sda_int~q\,
	datab => \dac|i2c_master_inst|state.stop~q\,
	datac => \dac|i2c_master_inst|data_clk_prev~q\,
	datad => \dac|i2c_master_inst|state.start~q\,
	combout => \dac|i2c_master_inst|Selector29~0_combout\);

-- Location: LCCOMB_X48_Y19_N28
\dac|i2c_master_inst|scl_clk~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac|i2c_master_inst|scl_clk~0_combout\ = (\dac|i2c_master_inst|LessThan1~0_combout\ & \dac|i2c_master_inst|process_0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dac|i2c_master_inst|LessThan1~0_combout\,
	datad => \dac|i2c_master_inst|process_0~4_combout\,
	combout => \dac|i2c_master_inst|scl_clk~0_combout\);

-- Location: FF_X48_Y19_N29
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

-- Location: LCCOMB_X48_Y19_N18
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

-- Location: LCCOMB_X45_Y15_N28
\data_out[0]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[0]~reg0feeder_combout\ = DATA(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => DATA(0),
	combout => \data_out[0]~reg0feeder_combout\);

-- Location: FF_X45_Y15_N29
\data_out[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \data_out[0]~reg0feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[0]~reg0_q\);

-- Location: LCCOMB_X45_Y18_N24
\data_out[1]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[1]~reg0feeder_combout\ = DATA(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => DATA(1),
	combout => \data_out[1]~reg0feeder_combout\);

-- Location: FF_X45_Y18_N25
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
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[1]~reg0_q\);

-- Location: LCCOMB_X45_Y15_N18
\data_out[2]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[2]~reg0feeder_combout\ = DATA(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => DATA(2),
	combout => \data_out[2]~reg0feeder_combout\);

-- Location: FF_X45_Y15_N19
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
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[2]~reg0_q\);

-- Location: LCCOMB_X46_Y19_N0
\data_out[3]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[3]~reg0feeder_combout\ = DATA(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => DATA(3),
	combout => \data_out[3]~reg0feeder_combout\);

-- Location: FF_X46_Y19_N1
\data_out[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \data_out[3]~reg0feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[3]~reg0_q\);

-- Location: LCCOMB_X45_Y15_N0
\data_out[4]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[4]~reg0feeder_combout\ = DATA(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => DATA(4),
	combout => \data_out[4]~reg0feeder_combout\);

-- Location: FF_X45_Y15_N1
\data_out[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \data_out[4]~reg0feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[4]~reg0_q\);

-- Location: LCCOMB_X45_Y15_N30
\data_out[5]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[5]~reg0feeder_combout\ = DATA(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => DATA(5),
	combout => \data_out[5]~reg0feeder_combout\);

-- Location: FF_X45_Y15_N31
\data_out[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \data_out[5]~reg0feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[5]~reg0_q\);

-- Location: LCCOMB_X45_Y15_N8
\data_out[6]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[6]~reg0feeder_combout\ = DATA(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => DATA(6),
	combout => \data_out[6]~reg0feeder_combout\);

-- Location: FF_X45_Y15_N9
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
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[6]~reg0_q\);

-- Location: LCCOMB_X45_Y15_N14
\data_out[7]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[7]~reg0feeder_combout\ = DATA(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => DATA(7),
	combout => \data_out[7]~reg0feeder_combout\);

-- Location: FF_X45_Y15_N15
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
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[7]~reg0_q\);

-- Location: FF_X45_Y18_N31
\data_out[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => DATA(8),
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[8]~reg0_q\);

-- Location: LCCOMB_X45_Y18_N26
\data_out[9]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[9]~reg0feeder_combout\ = DATA(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => DATA(9),
	combout => \data_out[9]~reg0feeder_combout\);

-- Location: FF_X45_Y18_N27
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
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[9]~reg0_q\);

-- Location: LCCOMB_X45_Y18_N28
\data_out[10]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[10]~reg0feeder_combout\ = DATA(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => DATA(10),
	combout => \data_out[10]~reg0feeder_combout\);

-- Location: FF_X45_Y18_N29
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
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[10]~reg0_q\);

-- Location: LCCOMB_X45_Y15_N20
\data_out[11]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[11]~reg0feeder_combout\ = DATA(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => DATA(11),
	combout => \data_out[11]~reg0feeder_combout\);

-- Location: FF_X45_Y15_N21
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
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[11]~reg0_q\);

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


