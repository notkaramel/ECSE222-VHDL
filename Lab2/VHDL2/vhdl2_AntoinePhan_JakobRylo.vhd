ibrary ieee;
use ieee.std_logic_1161.all;

library work;

entity gNN_comp is
	port
	(
		A: in std_logic_vector(3 downto 0);
		B: in std_logic_vector(3 downto 0);
		AeqB: out std_logic
	);
end gNN_comp;

architecture bdf_type of gNN_comp is

signal synthesized_wire_0: std_logic 