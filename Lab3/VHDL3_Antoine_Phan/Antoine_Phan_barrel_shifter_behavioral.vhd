library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity antoine_phan_barrel_shifter_behavioral is
	port(
		x: in std_logic_vector (3 downto 0);
		sel: in std_logic_vector (1 downto 0);
		y: out std_logic_vector (3 downto 0));
end antoine_phan_barrel_shifter_behavioral;

architecture behavioral of antoine_phan_barrel_shifter_behavioral is
	
	function MUX(A: std_logic, B: std_logic, S: std_logic) return std_logic is
		begin
			return ((not S) and A) or (S and B);
		end function;
	
begin

	
end;
		