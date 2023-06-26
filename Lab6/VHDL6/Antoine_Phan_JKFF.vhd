library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity antoine_phan_jkff is 
    port(
        clk : in std_logic;
        J, K: in std_logic;
        Q: out std_logic
    );
end antoine_phan_jkff;

architecture arch of antoine_phan_jkff is
	-- temporary signal 
	signal temp: std_logic := '0'; -- initial state is 0
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if J = '0' and K = '0' then -- J = 0, K = 0
                temp <= temp;
            elsif J = '0' and K = '1' then -- J = 0, K = 1
                temp <= '0';
            elsif J = '1' and K = '0' then -- J = 1, K = 0
                temp <= '1';
            elsif J = '1' and K = '1' then -- J = 1, K = 1
                temp <= not temp;
            end if;
        end if;
    end process;
	 
	 Q <= temp;
end arch;