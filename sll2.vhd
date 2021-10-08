library ieee;
use ieee.std_logic_1164.all;

entity Li_sll2 is 

	port(
		a: in std_logic_vector(31 downto 0);
		result: out std_logic_vector(31 downto 0)
	);
end Li_sll2;

architecture arch of Li_sll2 is

	begin	
		result <= to_stdlogicvector(to_bitvector(a) sll 2);
		
end arch;