-- ALU control

library ieee;
use ieee.std_logic_1164.all;

entity Li_ALU_Control is 

	port( alu_opcode : in std_logic_vector(2 downto 0); 
			func : in std_logic_vector(5 downto 0); 
			opcode: out std_logic_vector(3 downto 0) 
	); 

end Li_ALU_Control; 


architecture arch of Li_ALU_Control is 

	begin 
		process(alu_opcode,func) 

		begin case alu_opcode is 
		
			when "000" => --lw and SW 
				opcode <= "0010"; -- add 
				
			when "001" => --beq 
				opcode <= "0011"; -- subtract 
				
			when "010" => --R-Type 
				if (func ="000000") then -- and
					opcode <= "0000"; 
				elsif (func = "000001") then -- or
					opcode <= "0001"; 
				elsif (func = "000010") then -- +
					opcode <= "0010"; 
				elsif (func = "000011") then -- -
					opcode <= "0011"; 
				elsif (func = "000100") then -- multiply
					opcode <= "0100"; 
				elsif (func = "000101") then -- divide
					opcode <= "0101"; 
				elsif (func = "000110") then 
					opcode <= "0110"; 
				elsif (func = "000111") then 
					opcode <= "0111"; 
				elsif (func = "001000") then 
					opcode <= "1000"; 
				elsif (func = "001001") then 
					opcode <= "1001"; 
				elsif (func = "001010") then 
					opcode <= "1010"; 
				elsif (func = "001011") then 
					opcode <= "1011"; 
				elsif (func = "001100") then 
					opcode <= "1100"; 
				elsif (func = "001101") then 
					opcode <= "1101"; 
				elsif (func = "001111") then 
					opcode <= "1111";
				else 
					opcode <= null;
				end if;
				
			when others => null; -- others

		end case; 

	end process; 

end arch; 
