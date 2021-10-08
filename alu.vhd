-- alu

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library lpm;
use lpm.lpm_components.all;

entity Li_ALU is

	port(
		opcode: in std_logic_vector(3 downto 0);
		a:	  in std_logic_vector(31 downto 0);
		b:	  in std_logic_vector(31 downto 0);
		z:   out std_logic;
		alu_output: out std_logic_vector(31 downto 0)
	);

end Li_ALU;

architecture behavioral of Li_ALU is

	begin
		operation: process(opcode, a, b)
		
		variable result: std_logic_vector(31 downto 0);
		
		begin
			case opcode is
				when "0001" =>
					result := std_logic_vector(signed(a) + signed(b));
				
				when "0010" =>
					result := std_logic_vector(signed(a) - signed(b));
				
				when others =>
					null;
					
			end case;
			
			if result = X"00000000" then
				z <= '1';
			else
				z <= '0';
			end if;
			
			alu_output <= result;
			
		end process;
	
end behavioral;
				
			
			
			
			
				
		