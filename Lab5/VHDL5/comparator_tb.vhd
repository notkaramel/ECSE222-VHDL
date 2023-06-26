library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.ALL;
use ieee.std_logic_arith.all;

entity comparator_tb is
--empty
end comparator_tb;

architecture arch of comparator_tb is
	signal A, B: std_logic_vector(3 downto 0);
	signal AgtBplusOne, AgteBplusOne, -- greater & greater or equal
		AltBplusOne, AlteBplusOne, -- less & less or equal
		AeqBplusOne, overflow: std_logic; -- equal & overflow
	component antoine_phan_comparator
		port(
			A, B: 	in std_logic_vector(3 downto 0);
			AgtBplusOne, AgteBplusOne, -- greater & greater or equal
			AltBplusOne, AlteBplusOne, -- less & less or equal
			AeqBplusOne, overflow:	out std_logic);
	end component;
begin
dut: antoine_phan_comparator
    port map(A, B, AgtBplusOne, AgteBplusOne, AltBplusOne, AlteBplusOne, AeqBplusOne, overflow);
    sim: process
    begin
		-- Set A = 5 "0101"
        A <= "0101";
			for j in 0 to 15 loop
				 B <= std_logic_vector(to_unsigned(j, 4));
				 wait for 10 ns;
			end loop;
      wait;
    end process;
end arch;