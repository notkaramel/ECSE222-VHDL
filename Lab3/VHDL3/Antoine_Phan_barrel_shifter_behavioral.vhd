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
	component MUX_behave
		port(
			A, B, S: in std_logic;
			Y: out std_logic);
	end component;
	
	-- Intermediate signal P between sel[1] and sel[0] MUXes
	signal P: std_logic_vector(3 downto 0);
begin
	-- Mapping variables of MUXes: A, B, S, Y
	-- Mapping variables of Barrel Shifter: x, sel, p, y
	
	-- first layer of MUXes
	mux1: MUX_behave
		port map(
			A => x(0),
			B => x(2),
			S => sel(1),
			Y => p(0)
			);
			
	mux2: MUX_behave
		port map(
			A => x(1),
			B => x(3),
			S => sel(1),
			Y => p(1)
			);
			
	mux3: MUX_behave
		port map(
			A => x(2),
			B => x(0),
			S => sel(1),
			Y => p(2)
			);
			
	mux4: MUX_behave
		port map(
			A => x(3),
			B => x(1),
			S => sel(1),
			Y => p(3)
			);
			
	-- Second layer of MUXes
	mux5: MUX_behave
		port map(
			A => p(0),
			B => p(3),
			S => sel(0),
			Y => y(0)
			);
			
	mux6: MUX_behave
		port map(
			A => p(1),
			B => p(0),
			S => sel(0),
			Y => y(1)
			);
			
	mux7: MUX_behave
		port map(
			A => p(2),
			B => p(1),
			S => sel(0),
			Y => y(2)
			);
			
	mux8: MUX_behave
		port map(
			A => p(3),
			B => p(2),
			S => sel(0),
			Y => y(3)
			);
end behavioral;


--- OLD CODEs ---
--architecture behavioral of antoine_phan_barrel_shifter_behavioral is
--	-- Use MUX as a function
--	function MUX(  A: std_logic;
--						B: std_logic; 
--						S: std_logic) return std_logic is	
--		begin
--			case S is
--				when '0' => return A;
--				when '1' => return B;
--				when others => return 'X';
--			end case;
--		end function;
--	-- Create signal p as a logic vector as intermediate signal from the
--	--first layer of MUXes.
--	signal p: std_logic_vector(3 downto 0);
--
--begin
----	p(0) <= MUX(x(0), x(2), sel(1));
----	p(1) <= MUX(x(1), x(3), sel(1));
----	p(2) <= MUX(x(2), x(0), sel(1));
----	p(3) <= MUX(x(3), x(1), sel(1));
--	
----	y(0) <= MUX(p(0), p(3), sel(0));
----	y(1) <= MUX(p(1), p(0), sel(0));
----	y(2) <= MUX(p(2), p(1), sel(0));
----	y(3) <= MUX(p(3), p(2), sel(0));
--	
--	process(x, sel, p)
--	begin
--		-- use a loop instead
--		for i in 0 to 3 loop
--			p(i) <= MUX(x(i), x((i+2) mod 4), sel(1));
--		end loop;
--			
--		-- Process signals of P as input to the second layer of MUXes
--		--and send them to Y
--		for i in 0 to 3 loop
--			y(i) <= MUX(p(i), p((i+3) mod 4), sel(0));
--		end loop;
--	end process;
--end;
--		