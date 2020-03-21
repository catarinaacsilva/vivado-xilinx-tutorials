---------------------------------------------------------------------------------------------------
-- CountDatapath
-- Description: The 4 counters represents each one of the displays (digits); Datapath
-- Author: Catarina Silva
-- Email: c.alexandracorreia@ua.pt; c.alexandracorreia@av.it.pt 

-- Version 1.0
---------------------------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity CountDatapath is
    port(clk         : in std_logic;
         clkEnable   : in std_logic;
         minLSSetDec : in std_logic;
         minLSSetInc : in std_logic;
         minMSSetDec : in std_logic;
         minMSSetInc : in std_logic;
         reset       : in std_logic;
         runFlag     : in std_logic;
         secLSSetDec : in std_logic;
         secLSSetInc : in std_logic;
         secMSSetDec : in std_logic;
         secMSSetInc : in std_logic;
         minLSCntVal : out std_logic_vector(3 downto 0);
         minMSCntVal : out std_logic_vector(3 downto 0);
         secLSCntVal : out std_logic_vector(3 downto 0);
         secMSCntVal : out std_logic_vector(3 downto 0);
         zeroFlag    : out std_logic);
end CountDatapath;

architecture Behavioral of CountDatapath is

    signal s_termCnt1 : std_logic;
    signal s_termCnt2 : std_logic;
    signal s_termCnt3 : std_logic;
    signal s_termCnt4 : std_logic;
    signal s_cntEnbl1 : std_logic;
    signal s_cntEnbl2 : std_logic;
    signal s_cntEnbl3 : std_logic;
    
begin
     secLSCounter : entity work.CounterDown4(Behavioral)
                        generic map(MAX_VAL => 9)
                        port map(reset      => reset,
                                 clk        => clk,
                                 clkEnable  => clkEnable,
                                 cntEnable  => runFlag,
                                 setIncrem  => secLSSetInc,
                                 setDecrem  => secLSSetDec,
                                 valOut     => secLSCntVal,
                                 termCnt    => s_termCnt1);
                                 
     s_cntEnbl1 <= runFlag and s_termCnt1;
                                 
     secMSCounter : entity work.CounterDown4(Behavioral)
                        generic map(MAX_VAL => 5)
                        port map(reset      => reset,
                                 clk        => clk,
                                 clkEnable  => clkEnable,
                                 cntEnable  => s_cntEnbl1,
                                 setIncrem  => secMSSetInc,
                                 setDecrem  => secMSSetDec,
                                 valOut     => secMSCntVal,
                                 termCnt    => s_termCnt2);
                                 
     s_cntEnbl2 <= runFlag and s_termCnt2 and s_termCnt1;
                                 
     minLSCounter : entity work.CounterDown4(Behavioral)
                        generic map(MAX_VAL => 9)
                        port map(reset      => reset,
                                 clk        => clk,
                                 clkEnable  => clkEnable,
                                 cntEnable  => s_cntEnbl2,
                                 setIncrem  => minLSSetInc,
                                 setDecrem  => minLSSetDec,
                                 valOut     => minLSCntVal,
                                 termCnt    => s_termCnt3);
                                 
     s_cntEnbl3 <= runFlag and s_termCnt3 and s_termCnt2 and s_termCnt1;
                                 
     minMSCounter : entity work.CounterDown4(Behavioral)
                        generic map(MAX_VAL => 5)
                        port map(reset      => reset,
                                 clk        => clk,
                                 clkEnable  => clkEnable,
                                 cntEnable  => s_cntEnbl3,
                                 setIncrem  => minMSSetInc,
                                 setDecrem  => minMSSetDec,
                                 valOut     => minMSCntVal,
                                 termCnt    => s_termCnt4);
                                 
     zeroFlag <= s_termCnt1 and s_termCnt2 and s_termCnt3 and s_termCnt4;

end Behavioral;
