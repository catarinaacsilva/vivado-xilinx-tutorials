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
            secLSCntVal :   out std_logic;      
            secMSCntVal :   out std_logic;  
            minLSCntVal :   out std_logic;  
            minMSCntVal :   out std_logic;  
            zeroFlag    :   out std_logic
        );

end CountDatapath;

architecture Behavioral of CountDatapath is
   
end Behavioral;