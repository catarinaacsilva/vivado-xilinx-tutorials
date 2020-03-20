--------------------------------------------
-- Module Name: Nexys4DispDriver
-- Author: Catarina Silva
-- Email: c.alexandracorreia@ua.pt
-- Email: c.alexandracorreia@av.it.pt
--------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.all;

entity CountDatapath is
    port(   reset       :   in std_logic;      
            clk         :   in std_logic;    
            clkEnable   :   in std_logic;
            runFlag     :   in std_logic;
            secLSSetInc :   in std_logic;
            secLSSetDec :   in std_logic;
            secMSSetInc :   in std_logic;
            secMSSetDec :   in std_logic;
            minLSSetInc :   in std_logic;
            minLSSetDec :   in std_logic;
            minMSSetInc :   in std_logic;
            minMSSetDec :   in std_logic;
            secLSCntVal :   out std_logic_vector(3 downto 0);      
            secMSCntVal :   out std_logic_vector(3 downto 0);  
            minLSCntVal :   out std_logic_vector(3 downto 0);  
            minMSCntVal :   out std_logic_vector(3 downto 0);  
            zeroFlag    :   out std_logic
        );

end CountDatapath;

architecture Behavioral of CountDatapath is
    signal s_termCount0, s_termCount1, s_termCount2, s_termCount3 : std_logic;
 
begin
    -- digito mais à direita
    counter0:    entity work.CounterDown4(Behavioral)
                generic map (MAX_Val   => 9)
                port map(reset      => reset,
                            clk        => clk,
                            clkEnable  => clkEnable,
                            cntEnable  => runFlag, --inicia o processo da contagem
                            setIncrem  => secLSSetInc,
                            setDecrem  => secLSSetDec,
                            valOut     => secLSCntVal,
                            termCnt    => s_termCount0);

    counter1:   entity work.CounterDown4(Behavioral)
                generic map (MAX_Val   => 5)
                port map(reset      => reset,
                            clk        => clk,
                            clkEnable  => clkEnable,
                            cntEnable  => s_termCount0,
                            setIncrem  => secMSSetInc,
                            setDecrem  => secMSSetDec,
                            valOut     => secMSCntVal,
                            termCnt    => s_termCount1);

    counter2:    entity work.CounterDown4(Behavioral)
                generic map (MAX_Val   => 9)
                port map(reset      => reset,
                            clk        => clk,
                            clkEnable  => clkEnable,
                            cntEnable  => s_termCount1,
                            setIncrem  => minLSSetInc,
                            setDecrem  => minLSSetDec,
                            valOut     => minLSCntVal,
                            termCnt    => s_termCount2);
                            
                            
    -- Digito mais à esquerda
    counter3:    entity work.CounterDown4(Behavioral)
                generic map (MAX_Val   => 5)
                port map(reset      => reset,
                            clk        => clk,
                            clkEnable  => clkEnable,
                            cntEnable  => s_termCount2,
                            setIncrem  => minMSSetInc,
                            setDecrem  => minMSSetDec,
                            valOut     => minMSCntVal,
                            termCnt    => s_termCount3);

    -- Zero flag fica ativo quando o último s_termCout3 chegou ao fim da contagem
    zeroFlag <= s_termCount3;
    
end Behavioral;