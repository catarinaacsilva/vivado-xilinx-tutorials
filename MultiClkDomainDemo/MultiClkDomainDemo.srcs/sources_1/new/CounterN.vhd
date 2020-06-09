library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity CounterN is
    generic(N     : positive);
    port(clk      : in  std_logic;
         reset    : in  std_logic;
         enable   : in  std_logic;
         upDown_n : in  std_logic;
         value    : out std_logic_vector(N-1 downto 0));
end CounterN;

architecture Behavioral of CounterN is

    signal s_value : unsigned(N-1 downto 0);
    
begin
    process(clk)
    begin
        if (rising_edge(clk)) then
            if (reset = '1') then
                s_value <= (others => '0');
            elsif (enable = '1') then
                if (upDown_n = '1') then
                    s_value <= s_value + 1;
                else
                    s_value <= s_value - 1;
                end if;
            end if;
        end if;
    end process;
    
    value <= std_logic_vector(s_value);
end Behavioral;
