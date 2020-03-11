
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
    -- Cada um dos estados representa representa caa uma dos displays
    -- ST_START: começar a contagem
    type TState is (ST_START, ST_FIRSTD, ST_SECONDD, ST_THIRDD, ST_FOURTHD);
    signal s_currentState, s_nextState  :   TState;

    signal s_counter : natural;

    begin
        process(clk)
        begin
            if(rising_edge(clk) and upDownEn = '1') then
                if(reset = '1') then
                    s_currentState <= ST_FIRSTD;
                else
                    s_currentState <= s_nextState;
                end if;
            end if;
        end process;

        process(s_currentState, btnUp, btnDown, btnSet, btnStart)
        begin

            -- cada saida corresponde a cada um dos digitos e pode ser incrmenatda ou decrementada
            -- numeros so para auxiliar
            secLSSetInc <= '0'; --0
            secLSSetDec <= '0'; --1
            secMSSetInc <= '0'; --2
            secMSSetDec <= '0'; --3
            minLSSetInc <= '0'; --4
            minLSSetDec <= '0'; --5
            minMSSetInc <= '0'; --6
            minMSSetDec <= '0'; --7

            case s_currentState is
                when ST_START =>
                    if(btnStart = '1') then -- inicia a contagem normal
                        s_nextState <= ST_START;
                        runFlag = '1';
                    elsif (btnSet = '1') then
                        runFlag = '0';
                        s_counter <= s_counter + 1;
                        s_nextState <= ST_FIRSTD;
                    end if;

                when ST_FIRSTD =>
                    if(btnStart = '1') then -- inicia a contagem normal
                        s_nextState <= ST_START;
                    elsif (btnSet = '1') then
                        runFlag = '0';
                        s_counter <= s_counter + 1;
                        s_nextState <= ST_SECONDD;
                        if (btnUp = '1') then
                            secLSSetInc <= '1';
                        elsif (btnDown = '1') then
                            secLSSetDec <= '1';
                        end if;
                    end if;

                when ST_SECONDD =>
                    if(btnStart = '1') then -- inicia a contagem normal
                        s_nextState <= ST_START;
                    elsif (btnSet = '1') then
                        runFlag = '0';
                        s_counter <= s_counter + 1;
                        s_nextState <= ST_THIRDD;
                        if (btnUp = '1') then
                            secMSSetInc <= '1';
                        elsif (btnDown = '1') then
                            secMSSetDec <= '1';
                        end if;
                    end if;
                
                when ST_THIRDD =>
                    if(btnStart = '1') then -- inicia a contagem normal
                        s_nextState <= ST_START;
                    elsif (btnSet = '1') then
                        runFlag = '0';
                        s_counter <= s_counter + 1;
                        s_nextState <= ST_FOURTHD;
                        if (btnUp = '1') then
                            minLSSetInc <= '1';
                        elsif (btnDown = '1') then
                            minLSSetDec <= '1';
                        end if;
                    end if;

                when ST_FOURTHD =>
                    if(btnStart = '1') then -- inicia a contagem normal
                        s_nextState <= ST_START;
                    elsif (btnSet = '1') then
                        runFlag = '0';
                        s_counter <= s_counter + 1;
                        if (s_counter = 4) then
                            s_nextState <= ST_FIRSTD;
                        elsif (btnUp = '1') then
                            minMSSetInc <= '1';
                        elsif (btnDown = '1') then
                            minMSSetDec <= '1';
                        end if;
                    end if;
            end case;
        end process;
end Behavioral;