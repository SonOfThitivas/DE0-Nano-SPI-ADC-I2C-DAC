library ieee;
use ieee.std_logic_1164.all;

entity CLK_ADJUST is
	port(
		CLOCK_50,
		RST,
		incr,
		decr			: IN STD_LOGIC;
		
		ssw			: IN STD_LOGIC_VECTOR(1 downto 0);
		
		ADC_CLK,
		DAC_CLK		: BUFFER INTEGER
		
	);
	
end CLK_ADJUST;

architecture ADJUSTING of CLK_ADJUST is
	signal prev_incr,
			 prev_decr		: STD_LOGIC := '1';
	
begin
	process(CLOCK_50, RST) is
	begin
		
		if RST = '0' then
			prev_incr <= '1';
			prev_decr <= '1';
		
		elsif rising_edge(CLOCK_50) then
		
			case ssw is
				when "01" =>	-- ADC_CLK
					if incr = '0' and prev_incr = '1' and ADC_CLK < 3_200_000 then
						ADC_CLK <= ADC_CLK + 1_000_000;					-- increase 1 MHz
				
					elsif decr = '0' and prev_decr = '1' and ADC_CLK > 800_000 then
						ADC_CLK <= ADC_CLK - 1_000_000;					-- decrease 1 MHz
					
					end if;
					
				when "11" =>	-- DAC_CLK
					if incr = '0' and prev_incr = '1' and DAC_CLK < 100_000 then
						case DAC_CLK is
							when 100_000 => DAC_CLK <= 400_000; 		-- Fast Mode
							when 400_000 => DAC_CLK <= 1_700_000; 		-- High Speed Mode
							when 1_700_000 => DAC_CLK <= 3_400_000; 	-- High Speed Mode
							when others =>
						end case;
				
					elsif decr = '0' and prev_decr = '1' and ADC_CLK > 800_000 then
						case DAC_CLK is
							when 3_400_000 => DAC_CLK <= 1_700_000; 	-- High Speed Mode
							when 1_700_000	=> DAC_CLK <= 400_000; 		-- Fast Mode
							when 400_000 	=> DAC_CLK <= 100_000; 		-- Standard Mode
							when others =>
						end case;
					
					end if;
				
				when others => -- Normal		
			end case;
			
			prev_incr <= incr;
			prev_decr <= decr;
			
		end if;
		
	end process;
	

end ADJUSTING;