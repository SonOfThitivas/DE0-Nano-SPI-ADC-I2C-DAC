library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
--use ieee.std_logic_arith.all;
--use ieee.std_logic_unsigned.all;
--use ieee.math_real.all;

library utils;
use utils.machine_state_type.all;

entity top_level is
	port (
		CLOCK_50,															-- system clock 50 MHz
		incr,																	-- increase key 1
		decr			: in		std_logic;								-- decrease key 0
		led8			: out		std_logic_vector(7 downto 0);		-- led
		
		ssw			: in 		STD_LOGIC_VECTOR(1 downto 0);		-- slice switch
		
		-- ADC SPI Protocal
		ADC_SDAT   	: IN 		STD_LOGIC;
      ADC_SADDR,
      ADC_CS_N,
      ADC_SCLK   	: OUT 	STD_LOGIC;
		
		-- DAC I2C Protocal
		SDA,
		SCL			: INOUT 	STD_LOGIC
	);
	
end top_level;

architecture behavior of top_level is
	
	signal channel			: STD_LOGIC_VECTOR(2 downto 0)	:= "000";		-- ADC channel analog_in0
	
	signal ADC_DATA,
			 DAC_DATA		: STD_LOGIC_VECTOR(15 DOWNTO 0) := (others => '0');
			 
	signal start,
			 virt_clk,												-- ADC clock
			 done,
			 adc_run 		: std_logic := '0';				-- signal control ADC reading analog input
			 
	signal state,
			 state_process : machine_state_type := initialize;
			 
	signal RST				: std_logic := '1';				-- reset and button edge detector
			 
	signal ADC_CLK			: integer range 800_000 to 3_200_000 := 1_000_000;
	signal DAC_CLK			: integer := 100_000;
	
	constant limit			: integer := 2_400_000;
	signal scaler			: integer := 0;

begin

	vclock : entity utils.virtual_clock PORT MAP (
			CLOCK_50 => CLOCK_50,
			ADC_CLK	=> ADC_CLK,
			virt_clk => virt_clk
			);
	
	CLOCK_ADJ : entity work.CLK_ADJUST port map(
			CLOCK_50		=> CLOCK_50,
			RST			=> RST,
			ssw			=> ssw,
			incr			=> incr,
			decr			=> decr,
			ADC_CLK		=> ADC_CLK,
			DAC_CLK		=> DAC_CLK
			);
	
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
			
	dac : entity work.mcp4725_dac port map(
				NRESET  => RST,
				CLK     => CLOCK_50,
				sample  => DAC_DATA(11 downto 0),
				I2C_SDA => SDA,
				I2C_SCL => SCL,
				ADC_CLK => ADC_CLK
			);

	state_process <= state;
	
	process(CLOCK_50, RST) is			
	begin
		
		if RST = '0' then
			start <= '0';
			done 	<= '0';
			led8 	<= (others => '0');

		elsif rising_edge(CLOCK_50) then

			case state_process is
				when initialize =>
				when ready =>
						adc_run <= '1';
						DAC_DATA <= ADC_DATA;			-- ADC Data to DAC Data

				when execute =>
						adc_run <= '0';
						
				when others =>
				end case;
			
			case ssw is
				when "01" 	=>						-- ADC
					scaler <= ((ADC_CLK - 800_000) / 2_400_000) * 256;
					led8	 <= std_logic_vector(to_unsigned(scaler, 8));
					
				when "11"	=>						-- DAC
					case DAC_CLK is
						when 100_000	=> led8 <= "00000001";	-- Standard Mode
						when 400_000	=> led8 <= "00000011";	-- Fast Mode
						when 1_700_000	=> led8 <= "00000111";	-- High Speed Mode
						when 3_400_000	=> led8 <= "00001111";	-- High Speed Mode
						when others =>
					end case;
					
				when others =>
			end case;
			
			if incr = '0' and decr = '0' then		-- Reset
				rst <= '0';
			else
				rst <= '1';
			end if;
			
		end if;
	end process;
	
end behavior;