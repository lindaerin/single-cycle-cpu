-- 32-bit 2:1 multiplexer

library ieee;
use ieee.std_logic_1164.all;


entity Li_32bit_2to1_MUX is
    port(
        signal sel : in std_logic;
        signal a, b : in std_logic_vector(31 downto 0);
        signal o : out std_logic_vector(31 downto 0)
    );
end entity Li_32bit_2to1_MUX;


architecture behavior of Li_32bit_2to1_MUX is
    begin
        process(a, b, sel)
            begin
                if sel = '0' then
                    o <= a;
                elsif sel = '1' then
                    o <= b;
                end if;
        end process;
end behavior;