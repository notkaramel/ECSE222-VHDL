-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.0.0 Build 614 04/24/2018 SJ Lite Edition"

-- DATE "10/14/2022 18:53:07"

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

ENTITY 	Antoine_Phan_Wrapper IS
    PORT (
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	decoded_A : BUFFER std_logic_vector(6 DOWNTO 0);
	decoded_B : BUFFER std_logic_vector(6 DOWNTO 0);
	decoded_AplusB : BUFFER std_logic_vector(13 DOWNTO 0)
	);
END Antoine_Phan_Wrapper;

-- Design Ports Information
-- decoded_A[0]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_A[1]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_A[2]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_A[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_A[4]	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_A[5]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_A[6]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_B[0]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_B[1]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_B[2]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_B[3]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_B[4]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_B[5]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_B[6]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_AplusB[0]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_AplusB[1]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_AplusB[2]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_AplusB[3]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_AplusB[4]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_AplusB[5]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_AplusB[6]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_AplusB[7]	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_AplusB[8]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_AplusB[9]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_AplusB[10]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_AplusB[11]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_AplusB[12]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_AplusB[13]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Antoine_Phan_Wrapper IS
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
SIGNAL ww_decoded_A : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_decoded_B : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_decoded_AplusB : std_logic_vector(13 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \Display_A|Mux6~0_combout\ : std_logic;
SIGNAL \Display_A|Mux5~0_combout\ : std_logic;
SIGNAL \Display_A|Mux4~0_combout\ : std_logic;
SIGNAL \Display_A|Mux3~0_combout\ : std_logic;
SIGNAL \Display_A|Mux2~0_combout\ : std_logic;
SIGNAL \Display_A|Mux1~0_combout\ : std_logic;
SIGNAL \Display_A|Mux0~0_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \Display_B|Mux6~0_combout\ : std_logic;
SIGNAL \Display_B|Mux5~0_combout\ : std_logic;
SIGNAL \Display_B|Mux4~0_combout\ : std_logic;
SIGNAL \Display_B|Mux3~0_combout\ : std_logic;
SIGNAL \Display_B|Mux2~0_combout\ : std_logic;
SIGNAL \Display_B|Mux1~0_combout\ : std_logic;
SIGNAL \Display_B|Mux0~0_combout\ : std_logic;
SIGNAL \BCD|process_0~0_combout\ : std_logic;
SIGNAL \BCD|Add0~2\ : std_logic;
SIGNAL \BCD|Add0~6\ : std_logic;
SIGNAL \BCD|Add0~9_sumout\ : std_logic;
SIGNAL \BCD|Add0~10\ : std_logic;
SIGNAL \BCD|Add0~13_sumout\ : std_logic;
SIGNAL \BCD|Add0~5_sumout\ : std_logic;
SIGNAL \BCD|Add0~14\ : std_logic;
SIGNAL \BCD|Add0~17_sumout\ : std_logic;
SIGNAL \BCD|S[1]~0_combout\ : std_logic;
SIGNAL \BCD|LessThan2~0_combout\ : std_logic;
SIGNAL \BCD|S[3]~2_combout\ : std_logic;
SIGNAL \BCD|S[2]~1_combout\ : std_logic;
SIGNAL \BCD|Add0~1_sumout\ : std_logic;
SIGNAL \Display_AplusB_6to0|Mux6~0_combout\ : std_logic;
SIGNAL \Display_AplusB_6to0|Mux5~0_combout\ : std_logic;
SIGNAL \Display_AplusB_6to0|Mux4~0_combout\ : std_logic;
SIGNAL \Display_AplusB_6to0|Mux3~0_combout\ : std_logic;
SIGNAL \Display_AplusB_6to0|Mux2~0_combout\ : std_logic;
SIGNAL \Display_AplusB_6to0|Mux1~0_combout\ : std_logic;
SIGNAL \Display_AplusB_6to0|Mux0~0_combout\ : std_logic;
SIGNAL \BCD|temp\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_B[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \BCD|ALT_INV_temp\ : std_logic_vector(4 DOWNTO 1);
SIGNAL \BCD|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \Display_AplusB_6to0|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \BCD|ALT_INV_S[3]~2_combout\ : std_logic;
SIGNAL \BCD|ALT_INV_LessThan2~0_combout\ : std_logic;
SIGNAL \BCD|ALT_INV_S[2]~1_combout\ : std_logic;
SIGNAL \BCD|ALT_INV_S[1]~0_combout\ : std_logic;
SIGNAL \Display_B|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \Display_A|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \BCD|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \BCD|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \BCD|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \BCD|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \BCD|ALT_INV_Add0~1_sumout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
decoded_A <= ww_decoded_A;
decoded_B <= ww_decoded_B;
decoded_AplusB <= ww_decoded_AplusB;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_B[3]~input_o\ <= NOT \B[3]~input_o\;
\ALT_INV_B[2]~input_o\ <= NOT \B[2]~input_o\;
\ALT_INV_B[1]~input_o\ <= NOT \B[1]~input_o\;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\BCD|ALT_INV_temp\(2) <= NOT \BCD|temp\(2);
\BCD|ALT_INV_temp\(1) <= NOT \BCD|temp\(1);
\BCD|ALT_INV_temp\(3) <= NOT \BCD|temp\(3);
\BCD|ALT_INV_temp\(4) <= NOT \BCD|temp\(4);
\BCD|ALT_INV_process_0~0_combout\ <= NOT \BCD|process_0~0_combout\;
\Display_AplusB_6to0|ALT_INV_Mux0~0_combout\ <= NOT \Display_AplusB_6to0|Mux0~0_combout\;
\BCD|ALT_INV_S[3]~2_combout\ <= NOT \BCD|S[3]~2_combout\;
\BCD|ALT_INV_LessThan2~0_combout\ <= NOT \BCD|LessThan2~0_combout\;
\BCD|ALT_INV_S[2]~1_combout\ <= NOT \BCD|S[2]~1_combout\;
\BCD|ALT_INV_S[1]~0_combout\ <= NOT \BCD|S[1]~0_combout\;
\Display_B|ALT_INV_Mux0~0_combout\ <= NOT \Display_B|Mux0~0_combout\;
\Display_A|ALT_INV_Mux0~0_combout\ <= NOT \Display_A|Mux0~0_combout\;
\BCD|ALT_INV_Add0~17_sumout\ <= NOT \BCD|Add0~17_sumout\;
\BCD|ALT_INV_Add0~13_sumout\ <= NOT \BCD|Add0~13_sumout\;
\BCD|ALT_INV_Add0~9_sumout\ <= NOT \BCD|Add0~9_sumout\;
\BCD|ALT_INV_Add0~5_sumout\ <= NOT \BCD|Add0~5_sumout\;
\BCD|ALT_INV_Add0~1_sumout\ <= NOT \BCD|Add0~1_sumout\;

-- Location: IOOBUF_X89_Y11_N45
\decoded_A[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Display_A|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_A(0));

-- Location: IOOBUF_X89_Y13_N5
\decoded_A[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Display_A|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_A(1));

-- Location: IOOBUF_X89_Y13_N22
\decoded_A[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Display_A|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_A(2));

-- Location: IOOBUF_X89_Y8_N22
\decoded_A[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Display_A|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_A(3));

-- Location: IOOBUF_X89_Y15_N22
\decoded_A[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Display_A|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_A(4));

-- Location: IOOBUF_X89_Y15_N5
\decoded_A[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Display_A|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_A(5));

-- Location: IOOBUF_X89_Y20_N45
\decoded_A[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Display_A|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_A(6));

-- Location: IOOBUF_X89_Y9_N22
\decoded_B[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Display_B|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_B(0));

-- Location: IOOBUF_X89_Y23_N39
\decoded_B[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Display_B|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_B(1));

-- Location: IOOBUF_X89_Y23_N56
\decoded_B[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Display_B|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_B(2));

-- Location: IOOBUF_X89_Y20_N79
\decoded_B[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Display_B|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_B(3));

-- Location: IOOBUF_X89_Y25_N39
\decoded_B[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Display_B|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_B(4));

-- Location: IOOBUF_X89_Y20_N96
\decoded_B[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Display_B|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_B(5));

-- Location: IOOBUF_X89_Y25_N56
\decoded_B[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Display_B|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_B(6));

-- Location: IOOBUF_X89_Y8_N39
\decoded_AplusB[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Display_AplusB_6to0|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_AplusB(0));

-- Location: IOOBUF_X89_Y11_N79
\decoded_AplusB[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Display_AplusB_6to0|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_AplusB(1));

-- Location: IOOBUF_X89_Y11_N96
\decoded_AplusB[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Display_AplusB_6to0|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_AplusB(2));

-- Location: IOOBUF_X89_Y4_N79
\decoded_AplusB[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Display_AplusB_6to0|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_AplusB(3));

-- Location: IOOBUF_X89_Y13_N56
\decoded_AplusB[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Display_AplusB_6to0|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_AplusB(4));

-- Location: IOOBUF_X89_Y13_N39
\decoded_AplusB[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Display_AplusB_6to0|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_AplusB(5));

-- Location: IOOBUF_X89_Y4_N96
\decoded_AplusB[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Display_AplusB_6to0|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_AplusB(6));

-- Location: IOOBUF_X89_Y6_N39
\decoded_AplusB[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD|ALT_INV_LessThan2~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_AplusB(7));

-- Location: IOOBUF_X89_Y6_N56
\decoded_AplusB[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_decoded_AplusB(8));

-- Location: IOOBUF_X89_Y16_N39
\decoded_AplusB[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_decoded_AplusB(9));

-- Location: IOOBUF_X89_Y16_N56
\decoded_AplusB[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD|ALT_INV_LessThan2~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_AplusB(10));

-- Location: IOOBUF_X89_Y15_N39
\decoded_AplusB[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD|ALT_INV_LessThan2~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_AplusB(11));

-- Location: IOOBUF_X89_Y15_N56
\decoded_AplusB[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD|ALT_INV_LessThan2~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_AplusB(12));

-- Location: IOOBUF_X89_Y8_N56
\decoded_AplusB[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_decoded_AplusB(13));

-- Location: IOIBUF_X2_Y0_N58
\A[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X4_Y0_N18
\A[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X4_Y0_N1
\A[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X4_Y0_N35
\A[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: MLABCELL_X3_Y1_N51
\Display_A|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Display_A|Mux6~0_combout\ = ( \A[0]~input_o\ & ( !\A[3]~input_o\ $ (((\A[1]~input_o\) # (\A[2]~input_o\))) ) ) # ( !\A[0]~input_o\ & ( (!\A[1]~input_o\ & ((\A[2]~input_o\))) # (\A[1]~input_o\ & (\A[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010110100101010101011010010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datac => \ALT_INV_A[2]~input_o\,
	datad => \ALT_INV_A[1]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \Display_A|Mux6~0_combout\);

-- Location: LABCELL_X88_Y13_N0
\Display_A|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Display_A|Mux5~0_combout\ = ( \A[1]~input_o\ & ( \A[0]~input_o\ & ( \A[3]~input_o\ ) ) ) # ( !\A[1]~input_o\ & ( \A[0]~input_o\ & ( \A[2]~input_o\ ) ) ) # ( \A[1]~input_o\ & ( !\A[0]~input_o\ & ( (\A[2]~input_o\) # (\A[3]~input_o\) ) ) ) # ( 
-- !\A[1]~input_o\ & ( !\A[0]~input_o\ & ( (\A[3]~input_o\ & \A[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011001111110011111100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[3]~input_o\,
	datac => \ALT_INV_A[2]~input_o\,
	datae => \ALT_INV_A[1]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \Display_A|Mux5~0_combout\);

-- Location: MLABCELL_X87_Y13_N36
\Display_A|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Display_A|Mux4~0_combout\ = ( \A[1]~input_o\ & ( \A[0]~input_o\ & ( \A[3]~input_o\ ) ) ) # ( !\A[1]~input_o\ & ( \A[0]~input_o\ & ( (\A[3]~input_o\ & \A[2]~input_o\) ) ) ) # ( \A[1]~input_o\ & ( !\A[0]~input_o\ & ( (!\A[2]~input_o\) # (\A[3]~input_o\) ) 
-- ) ) # ( !\A[1]~input_o\ & ( !\A[0]~input_o\ & ( (\A[3]~input_o\ & \A[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111100111111001100000011000000110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[3]~input_o\,
	datac => \ALT_INV_A[2]~input_o\,
	datae => \ALT_INV_A[1]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \Display_A|Mux4~0_combout\);

-- Location: LABCELL_X88_Y13_N6
\Display_A|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Display_A|Mux3~0_combout\ = ( \A[0]~input_o\ & ( (!\A[2]~input_o\ & (!\A[3]~input_o\ $ (\A[1]~input_o\))) # (\A[2]~input_o\ & ((\A[1]~input_o\) # (\A[3]~input_o\))) ) ) # ( !\A[0]~input_o\ & ( (!\A[1]~input_o\ & (\A[2]~input_o\)) # (\A[1]~input_o\ & 
-- ((\A[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001110010111100101111001011110010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \ALT_INV_A[3]~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \Display_A|Mux3~0_combout\);

-- Location: LABCELL_X88_Y13_N9
\Display_A|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Display_A|Mux2~0_combout\ = ( \A[0]~input_o\ ) # ( !\A[0]~input_o\ & ( (!\A[1]~input_o\ & (\A[2]~input_o\)) # (\A[1]~input_o\ & ((\A[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_A[1]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \Display_A|Mux2~0_combout\);

-- Location: LABCELL_X88_Y13_N36
\Display_A|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Display_A|Mux1~0_combout\ = ( \A[0]~input_o\ & ( (!\A[2]~input_o\ $ (\A[3]~input_o\)) # (\A[1]~input_o\) ) ) # ( !\A[0]~input_o\ & ( (!\A[2]~input_o\ & ((\A[1]~input_o\))) # (\A[2]~input_o\ & (\A[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101110011111100111111001111110011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \ALT_INV_A[3]~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \Display_A|Mux1~0_combout\);

-- Location: LABCELL_X88_Y13_N39
\Display_A|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Display_A|Mux0~0_combout\ = ( \A[0]~input_o\ & ( (!\A[2]~input_o\ & (!\A[3]~input_o\ $ (!\A[1]~input_o\))) # (\A[2]~input_o\ & (!\A[3]~input_o\ & !\A[1]~input_o\)) ) ) # ( !\A[0]~input_o\ & ( !\A[3]~input_o\ $ (((!\A[2]~input_o\ & !\A[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011011001100011001101100110001100110100010000110011010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_A[1]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \Display_A|Mux0~0_combout\);

-- Location: IOIBUF_X16_Y0_N1
\B[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X12_Y0_N18
\B[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X4_Y0_N52
\B[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X8_Y0_N35
\B[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LABCELL_X88_Y13_N45
\Display_B|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Display_B|Mux6~0_combout\ = ( \B[2]~input_o\ & ( ((!\B[1]~input_o\ & !\B[0]~input_o\)) # (\B[3]~input_o\) ) ) # ( !\B[2]~input_o\ & ( (!\B[1]~input_o\ & (\B[0]~input_o\ & !\B[3]~input_o\)) # (\B[1]~input_o\ & ((\B[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001010101001000100101010110001000111111111000100011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Display_B|Mux6~0_combout\);

-- Location: LABCELL_X88_Y13_N12
\Display_B|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Display_B|Mux5~0_combout\ = ( \B[2]~input_o\ & ( (!\B[1]~input_o\ $ (!\B[0]~input_o\)) # (\B[3]~input_o\) ) ) # ( !\B[2]~input_o\ & ( (\B[1]~input_o\ & \B[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010101101111011011110110111101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Display_B|Mux5~0_combout\);

-- Location: LABCELL_X88_Y13_N15
\Display_B|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Display_B|Mux4~0_combout\ = ( \B[2]~input_o\ & ( \B[3]~input_o\ ) ) # ( !\B[2]~input_o\ & ( (\B[1]~input_o\ & ((!\B[0]~input_o\) # (\B[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001010101010001000101010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Display_B|Mux4~0_combout\);

-- Location: LABCELL_X88_Y13_N42
\Display_B|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Display_B|Mux3~0_combout\ = ( \B[2]~input_o\ & ( (!\B[1]~input_o\ $ (\B[0]~input_o\)) # (\B[3]~input_o\) ) ) # ( !\B[2]~input_o\ & ( (!\B[1]~input_o\ & (\B[0]~input_o\ & !\B[3]~input_o\)) # (\B[1]~input_o\ & ((\B[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010100100101001001010010010110011111100111111001111110011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Display_B|Mux3~0_combout\);

-- Location: LABCELL_X88_Y13_N30
\Display_B|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Display_B|Mux2~0_combout\ = ( \B[2]~input_o\ & ( (!\B[1]~input_o\) # ((\B[3]~input_o\) # (\B[0]~input_o\)) ) ) # ( !\B[2]~input_o\ & ( ((\B[1]~input_o\ & \B[3]~input_o\)) # (\B[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011100110111001101110011011110111111101111111011111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Display_B|Mux2~0_combout\);

-- Location: LABCELL_X88_Y13_N33
\Display_B|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Display_B|Mux1~0_combout\ = ( \B[2]~input_o\ & ( ((\B[1]~input_o\ & \B[0]~input_o\)) # (\B[3]~input_o\) ) ) # ( !\B[2]~input_o\ & ( ((\B[0]~input_o\ & !\B[3]~input_o\)) # (\B[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101010101011101110101010100010001111111110001000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Display_B|Mux1~0_combout\);

-- Location: LABCELL_X88_Y13_N48
\Display_B|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Display_B|Mux0~0_combout\ = ( \B[0]~input_o\ & ( (!\B[3]~input_o\ & (!\B[2]~input_o\ $ (!\B[1]~input_o\))) # (\B[3]~input_o\ & (!\B[2]~input_o\ & !\B[1]~input_o\)) ) ) # ( !\B[0]~input_o\ & ( !\B[3]~input_o\ $ (((!\B[2]~input_o\ & !\B[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110101001101010011010000110100001101010011010100110100001101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	combout => \Display_B|Mux0~0_combout\);

-- Location: MLABCELL_X3_Y1_N54
\BCD|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BCD|process_0~0_combout\ = ( \A[2]~input_o\ & ( \A[1]~input_o\ & ( ((\B[3]~input_o\ & ((\B[1]~input_o\) # (\B[2]~input_o\)))) # (\A[3]~input_o\) ) ) ) # ( !\A[2]~input_o\ & ( \A[1]~input_o\ & ( ((\B[3]~input_o\ & ((\B[1]~input_o\) # (\B[2]~input_o\)))) # 
-- (\A[3]~input_o\) ) ) ) # ( \A[2]~input_o\ & ( !\A[1]~input_o\ & ( ((\B[3]~input_o\ & ((\B[1]~input_o\) # (\B[2]~input_o\)))) # (\A[3]~input_o\) ) ) ) # ( !\A[2]~input_o\ & ( !\A[1]~input_o\ & ( (\B[3]~input_o\ & ((\B[1]~input_o\) # (\B[2]~input_o\))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010101000101011111111100010101111111110001010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[3]~input_o\,
	datae => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \BCD|process_0~0_combout\);

-- Location: MLABCELL_X3_Y1_N0
\BCD|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \BCD|Add0~1_sumout\ = SUM(( \B[0]~input_o\ ) + ( \A[0]~input_o\ ) + ( !VCC ))
-- \BCD|Add0~2\ = CARRY(( \B[0]~input_o\ ) + ( \A[0]~input_o\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[0]~input_o\,
	cin => GND,
	sumout => \BCD|Add0~1_sumout\,
	cout => \BCD|Add0~2\);

-- Location: MLABCELL_X3_Y1_N3
\BCD|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \BCD|Add0~5_sumout\ = SUM(( \A[1]~input_o\ ) + ( \B[1]~input_o\ ) + ( \BCD|Add0~2\ ))
-- \BCD|Add0~6\ = CARRY(( \A[1]~input_o\ ) + ( \B[1]~input_o\ ) + ( \BCD|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[1]~input_o\,
	cin => \BCD|Add0~2\,
	sumout => \BCD|Add0~5_sumout\,
	cout => \BCD|Add0~6\);

-- Location: MLABCELL_X3_Y1_N6
\BCD|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \BCD|Add0~9_sumout\ = SUM(( \A[2]~input_o\ ) + ( \B[2]~input_o\ ) + ( \BCD|Add0~6\ ))
-- \BCD|Add0~10\ = CARRY(( \A[2]~input_o\ ) + ( \B[2]~input_o\ ) + ( \BCD|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	cin => \BCD|Add0~6\,
	sumout => \BCD|Add0~9_sumout\,
	cout => \BCD|Add0~10\);

-- Location: MLABCELL_X3_Y1_N24
\BCD|temp[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \BCD|temp\(2) = ( \BCD|process_0~0_combout\ & ( \BCD|Add0~9_sumout\ & ( \BCD|temp\(2) ) ) ) # ( !\BCD|process_0~0_combout\ & ( \BCD|Add0~9_sumout\ ) ) # ( \BCD|process_0~0_combout\ & ( !\BCD|Add0~9_sumout\ & ( \BCD|temp\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BCD|ALT_INV_temp\(2),
	datae => \BCD|ALT_INV_process_0~0_combout\,
	dataf => \BCD|ALT_INV_Add0~9_sumout\,
	combout => \BCD|temp\(2));

-- Location: MLABCELL_X3_Y1_N9
\BCD|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \BCD|Add0~13_sumout\ = SUM(( \B[3]~input_o\ ) + ( \A[3]~input_o\ ) + ( \BCD|Add0~10\ ))
-- \BCD|Add0~14\ = CARRY(( \B[3]~input_o\ ) + ( \A[3]~input_o\ ) + ( \BCD|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_A[3]~input_o\,
	cin => \BCD|Add0~10\,
	sumout => \BCD|Add0~13_sumout\,
	cout => \BCD|Add0~14\);

-- Location: MLABCELL_X3_Y1_N21
\BCD|temp[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \BCD|temp\(3) = ( \BCD|temp\(3) & ( \BCD|Add0~13_sumout\ ) ) # ( !\BCD|temp\(3) & ( \BCD|Add0~13_sumout\ & ( !\BCD|process_0~0_combout\ ) ) ) # ( \BCD|temp\(3) & ( !\BCD|Add0~13_sumout\ & ( \BCD|process_0~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111111111111000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \BCD|ALT_INV_process_0~0_combout\,
	datae => \BCD|ALT_INV_temp\(3),
	dataf => \BCD|ALT_INV_Add0~13_sumout\,
	combout => \BCD|temp\(3));

-- Location: MLABCELL_X3_Y1_N33
\BCD|temp[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \BCD|temp\(1) = ( \BCD|temp\(1) & ( (\BCD|process_0~0_combout\) # (\BCD|Add0~5_sumout\) ) ) # ( !\BCD|temp\(1) & ( (\BCD|Add0~5_sumout\ & !\BCD|process_0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \BCD|ALT_INV_Add0~5_sumout\,
	datad => \BCD|ALT_INV_process_0~0_combout\,
	dataf => \BCD|ALT_INV_temp\(1),
	combout => \BCD|temp\(1));

-- Location: MLABCELL_X3_Y1_N12
\BCD|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \BCD|Add0~17_sumout\ = SUM(( GND ) + ( GND ) + ( \BCD|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \BCD|Add0~14\,
	sumout => \BCD|Add0~17_sumout\);

-- Location: MLABCELL_X3_Y1_N48
\BCD|temp[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \BCD|temp\(4) = ( \BCD|Add0~17_sumout\ & ( (!\BCD|process_0~0_combout\) # (\BCD|temp\(4)) ) ) # ( !\BCD|Add0~17_sumout\ & ( (\BCD|temp\(4) & \BCD|process_0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BCD|ALT_INV_temp\(4),
	datad => \BCD|ALT_INV_process_0~0_combout\,
	dataf => \BCD|ALT_INV_Add0~17_sumout\,
	combout => \BCD|temp\(4));

-- Location: MLABCELL_X3_Y1_N42
\BCD|S[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BCD|S[1]~0_combout\ = ( \BCD|temp\(4) & ( \BCD|Add0~5_sumout\ ) ) # ( !\BCD|temp\(4) & ( !\BCD|Add0~5_sumout\ $ (((\BCD|temp\(3) & ((\BCD|temp\(1)) # (\BCD|temp\(2)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110110000010011111011000001001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|ALT_INV_temp\(2),
	datab => \BCD|ALT_INV_temp\(3),
	datac => \BCD|ALT_INV_temp\(1),
	datad => \BCD|ALT_INV_Add0~5_sumout\,
	dataf => \BCD|ALT_INV_temp\(4),
	combout => \BCD|S[1]~0_combout\);

-- Location: MLABCELL_X3_Y1_N45
\BCD|LessThan2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BCD|LessThan2~0_combout\ = ( \BCD|temp\(1) & ( (!\BCD|temp\(3) & !\BCD|temp\(4)) ) ) # ( !\BCD|temp\(1) & ( (!\BCD|temp\(4) & ((!\BCD|temp\(2)) # (!\BCD|temp\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000011100000111000001110000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|ALT_INV_temp\(2),
	datab => \BCD|ALT_INV_temp\(3),
	datac => \BCD|ALT_INV_temp\(4),
	dataf => \BCD|ALT_INV_temp\(1),
	combout => \BCD|LessThan2~0_combout\);

-- Location: MLABCELL_X3_Y1_N30
\BCD|S[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \BCD|S[3]~2_combout\ = ( \BCD|Add0~9_sumout\ & ( !\BCD|Add0~13_sumout\ $ (\BCD|LessThan2~0_combout\) ) ) # ( !\BCD|Add0~9_sumout\ & ( !\BCD|Add0~13_sumout\ $ (((!\BCD|Add0~5_sumout\) # (\BCD|LessThan2~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000001111001111000000111111110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \BCD|ALT_INV_Add0~5_sumout\,
	datac => \BCD|ALT_INV_Add0~13_sumout\,
	datad => \BCD|ALT_INV_LessThan2~0_combout\,
	dataf => \BCD|ALT_INV_Add0~9_sumout\,
	combout => \BCD|S[3]~2_combout\);

-- Location: MLABCELL_X3_Y1_N36
\BCD|S[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \BCD|S[2]~1_combout\ = ( \BCD|temp\(3) & ( \BCD|temp\(1) & ( !\BCD|Add0~5_sumout\ $ (\BCD|Add0~9_sumout\) ) ) ) # ( !\BCD|temp\(3) & ( \BCD|temp\(1) & ( !\BCD|Add0~9_sumout\ $ (((!\BCD|temp\(4)) # (\BCD|Add0~5_sumout\))) ) ) ) # ( \BCD|temp\(3) & ( 
-- !\BCD|temp\(1) & ( !\BCD|Add0~9_sumout\ $ ((((!\BCD|temp\(2) & !\BCD|temp\(4))) # (\BCD|Add0~5_sumout\))) ) ) ) # ( !\BCD|temp\(3) & ( !\BCD|temp\(1) & ( !\BCD|Add0~9_sumout\ $ (((!\BCD|temp\(4)) # (\BCD|Add0~5_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011110011010011001011001100001100111100111100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|ALT_INV_temp\(2),
	datab => \BCD|ALT_INV_Add0~5_sumout\,
	datac => \BCD|ALT_INV_temp\(4),
	datad => \BCD|ALT_INV_Add0~9_sumout\,
	datae => \BCD|ALT_INV_temp\(3),
	dataf => \BCD|ALT_INV_temp\(1),
	combout => \BCD|S[2]~1_combout\);

-- Location: LABCELL_X88_Y13_N54
\Display_AplusB_6to0|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Display_AplusB_6to0|Mux6~0_combout\ = ( \BCD|Add0~1_sumout\ & ( !\BCD|S[3]~2_combout\ $ (((!\BCD|S[1]~0_combout\) # (\BCD|S[2]~1_combout\))) ) ) # ( !\BCD|Add0~1_sumout\ & ( (!\BCD|S[1]~0_combout\ & (\BCD|S[3]~2_combout\)) # (\BCD|S[1]~0_combout\ & 
-- ((\BCD|S[2]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011101100011011000110110001101100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|ALT_INV_S[1]~0_combout\,
	datab => \BCD|ALT_INV_S[3]~2_combout\,
	datac => \BCD|ALT_INV_S[2]~1_combout\,
	dataf => \BCD|ALT_INV_Add0~1_sumout\,
	combout => \Display_AplusB_6to0|Mux6~0_combout\);

-- Location: LABCELL_X88_Y13_N24
\Display_AplusB_6to0|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Display_AplusB_6to0|Mux5~0_combout\ = ( \BCD|Add0~1_sumout\ & ( (!\BCD|S[1]~0_combout\ & (\BCD|S[3]~2_combout\)) # (\BCD|S[1]~0_combout\ & ((\BCD|S[2]~1_combout\))) ) ) # ( !\BCD|Add0~1_sumout\ & ( (!\BCD|S[1]~0_combout\ & ((\BCD|S[2]~1_combout\) # 
-- (\BCD|S[3]~2_combout\))) # (\BCD|S[1]~0_combout\ & (\BCD|S[3]~2_combout\ & \BCD|S[2]~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101100101011001010110010101100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|ALT_INV_S[1]~0_combout\,
	datab => \BCD|ALT_INV_S[3]~2_combout\,
	datac => \BCD|ALT_INV_S[2]~1_combout\,
	dataf => \BCD|ALT_INV_Add0~1_sumout\,
	combout => \Display_AplusB_6to0|Mux5~0_combout\);

-- Location: LABCELL_X88_Y13_N27
\Display_AplusB_6to0|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Display_AplusB_6to0|Mux4~0_combout\ = ( \BCD|S[2]~1_combout\ & ( \BCD|S[3]~2_combout\ ) ) # ( !\BCD|S[2]~1_combout\ & ( (!\BCD|S[1]~0_combout\ & ((!\BCD|Add0~1_sumout\) # (\BCD|S[3]~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010001010100010101000101010001000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|ALT_INV_S[1]~0_combout\,
	datab => \BCD|ALT_INV_S[3]~2_combout\,
	datac => \BCD|ALT_INV_Add0~1_sumout\,
	dataf => \BCD|ALT_INV_S[2]~1_combout\,
	combout => \Display_AplusB_6to0|Mux4~0_combout\);

-- Location: LABCELL_X83_Y4_N3
\Display_AplusB_6to0|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Display_AplusB_6to0|Mux3~0_combout\ = ( \BCD|S[2]~1_combout\ & ( \BCD|S[3]~2_combout\ ) ) # ( !\BCD|S[2]~1_combout\ & ( \BCD|S[3]~2_combout\ & ( !\BCD|S[1]~0_combout\ ) ) ) # ( \BCD|S[2]~1_combout\ & ( !\BCD|S[3]~2_combout\ & ( !\BCD|S[1]~0_combout\ $ 
-- (!\BCD|Add0~1_sumout\) ) ) ) # ( !\BCD|S[2]~1_combout\ & ( !\BCD|S[3]~2_combout\ & ( (\BCD|S[1]~0_combout\ & \BCD|Add0~1_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101010110100101101010101010101010101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|ALT_INV_S[1]~0_combout\,
	datac => \BCD|ALT_INV_Add0~1_sumout\,
	datae => \BCD|ALT_INV_S[2]~1_combout\,
	dataf => \BCD|ALT_INV_S[3]~2_combout\,
	combout => \Display_AplusB_6to0|Mux3~0_combout\);

-- Location: LABCELL_X88_Y13_N18
\Display_AplusB_6to0|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Display_AplusB_6to0|Mux2~0_combout\ = ( \BCD|Add0~1_sumout\ ) # ( !\BCD|Add0~1_sumout\ & ( (!\BCD|S[1]~0_combout\ & (\BCD|S[3]~2_combout\)) # (\BCD|S[1]~0_combout\ & ((\BCD|S[2]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|ALT_INV_S[1]~0_combout\,
	datab => \BCD|ALT_INV_S[3]~2_combout\,
	datac => \BCD|ALT_INV_S[2]~1_combout\,
	dataf => \BCD|ALT_INV_Add0~1_sumout\,
	combout => \Display_AplusB_6to0|Mux2~0_combout\);

-- Location: LABCELL_X88_Y13_N21
\Display_AplusB_6to0|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Display_AplusB_6to0|Mux1~0_combout\ = ( \BCD|S[2]~1_combout\ & ( ((!\BCD|S[1]~0_combout\ & \BCD|Add0~1_sumout\)) # (\BCD|S[3]~2_combout\) ) ) # ( !\BCD|S[2]~1_combout\ & ( (!\BCD|S[1]~0_combout\) # ((!\BCD|S[3]~2_combout\ & \BCD|Add0~1_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111010101110101011101010111000111011001110110011101100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|ALT_INV_S[1]~0_combout\,
	datab => \BCD|ALT_INV_S[3]~2_combout\,
	datac => \BCD|ALT_INV_Add0~1_sumout\,
	dataf => \BCD|ALT_INV_S[2]~1_combout\,
	combout => \Display_AplusB_6to0|Mux1~0_combout\);

-- Location: LABCELL_X88_Y13_N57
\Display_AplusB_6to0|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Display_AplusB_6to0|Mux0~0_combout\ = ( \BCD|S[2]~1_combout\ & ( (!\BCD|S[3]~2_combout\ & ((!\BCD|Add0~1_sumout\) # (\BCD|S[1]~0_combout\))) ) ) # ( !\BCD|S[2]~1_combout\ & ( !\BCD|S[1]~0_combout\ $ (\BCD|S[3]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100111000100110001001100010011000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|ALT_INV_S[1]~0_combout\,
	datab => \BCD|ALT_INV_S[3]~2_combout\,
	datac => \BCD|ALT_INV_Add0~1_sumout\,
	dataf => \BCD|ALT_INV_S[2]~1_combout\,
	combout => \Display_AplusB_6to0|Mux0~0_combout\);

-- Location: LABCELL_X55_Y31_N3
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


