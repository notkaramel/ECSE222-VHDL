-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 15.1.0 Build 185 10/21/2015 SJ Standard Edition"

-- DATE "10/08/2022 00:58:15"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	bcd_adder_behavioral IS
    PORT (
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	S : BUFFER std_logic_vector(3 DOWNTO 0);
	C : BUFFER std_logic
	);
END bcd_adder_behavioral;

-- Design Ports Information
-- S[0]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF bcd_adder_behavioral IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_S : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_C : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \S[1]~0_combout\ : std_logic;
SIGNAL \S[2]~1_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \S[3]~2_combout\ : std_logic;
SIGNAL \C$latch~combout\ : std_logic;
SIGNAL temp : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_C$latch~combout\ : std_logic;
SIGNAL ALT_INV_temp : std_logic_vector(4 DOWNTO 1);
SIGNAL \ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~0_combout\ : std_logic;
SIGNAL \ALT_INV_S[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~5_sumout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
S <= ww_S;
C <= ww_C;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\ALT_INV_B[3]~input_o\ <= NOT \B[3]~input_o\;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
\ALT_INV_B[2]~input_o\ <= NOT \B[2]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_B[1]~input_o\ <= NOT \B[1]~input_o\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\ALT_INV_C$latch~combout\ <= NOT \C$latch~combout\;
ALT_INV_temp(2) <= NOT temp(2);
ALT_INV_temp(1) <= NOT temp(1);
ALT_INV_temp(3) <= NOT temp(3);
ALT_INV_temp(4) <= NOT temp(4);
\ALT_INV_process_0~0_combout\ <= NOT \process_0~0_combout\;
\ALT_INV_LessThan2~0_combout\ <= NOT \LessThan2~0_combout\;
\ALT_INV_S[1]~0_combout\ <= NOT \S[1]~0_combout\;
\ALT_INV_Add0~17_sumout\ <= NOT \Add0~17_sumout\;
\ALT_INV_Add0~13_sumout\ <= NOT \Add0~13_sumout\;
\ALT_INV_Add0~9_sumout\ <= NOT \Add0~9_sumout\;
\ALT_INV_Add0~5_sumout\ <= NOT \Add0~5_sumout\;

-- Location: IOOBUF_X89_Y8_N22
\S[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~1_sumout\,
	devoe => ww_devoe,
	o => ww_S(0));

-- Location: IOOBUF_X89_Y8_N56
\S[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_S[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_S(1));

-- Location: IOOBUF_X89_Y11_N96
\S[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S[2]~1_combout\,
	devoe => ww_devoe,
	o => ww_S(2));

-- Location: IOOBUF_X89_Y6_N56
\S[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S[3]~2_combout\,
	devoe => ww_devoe,
	o => ww_S(3));

-- Location: IOOBUF_X89_Y11_N62
\C~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \C$latch~combout\,
	devoe => ww_devoe,
	o => ww_C);

-- Location: IOIBUF_X89_Y9_N38
\A[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X89_Y8_N38
\B[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LABCELL_X88_Y9_N0
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( \B[0]~input_o\ ) + ( \A[0]~input_o\ ) + ( !VCC ))
-- \Add0~2\ = CARRY(( \B[0]~input_o\ ) + ( \A[0]~input_o\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[0]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	cin => GND,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: IOIBUF_X89_Y9_N21
\B[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X89_Y9_N4
\A[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LABCELL_X88_Y9_N3
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( \A[1]~input_o\ ) + ( \B[1]~input_o\ ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( \A[1]~input_o\ ) + ( \B[1]~input_o\ ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[1]~input_o\,
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: IOIBUF_X89_Y11_N44
\B[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X89_Y11_N78
\B[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X89_Y9_N55
\A[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X89_Y8_N4
\A[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LABCELL_X88_Y9_N36
\process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = ( \A[1]~input_o\ & ( \B[1]~input_o\ & ( (\A[3]~input_o\) # (\B[3]~input_o\) ) ) ) # ( !\A[1]~input_o\ & ( \B[1]~input_o\ & ( ((\A[3]~input_o\ & \A[2]~input_o\)) # (\B[3]~input_o\) ) ) ) # ( \A[1]~input_o\ & ( !\B[1]~input_o\ & ( 
-- ((\B[2]~input_o\ & \B[3]~input_o\)) # (\A[3]~input_o\) ) ) ) # ( !\A[1]~input_o\ & ( !\B[1]~input_o\ & ( (!\B[2]~input_o\ & (((\A[3]~input_o\ & \A[2]~input_o\)))) # (\B[2]~input_o\ & (((\A[3]~input_o\ & \A[2]~input_o\)) # (\B[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011111000111110001111100110011001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	datae => \ALT_INV_A[1]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \process_0~0_combout\);

-- Location: LABCELL_X88_Y9_N33
\temp[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- temp(1) = ( \process_0~0_combout\ & ( temp(1) ) ) # ( !\process_0~0_combout\ & ( temp(1) & ( \Add0~5_sumout\ ) ) ) # ( !\process_0~0_combout\ & ( !temp(1) & ( \Add0~5_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add0~5_sumout\,
	datae => \ALT_INV_process_0~0_combout\,
	dataf => ALT_INV_temp(1),
	combout => temp(1));

-- Location: LABCELL_X88_Y9_N6
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( \B[2]~input_o\ ) + ( \A[2]~input_o\ ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( \B[2]~input_o\ ) + ( \A[2]~input_o\ ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_A[2]~input_o\,
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: LABCELL_X88_Y9_N9
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( \A[3]~input_o\ ) + ( \B[3]~input_o\ ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( \A[3]~input_o\ ) + ( \B[3]~input_o\ ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_A[3]~input_o\,
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: LABCELL_X88_Y9_N12
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( GND ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\);

-- Location: LABCELL_X88_Y9_N54
\temp[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- temp(4) = ( \Add0~17_sumout\ & ( (!\process_0~0_combout\) # (temp(4)) ) ) # ( !\Add0~17_sumout\ & ( (\process_0~0_combout\ & temp(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_process_0~0_combout\,
	datad => ALT_INV_temp(4),
	dataf => \ALT_INV_Add0~17_sumout\,
	combout => temp(4));

-- Location: LABCELL_X88_Y9_N24
\temp[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- temp(2) = ( \Add0~9_sumout\ & ( (!\process_0~0_combout\) # (temp(2)) ) ) # ( !\Add0~9_sumout\ & ( (temp(2) & \process_0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_temp(2),
	datad => \ALT_INV_process_0~0_combout\,
	dataf => \ALT_INV_Add0~9_sumout\,
	combout => temp(2));

-- Location: LABCELL_X88_Y9_N57
\temp[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- temp(3) = ( temp(3) & ( (\process_0~0_combout\) # (\Add0~13_sumout\) ) ) # ( !temp(3) & ( (\Add0~13_sumout\ & !\process_0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~13_sumout\,
	datad => \ALT_INV_process_0~0_combout\,
	dataf => ALT_INV_temp(3),
	combout => temp(3));

-- Location: LABCELL_X88_Y9_N48
\S[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S[1]~0_combout\ = ( temp(3) & ( !\Add0~5_sumout\ $ ((((temp(2)) # (temp(4))) # (temp(1)))) ) ) # ( !temp(3) & ( !temp(4) $ (\Add0~5_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000110011110011000011001110000000011111111000000001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_temp(1),
	datab => ALT_INV_temp(4),
	datac => ALT_INV_temp(2),
	datad => \ALT_INV_Add0~5_sumout\,
	dataf => ALT_INV_temp(3),
	combout => \S[1]~0_combout\);

-- Location: LABCELL_X88_Y9_N18
\S[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \S[2]~1_combout\ = ( \Add0~5_sumout\ & ( temp(1) & ( \Add0~9_sumout\ ) ) ) # ( !\Add0~5_sumout\ & ( temp(1) & ( !\Add0~9_sumout\ $ (((!temp(3) & !temp(4)))) ) ) ) # ( \Add0~5_sumout\ & ( !temp(1) & ( \Add0~9_sumout\ ) ) ) # ( !\Add0~5_sumout\ & ( !temp(1) 
-- & ( !\Add0~9_sumout\ $ (((!temp(4) & ((!temp(3)) # (!temp(2)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011011001100001100110011001101100110110011000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_temp(3),
	datab => \ALT_INV_Add0~9_sumout\,
	datac => ALT_INV_temp(2),
	datad => ALT_INV_temp(4),
	datae => \ALT_INV_Add0~5_sumout\,
	dataf => ALT_INV_temp(1),
	combout => \S[2]~1_combout\);

-- Location: LABCELL_X88_Y9_N42
\LessThan2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = ( temp(2) & ( temp(1) & ( (!temp(4) & !temp(3)) ) ) ) # ( !temp(2) & ( temp(1) & ( (!temp(4) & !temp(3)) ) ) ) # ( temp(2) & ( !temp(1) & ( (!temp(4) & !temp(3)) ) ) ) # ( !temp(2) & ( !temp(1) & ( !temp(4) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_temp(4),
	datab => ALT_INV_temp(3),
	datae => ALT_INV_temp(2),
	dataf => ALT_INV_temp(1),
	combout => \LessThan2~0_combout\);

-- Location: LABCELL_X88_Y9_N27
\S[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \S[3]~2_combout\ = ( \Add0~13_sumout\ & ( ((!\Add0~9_sumout\ & !\Add0~5_sumout\)) # (\LessThan2~0_combout\) ) ) # ( !\Add0~13_sumout\ & ( (!\LessThan2~0_combout\ & ((\Add0~5_sumout\) # (\Add0~9_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011110000001100001111000011001111000011111100111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add0~9_sumout\,
	datac => \ALT_INV_LessThan2~0_combout\,
	datad => \ALT_INV_Add0~5_sumout\,
	dataf => \ALT_INV_Add0~13_sumout\,
	combout => \S[3]~2_combout\);

-- Location: LABCELL_X88_Y9_N51
\C$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \C$latch~combout\ = ( \C$latch~combout\ & ( (!\LessThan2~0_combout\) # (\process_0~0_combout\) ) ) # ( !\C$latch~combout\ & ( (!\LessThan2~0_combout\ & !\process_0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_LessThan2~0_combout\,
	datad => \ALT_INV_process_0~0_combout\,
	dataf => \ALT_INV_C$latch~combout\,
	combout => \C$latch~combout\);

-- Location: MLABCELL_X52_Y17_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


