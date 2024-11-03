library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

library utils;
use utils.machine_state_type.all;

entity top_level is
	port (
		CLOCK_50,
		RST	: IN STD_LOGIC := '1';
		data_out : OUT STD_LOGIC_VECTOR(11 downto 0) := (OTHERS => '0');
		
		-- ADC SPI Protocal
		ADC_SDAT   : IN STD_LOGIC;
      ADC_SADDR,
      ADC_CS_N,
      ADC_SCLK   : OUT STD_LOGIC;
		
		-- DAC I2C Protocal
		SDA,
		SCL	: INOUT STD_LOGIC
	);
	
end top_level;

architecture behavior of top_level is
	
	signal DATA, temp_DATA, tp: STD_LOGIC_VECTOR(11 DOWNTO 0) := (others => '0');
--	signal DATA : STD_LOGIC_VECTOR(11 DOWNTO 0) := (others => '1');
	signal start, virt_clk, done : std_logic;

begin

	vclock : entity utils.virtual_clock PORT MAP (CLOCK_50 => CLOCK_50, virt_clk => virt_clk);

	adc : entity work.adc_process port map(
				CLOCK_50   => CLOCK_50,
			   ADC_SDAT   => ADC_SDAT,
			   ADC_SADDR  => ADC_SADDR,
			   ADC_CS_N	  => ADC_CS_N,
			   ADC_SCLK   => ADC_SCLK,
				DATA_RECEIVE => temp_DATA
			);
			
	dac : entity work.mcp4725_dac port map(
				NRESET  => RST,
				CLK     => CLOCK_50,
				sample  => DATA,
				I2C_SDA => SDA,
				I2C_SCL => SCL
			);
	
	process(CLOCK_50, RST) is
	begin
		
		if RST = '0' then
			start <= '0';
			done <= '0';
			data_out <= (others =>'0');

			
		elsif rising_edge(CLOCK_50) then
			start <= '1';
			data_out <= DATA;
		
		end if;
	end process;
	
end behavior;