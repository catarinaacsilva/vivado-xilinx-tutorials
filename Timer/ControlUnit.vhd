
-- Finite State Machine

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
    -- ST_START: start count
    type TState is (ST_START, ST_STOPPED, ST_FIRSTD, ST_SECONDD, ST_THIRDD, ST_FOURTHD);
    signal s_currentState, s_nextState  :   TState;


    begin
        process(clk)
        begin
            if(rising_edge(clk)) then
                if(reset = '1') then
                    s_currentState <= ST_FIRSTD;
                else
                    s_currentState <= s_nextState;
                end if;
            end if;
        end process;

        process(s_currentState, setFlags, btnStart, btnSet)
        begin
            case s_currentState is
                when ST_START =>
                        runFlag = '1';
                        setFlags = '0000';
                    elsif(btnStart = '1' or zeroFlag = '1') then 
                        s_nextState <= ST_STOPPED;
                        runFlag = '0';
                    elsif (btnSet = '1') then
                        runFlag = '0';
                        s_nextState <= ST_FIRSTD;
                    end if;

                when ST_FIRSTD =>
                    if (btnSet = '1') then
                        runFlag = '0';
                        setFlags = '0001';
                        s_nextState <= ST_SECONDD;
                    else
                        s_nextState <= ST_FIRSTD;
                    end if;

                when ST_SECONDD =>
                    if (btnSet = '1') then
                        setFlags = '0010';
                        s_nextState <= ST_THIRDD;
                    else
                        s_nextState <= ST_SECONDD;
                    end if;
                
                when ST_THIRDD =>
                    if (btnSet = '1') then
                        setFlags = '0100';
                        s_nextState <= ST_FOURTHD;
                    else
                        s_nextState <= ST_THIRDD;
                    end if;

                when ST_FOURTHD =>
                    if (btnSet = '1') then
                        setFlags = '1000';
                        s_nextState <= ST_FIRSTD;
                    elsif (btnStart = '1') then
                        s_nextState <= ST_STOPPED;
                    end if;

                when ST_STOPPED =>
                    if (btnStart = '1') then
                        s_nextState <= ST_START;
                        setFlags = '0000';
                    else
                        s_nextState <= ST_STOPPED;
                    end if;
            end case;
        end process;

        secLSSetInc <= setFlags(0) and btnUp and upDownEn; 
        secLSSetDec <= setFlags(0) and btnDown and upDownEn; 
        secMSSetInc <= setFlags(1) and btnUp and upDownEn;
        secMSSetDec <= setFlags(1) and btnDown and upDownEn; 
        minLSSetInc <= setFlags(2) and btnUp and upDownEn; 
        minLSSetDec <= setFlags(2) and btnDown and upDownEn; 
        minMSSetInc <= setFlags(3) and btnUp and upDownEn;
        minMSSetDec <= setFlags(3) and btnDown and upDownEn;

end Behavioral;