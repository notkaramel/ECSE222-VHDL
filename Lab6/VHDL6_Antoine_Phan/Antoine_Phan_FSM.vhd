library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Antoine_Phan_FSM is
    port(
        seq : in std_logic;
        enable, reset, clk: in std_logic;
        out_1, out_2: out std_logic := '0'
    );
    -- generate 1 when "1011" and "0100", respectively

end Antoine_Phan_FSM;

architecture arch of Antoine_Phan_FSM is
    type FSM1_states is (A1, B1, C1, D1, E1);
    signal state1: FSM1_states := A1;

    type FSM2_states is (A2, B2, C2, D2, E2);
    signal state2: FSM2_states := A2;
begin
    -- FSM 1 "1011"
    FSM1: process(clk, enable, reset)
    begin
        if reset = '0' then
            out_1 <= '0';
        else 
            if enable = '1' and rising_edge(clk) then
                case state1 is
                    when A1 =>
                        out_1 <= '0';
                        if seq = '0' then
                            state1 <= A1;
                        elsif seq = '1' then
                            state1 <= B1;
                        end if;
                    when B1 =>
                        out_1 <= '0';
                        if seq = '0' then
                            state1 <= C1;
                        elsif seq = '1' then
                            state1 <= B1;
                        end if;
                    when C1 =>
                        out_1 <= '0';
                        if seq = '0' then
                            state1 <= A1;
                        elsif seq = '1' then
                            state1 <= D1;
                        end if;
                    when D1 =>
                        out_1 <= '0';
                        if seq = '0' then
                            state1 <= B1;
                        elsif seq = '1' then
                            state1 <= E1;
                        end if;
                    when E1 =>
                        out_1 <= '1'; -- out!
                        if seq = '0' then
                            state1 <= C1;
                        elsif seq = '1' then
                            state1 <= B1;
                        end if;
                    when others =>
                        state1 <= A1;
                end case;
            end if;
        end if;
    end process;

    -- FSM 2 "0100"
    FSM2: process(clk, enable, reset)
    begin
        if reset = '0' then
            out_2 <= '0';
        else
            if enable = '1' and rising_edge(clk) then
                case state2 is
                    when A2 =>
                        out_2 <= '0';
                        if seq = '0' then
                            state2 <= B2;
                        elsif seq = '1' then
                            state2 <= A2;
                        end if;
                    when B2 =>
                        out_2 <= '0';
                        if seq = '0' then
                            state2 <= C2;
                        elsif seq = '1' then
                            state2 <= A2;
                        end if;
                    when C2 =>
                        out_2 <= '0';
                        if seq = '0' then
                            state2 <= C2;
                        elsif seq = '1' then
                            state2 <= D2;
                        end if;
                    when D2 =>
                        out_2 <= '0';
                        if seq = '0' then
                            state2 <= E2;
                        else
                            state2 <= A2;
                        end if;
                    when E2 =>
                        out_2 <= '1';
                        if seq = '0' then
                            state2 <= C2;
                        elsif seq = '1' then
                            state2 <= A2;
                        end if;
                    when others =>
                        state2 <= A2;
                end case;
            end if;
        end if;
    end process;
end architecture arch;