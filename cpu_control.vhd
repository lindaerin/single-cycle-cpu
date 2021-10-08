library ieee;
use ieee.std_logic_1164.all;

entity Li_CPUControl is

	port(
		opcode: in std_logic_vector(5 downto 0);
		RegDst: out std_logic;
		ALUSrc: out std_logic;
		MemToReg: out std_logic;
		RegWrite: out std_logic;
		MemWrite: out std_logic;
		MemRead: out std_logic;
		PCSrc: out std_logic;
		ALUop: out std_logic_vector(2 downto 0));

end Li_CPUControl;

architecture behavorial of Li_CPUControl is 

	begin
		Li_CPUControl_proc: process(opcode)
	
		begin
			case opcode is
				when "100000" => -- Addition
						RegDst <= '1';
						ALUSrc <= '0';
						MemToReg <= '0';
						RegWrite <= '1';
						MemWrite <= '0';
						PCSrc <= '0';
						MemRead <= '0';
						ALUop <= "000";
				
				when "100001" =>
						RegDst <= '1';
						ALUSrc <= '0';
						MemToReg <= '0';
						RegWrite <= '1';
						MemWrite <= '0';
						PCSrc <= '0';
						MemRead <= '0';
						ALUop <= "001";
					
				when "001101" => -- or immediate
					RegDst <= '0';
					ALUSrc <= '1';
					MemToReg <= '0';
					RegWrite <= '1';
					MemWrite <= '0';
					PCSrc <= '0';
					MemRead <= '0';
					ALUop <= "010";
					
				when "100011" => -- lw
					RegDst <= '0';
					ALUSrc <= '1';
					MemToReg <= '1';
					RegWrite <= '1';
					MemWrite <= '0';
					PCSrc <= '0';
					MemRead <= '0';
					ALUop <= "000"; 
					
				when "101011" => -- sw
					RegDst <= 'X';
					ALUSrc <= '1';
					MemToReg <= 'X';
					RegWrite <= '0';
					MemWrite <= '1';
					PCSrc <= '0';
					MemRead <= '0';
					ALUop <= "000"; 
					
				when "000100" => -- beq
					RegDst <= 'X';
					ALUSrc <= '0';
					MemToReg <= 'X';
					RegWrite <= '0';
					MemWrite <= '0';
					PCSrc <= '1';
					MemRead <= '0';
					ALUop <= "001"; 
					
				when others => -- other
					RegDst <= '0';
					ALUSrc <= '0';
					MemToReg <= '0';
					RegWrite <= '0';
					MemWrite <= '0';
					PCSrc <= '0';
					MemRead <= '0';
					ALUop <= "XXX"; 
		end case;
				
	end process;
					
end behavorial;
					
					
						
		
		