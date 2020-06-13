library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity MultiClkDomainCore is
    port(clkFast    : in  std_logic;
         clkSlow    : in  std_logic;
         reset      : in  std_logic;
         cntUpVal   : out std_logic_vector(6 downto 0);
         cntDownVal : out std_logic_vector(6 downto 0);
         cntDiff    : out std_logic_vector(1 downto 0));
end MultiClkDomainCore;

architecture Structural of MultiClkDomainCore is

    component FIFO16x7
        port(srst   : in  std_logic;
             clk    : in  std_logic;
             --rst    : in  std_logic;
             --wr_clk : in  std_logic;
             full   : out std_logic;
             wr_en  : in  std_logic;
             din    : in  std_logic_vector(6 downto 0);
             --rd_clk : in  std_logic;
             empty  : out std_logic;
             rd_en  : in  std_logic;
             dout   : out std_logic_vector(6 downto 0));
    end component;
        
    signal s_enableUp, s_enableDown : std_logic;
    signal s_cntUpVal, s_cntDownVal : std_logic_vector(6 downto 0);
    
    signal s_fifoFull, s_fifoEmpty  : std_logic;
    signal s_fifoOut                : std_logic_vector(6 downto 0);
    
    signal s_cntDiff0               : std_logic;
    
begin 
    cnt_up : entity work.CounterN(Behavioral)
        generic map(N     => 7)
        port map(clk      => clkFast,
                 reset    => reset,
                 enable   => s_enableUp,
                 upDown_n => '1',
                 value    => s_cntUpVal);
                 
    fifo : FIFO16x7
        port map(srst   => reset,
                 clk    => clkSlow,
                 --rst    => reset,
                 --wr_clk => clkFast,
                 full   => s_fifoFull,
                 wr_en  => '1',
                 din    => s_cntUpVal,
                 --rd_clk => clkSlow,
                 empty  => s_fifoEmpty,
                 rd_en  => '1',
                 dout   => s_fifoOut);
    
    s_enableUp   <= not s_fifoFull;
    s_enableDown <= not s_fifoEmpty;
      
    cnt_down : entity work.CounterN(Behavioral)
        generic map(N     => 7)
        port map(clk      => clkSlow,
                 reset    => reset,
                 enable   => s_enableDown,
                 upDown_n => '0',
                 value    => s_cntDownVal);
    
    process(clkSlow)
    begin
        if (rising_edge(clkSlow)) then
            if (s_enableDown = '1') then
                if (to_integer(unsigned(s_fifoOut) + unsigned(s_cntDownVal)) /= 0) then
                    s_cntDiff0 <= '1';
                else
                    s_cntDiff0 <= '0';
                end if;
            end if;
        end if;
    end process;
    
    cntDiff(0) <= s_cntDiff0;
    
    process(reset, s_cntDiff0)
    begin
        if (reset = '1') then
            cntDiff(1) <= '0';
        elsif (rising_edge(s_cntDiff0)) then
            cntDiff(1) <= '1';
        end if;
    end process;
    
    cntUpVal   <= s_fifoOut;
    cntDownVal <= s_cntDownVal;
end Structural;
