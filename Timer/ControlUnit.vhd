library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.all;

entity ControlUnit is
    port(   reset       :   in std_logic; 
            clk         :   in std_logic;
            btnStart    :   in std_logic;
            btnSet      :   in std_logic;
            btnUp       :   in std_logic;
            btnDown     :   in std_logic;
            upDownEn    :   in std_logic;
            zeroFlag    :   in std_logic;
            runFlag     :   out std_logic;
            setFlags    :   out std_logic;
            secLSSetInc :   out std_logic;
            secLSSetDec :   out std_logic;
            secMSSetInc :   out std_logic;
            secMSSetDec :   out std_logic;
            minLSSetInc :   out std_logic;
            minLSSetDec :   out std_logic;
            minMSSetInc :   out std_logic;
            minMSSetDec :   out std_logic
        );

end ControlUnit;


architecture Behavioral of ControlUnit is

end Behavioral;