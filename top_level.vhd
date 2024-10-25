library ieee;
use ieee.std_logic_1164.all;
library work;
use work.sample_table.all;

entity top_level is
	port (
		CLOCK_50,
		RST	: IN STD_LOGIC;
		
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

	type state_type is (RECEIVING_DATA, SENDING_DATA);
	signal state : state_type := RECEIVING_DATA;
	
	signal DATA : STD_LOGIC_VECTOR(11 DOWNTO 0) := (others => '0');

	signal sample_table : sample_table_t := (others => (others => '0'));
	signal sample_index : integer range 0 to MAX_INDEX := 0;
	
	signal start, done, ddone : std_logic;


begin
	adc : entity work.adc_process port map(
				CLOCK_50   => CLOCK_50,
			   ADC_SDAT   => ADC_SDAT,
			   ADC_SADDR  => ADC_SADDR,
			   ADC_CS_N	  => ADC_CS_N,
			   ADC_SCLK   => ADC_SCLK,
				DATA_RECEIVE => DATA
			);
			
	dac : entity work.mcp4725_dac port map(
				NRESET  => RST,
				CLK     => CLOCK_50,
				sample_table => sample_table,
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
			done <= ddone;
		
			case state is
				when RECEIVING_DATA =>
					if sample_index = MAX_INDEX then
						sample_table(sample_index) <= DATA;
						sample_index <= 0;
						start <= '1';
						state <= SENDING_DATA;
					else
						sample_table(sample_index) <= DATA;
						sample_index <= sample_index + 1;
					end if;
				
				when SENDING_DATA =>
					if done = '1' then
						sample_table <= (others => (others => '0'));
						done <= '0';
						state <= SENDING_DATA;
					end if;
					
			end case;
		end if;
	end process;
	
end behavior;