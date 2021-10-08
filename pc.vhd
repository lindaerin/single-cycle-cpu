-- 32-bit program counter 

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity Li_PC is
	port(
		address : in std_logic_vector(31 downto 0);
		nextAddr : out std_logic_vector(31 downto 0);
		clk : in std_logic
	);
end Li_PC;

architecture arch of Li_PC is
	 signal instructionAddress : std_logic_vector(31 downto 0) := X"00000000";
	 
	 begin
		process(clk)
			begin
				if falling_edge(CLK) then
					instructionAddress <= address;
            end if;
					nextAddr <= instructionAddress;
	end process;
	
end arch;

