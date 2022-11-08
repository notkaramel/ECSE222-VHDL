library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.ALL;
use ieee.std_logic_arith.all;

entity antoine_phan_comparator is
port(
	A, B: 	in std_logic_vector(3 downto 0);
	AgtBplusOne, AgteBplusOne, -- greater & greater or equal
	AltBplusOne, AlteBplusOne, -- less & less or equal
	AeqBplusOne, overflow:	out std_logic);
end antoine_phan_comparator;

architecture arch of antoine_phan_comparator is
signal BplusOne: std_logic_vector(4 downto 0);
begin
	process(A, B, BplusOne)
	begin
		-- Add 1 to B, check overflow
		BplusOne <= ('0' & B) + "0001";
		
		-- Comparing A and B
		if (BplusOne(4) = '1') then -- addition produce overflow
			overflow <= '1';
			AeqBplusOne <= '0';
			AgtBplusOne <= '0';
			AgteBplusOne <= '0';
			AltBplusOne <= '0';
			AlteBplusOne <= '0';
		else
			overflow <= '0'; -- no overflow, compare the two numbers
			if (A = BplusOne(3 downto 0)) then -- A == B+1 -> 10101
				AeqBplusOne <= '1';
				AgtBplusOne <= '0';
				AgteBplusOne <= '1';
				AltBplusOne <= '0';
				AlteBplusOne <= '1';
			elsif (A < BplusOne) then -- A < B+1 -> 00011
				AeqBplusOne <= '0';
				AgtBplusOne <= '0';
				AgteBplusOne <= '0';
				AltBplusOne <= '1';
				AlteBplusOne <= '1';
			elsif (A > BplusOne) then -- A > B+1 -> 01100
				AeqBplusOne <= '0';
				AgtBplusOne <= '1';
				AgteBplusOne <= '1';
				AltBplusOne <= '0';
				AlteBplusOne <= '0';
			-- 2 numbers can't be equal and greater at the same time!?
			-- elsif (A >= BplusOne) then -- A >= B+1 -> 11101???
				-- AeqBplusOne <= '1';
				-- AgtBplusOne <= '1';
				-- AgteBplusOne <= '1';
				-- AltBplusOne <= '0';
				-- AlteBplusOne <= '0';
			
			-- else --if (A =< BplusOne) then
			-- 	AeqBplusOne <= '1';
			-- 	AgtBplusOne <= '0';
			-- 	AgteBplusOne <= '0';
			-- 	AltBplusOne <= '0';
			-- 	AlteBplusOne <= '1';
			-- else -- illegal states?
			-- 	AeqBplusOne <= '0';
			-- 	AgtBplusOne <= '0';
			-- 	AgteBplusOne <= '0';
			-- 	AltBplusOne <= '0';
			-- 	AlteBplusOne <= '0';
			end if;
		end if;
	end process;
end arch;