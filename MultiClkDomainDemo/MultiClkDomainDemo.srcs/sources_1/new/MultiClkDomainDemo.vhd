library IEEE;
use IEEE.std_logic_1164.all;

entity MultiClkDomainDemo is
    port(clk : in  std_logic;
         sw  : in  std_logic_vector(0 downto 0);
         led : out std_logic_vector(15 downto 0));
end MultiClkDomainDemo;

architecture Wrapper of MultiClkDomainDemo is

    component ClkGenerator
        port(clk_in1  : in  std_logic;
             reset    : in  std_logic;
             clk_out1 : out std_logic;
             clk_out2 : out std_logic;
             locked   : out std_logic);
    end component; 

    signal s_resetInput            : std_logic;
    signal s_clkFast, s_clkSlow    : std_logic;
    signal s_locked, s_internReset : std_logic;
    
begin
    process(clk)
    begin
        if (rising_edge(clk)) then
            s_resetInput <= sw(0);
        end if;
    end process;
    
    clk_generator : ClkGenerator
        port map(clk_in1  => clk,
                 reset    => s_resetInput,  
                 clk_out1 => s_clkFast,
                 clk_out2 => s_clkSlow,
                 locked   => s_locked);

    s_internReset <= not s_locked;
    
    system_core : entity work.MultiClkDomainCore(Structural)
        port map(clkFast    => s_clkFast,
                 clkSlow    => s_clkSlow,
                 reset      => s_internReset,
                 cntUpVal   => led(6 downto 0),
                 cntDownVal => led(13 downto 7),
                 cntDiff    => led(15 downto 14));
end Wrapper;
