library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DisplayDemo is
    port(clk         : in  std_logic;
         btnCpuReset : in  std_logic;
         an          : out std_logic_vector(7 downto 0);
         seg         : out std_logic_vector(6 downto 0);
         dp          : out std_logic;
         led         : out std_logic_vector(0 downto 0));
end DisplayDemo;

architecture Wrapper of DisplayDemo is

    signal s_globalRst     : std_logic;
    
    signal s_enableDisplay : std_logic;
    signal s_enable1Hz     : std_logic;
           
    signal s_countVal     : std_logic_vector(3 downto 0);
    
begin
    reset_module : entity work.ResetModule(Behavioral)
        generic map(N      => 4) 
        port map(sysClk    => clk,
                 resetIn_n => btnCpuReset,
                 resetOut  => s_globalRst);

    pulse_generator : entity work.PulseGenerator(Behavioral)
	   port map(clk100MHz    => clk,
	            pulseDisplay => s_enableDisplay,
	            pulse1Hz     => s_enable1Hz,
	            blink1Hz     => led(0));
                 
    counter : entity work.CounterDown(Behavioral)
        port map(reset     => s_globalRst,
                 clk       => clk,
                 enable    => s_enable1Hz,
                 valOut    => s_countVal);

    display_driver : entity work.Nexys4DispDriver(Behavioral)
        port map(clk       => clk,
                 enable    => s_enableDisplay,
                 digitEn   => "00000001", 
                 digVal0   => s_countVal,
                 digVal1   => "0000", 
                 digVal2   => "0000",
                 digVal3   => "0000",
                 digVal4   => "0000",
                 digVal5   => "0000",
                 digVal6   => "0000",
                 digVal7   => "0000",
                 decPtEn   => "11111110",
                 dispEn_n  => an,
                 dispSeg_n => seg,
                 dispPt_n  => dp);
end Wrapper;




