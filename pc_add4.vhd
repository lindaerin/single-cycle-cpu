library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity Li_PC_Add4 is
port( a: in std_logic_vector(31 downto 0);
		sum: out std_logic_vector(31 downto 0));
end Li_PC_Add4;


architecture behavioral of Li_PC_Add4 is
	signal result: std_logic_vector(31 downto 0);
		begin
			result <= a + "00000000000000000000000000000100";
			sum <= result;
end behavioral;