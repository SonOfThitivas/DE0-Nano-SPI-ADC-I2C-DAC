library ieee;
use ieee.std_logic_1164.all;
library utils;
use utils.machine_state_type.all;

entity top_level is
	port (
		CLOCK_50		: IN STD_LOGIC;
		RST,
		incr,
		decr			: IN STD_LOGIC := '1';
		
		LED8			: OUT STD_LOGIC_VECTOR(7 downto 0);

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

	signal ADC_DATA,
			 DAC_DATA: STD_LOGIC_VECTOR(15 DOWNTO 0) := (others => '0');

	signal virt_clk,
			 adc_run : std_logic := '0';
			 
	signal state,
			 state_process:	machine_state_type := initialize;
			 
	signal I2C_CLK_SPEED : INTEGER := 400_000;
	
	signal btn,																				-- (incr, derc)
			 debnce_btn		: STD_LOGIC_VECTOR(1 downto 0);						-- debouncing

begin	
	
	btn(1) <= incr;			-- read button key value
	btn(0) <= decr;
	
	-- debouncing DE0-Nano key button
	debnce : entity work.Debounce_Multi_Input port map(
				i_Clk			=> CLOCK_50,
				i_Switches	=> btn,
				o_Switches	=> debnce_btn
			);
	
	-- virtual clock
	vclock : entity utils.virtual_clock PORT MAP (CLOCK_50 => CLOCK_50, virt_clk => virt_clk);
	
	-- ADC read analog data
	adc : entity work.de0nano_adc port map(
				run            	=> adc_run,
				input(2 downto 0) => channel,
				output          	=> ADC_DATA,
				state           	=> state,
				virt_clk        	=> virt_clk,
				CLOCK_50        	=> CLOCK_50,
				ADC_SDAT        	=> ADC_SDAT,
				ADC_SCLK				=> ADC_SCLK,
				ADC_SADDR			=> ADC_SADDR,
				ADC_CS_N        	=> ADC_CS_N
			);
	
	-- DAC write 12-bit data
	dac : entity work.mcp4725_dac port map(
				NRESET  => RST,
				CLK     => CLOCK_50,
				sample  => DAC_DATA(11 downto 0),
				I2C_SDA => SDA,
				I2C_SCL => SCL,
				I2C_CLK_SPEED => I2C_CLK_SPEED,
				incr	=>	debnce_btn(1),
				decr	=> debnce_btn(0)
			);
	
	-- ADJUSTING I2C_CLK_SPEED
	clk_adj : entity work.CLK_ADJUST port map(
				CLOCK_50     	=> CLOCK_50,
				RST				=> RST,
				incr				=> debnce_btn(1),
				decr           => debnce_btn(0),
				LED8				=> LED8,
				I2C_CLK_SPEED	=> I2C_CLK_SPEED
			);
	
	state_process <= state;				-- dummy variable of state
	
	process(CLOCK_50, RST) is
	begin
		
		if RST = '0' then
			
		elsif rising_edge(CLOCK_50) then

			case state_process is
				when initialize =>
				when ready =>
						adc_run <= '1';
						DAC_DATA <= ADC_DATA;
						
				when execute =>
						adc_run <= '0';
						
				when others =>
				end case;
		end if;
	end process;
	
end behavior;