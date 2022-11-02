library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

-- wrapper
entity Antoine_Phan_Wrapper is
    port(
        A, B:   in std_logic_vector(3 downto 0);
        decoded_A, decoded_B:   out std_logic_vector(6 downto 0);
        decoded_AplusB: out std_logic_vector(13 downto 0)
    );
end Antoine_Phan_Wrapper;

architecture arch of Antoine_Phan_Wrapper is
    component seven_segment_decoder is
        port(
            code        : in  std_logic_vector(3 downto 0);
            segment_out : out std_logic_vector(6 downto 0)
        );
    end component;

    component antoine_phan_bcd_adder is
        port(
            A, B:   in std_logic_vector(3 downto 0);
            S:      out std_logic_vector(3 downto 0);
            C:      out std_logic
        );
    end component;

    signal AplusB:  std_logic_vector(3 downto 0);
    signal C:       std_logic;

begin
-- Output:
-- 7-bit display code for A
	Display_A: seven_segment_decoder
		port map(A, decoded_A);
-- 7-bit display code for A
	Display_B: seven_segment_decoder
		port map(B, decoded_B);
-- 7-bit display code for A+B
	-- adding A and B
    BCD: antoine_phan_bcd_adder
        port map(A, B, AplusB, C);

    -- Displaying A+B, the first 4-bits (from LSB)
    Display_AplusB_6to0: seven_segment_decoder
		port map(AplusB, decoded_AplusB(6 downto 0));

    -- Displaying A+B, the last 4-bits (from MSB)
    Display_Aplus_13to7: seven_segment_decoder
        port map("000" & C, decoded_AplusB(13 downto 7));
end;
