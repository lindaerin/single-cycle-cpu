
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity Li_Sign_Exten is 
	port(
		input: in std_logic_vector(15 downto 0);
		output: out std_logic_vector(31 downto 0)
		);
end Li_Sign_Exten;

architecture arch of Li_Sign_Exten is
	
	begin
		output <= x"0000" & input when input(15) ='0'
			else
				x"FFFF" & input;
end arch;