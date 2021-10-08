--instruction memory

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Li_InstructionMemory is 

	port(
		readaddress: in std_logic_vector(31 downto 0);
		instruction: out std_logic_vector(31 downto 0)
		);
end Li_InstructionMemory;

architecture behavioral of Li_InstructionMemory is

	type mem is array(0 to 15) of std_logic_vector(31 downto 0);
	
	signal ram_block: mem := (
		
		"10001111111000000000000000000001", 
		"10001111111000010000000000000010", 
		"10001111111000100000000000000011", 
		"10001111111000110000000000000100", 
		"10001111111001000000000000000101", 
		"10000000010001010000000000000110",
		
		"00000000000000011111000000100000", 
		"00000011110000101111000000100000", 
		"00000011110000111111000000100000", 
		"00000011110001001111000000100000", 
		"00000011110001011111000000100000", 
		
		"10101101111111100000000000000000", 
		"00010010010100111111111111010100",
		
		"00000000000000000000000000000000", 
		"00000000000000000000000000000000", 
		"00000000000000000000000000000000" );
	
		
begin

	instruction <= x"00000000" when readaddress = x"003FFFFC" else
	ram_block((to_integer(unsigned(readaddress)) - 4194304)/4);

end behavioral;
		
		
		