library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
--use ieee.numeric_std.all;

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
	
	signal channel	:	STD_LOGIC_VECTOR(2 downto 0)	:= "000";
	signal DATA, temp_DATA, tp: STD_LOGIC_VECTOR(15 DOWNTO 0) := (others => '0');
--	signal DATA : STD_LOGIC_VECTOR(11 DOWNTO 0) := (others => '1');
	signal start,
			 virt_clk,
			 done,
			 adc_run : std_logic := '0';
	signal state,
			 state_process:	machine_state_type := initialize;

begin

	vclock : entity utils.virtual_clock PORT MAP (CLOCK_50 => CLOCK_50, virt_clk => virt_clk);
	
	adc : entity work.de0nano_adc port map(
				run            	=> adc_run,
				input(2 downto 0) => channel,
				output          	=> DATA,
				state           	=> state,
				virt_clk        	=> virt_clk,
				CLOCK_50        	=> CLOCK_50,
				ADC_SDAT        	=> ADC_SDAT,
				ADC_SCLK				=> ADC_SCLK,
				ADC_SADDR			=> ADC_SADDR,
				ADC_CS_N        	=> ADC_CS_N
			);
			
	dac : entity work.mcp4725_dac port map(
				NRESET  => RST,
				CLK     => CLOCK_50,
				sample  => temp_DATA(11 downto 0),
				I2C_SDA => SDA,
				I2C_SCL => SCL
			);

	state_process <= state;
	
	process(CLOCK_50, RST) is
	begin
		
		if RST = '0' then
			start <= '0';
			done <= '0';
			data_out <= (others =>'0');

			
		elsif rising_edge(CLOCK_50) then

			case state_process is
				when initialize =>
				when ready =>
						data_out <= DATA(15 downto 4);
						adc_run <= '1';
						temp_DATA <= DATA;			-- ADC Data to DAC Data
						
--						temp_DATA <= conv_std_logic_vector(conv_integer(DATA) * 1, 16);
--						temp_DATA <= std_logic_vector(shift_left(unsigned(DATA), 1));
				when execute =>
						adc_run <= '0';
						
				when others =>
				end case;
		end if;
	end process;
	
end behavior;