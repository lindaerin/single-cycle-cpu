library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Li_InstructionRegister is

	port(
		instruction: in std_logic_vector(31 downto 0);
		op: out std_logic_vector(5 downto 0);
		rs: out std_logic_vector(4 downto 0);
		rt: out std_logic_vector(4 downto 0);
		rd: out std_logic_vector(4 downto 0);
		imm16: out std_logic_vector(15 downto 0);
		func: out std_logic_vector(5 downto 0));
		
end Li_InstructionRegister;

architecture arch of Li_InstructionRegister is

	begin
		op <= instruction(31 downto 26);
		rs <= instruction(25 downto 21);
		rt <= instruction(20 downto 16);
		rd <= instruction(15 downto 11);
		imm16 <= instruction(15 downto 0);
		func <= instruction(5 downto 0);

end arch;

		