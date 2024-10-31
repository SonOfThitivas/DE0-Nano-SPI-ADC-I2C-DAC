library ieee;
use ieee.std_logic_1164.all;
library utils;
use utils.machine_state_type.all;

entity top_level is
	port (
		CLOCK_50,
		RST	: IN STD_LOGIC := '1';
		
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

--	type state_type is (RECEIVING_DATA, SENDING_DATA);
--	signal state : state_type := RECEIVING_DATA;
	
	signal DATA, temp_DATA, tp_DATA : STD_LOGIC_VECTOR(11 DOWNTO 0) := (others => '0');
--	signal DATA : STD_LOGIC_VECTOR(11 DOWNTO 0) := (others => '1');
--	signal DATA : STD_LOGIC_VECTOR(11 DOWNTO 0) := "000010111010";
	
	signal start, done, ddone, virt_clk : std_logic;
	signal adc_bit_counter : integer range 0 to 11 := 0;

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
				I2C_SCL => SCL,
				STATUS  => ddone
			);
			

	process(CLOCK_50, RST) is
	begin
		
		if RST = '0' then
			start <= '0';
			done <= '0';
			
		elsif rising_edge(CLOCK_50) then
			start <= '0';
			tp_DATA <= temp_DATA;
			
			if virt_clk = '1' then
				if adc_bit_counter < 12 then
					adc_bit_counter <= adc_bit_counter + 1;
				else
					adc_bit_counter <= 0;
					DATA <= tp_DATA;
					tp_DATA <= (others => '0');
				end if;
			end if;
		end if;
	end process;
	
end behavior;