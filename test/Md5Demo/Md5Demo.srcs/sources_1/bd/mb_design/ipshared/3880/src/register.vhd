library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity RegisterP is
    generic(k 	: integer := 1);
    port(   reset  :   in std_logic;
            clk :   in std_logic;
            enable: in std_logic;
            dataIn: in std_logic_vector((k-1) downto 0);
            dataOut: out std_logic_vector((k-1) downto 0));
end RegisterP;

architecture Behavioral of RegisterP is
begin
    process(reset, clk)
    begin
        if (reset = '1') then
            dataOut <= (others => '0');
        elsif (rising_edge(clk)) then
            if (enable = '1') then
                dataOut <= dataIn;
            end if;
        end if;
    end process;
end Behavioral;