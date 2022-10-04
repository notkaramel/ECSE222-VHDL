library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity rca_behavioral is
	port(
		A, B: in std_logic_vector (3 downto 0);
		S: 	out std_logic_vector (4 downto 0)
	);
end rca_behavioral;

architecture rca_behave of rca_behavioral is

	signal S_temp: std_logic_vector (3 downto 0);
begin
--	S(0) <= std_logic_unsigned(unsigned('1') + unsigned('0'));
	S_temp <= A + B;
	S <= S_temp;
end;