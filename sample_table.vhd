library ieee;
use ieee.std_logic_1164.all;

package sample_table is

	constant BW        : integer := 12; -- 12 bits for DAC output
   constant M         : integer := 8;
   constant MAX_INDEX : integer := 2 ** M - 1;
	
   subtype sample_t is std_logic_vector((BW - 1) downto 0);
   type sample_table_t is array(0 to MAX_INDEX) of sample_t;
	
end package sample_table;

package body sample_table is
end package body sample_table;