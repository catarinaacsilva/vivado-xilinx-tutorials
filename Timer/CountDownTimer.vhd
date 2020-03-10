library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity CountDownTimer is
    port(clk         : in  std_logic;
         btnCpuReset : in  std_logic;
         btnC        : in  std_logic;
         btnU        : in  std_logic;
         btnR        : in  std_logic;
         btnD        : in  std_logic;
         an          : out std_logic_vector(7 downto 0);
         seg         : out std_logic_vector(6 downto 0);
         dp          : out std_logic;
         led         : out std_logic_vector(0 downto 0));
end CountDownTimer;

architecture Structural of CountDownTimer is

    signal s_reset                      : std_logic;
    
    signal s_dispRefEn                  : std_logic;
    signal s_1HzEn, s_2HzEn             : std_logic;
    signal s_blink2Hz, s_blink1Hz       : std_logic;
    
    signal s_btnStart, s_btnSet         : std_logic;
    signal s_btnU, s_btnD               : std_logic;
    
    signal s_zeroFlag, s_runFlag        : std_logic;
    signal s_setFlags                   : std_logic_vector(3 downto 0);
       
    signal s_secLSSetInc, s_secLSSetDec : std_logic;
    signal s_secMSSetInc, s_secMSSetDec : std_logic;
    
    signal s_minLSSetInc, s_minLSSetDec : std_logic;
    signal s_minMSSetInc, s_minMSSetDec : std_logic;
    
    signal s_secMSCntVal, s_secLSCntVal : std_logic_vector(3 downto 0);
    signal s_minMSCntVal, s_minLSCntVal : std_logic_vector(3 downto 0);
    
    signal s_digitEn, s_decPtEn         : std_logic_vector(7 downto 0);
       
begin
    reset_module : entity work.ResetModule(Behavioral)
                        generic map(N       => 5)
                        port map(sysClk     => clk,
                                 resetIn_n  => btnCpuReset,
                                 resetOut   => s_reset);

    pulse_generator : entity work.PulseGenerator(Behavioral)
                        port map(clk100MHz  => clk,
                                 dispRefEn  => s_dispRefEn,
                                 pulse2Hz   => s_2HzEn,
                                 pulse1Hz   => s_1HzEn,
                                 blink2Hz   => s_blink2Hz,
                                 blink1Hz   => s_blink1Hz);

    start_but_debouncer : entity work.DebounceUnit(Behavioral)
                        generic map(kHzClkFreq      => 100000,
                                    mSecMinInWidth  => 100,
                                    inPolarity      => '1',
                                    outPolarity     => '1')
                        port map(refClk     => clk,
                                 dirtyIn    => btnR,
                                 pulsedOut  => );
                                 
    set_but_debouncer : entity work.DebounceUnit(Behavioral)
                        generic map(kHzClkFreq      => 100000,
                                    mSecMinInWidth  => 100,
                                    inPolarity      => '1',
                                    outPolarity     => '1')
                        port map(refClk     => clk,
                                 dirtyIn    => btnC,
                                 pulsedOut  => );
    
    process(clk)
    begin
        if (rising_edge(clk)) then
            s_btnU <= ;
            s_btnD <= ;
        end if;
    end process;
    
    control_unit : entity work.ControlUnit(Behavioral)
                       port map(reset       => s_reset,
                                clk         => clk,
                                btnStart    => ,
                                btnSet      => ,
                                btnUp       => , 
                                btnDown     => ,
                                upDownEn    => ,
                                zeroFlag    => ,
                                runFlag     => s_runFlag,
                                setFlags    => s_setFlags,
                                secLSSetInc => s_secLSSetInc,
                                secLSSetDec => s_secLSSetDec,
                                secMSSetInc => s_secMSSetInc,
                                secMSSetDec => s_secMSSetDec,
                                minLSSetInc => s_minLSSetInc,
                                minLSSetDec => s_minLSSetDec,
                                minMSSetInc => s_minMSSetInc,
                                minMSSetDec => s_minMSSetDec);                           

    count_datapath : entity work.CountDatapath(Behavioral)
                    port map(reset          => s_reset,
                             clk            => clk,
                             clkEnable      => ,
                             runFlag        => ,
                             secLSSetInc    => ,
                             secLSSetDec    => ,
                             secMSSetInc    => ,
                             secMSSetDec    => ,
                             minLSSetInc    => ,
                             minLSSetDec    => ,
                             minMSSetInc    => ,
                             minMSSetDec    => ,
                             secLSCntVal    => ,
                             secMSCntVal    => ,
                             minLSCntVal    => ,
                             minMSCntVal    => ,
                             zeroFlag       => s_zeroFlag);

    s_digitEn <= ;
    s_decPtEn <= ;

    display_driver : entity work.Nexys4DisplayDriver(Behavioral)
                        port map(clk        => clk,
                                 enable     => , 
                                 digitEn    => s_digitEn,     
                                 digVal0    => "0000",
                                 digVal1    => "0000",
                                 digVal2    => ,
                                 digVal3    => ,
                                 digVal4    => ,
                                 digVal5    => ,
                                 digVal6    => "0000",
                                 digVal7    => "0000",
                                 decPtEn    => s_decPtEn,
                                 dispEn_n   => an(7 downto 0),
                                 dispSeg_n  => seg(6 downto 0),
                                 dispPt_n   => dp);
                                 
    led(0) <= ;
end Structural;
