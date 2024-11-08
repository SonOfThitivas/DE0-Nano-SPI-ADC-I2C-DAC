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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "11/07/2024 17:40:31"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          top_level
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY top_level_vhd_vec_tst IS
END top_level_vhd_vec_tst;
ARCHITECTURE top_level_arch OF top_level_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ADC_CS_N : STD_LOGIC;
SIGNAL ADC_SADDR : STD_LOGIC;
SIGNAL ADC_SCLK : STD_LOGIC;
SIGNAL ADC_SDAT : STD_LOGIC;
SIGNAL CLOCK_50 : STD_LOGIC;
SIGNAL decr : STD_LOGIC;
SIGNAL incr : STD_LOGIC;
SIGNAL LED8 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL RST : STD_LOGIC;
SIGNAL SCL : STD_LOGIC;
SIGNAL SDA : STD_LOGIC;
COMPONENT top_level
	PORT (
	ADC_CS_N : OUT STD_LOGIC;
	ADC_SADDR : OUT STD_LOGIC;
	ADC_SCLK : OUT STD_LOGIC;
	ADC_SDAT : IN STD_LOGIC;
	CLOCK_50 : IN STD_LOGIC;
	decr : IN STD_LOGIC;
	incr : IN STD_LOGIC;
	LED8 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	RST : IN STD_LOGIC;
	SCL : INOUT STD_LOGIC;
	SDA : INOUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : top_level
	PORT MAP (
-- list connections between master ports and signals
	ADC_CS_N => ADC_CS_N,
	ADC_SADDR => ADC_SADDR,
	ADC_SCLK => ADC_SCLK,
	ADC_SDAT => ADC_SDAT,
	CLOCK_50 => CLOCK_50,
	decr => decr,
	incr => incr,
	LED8 => LED8,
	RST => RST,
	SCL => SCL,
	SDA => SDA
	);

-- ADC_SDAT
t_prcs_ADC_SDAT: PROCESS
BEGIN
	ADC_SDAT <= '0';
WAIT;
END PROCESS t_prcs_ADC_SDAT;

-- CLOCK_50
t_prcs_CLOCK_50: PROCESS
BEGIN
LOOP
	CLOCK_50 <= '0';
	WAIT FOR 10000 ps;
	CLOCK_50 <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLOCK_50;

-- decr
t_prcs_decr: PROCESS
BEGIN
	decr <= '0';
WAIT;
END PROCESS t_prcs_decr;

-- incr
t_prcs_incr: PROCESS
BEGIN
	incr <= '0';
WAIT;
END PROCESS t_prcs_incr;

-- RST
t_prcs_RST: PROCESS
BEGIN
	RST <= '0';
WAIT;
END PROCESS t_prcs_RST;

-- SCL
t_prcs_SCL: PROCESS
BEGIN
	SCL <= 'Z';
WAIT;
END PROCESS t_prcs_SCL;

-- SDA
t_prcs_SDA: PROCESS
BEGIN
	SDA <= 'Z';
WAIT;
END PROCESS t_prcs_SDA;
END top_level_arch;
