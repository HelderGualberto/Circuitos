-- Copyright (C) 1991-2014 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 14.0.0 Build 200 06/17/2014 SJ Web Edition"

-- DATE "11/07/2014 08:37:25"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ULA IS
    PORT (
	A : IN std_logic_vector(0 TO 6);
	B : IN std_logic_vector(0 TO 6);
	result : OUT std_logic_vector(0 TO 7);
	CLK : IN std_logic;
	EN : IN std_logic;
	teste : OUT std_logic;
	S : IN std_logic_vector(0 TO 1)
	);
END ULA;

-- Design Ports Information
-- result[7]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[6]	=>  Location: PIN_U28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[5]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[4]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[3]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[2]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[1]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[0]	=>  Location: PIN_U27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teste	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[0]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_R27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EN	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_U26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_U25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_T26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_T25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_R28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_R23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ULA IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(0 TO 6);
SIGNAL ww_B : std_logic_vector(0 TO 6);
SIGNAL ww_result : std_logic_vector(0 TO 7);
SIGNAL ww_CLK : std_logic;
SIGNAL ww_EN : std_logic;
SIGNAL ww_teste : std_logic;
SIGNAL ww_S : std_logic_vector(0 TO 1);
SIGNAL \ufa1|ENsum~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ufa1|ENsub~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ufa1|ENand~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reg1|clkin~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ufa1|ENor~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \result[7]~output_o\ : std_logic;
SIGNAL \result[6]~output_o\ : std_logic;
SIGNAL \result[5]~output_o\ : std_logic;
SIGNAL \result[4]~output_o\ : std_logic;
SIGNAL \result[3]~output_o\ : std_logic;
SIGNAL \result[2]~output_o\ : std_logic;
SIGNAL \result[1]~output_o\ : std_logic;
SIGNAL \result[0]~output_o\ : std_logic;
SIGNAL \teste~output_o\ : std_logic;
SIGNAL \EN~input_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \FFT1|CLKout_synthesized_var~0_combout\ : std_logic;
SIGNAL \FFT1|CLKout_synthesized_var~q\ : std_logic;
SIGNAL \reg1|clkin~combout\ : std_logic;
SIGNAL \reg1|clkin~clkctrl_outclk\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \ufa1|and1|S~0_combout\ : std_logic;
SIGNAL \S[0]~input_o\ : std_logic;
SIGNAL \S[1]~input_o\ : std_logic;
SIGNAL \ufa1|Mux4~0_combout\ : std_logic;
SIGNAL \ENufa~combout\ : std_logic;
SIGNAL \ufa1|ENand~combout\ : std_logic;
SIGNAL \ufa1|ENand~clkctrl_outclk\ : std_logic;
SIGNAL \ufa1|adder|ha|S~0_combout\ : std_logic;
SIGNAL \ufa1|Mux8~0_combout\ : std_logic;
SIGNAL \ufa1|ENsum~combout\ : std_logic;
SIGNAL \ufa1|ENsum~clkctrl_outclk\ : std_logic;
SIGNAL \ufa1|adder|ha|S~combout\ : std_logic;
SIGNAL \ufa1|Mux4~1_combout\ : std_logic;
SIGNAL \ufa1|ENsub~combout\ : std_logic;
SIGNAL \ufa1|ENsub~clkctrl_outclk\ : std_logic;
SIGNAL \ufa1|subtractor|hs|S~combout\ : std_logic;
SIGNAL \ufa1|mux1|m[7]~0_combout\ : std_logic;
SIGNAL \ufa1|or1|S~0_combout\ : std_logic;
SIGNAL \ufa1|Mux4~2_combout\ : std_logic;
SIGNAL \ufa1|ENor~combout\ : std_logic;
SIGNAL \ufa1|ENor~clkctrl_outclk\ : std_logic;
SIGNAL \ufa1|mux1|m[7]~1_combout\ : std_logic;
SIGNAL \reg1|ff7|Q~q\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \ufa1|or1|S~1_combout\ : std_logic;
SIGNAL \ufa1|and1|S~1_combout\ : std_logic;
SIGNAL \ufa1|adder|ha|Co~combout\ : std_logic;
SIGNAL \ufa1|adder|fa0|S~0_combout\ : std_logic;
SIGNAL \ufa1|adder|fa0|S~combout\ : std_logic;
SIGNAL \ufa1|mux1|m[6]~2_combout\ : std_logic;
SIGNAL \ufa1|subtractor|hs|Te~0_combout\ : std_logic;
SIGNAL \ufa1|subtractor|hs|Te~combout\ : std_logic;
SIGNAL \ufa1|subtractor|fs0|S~0_combout\ : std_logic;
SIGNAL \ufa1|subtractor|fs0|S~combout\ : std_logic;
SIGNAL \ufa1|mux1|m[6]~3_combout\ : std_logic;
SIGNAL \reg1|ff6|Q~q\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \ufa1|or1|S~2_combout\ : std_logic;
SIGNAL \ufa1|and1|S~2_combout\ : std_logic;
SIGNAL \ufa1|subtractor|fs0|Te~0_combout\ : std_logic;
SIGNAL \ufa1|subtractor|fs0|Te~combout\ : std_logic;
SIGNAL \ufa1|subtractor|fs1|S~0_combout\ : std_logic;
SIGNAL \ufa1|subtractor|fs1|S~combout\ : std_logic;
SIGNAL \ufa1|adder|fa0|Co~0_combout\ : std_logic;
SIGNAL \ufa1|adder|fa0|Co~combout\ : std_logic;
SIGNAL \ufa1|adder|fa1|S~0_combout\ : std_logic;
SIGNAL \ufa1|adder|fa1|S~combout\ : std_logic;
SIGNAL \ufa1|mux1|m[5]~4_combout\ : std_logic;
SIGNAL \ufa1|mux1|m[5]~5_combout\ : std_logic;
SIGNAL \reg1|ff5|Q~q\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \ufa1|and1|S~3_combout\ : std_logic;
SIGNAL \ufa1|adder|fa1|Co~0_combout\ : std_logic;
SIGNAL \ufa1|adder|fa1|Co~combout\ : std_logic;
SIGNAL \ufa1|adder|fa2|S~0_combout\ : std_logic;
SIGNAL \ufa1|adder|fa2|S~combout\ : std_logic;
SIGNAL \ufa1|mux1|m[4]~6_combout\ : std_logic;
SIGNAL \ufa1|or1|S~3_combout\ : std_logic;
SIGNAL \ufa1|subtractor|fs1|Te~0_combout\ : std_logic;
SIGNAL \ufa1|subtractor|fs1|Te~combout\ : std_logic;
SIGNAL \ufa1|subtractor|fs2|S~0_combout\ : std_logic;
SIGNAL \ufa1|subtractor|fs2|S~combout\ : std_logic;
SIGNAL \ufa1|mux1|m[4]~7_combout\ : std_logic;
SIGNAL \reg1|ff4|Q~q\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \ufa1|and1|S~4_combout\ : std_logic;
SIGNAL \ufa1|adder|fa2|Co~0_combout\ : std_logic;
SIGNAL \ufa1|adder|fa2|Co~combout\ : std_logic;
SIGNAL \ufa1|adder|fa3|S~0_combout\ : std_logic;
SIGNAL \ufa1|adder|fa3|S~combout\ : std_logic;
SIGNAL \ufa1|subtractor|fs2|Te~0_combout\ : std_logic;
SIGNAL \ufa1|subtractor|fs2|Te~combout\ : std_logic;
SIGNAL \ufa1|subtractor|fs3|S~0_combout\ : std_logic;
SIGNAL \ufa1|subtractor|fs3|S~combout\ : std_logic;
SIGNAL \ufa1|mux1|m[3]~8_combout\ : std_logic;
SIGNAL \ufa1|or1|S~4_combout\ : std_logic;
SIGNAL \ufa1|mux1|m[3]~9_combout\ : std_logic;
SIGNAL \reg1|ff3|Q~q\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \ufa1|or1|S~5_combout\ : std_logic;
SIGNAL \ufa1|subtractor|fs3|Te~0_combout\ : std_logic;
SIGNAL \ufa1|subtractor|fs3|Te~combout\ : std_logic;
SIGNAL \ufa1|subtractor|fs4|S~0_combout\ : std_logic;
SIGNAL \ufa1|subtractor|fs4|S~combout\ : std_logic;
SIGNAL \ufa1|and1|S~5_combout\ : std_logic;
SIGNAL \ufa1|adder|fa3|Co~0_combout\ : std_logic;
SIGNAL \ufa1|adder|fa3|Co~combout\ : std_logic;
SIGNAL \ufa1|adder|fa4|S~0_combout\ : std_logic;
SIGNAL \ufa1|adder|fa4|S~combout\ : std_logic;
SIGNAL \ufa1|mux1|m[2]~10_combout\ : std_logic;
SIGNAL \ufa1|mux1|m[2]~11_combout\ : std_logic;
SIGNAL \reg1|ff2|Q~q\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \ufa1|and1|S~6_combout\ : std_logic;
SIGNAL \ufa1|or1|S~6_combout\ : std_logic;
SIGNAL \ufa1|adder|fa4|Co~0_combout\ : std_logic;
SIGNAL \ufa1|adder|fa4|Co~combout\ : std_logic;
SIGNAL \ufa1|adder|fa5|S~0_combout\ : std_logic;
SIGNAL \ufa1|adder|fa5|S~combout\ : std_logic;
SIGNAL \ufa1|subtractor|fs4|Te~0_combout\ : std_logic;
SIGNAL \ufa1|subtractor|fs4|Te~combout\ : std_logic;
SIGNAL \ufa1|subtractor|fs5|S~0_combout\ : std_logic;
SIGNAL \ufa1|subtractor|fs5|S~combout\ : std_logic;
SIGNAL \ufa1|mux1|m[1]~12_combout\ : std_logic;
SIGNAL \ufa1|mux1|m[1]~13_combout\ : std_logic;
SIGNAL \reg1|ff1|Q~feeder_combout\ : std_logic;
SIGNAL \reg1|ff1|Q~q\ : std_logic;
SIGNAL \ufa1|subtractor|fs5|Te~0_combout\ : std_logic;
SIGNAL \ufa1|subtractor|fs5|Te~combout\ : std_logic;
SIGNAL \ufa1|adder|fa5|Co~0_combout\ : std_logic;
SIGNAL \ufa1|adder|fa5|Co~combout\ : std_logic;
SIGNAL \ufa1|mux1|m[0]~14_combout\ : std_logic;
SIGNAL \reg1|ff0|Q~feeder_combout\ : std_logic;
SIGNAL \reg1|ff0|Q~q\ : std_logic;
SIGNAL \ufa1|and1|S\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ufa1|or1|S\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_A <= A;
ww_B <= B;
result <= ww_result;
ww_CLK <= CLK;
ww_EN <= EN;
teste <= ww_teste;
ww_S <= S;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\ufa1|ENsum~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ufa1|ENsum~combout\);

\ufa1|ENsub~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ufa1|ENsub~combout\);

\ufa1|ENand~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ufa1|ENand~combout\);

\reg1|clkin~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reg1|clkin~combout\);

\ufa1|ENor~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ufa1|ENor~combout\);

-- Location: IOOBUF_X115_Y33_N2
\result[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg1|ff7|Q~q\,
	devoe => ww_devoe,
	o => \result[7]~output_o\);

-- Location: IOOBUF_X115_Y28_N2
\result[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg1|ff6|Q~q\,
	devoe => ww_devoe,
	o => \result[6]~output_o\);

-- Location: IOOBUF_X115_Y26_N16
\result[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg1|ff5|Q~q\,
	devoe => ww_devoe,
	o => \result[5]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\result[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg1|ff4|Q~q\,
	devoe => ww_devoe,
	o => \result[4]~output_o\);

-- Location: IOOBUF_X115_Y36_N9
\result[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg1|ff3|Q~q\,
	devoe => ww_devoe,
	o => \result[3]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\result[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg1|ff2|Q~q\,
	devoe => ww_devoe,
	o => \result[2]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\result[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg1|ff1|Q~q\,
	devoe => ww_devoe,
	o => \result[1]~output_o\);

-- Location: IOOBUF_X115_Y29_N9
\result[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg1|ff0|Q~q\,
	devoe => ww_devoe,
	o => \result[0]~output_o\);

-- Location: IOOBUF_X56_Y0_N23
\teste~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FFT1|CLKout_synthesized_var~q\,
	devoe => ww_devoe,
	o => \teste~output_o\);

-- Location: IOIBUF_X56_Y0_N15
\EN~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EN,
	o => \EN~input_o\);

-- Location: IOIBUF_X56_Y0_N1
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: LCCOMB_X57_Y1_N18
\FFT1|CLKout_synthesized_var~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FFT1|CLKout_synthesized_var~0_combout\ = !\FFT1|CLKout_synthesized_var~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FFT1|CLKout_synthesized_var~q\,
	combout => \FFT1|CLKout_synthesized_var~0_combout\);

-- Location: FF_X57_Y1_N19
\FFT1|CLKout_synthesized_var\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \FFT1|CLKout_synthesized_var~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FFT1|CLKout_synthesized_var~q\);

-- Location: LCCOMB_X57_Y1_N8
\reg1|clkin\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg1|clkin~combout\ = LCELL((\EN~input_o\ & \FFT1|CLKout_synthesized_var~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \EN~input_o\,
	datad => \FFT1|CLKout_synthesized_var~q\,
	combout => \reg1|clkin~combout\);

-- Location: CLKCTRL_G17
\reg1|clkin~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reg1|clkin~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reg1|clkin~clkctrl_outclk\);

-- Location: IOIBUF_X115_Y29_N1
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X115_Y36_N1
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LCCOMB_X113_Y33_N12
\ufa1|and1|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|and1|S~0_combout\ = (\A[6]~input_o\ & \B[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[6]~input_o\,
	datad => \B[6]~input_o\,
	combout => \ufa1|and1|S~0_combout\);

-- Location: IOIBUF_X115_Y33_N8
\S[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S(0),
	o => \S[0]~input_o\);

-- Location: IOIBUF_X115_Y34_N15
\S[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S(1),
	o => \S[1]~input_o\);

-- Location: LCCOMB_X114_Y33_N26
\ufa1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|Mux4~0_combout\ = (\S[0]~input_o\ & !\S[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[0]~input_o\,
	datad => \S[1]~input_o\,
	combout => \ufa1|Mux4~0_combout\);

-- Location: LCCOMB_X57_Y1_N24
ENufa : cycloneive_lcell_comb
-- Equation(s):
-- \ENufa~combout\ = (\CLK~input_o\ & \EN~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CLK~input_o\,
	datad => \EN~input_o\,
	combout => \ENufa~combout\);

-- Location: LCCOMB_X114_Y37_N16
\ufa1|ENand\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|ENand~combout\ = (\ENufa~combout\ & ((\ufa1|Mux4~0_combout\) # (\ufa1|ENand~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ufa1|Mux4~0_combout\,
	datac => \ENufa~combout\,
	datad => \ufa1|ENand~combout\,
	combout => \ufa1|ENand~combout\);

-- Location: CLKCTRL_G9
\ufa1|ENand~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ufa1|ENand~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ufa1|ENand~clkctrl_outclk\);

-- Location: LCCOMB_X113_Y33_N4
\ufa1|and1|S[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|and1|S\(0) = (GLOBAL(\ufa1|ENand~clkctrl_outclk\) & (\ufa1|and1|S~0_combout\)) # (!GLOBAL(\ufa1|ENand~clkctrl_outclk\) & ((\ufa1|and1|S\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ufa1|and1|S~0_combout\,
	datac => \ufa1|and1|S\(0),
	datad => \ufa1|ENand~clkctrl_outclk\,
	combout => \ufa1|and1|S\(0));

-- Location: LCCOMB_X113_Y33_N26
\ufa1|adder|ha|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|adder|ha|S~0_combout\ = \A[6]~input_o\ $ (\B[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[6]~input_o\,
	datad => \B[6]~input_o\,
	combout => \ufa1|adder|ha|S~0_combout\);

-- Location: LCCOMB_X114_Y33_N10
\ufa1|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|Mux8~0_combout\ = (\S[0]~input_o\) # (\S[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[0]~input_o\,
	datad => \S[1]~input_o\,
	combout => \ufa1|Mux8~0_combout\);

-- Location: LCCOMB_X114_Y37_N10
\ufa1|ENsum\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|ENsum~combout\ = (\ENufa~combout\ & ((\ufa1|ENsum~combout\) # (!\ufa1|Mux8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ufa1|Mux8~0_combout\,
	datac => \ENufa~combout\,
	datad => \ufa1|ENsum~combout\,
	combout => \ufa1|ENsum~combout\);

-- Location: CLKCTRL_G7
\ufa1|ENsum~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ufa1|ENsum~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ufa1|ENsum~clkctrl_outclk\);

-- Location: LCCOMB_X114_Y33_N28
\ufa1|adder|ha|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|adder|ha|S~combout\ = (GLOBAL(\ufa1|ENsum~clkctrl_outclk\) & (\ufa1|adder|ha|S~0_combout\)) # (!GLOBAL(\ufa1|ENsum~clkctrl_outclk\) & ((\ufa1|adder|ha|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ufa1|adder|ha|S~0_combout\,
	datac => \ufa1|ENsum~clkctrl_outclk\,
	datad => \ufa1|adder|ha|S~combout\,
	combout => \ufa1|adder|ha|S~combout\);

-- Location: LCCOMB_X114_Y33_N4
\ufa1|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|Mux4~1_combout\ = (!\S[0]~input_o\ & \S[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[0]~input_o\,
	datad => \S[1]~input_o\,
	combout => \ufa1|Mux4~1_combout\);

-- Location: LCCOMB_X114_Y37_N12
\ufa1|ENsub\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|ENsub~combout\ = (\ENufa~combout\ & ((\ufa1|Mux4~1_combout\) # (\ufa1|ENsub~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ufa1|Mux4~1_combout\,
	datac => \ENufa~combout\,
	datad => \ufa1|ENsub~combout\,
	combout => \ufa1|ENsub~combout\);

-- Location: CLKCTRL_G5
\ufa1|ENsub~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ufa1|ENsub~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ufa1|ENsub~clkctrl_outclk\);

-- Location: LCCOMB_X114_Y33_N2
\ufa1|subtractor|hs|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|subtractor|hs|S~combout\ = (GLOBAL(\ufa1|ENsub~clkctrl_outclk\) & ((\ufa1|adder|ha|S~0_combout\))) # (!GLOBAL(\ufa1|ENsub~clkctrl_outclk\) & (\ufa1|subtractor|hs|S~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ufa1|subtractor|hs|S~combout\,
	datac => \ufa1|adder|ha|S~0_combout\,
	datad => \ufa1|ENsub~clkctrl_outclk\,
	combout => \ufa1|subtractor|hs|S~combout\);

-- Location: LCCOMB_X114_Y33_N18
\ufa1|mux1|m[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|mux1|m[7]~0_combout\ = (\S[0]~input_o\ & (((\S[1]~input_o\)))) # (!\S[0]~input_o\ & ((\S[1]~input_o\ & ((\ufa1|subtractor|hs|S~combout\))) # (!\S[1]~input_o\ & (\ufa1|adder|ha|S~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[0]~input_o\,
	datab => \ufa1|adder|ha|S~combout\,
	datac => \ufa1|subtractor|hs|S~combout\,
	datad => \S[1]~input_o\,
	combout => \ufa1|mux1|m[7]~0_combout\);

-- Location: LCCOMB_X113_Y33_N24
\ufa1|or1|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|or1|S~0_combout\ = (\A[6]~input_o\) # (\B[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[6]~input_o\,
	datad => \B[6]~input_o\,
	combout => \ufa1|or1|S~0_combout\);

-- Location: LCCOMB_X114_Y33_N20
\ufa1|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|Mux4~2_combout\ = (\S[0]~input_o\ & \S[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[0]~input_o\,
	datad => \S[1]~input_o\,
	combout => \ufa1|Mux4~2_combout\);

-- Location: LCCOMB_X114_Y37_N18
\ufa1|ENor\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|ENor~combout\ = (\ENufa~combout\ & ((\ufa1|Mux4~2_combout\) # (\ufa1|ENor~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ufa1|Mux4~2_combout\,
	datac => \ENufa~combout\,
	datad => \ufa1|ENor~combout\,
	combout => \ufa1|ENor~combout\);

-- Location: CLKCTRL_G8
\ufa1|ENor~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ufa1|ENor~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ufa1|ENor~clkctrl_outclk\);

-- Location: LCCOMB_X114_Y33_N0
\ufa1|or1|S[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|or1|S\(0) = (GLOBAL(\ufa1|ENor~clkctrl_outclk\) & (\ufa1|or1|S~0_combout\)) # (!GLOBAL(\ufa1|ENor~clkctrl_outclk\) & ((\ufa1|or1|S\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ufa1|or1|S~0_combout\,
	datab => \ufa1|or1|S\(0),
	datad => \ufa1|ENor~clkctrl_outclk\,
	combout => \ufa1|or1|S\(0));

-- Location: LCCOMB_X114_Y33_N8
\ufa1|mux1|m[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|mux1|m[7]~1_combout\ = (\ufa1|mux1|m[7]~0_combout\ & (((\ufa1|or1|S\(0)) # (!\S[0]~input_o\)))) # (!\ufa1|mux1|m[7]~0_combout\ & (\ufa1|and1|S\(0) & ((\S[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ufa1|and1|S\(0),
	datab => \ufa1|mux1|m[7]~0_combout\,
	datac => \ufa1|or1|S\(0),
	datad => \S[0]~input_o\,
	combout => \ufa1|mux1|m[7]~1_combout\);

-- Location: FF_X114_Y33_N1
\reg1|ff7|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reg1|clkin~clkctrl_outclk\,
	asdata => \ufa1|mux1|m[7]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|ff7|Q~q\);

-- Location: IOIBUF_X115_Y27_N1
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X115_Y27_N8
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LCCOMB_X110_Y32_N22
\ufa1|or1|S~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|or1|S~1_combout\ = (\B[5]~input_o\) # (\A[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[5]~input_o\,
	datad => \A[5]~input_o\,
	combout => \ufa1|or1|S~1_combout\);

-- Location: LCCOMB_X111_Y32_N8
\ufa1|or1|S[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|or1|S\(1) = (GLOBAL(\ufa1|ENor~clkctrl_outclk\) & (\ufa1|or1|S~1_combout\)) # (!GLOBAL(\ufa1|ENor~clkctrl_outclk\) & ((\ufa1|or1|S\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ufa1|or1|S~1_combout\,
	datac => \ufa1|or1|S\(1),
	datad => \ufa1|ENor~clkctrl_outclk\,
	combout => \ufa1|or1|S\(1));

-- Location: LCCOMB_X112_Y32_N26
\ufa1|and1|S~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|and1|S~1_combout\ = (\B[5]~input_o\ & \A[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[5]~input_o\,
	datad => \A[5]~input_o\,
	combout => \ufa1|and1|S~1_combout\);

-- Location: LCCOMB_X112_Y32_N10
\ufa1|and1|S[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|and1|S\(1) = (GLOBAL(\ufa1|ENand~clkctrl_outclk\) & ((\ufa1|and1|S~1_combout\))) # (!GLOBAL(\ufa1|ENand~clkctrl_outclk\) & (\ufa1|and1|S\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ufa1|and1|S\(1),
	datac => \ufa1|and1|S~1_combout\,
	datad => \ufa1|ENand~clkctrl_outclk\,
	combout => \ufa1|and1|S\(1));

-- Location: LCCOMB_X110_Y32_N12
\ufa1|adder|ha|Co\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|adder|ha|Co~combout\ = (GLOBAL(\ufa1|ENsum~clkctrl_outclk\) & (\ufa1|and1|S~0_combout\)) # (!GLOBAL(\ufa1|ENsum~clkctrl_outclk\) & ((\ufa1|adder|ha|Co~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ufa1|and1|S~0_combout\,
	datac => \ufa1|adder|ha|Co~combout\,
	datad => \ufa1|ENsum~clkctrl_outclk\,
	combout => \ufa1|adder|ha|Co~combout\);

-- Location: LCCOMB_X110_Y32_N20
\ufa1|adder|fa0|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|adder|fa0|S~0_combout\ = \A[5]~input_o\ $ (\B[5]~input_o\ $ (\ufa1|adder|ha|Co~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datac => \B[5]~input_o\,
	datad => \ufa1|adder|ha|Co~combout\,
	combout => \ufa1|adder|fa0|S~0_combout\);

-- Location: LCCOMB_X110_Y32_N6
\ufa1|adder|fa0|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|adder|fa0|S~combout\ = (GLOBAL(\ufa1|ENsum~clkctrl_outclk\) & ((\ufa1|adder|fa0|S~0_combout\))) # (!GLOBAL(\ufa1|ENsum~clkctrl_outclk\) & (\ufa1|adder|fa0|S~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ufa1|adder|fa0|S~combout\,
	datac => \ufa1|ENsum~clkctrl_outclk\,
	datad => \ufa1|adder|fa0|S~0_combout\,
	combout => \ufa1|adder|fa0|S~combout\);

-- Location: LCCOMB_X112_Y32_N14
\ufa1|mux1|m[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|mux1|m[6]~2_combout\ = (\S[0]~input_o\ & ((\ufa1|and1|S\(1)) # ((\S[1]~input_o\)))) # (!\S[0]~input_o\ & (((\ufa1|adder|fa0|S~combout\ & !\S[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[0]~input_o\,
	datab => \ufa1|and1|S\(1),
	datac => \ufa1|adder|fa0|S~combout\,
	datad => \S[1]~input_o\,
	combout => \ufa1|mux1|m[6]~2_combout\);

-- Location: LCCOMB_X113_Y32_N12
\ufa1|subtractor|hs|Te~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|subtractor|hs|Te~0_combout\ = (!\A[6]~input_o\ & \B[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[6]~input_o\,
	datad => \B[6]~input_o\,
	combout => \ufa1|subtractor|hs|Te~0_combout\);

-- Location: LCCOMB_X112_Y32_N24
\ufa1|subtractor|hs|Te\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|subtractor|hs|Te~combout\ = (GLOBAL(\ufa1|ENsub~clkctrl_outclk\) & (\ufa1|subtractor|hs|Te~0_combout\)) # (!GLOBAL(\ufa1|ENsub~clkctrl_outclk\) & ((\ufa1|subtractor|hs|Te~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ufa1|subtractor|hs|Te~0_combout\,
	datac => \ufa1|ENsub~clkctrl_outclk\,
	datad => \ufa1|subtractor|hs|Te~combout\,
	combout => \ufa1|subtractor|hs|Te~combout\);

-- Location: LCCOMB_X112_Y32_N16
\ufa1|subtractor|fs0|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|subtractor|fs0|S~0_combout\ = \A[5]~input_o\ $ (\B[5]~input_o\ $ (\ufa1|subtractor|hs|Te~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \B[5]~input_o\,
	datad => \ufa1|subtractor|hs|Te~combout\,
	combout => \ufa1|subtractor|fs0|S~0_combout\);

-- Location: LCCOMB_X112_Y32_N20
\ufa1|subtractor|fs0|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|subtractor|fs0|S~combout\ = (GLOBAL(\ufa1|ENsub~clkctrl_outclk\) & ((\ufa1|subtractor|fs0|S~0_combout\))) # (!GLOBAL(\ufa1|ENsub~clkctrl_outclk\) & (\ufa1|subtractor|fs0|S~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ufa1|subtractor|fs0|S~combout\,
	datac => \ufa1|ENsub~clkctrl_outclk\,
	datad => \ufa1|subtractor|fs0|S~0_combout\,
	combout => \ufa1|subtractor|fs0|S~combout\);

-- Location: LCCOMB_X112_Y32_N0
\ufa1|mux1|m[6]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|mux1|m[6]~3_combout\ = (\S[1]~input_o\ & ((\ufa1|mux1|m[6]~2_combout\ & (\ufa1|or1|S\(1))) # (!\ufa1|mux1|m[6]~2_combout\ & ((\ufa1|subtractor|fs0|S~combout\))))) # (!\S[1]~input_o\ & (((\ufa1|mux1|m[6]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ufa1|or1|S\(1),
	datab => \S[1]~input_o\,
	datac => \ufa1|mux1|m[6]~2_combout\,
	datad => \ufa1|subtractor|fs0|S~combout\,
	combout => \ufa1|mux1|m[6]~3_combout\);

-- Location: FF_X112_Y32_N17
\reg1|ff6|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reg1|clkin~clkctrl_outclk\,
	asdata => \ufa1|mux1|m[6]~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|ff6|Q~q\);

-- Location: IOIBUF_X115_Y32_N8
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X115_Y32_N1
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LCCOMB_X111_Y32_N22
\ufa1|or1|S~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|or1|S~2_combout\ = (\A[4]~input_o\) # (\B[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[4]~input_o\,
	datad => \B[4]~input_o\,
	combout => \ufa1|or1|S~2_combout\);

-- Location: LCCOMB_X111_Y32_N18
\ufa1|or1|S[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|or1|S\(2) = (GLOBAL(\ufa1|ENor~clkctrl_outclk\) & (\ufa1|or1|S~2_combout\)) # (!GLOBAL(\ufa1|ENor~clkctrl_outclk\) & ((\ufa1|or1|S\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ufa1|or1|S~2_combout\,
	datab => \ufa1|or1|S\(2),
	datad => \ufa1|ENor~clkctrl_outclk\,
	combout => \ufa1|or1|S\(2));

-- Location: LCCOMB_X111_Y32_N24
\ufa1|and1|S~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|and1|S~2_combout\ = (\A[4]~input_o\ & \B[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[4]~input_o\,
	datad => \B[4]~input_o\,
	combout => \ufa1|and1|S~2_combout\);

-- Location: LCCOMB_X111_Y32_N30
\ufa1|and1|S[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|and1|S\(2) = (GLOBAL(\ufa1|ENand~clkctrl_outclk\) & (\ufa1|and1|S~2_combout\)) # (!GLOBAL(\ufa1|ENand~clkctrl_outclk\) & ((\ufa1|and1|S\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ufa1|and1|S~2_combout\,
	datac => \ufa1|and1|S\(2),
	datad => \ufa1|ENand~clkctrl_outclk\,
	combout => \ufa1|and1|S\(2));

-- Location: LCCOMB_X112_Y32_N12
\ufa1|subtractor|fs0|Te~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|subtractor|fs0|Te~0_combout\ = (\B[5]~input_o\ & ((\ufa1|subtractor|hs|Te~combout\) # (!\A[5]~input_o\))) # (!\B[5]~input_o\ & (!\A[5]~input_o\ & \ufa1|subtractor|hs|Te~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[5]~input_o\,
	datac => \A[5]~input_o\,
	datad => \ufa1|subtractor|hs|Te~combout\,
	combout => \ufa1|subtractor|fs0|Te~0_combout\);

-- Location: LCCOMB_X112_Y32_N22
\ufa1|subtractor|fs0|Te\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|subtractor|fs0|Te~combout\ = (GLOBAL(\ufa1|ENsub~clkctrl_outclk\) & ((\ufa1|subtractor|fs0|Te~0_combout\))) # (!GLOBAL(\ufa1|ENsub~clkctrl_outclk\) & (\ufa1|subtractor|fs0|Te~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ufa1|subtractor|fs0|Te~combout\,
	datac => \ufa1|ENsub~clkctrl_outclk\,
	datad => \ufa1|subtractor|fs0|Te~0_combout\,
	combout => \ufa1|subtractor|fs0|Te~combout\);

-- Location: LCCOMB_X111_Y32_N0
\ufa1|subtractor|fs1|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|subtractor|fs1|S~0_combout\ = \B[4]~input_o\ $ (\A[4]~input_o\ $ (\ufa1|subtractor|fs0|Te~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \A[4]~input_o\,
	datad => \ufa1|subtractor|fs0|Te~combout\,
	combout => \ufa1|subtractor|fs1|S~0_combout\);

-- Location: LCCOMB_X111_Y32_N4
\ufa1|subtractor|fs1|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|subtractor|fs1|S~combout\ = (GLOBAL(\ufa1|ENsub~clkctrl_outclk\) & ((\ufa1|subtractor|fs1|S~0_combout\))) # (!GLOBAL(\ufa1|ENsub~clkctrl_outclk\) & (\ufa1|subtractor|fs1|S~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ufa1|subtractor|fs1|S~combout\,
	datac => \ufa1|ENsub~clkctrl_outclk\,
	datad => \ufa1|subtractor|fs1|S~0_combout\,
	combout => \ufa1|subtractor|fs1|S~combout\);

-- Location: LCCOMB_X110_Y32_N24
\ufa1|adder|fa0|Co~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|adder|fa0|Co~0_combout\ = (\A[5]~input_o\ & ((\B[5]~input_o\) # (\ufa1|adder|ha|Co~combout\))) # (!\A[5]~input_o\ & (\B[5]~input_o\ & \ufa1|adder|ha|Co~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datac => \B[5]~input_o\,
	datad => \ufa1|adder|ha|Co~combout\,
	combout => \ufa1|adder|fa0|Co~0_combout\);

-- Location: LCCOMB_X110_Y32_N26
\ufa1|adder|fa0|Co\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|adder|fa0|Co~combout\ = (GLOBAL(\ufa1|ENsum~clkctrl_outclk\) & ((\ufa1|adder|fa0|Co~0_combout\))) # (!GLOBAL(\ufa1|ENsum~clkctrl_outclk\) & (\ufa1|adder|fa0|Co~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ufa1|adder|fa0|Co~combout\,
	datac => \ufa1|ENsum~clkctrl_outclk\,
	datad => \ufa1|adder|fa0|Co~0_combout\,
	combout => \ufa1|adder|fa0|Co~combout\);

-- Location: LCCOMB_X110_Y32_N28
\ufa1|adder|fa1|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|adder|fa1|S~0_combout\ = \A[4]~input_o\ $ (\ufa1|adder|fa0|Co~combout\ $ (\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datac => \ufa1|adder|fa0|Co~combout\,
	datad => \B[4]~input_o\,
	combout => \ufa1|adder|fa1|S~0_combout\);

-- Location: LCCOMB_X110_Y32_N8
\ufa1|adder|fa1|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|adder|fa1|S~combout\ = (GLOBAL(\ufa1|ENsum~clkctrl_outclk\) & (\ufa1|adder|fa1|S~0_combout\)) # (!GLOBAL(\ufa1|ENsum~clkctrl_outclk\) & ((\ufa1|adder|fa1|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ufa1|adder|fa1|S~0_combout\,
	datac => \ufa1|adder|fa1|S~combout\,
	datad => \ufa1|ENsum~clkctrl_outclk\,
	combout => \ufa1|adder|fa1|S~combout\);

-- Location: LCCOMB_X111_Y32_N28
\ufa1|mux1|m[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|mux1|m[5]~4_combout\ = (\S[1]~input_o\ & ((\S[0]~input_o\) # ((\ufa1|subtractor|fs1|S~combout\)))) # (!\S[1]~input_o\ & (!\S[0]~input_o\ & ((\ufa1|adder|fa1|S~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[1]~input_o\,
	datab => \S[0]~input_o\,
	datac => \ufa1|subtractor|fs1|S~combout\,
	datad => \ufa1|adder|fa1|S~combout\,
	combout => \ufa1|mux1|m[5]~4_combout\);

-- Location: LCCOMB_X111_Y32_N26
\ufa1|mux1|m[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|mux1|m[5]~5_combout\ = (\S[0]~input_o\ & ((\ufa1|mux1|m[5]~4_combout\ & (\ufa1|or1|S\(2))) # (!\ufa1|mux1|m[5]~4_combout\ & ((\ufa1|and1|S\(2)))))) # (!\S[0]~input_o\ & (((\ufa1|mux1|m[5]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ufa1|or1|S\(2),
	datab => \S[0]~input_o\,
	datac => \ufa1|and1|S\(2),
	datad => \ufa1|mux1|m[5]~4_combout\,
	combout => \ufa1|mux1|m[5]~5_combout\);

-- Location: FF_X111_Y32_N1
\reg1|ff5|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reg1|clkin~clkctrl_outclk\,
	asdata => \ufa1|mux1|m[5]~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|ff5|Q~q\);

-- Location: IOIBUF_X115_Y30_N8
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X115_Y30_N1
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X111_Y32_N12
\ufa1|and1|S~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|and1|S~3_combout\ = (\A[3]~input_o\ & \B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datac => \B[3]~input_o\,
	combout => \ufa1|and1|S~3_combout\);

-- Location: LCCOMB_X111_Y32_N16
\ufa1|and1|S[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|and1|S\(3) = (GLOBAL(\ufa1|ENand~clkctrl_outclk\) & (\ufa1|and1|S~3_combout\)) # (!GLOBAL(\ufa1|ENand~clkctrl_outclk\) & ((\ufa1|and1|S\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ufa1|and1|S~3_combout\,
	datab => \ufa1|and1|S\(3),
	datad => \ufa1|ENand~clkctrl_outclk\,
	combout => \ufa1|and1|S\(3));

-- Location: LCCOMB_X110_Y32_N14
\ufa1|adder|fa1|Co~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|adder|fa1|Co~0_combout\ = (\A[4]~input_o\ & ((\ufa1|adder|fa0|Co~combout\) # (\B[4]~input_o\))) # (!\A[4]~input_o\ & (\ufa1|adder|fa0|Co~combout\ & \B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datac => \ufa1|adder|fa0|Co~combout\,
	datad => \B[4]~input_o\,
	combout => \ufa1|adder|fa1|Co~0_combout\);

-- Location: LCCOMB_X110_Y32_N16
\ufa1|adder|fa1|Co\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|adder|fa1|Co~combout\ = (GLOBAL(\ufa1|ENsum~clkctrl_outclk\) & ((\ufa1|adder|fa1|Co~0_combout\))) # (!GLOBAL(\ufa1|ENsum~clkctrl_outclk\) & (\ufa1|adder|fa1|Co~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ufa1|adder|fa1|Co~combout\,
	datac => \ufa1|adder|fa1|Co~0_combout\,
	datad => \ufa1|ENsum~clkctrl_outclk\,
	combout => \ufa1|adder|fa1|Co~combout\);

-- Location: LCCOMB_X110_Y32_N30
\ufa1|adder|fa2|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|adder|fa2|S~0_combout\ = \A[3]~input_o\ $ (\B[3]~input_o\ $ (\ufa1|adder|fa1|Co~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[3]~input_o\,
	datac => \B[3]~input_o\,
	datad => \ufa1|adder|fa1|Co~combout\,
	combout => \ufa1|adder|fa2|S~0_combout\);

-- Location: LCCOMB_X110_Y32_N18
\ufa1|adder|fa2|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|adder|fa2|S~combout\ = (GLOBAL(\ufa1|ENsum~clkctrl_outclk\) & (\ufa1|adder|fa2|S~0_combout\)) # (!GLOBAL(\ufa1|ENsum~clkctrl_outclk\) & ((\ufa1|adder|fa2|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ufa1|adder|fa2|S~0_combout\,
	datac => \ufa1|adder|fa2|S~combout\,
	datad => \ufa1|ENsum~clkctrl_outclk\,
	combout => \ufa1|adder|fa2|S~combout\);

-- Location: LCCOMB_X111_Y32_N20
\ufa1|mux1|m[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|mux1|m[4]~6_combout\ = (\S[1]~input_o\ & (\S[0]~input_o\)) # (!\S[1]~input_o\ & ((\S[0]~input_o\ & (\ufa1|and1|S\(3))) # (!\S[0]~input_o\ & ((\ufa1|adder|fa2|S~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[1]~input_o\,
	datab => \S[0]~input_o\,
	datac => \ufa1|and1|S\(3),
	datad => \ufa1|adder|fa2|S~combout\,
	combout => \ufa1|mux1|m[4]~6_combout\);

-- Location: LCCOMB_X111_Y32_N10
\ufa1|or1|S~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|or1|S~3_combout\ = (\A[3]~input_o\) # (\B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datac => \B[3]~input_o\,
	combout => \ufa1|or1|S~3_combout\);

-- Location: LCCOMB_X111_Y32_N6
\ufa1|or1|S[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|or1|S\(3) = (GLOBAL(\ufa1|ENor~clkctrl_outclk\) & (\ufa1|or1|S~3_combout\)) # (!GLOBAL(\ufa1|ENor~clkctrl_outclk\) & ((\ufa1|or1|S\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ufa1|or1|S~3_combout\,
	datac => \ufa1|or1|S\(3),
	datad => \ufa1|ENor~clkctrl_outclk\,
	combout => \ufa1|or1|S\(3));

-- Location: LCCOMB_X112_Y32_N18
\ufa1|subtractor|fs1|Te~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|subtractor|fs1|Te~0_combout\ = (\A[4]~input_o\ & (\ufa1|subtractor|fs0|Te~combout\ & \B[4]~input_o\)) # (!\A[4]~input_o\ & ((\ufa1|subtractor|fs0|Te~combout\) # (\B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[4]~input_o\,
	datac => \ufa1|subtractor|fs0|Te~combout\,
	datad => \B[4]~input_o\,
	combout => \ufa1|subtractor|fs1|Te~0_combout\);

-- Location: LCCOMB_X112_Y32_N8
\ufa1|subtractor|fs1|Te\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|subtractor|fs1|Te~combout\ = (GLOBAL(\ufa1|ENsub~clkctrl_outclk\) & ((\ufa1|subtractor|fs1|Te~0_combout\))) # (!GLOBAL(\ufa1|ENsub~clkctrl_outclk\) & (\ufa1|subtractor|fs1|Te~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ufa1|subtractor|fs1|Te~combout\,
	datac => \ufa1|ENsub~clkctrl_outclk\,
	datad => \ufa1|subtractor|fs1|Te~0_combout\,
	combout => \ufa1|subtractor|fs1|Te~combout\);

-- Location: LCCOMB_X112_Y32_N28
\ufa1|subtractor|fs2|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|subtractor|fs2|S~0_combout\ = \B[3]~input_o\ $ (\A[3]~input_o\ $ (\ufa1|subtractor|fs1|Te~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A[3]~input_o\,
	datac => \ufa1|subtractor|fs1|Te~combout\,
	combout => \ufa1|subtractor|fs2|S~0_combout\);

-- Location: LCCOMB_X112_Y32_N4
\ufa1|subtractor|fs2|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|subtractor|fs2|S~combout\ = (GLOBAL(\ufa1|ENsub~clkctrl_outclk\) & ((\ufa1|subtractor|fs2|S~0_combout\))) # (!GLOBAL(\ufa1|ENsub~clkctrl_outclk\) & (\ufa1|subtractor|fs2|S~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ufa1|subtractor|fs2|S~combout\,
	datac => \ufa1|ENsub~clkctrl_outclk\,
	datad => \ufa1|subtractor|fs2|S~0_combout\,
	combout => \ufa1|subtractor|fs2|S~combout\);

-- Location: LCCOMB_X111_Y32_N2
\ufa1|mux1|m[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|mux1|m[4]~7_combout\ = (\S[1]~input_o\ & ((\ufa1|mux1|m[4]~6_combout\ & (\ufa1|or1|S\(3))) # (!\ufa1|mux1|m[4]~6_combout\ & ((\ufa1|subtractor|fs2|S~combout\))))) # (!\S[1]~input_o\ & (\ufa1|mux1|m[4]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[1]~input_o\,
	datab => \ufa1|mux1|m[4]~6_combout\,
	datac => \ufa1|or1|S\(3),
	datad => \ufa1|subtractor|fs2|S~combout\,
	combout => \ufa1|mux1|m[4]~7_combout\);

-- Location: FF_X111_Y32_N15
\reg1|ff4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reg1|clkin~clkctrl_outclk\,
	asdata => \ufa1|mux1|m[4]~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|ff4|Q~q\);

-- Location: IOIBUF_X115_Y31_N8
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X115_Y31_N1
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X113_Y33_N18
\ufa1|and1|S~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|and1|S~4_combout\ = (\A[2]~input_o\ & \B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[2]~input_o\,
	datac => \B[2]~input_o\,
	combout => \ufa1|and1|S~4_combout\);

-- Location: LCCOMB_X113_Y33_N22
\ufa1|and1|S[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|and1|S\(4) = (GLOBAL(\ufa1|ENand~clkctrl_outclk\) & (\ufa1|and1|S~4_combout\)) # (!GLOBAL(\ufa1|ENand~clkctrl_outclk\) & ((\ufa1|and1|S\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ufa1|and1|S~4_combout\,
	datac => \ufa1|and1|S\(4),
	datad => \ufa1|ENand~clkctrl_outclk\,
	combout => \ufa1|and1|S\(4));

-- Location: LCCOMB_X110_Y32_N0
\ufa1|adder|fa2|Co~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|adder|fa2|Co~0_combout\ = (\A[3]~input_o\ & ((\B[3]~input_o\) # (\ufa1|adder|fa1|Co~combout\))) # (!\A[3]~input_o\ & (\B[3]~input_o\ & \ufa1|adder|fa1|Co~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[3]~input_o\,
	datac => \B[3]~input_o\,
	datad => \ufa1|adder|fa1|Co~combout\,
	combout => \ufa1|adder|fa2|Co~0_combout\);

-- Location: LCCOMB_X111_Y33_N0
\ufa1|adder|fa2|Co\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|adder|fa2|Co~combout\ = (GLOBAL(\ufa1|ENsum~clkctrl_outclk\) & ((\ufa1|adder|fa2|Co~0_combout\))) # (!GLOBAL(\ufa1|ENsum~clkctrl_outclk\) & (\ufa1|adder|fa2|Co~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ufa1|adder|fa2|Co~combout\,
	datac => \ufa1|adder|fa2|Co~0_combout\,
	datad => \ufa1|ENsum~clkctrl_outclk\,
	combout => \ufa1|adder|fa2|Co~combout\);

-- Location: LCCOMB_X111_Y33_N28
\ufa1|adder|fa3|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|adder|fa3|S~0_combout\ = \A[2]~input_o\ $ (\B[2]~input_o\ $ (\ufa1|adder|fa2|Co~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[2]~input_o\,
	datac => \B[2]~input_o\,
	datad => \ufa1|adder|fa2|Co~combout\,
	combout => \ufa1|adder|fa3|S~0_combout\);

-- Location: LCCOMB_X114_Y33_N22
\ufa1|adder|fa3|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|adder|fa3|S~combout\ = (GLOBAL(\ufa1|ENsum~clkctrl_outclk\) & ((\ufa1|adder|fa3|S~0_combout\))) # (!GLOBAL(\ufa1|ENsum~clkctrl_outclk\) & (\ufa1|adder|fa3|S~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ufa1|ENsum~clkctrl_outclk\,
	datab => \ufa1|adder|fa3|S~combout\,
	datad => \ufa1|adder|fa3|S~0_combout\,
	combout => \ufa1|adder|fa3|S~combout\);

-- Location: LCCOMB_X113_Y32_N2
\ufa1|subtractor|fs2|Te~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|subtractor|fs2|Te~0_combout\ = (\A[3]~input_o\ & (\B[3]~input_o\ & \ufa1|subtractor|fs1|Te~combout\)) # (!\A[3]~input_o\ & ((\B[3]~input_o\) # (\ufa1|subtractor|fs1|Te~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[3]~input_o\,
	datac => \B[3]~input_o\,
	datad => \ufa1|subtractor|fs1|Te~combout\,
	combout => \ufa1|subtractor|fs2|Te~0_combout\);

-- Location: LCCOMB_X113_Y32_N14
\ufa1|subtractor|fs2|Te\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|subtractor|fs2|Te~combout\ = (GLOBAL(\ufa1|ENsub~clkctrl_outclk\) & ((\ufa1|subtractor|fs2|Te~0_combout\))) # (!GLOBAL(\ufa1|ENsub~clkctrl_outclk\) & (\ufa1|subtractor|fs2|Te~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ufa1|subtractor|fs2|Te~combout\,
	datac => \ufa1|ENsub~clkctrl_outclk\,
	datad => \ufa1|subtractor|fs2|Te~0_combout\,
	combout => \ufa1|subtractor|fs2|Te~combout\);

-- Location: LCCOMB_X113_Y32_N18
\ufa1|subtractor|fs3|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|subtractor|fs3|S~0_combout\ = \A[2]~input_o\ $ (\ufa1|subtractor|fs2|Te~combout\ $ (\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[2]~input_o\,
	datac => \ufa1|subtractor|fs2|Te~combout\,
	datad => \B[2]~input_o\,
	combout => \ufa1|subtractor|fs3|S~0_combout\);

-- Location: LCCOMB_X113_Y32_N6
\ufa1|subtractor|fs3|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|subtractor|fs3|S~combout\ = (GLOBAL(\ufa1|ENsub~clkctrl_outclk\) & ((\ufa1|subtractor|fs3|S~0_combout\))) # (!GLOBAL(\ufa1|ENsub~clkctrl_outclk\) & (\ufa1|subtractor|fs3|S~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ufa1|ENsub~clkctrl_outclk\,
	datac => \ufa1|subtractor|fs3|S~combout\,
	datad => \ufa1|subtractor|fs3|S~0_combout\,
	combout => \ufa1|subtractor|fs3|S~combout\);

-- Location: LCCOMB_X114_Y33_N14
\ufa1|mux1|m[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|mux1|m[3]~8_combout\ = (\S[1]~input_o\ & (((\ufa1|subtractor|fs3|S~combout\) # (\S[0]~input_o\)))) # (!\S[1]~input_o\ & (\ufa1|adder|fa3|S~combout\ & ((!\S[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ufa1|adder|fa3|S~combout\,
	datab => \S[1]~input_o\,
	datac => \ufa1|subtractor|fs3|S~combout\,
	datad => \S[0]~input_o\,
	combout => \ufa1|mux1|m[3]~8_combout\);

-- Location: LCCOMB_X114_Y33_N24
\ufa1|or1|S~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|or1|S~4_combout\ = (\B[2]~input_o\) # (\A[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \A[2]~input_o\,
	combout => \ufa1|or1|S~4_combout\);

-- Location: LCCOMB_X114_Y33_N30
\ufa1|or1|S[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|or1|S\(4) = (GLOBAL(\ufa1|ENor~clkctrl_outclk\) & (\ufa1|or1|S~4_combout\)) # (!GLOBAL(\ufa1|ENor~clkctrl_outclk\) & ((\ufa1|or1|S\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ufa1|or1|S~4_combout\,
	datac => \ufa1|or1|S\(4),
	datad => \ufa1|ENor~clkctrl_outclk\,
	combout => \ufa1|or1|S\(4));

-- Location: LCCOMB_X114_Y33_N12
\ufa1|mux1|m[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|mux1|m[3]~9_combout\ = (\S[0]~input_o\ & ((\ufa1|mux1|m[3]~8_combout\ & ((\ufa1|or1|S\(4)))) # (!\ufa1|mux1|m[3]~8_combout\ & (\ufa1|and1|S\(4))))) # (!\S[0]~input_o\ & (((\ufa1|mux1|m[3]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[0]~input_o\,
	datab => \ufa1|and1|S\(4),
	datac => \ufa1|mux1|m[3]~8_combout\,
	datad => \ufa1|or1|S\(4),
	combout => \ufa1|mux1|m[3]~9_combout\);

-- Location: FF_X114_Y33_N23
\reg1|ff3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reg1|clkin~clkctrl_outclk\,
	asdata => \ufa1|mux1|m[3]~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|ff3|Q~q\);

-- Location: IOIBUF_X115_Y34_N22
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X115_Y35_N22
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X112_Y32_N30
\ufa1|or1|S~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|or1|S~5_combout\ = (\A[1]~input_o\) # (\B[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[1]~input_o\,
	datad => \B[1]~input_o\,
	combout => \ufa1|or1|S~5_combout\);

-- Location: LCCOMB_X113_Y32_N8
\ufa1|or1|S[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|or1|S\(5) = (GLOBAL(\ufa1|ENor~clkctrl_outclk\) & (\ufa1|or1|S~5_combout\)) # (!GLOBAL(\ufa1|ENor~clkctrl_outclk\) & ((\ufa1|or1|S\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ufa1|or1|S~5_combout\,
	datac => \ufa1|or1|S\(5),
	datad => \ufa1|ENor~clkctrl_outclk\,
	combout => \ufa1|or1|S\(5));

-- Location: LCCOMB_X113_Y32_N16
\ufa1|subtractor|fs3|Te~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|subtractor|fs3|Te~0_combout\ = (\A[2]~input_o\ & (\ufa1|subtractor|fs2|Te~combout\ & \B[2]~input_o\)) # (!\A[2]~input_o\ & ((\ufa1|subtractor|fs2|Te~combout\) # (\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[2]~input_o\,
	datac => \ufa1|subtractor|fs2|Te~combout\,
	datad => \B[2]~input_o\,
	combout => \ufa1|subtractor|fs3|Te~0_combout\);

-- Location: LCCOMB_X113_Y32_N24
\ufa1|subtractor|fs3|Te\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|subtractor|fs3|Te~combout\ = (GLOBAL(\ufa1|ENsub~clkctrl_outclk\) & ((\ufa1|subtractor|fs3|Te~0_combout\))) # (!GLOBAL(\ufa1|ENsub~clkctrl_outclk\) & (\ufa1|subtractor|fs3|Te~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ufa1|ENsub~clkctrl_outclk\,
	datab => \ufa1|subtractor|fs3|Te~combout\,
	datad => \ufa1|subtractor|fs3|Te~0_combout\,
	combout => \ufa1|subtractor|fs3|Te~combout\);

-- Location: LCCOMB_X113_Y32_N28
\ufa1|subtractor|fs4|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|subtractor|fs4|S~0_combout\ = \A[1]~input_o\ $ (\B[1]~input_o\ $ (\ufa1|subtractor|fs3|Te~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[1]~input_o\,
	datac => \B[1]~input_o\,
	datad => \ufa1|subtractor|fs3|Te~combout\,
	combout => \ufa1|subtractor|fs4|S~0_combout\);

-- Location: LCCOMB_X113_Y32_N0
\ufa1|subtractor|fs4|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|subtractor|fs4|S~combout\ = (GLOBAL(\ufa1|ENsub~clkctrl_outclk\) & ((\ufa1|subtractor|fs4|S~0_combout\))) # (!GLOBAL(\ufa1|ENsub~clkctrl_outclk\) & (\ufa1|subtractor|fs4|S~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ufa1|subtractor|fs4|S~combout\,
	datac => \ufa1|ENsub~clkctrl_outclk\,
	datad => \ufa1|subtractor|fs4|S~0_combout\,
	combout => \ufa1|subtractor|fs4|S~combout\);

-- Location: LCCOMB_X113_Y32_N22
\ufa1|and1|S~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|and1|S~5_combout\ = (\B[1]~input_o\ & \A[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[1]~input_o\,
	datad => \A[1]~input_o\,
	combout => \ufa1|and1|S~5_combout\);

-- Location: LCCOMB_X113_Y32_N30
\ufa1|and1|S[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|and1|S\(5) = (GLOBAL(\ufa1|ENand~clkctrl_outclk\) & (\ufa1|and1|S~5_combout\)) # (!GLOBAL(\ufa1|ENand~clkctrl_outclk\) & ((\ufa1|and1|S\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ufa1|and1|S~5_combout\,
	datac => \ufa1|and1|S\(5),
	datad => \ufa1|ENand~clkctrl_outclk\,
	combout => \ufa1|and1|S\(5));

-- Location: LCCOMB_X111_Y33_N12
\ufa1|adder|fa3|Co~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|adder|fa3|Co~0_combout\ = (\A[2]~input_o\ & ((\B[2]~input_o\) # (\ufa1|adder|fa2|Co~combout\))) # (!\A[2]~input_o\ & (\B[2]~input_o\ & \ufa1|adder|fa2|Co~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[2]~input_o\,
	datac => \B[2]~input_o\,
	datad => \ufa1|adder|fa2|Co~combout\,
	combout => \ufa1|adder|fa3|Co~0_combout\);

-- Location: LCCOMB_X111_Y33_N2
\ufa1|adder|fa3|Co\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|adder|fa3|Co~combout\ = (GLOBAL(\ufa1|ENsum~clkctrl_outclk\) & (\ufa1|adder|fa3|Co~0_combout\)) # (!GLOBAL(\ufa1|ENsum~clkctrl_outclk\) & ((\ufa1|adder|fa3|Co~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ufa1|adder|fa3|Co~0_combout\,
	datab => \ufa1|adder|fa3|Co~combout\,
	datad => \ufa1|ENsum~clkctrl_outclk\,
	combout => \ufa1|adder|fa3|Co~combout\);

-- Location: LCCOMB_X111_Y33_N30
\ufa1|adder|fa4|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|adder|fa4|S~0_combout\ = \B[1]~input_o\ $ (\A[1]~input_o\ $ (\ufa1|adder|fa3|Co~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \A[1]~input_o\,
	datad => \ufa1|adder|fa3|Co~combout\,
	combout => \ufa1|adder|fa4|S~0_combout\);

-- Location: LCCOMB_X112_Y32_N6
\ufa1|adder|fa4|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|adder|fa4|S~combout\ = (GLOBAL(\ufa1|ENsum~clkctrl_outclk\) & ((\ufa1|adder|fa4|S~0_combout\))) # (!GLOBAL(\ufa1|ENsum~clkctrl_outclk\) & (\ufa1|adder|fa4|S~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ufa1|adder|fa4|S~combout\,
	datac => \ufa1|adder|fa4|S~0_combout\,
	datad => \ufa1|ENsum~clkctrl_outclk\,
	combout => \ufa1|adder|fa4|S~combout\);

-- Location: LCCOMB_X113_Y32_N26
\ufa1|mux1|m[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|mux1|m[2]~10_combout\ = (\S[0]~input_o\ & ((\ufa1|and1|S\(5)) # ((\S[1]~input_o\)))) # (!\S[0]~input_o\ & (((!\S[1]~input_o\ & \ufa1|adder|fa4|S~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[0]~input_o\,
	datab => \ufa1|and1|S\(5),
	datac => \S[1]~input_o\,
	datad => \ufa1|adder|fa4|S~combout\,
	combout => \ufa1|mux1|m[2]~10_combout\);

-- Location: LCCOMB_X113_Y32_N20
\ufa1|mux1|m[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|mux1|m[2]~11_combout\ = (\S[1]~input_o\ & ((\ufa1|mux1|m[2]~10_combout\ & (\ufa1|or1|S\(5))) # (!\ufa1|mux1|m[2]~10_combout\ & ((\ufa1|subtractor|fs4|S~combout\))))) # (!\S[1]~input_o\ & (((\ufa1|mux1|m[2]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[1]~input_o\,
	datab => \ufa1|or1|S\(5),
	datac => \ufa1|subtractor|fs4|S~combout\,
	datad => \ufa1|mux1|m[2]~10_combout\,
	combout => \ufa1|mux1|m[2]~11_combout\);

-- Location: FF_X113_Y32_N25
\reg1|ff2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reg1|clkin~clkctrl_outclk\,
	asdata => \ufa1|mux1|m[2]~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|ff2|Q~q\);

-- Location: IOIBUF_X115_Y35_N15
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X115_Y36_N15
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LCCOMB_X109_Y32_N10
\ufa1|and1|S~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|and1|S~6_combout\ = (\A[0]~input_o\ & \B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \ufa1|and1|S~6_combout\);

-- Location: LCCOMB_X109_Y32_N12
\ufa1|and1|S[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|and1|S\(6) = (GLOBAL(\ufa1|ENand~clkctrl_outclk\) & (\ufa1|and1|S~6_combout\)) # (!GLOBAL(\ufa1|ENand~clkctrl_outclk\) & ((\ufa1|and1|S\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ufa1|and1|S~6_combout\,
	datac => \ufa1|and1|S\(6),
	datad => \ufa1|ENand~clkctrl_outclk\,
	combout => \ufa1|and1|S\(6));

-- Location: LCCOMB_X109_Y32_N30
\ufa1|or1|S~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|or1|S~6_combout\ = (\A[0]~input_o\) # (\B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \ufa1|or1|S~6_combout\);

-- Location: LCCOMB_X109_Y32_N28
\ufa1|or1|S[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|or1|S\(6) = (GLOBAL(\ufa1|ENor~clkctrl_outclk\) & ((\ufa1|or1|S~6_combout\))) # (!GLOBAL(\ufa1|ENor~clkctrl_outclk\) & (\ufa1|or1|S\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ufa1|or1|S\(6),
	datac => \ufa1|or1|S~6_combout\,
	datad => \ufa1|ENor~clkctrl_outclk\,
	combout => \ufa1|or1|S\(6));

-- Location: LCCOMB_X111_Y33_N10
\ufa1|adder|fa4|Co~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|adder|fa4|Co~0_combout\ = (\B[1]~input_o\ & ((\A[1]~input_o\) # (\ufa1|adder|fa3|Co~combout\))) # (!\B[1]~input_o\ & (\A[1]~input_o\ & \ufa1|adder|fa3|Co~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[1]~input_o\,
	datad => \ufa1|adder|fa3|Co~combout\,
	combout => \ufa1|adder|fa4|Co~0_combout\);

-- Location: LCCOMB_X110_Y33_N28
\ufa1|adder|fa4|Co\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|adder|fa4|Co~combout\ = (GLOBAL(\ufa1|ENsum~clkctrl_outclk\) & ((\ufa1|adder|fa4|Co~0_combout\))) # (!GLOBAL(\ufa1|ENsum~clkctrl_outclk\) & (\ufa1|adder|fa4|Co~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ufa1|adder|fa4|Co~combout\,
	datac => \ufa1|adder|fa4|Co~0_combout\,
	datad => \ufa1|ENsum~clkctrl_outclk\,
	combout => \ufa1|adder|fa4|Co~combout\);

-- Location: LCCOMB_X109_Y32_N16
\ufa1|adder|fa5|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|adder|fa5|S~0_combout\ = \B[0]~input_o\ $ (\A[0]~input_o\ $ (\ufa1|adder|fa4|Co~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \A[0]~input_o\,
	datad => \ufa1|adder|fa4|Co~combout\,
	combout => \ufa1|adder|fa5|S~0_combout\);

-- Location: LCCOMB_X109_Y32_N26
\ufa1|adder|fa5|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|adder|fa5|S~combout\ = (GLOBAL(\ufa1|ENsum~clkctrl_outclk\) & ((\ufa1|adder|fa5|S~0_combout\))) # (!GLOBAL(\ufa1|ENsum~clkctrl_outclk\) & (\ufa1|adder|fa5|S~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ufa1|adder|fa5|S~combout\,
	datac => \ufa1|ENsum~clkctrl_outclk\,
	datad => \ufa1|adder|fa5|S~0_combout\,
	combout => \ufa1|adder|fa5|S~combout\);

-- Location: LCCOMB_X114_Y32_N24
\ufa1|subtractor|fs4|Te~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|subtractor|fs4|Te~0_combout\ = (\B[1]~input_o\ & ((\ufa1|subtractor|fs3|Te~combout\) # (!\A[1]~input_o\))) # (!\B[1]~input_o\ & (!\A[1]~input_o\ & \ufa1|subtractor|fs3|Te~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[1]~input_o\,
	datad => \ufa1|subtractor|fs3|Te~combout\,
	combout => \ufa1|subtractor|fs4|Te~0_combout\);

-- Location: LCCOMB_X114_Y32_N6
\ufa1|subtractor|fs4|Te\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|subtractor|fs4|Te~combout\ = (GLOBAL(\ufa1|ENsub~clkctrl_outclk\) & ((\ufa1|subtractor|fs4|Te~0_combout\))) # (!GLOBAL(\ufa1|ENsub~clkctrl_outclk\) & (\ufa1|subtractor|fs4|Te~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ufa1|subtractor|fs4|Te~combout\,
	datac => \ufa1|ENsub~clkctrl_outclk\,
	datad => \ufa1|subtractor|fs4|Te~0_combout\,
	combout => \ufa1|subtractor|fs4|Te~combout\);

-- Location: LCCOMB_X114_Y32_N28
\ufa1|subtractor|fs5|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|subtractor|fs5|S~0_combout\ = \B[0]~input_o\ $ (\A[0]~input_o\ $ (\ufa1|subtractor|fs4|Te~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \A[0]~input_o\,
	datad => \ufa1|subtractor|fs4|Te~combout\,
	combout => \ufa1|subtractor|fs5|S~0_combout\);

-- Location: LCCOMB_X114_Y32_N26
\ufa1|subtractor|fs5|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|subtractor|fs5|S~combout\ = (GLOBAL(\ufa1|ENsub~clkctrl_outclk\) & ((\ufa1|subtractor|fs5|S~0_combout\))) # (!GLOBAL(\ufa1|ENsub~clkctrl_outclk\) & (\ufa1|subtractor|fs5|S~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ufa1|subtractor|fs5|S~combout\,
	datac => \ufa1|ENsub~clkctrl_outclk\,
	datad => \ufa1|subtractor|fs5|S~0_combout\,
	combout => \ufa1|subtractor|fs5|S~combout\);

-- Location: LCCOMB_X109_Y32_N22
\ufa1|mux1|m[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|mux1|m[1]~12_combout\ = (\S[0]~input_o\ & (((\S[1]~input_o\)))) # (!\S[0]~input_o\ & ((\S[1]~input_o\ & ((\ufa1|subtractor|fs5|S~combout\))) # (!\S[1]~input_o\ & (\ufa1|adder|fa5|S~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ufa1|adder|fa5|S~combout\,
	datab => \S[0]~input_o\,
	datac => \ufa1|subtractor|fs5|S~combout\,
	datad => \S[1]~input_o\,
	combout => \ufa1|mux1|m[1]~12_combout\);

-- Location: LCCOMB_X109_Y32_N8
\ufa1|mux1|m[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|mux1|m[1]~13_combout\ = (\ufa1|mux1|m[1]~12_combout\ & (((\ufa1|or1|S\(6)) # (!\S[0]~input_o\)))) # (!\ufa1|mux1|m[1]~12_combout\ & (\ufa1|and1|S\(6) & ((\S[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ufa1|and1|S\(6),
	datab => \ufa1|or1|S\(6),
	datac => \ufa1|mux1|m[1]~12_combout\,
	datad => \S[0]~input_o\,
	combout => \ufa1|mux1|m[1]~13_combout\);

-- Location: LCCOMB_X109_Y32_N24
\reg1|ff1|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg1|ff1|Q~feeder_combout\ = \ufa1|mux1|m[1]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ufa1|mux1|m[1]~13_combout\,
	combout => \reg1|ff1|Q~feeder_combout\);

-- Location: FF_X109_Y32_N25
\reg1|ff1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reg1|clkin~clkctrl_outclk\,
	d => \reg1|ff1|Q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|ff1|Q~q\);

-- Location: LCCOMB_X114_Y32_N30
\ufa1|subtractor|fs5|Te~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|subtractor|fs5|Te~0_combout\ = (\B[0]~input_o\ & ((\ufa1|subtractor|fs4|Te~combout\) # (!\A[0]~input_o\))) # (!\B[0]~input_o\ & (!\A[0]~input_o\ & \ufa1|subtractor|fs4|Te~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \A[0]~input_o\,
	datad => \ufa1|subtractor|fs4|Te~combout\,
	combout => \ufa1|subtractor|fs5|Te~0_combout\);

-- Location: LCCOMB_X114_Y32_N8
\ufa1|subtractor|fs5|Te\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|subtractor|fs5|Te~combout\ = (GLOBAL(\ufa1|ENsub~clkctrl_outclk\) & ((\ufa1|subtractor|fs5|Te~0_combout\))) # (!GLOBAL(\ufa1|ENsub~clkctrl_outclk\) & (\ufa1|subtractor|fs5|Te~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ufa1|subtractor|fs5|Te~combout\,
	datac => \ufa1|subtractor|fs5|Te~0_combout\,
	datad => \ufa1|ENsub~clkctrl_outclk\,
	combout => \ufa1|subtractor|fs5|Te~combout\);

-- Location: LCCOMB_X110_Y33_N12
\ufa1|adder|fa5|Co~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|adder|fa5|Co~0_combout\ = (\A[0]~input_o\ & ((\B[0]~input_o\) # (\ufa1|adder|fa4|Co~combout\))) # (!\A[0]~input_o\ & (\B[0]~input_o\ & \ufa1|adder|fa4|Co~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[0]~input_o\,
	datac => \B[0]~input_o\,
	datad => \ufa1|adder|fa4|Co~combout\,
	combout => \ufa1|adder|fa5|Co~0_combout\);

-- Location: LCCOMB_X110_Y33_N14
\ufa1|adder|fa5|Co\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|adder|fa5|Co~combout\ = (GLOBAL(\ufa1|ENsum~clkctrl_outclk\) & (\ufa1|adder|fa5|Co~0_combout\)) # (!GLOBAL(\ufa1|ENsum~clkctrl_outclk\) & ((\ufa1|adder|fa5|Co~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ufa1|adder|fa5|Co~0_combout\,
	datac => \ufa1|adder|fa5|Co~combout\,
	datad => \ufa1|ENsum~clkctrl_outclk\,
	combout => \ufa1|adder|fa5|Co~combout\);

-- Location: LCCOMB_X114_Y33_N6
\ufa1|mux1|m[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ufa1|mux1|m[0]~14_combout\ = (!\S[0]~input_o\ & ((\S[1]~input_o\ & (\ufa1|subtractor|fs5|Te~combout\)) # (!\S[1]~input_o\ & ((\ufa1|adder|fa5|Co~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[0]~input_o\,
	datab => \S[1]~input_o\,
	datac => \ufa1|subtractor|fs5|Te~combout\,
	datad => \ufa1|adder|fa5|Co~combout\,
	combout => \ufa1|mux1|m[0]~14_combout\);

-- Location: LCCOMB_X114_Y33_N16
\reg1|ff0|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg1|ff0|Q~feeder_combout\ = \ufa1|mux1|m[0]~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ufa1|mux1|m[0]~14_combout\,
	combout => \reg1|ff0|Q~feeder_combout\);

-- Location: FF_X114_Y33_N17
\reg1|ff0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reg1|clkin~clkctrl_outclk\,
	d => \reg1|ff0|Q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|ff0|Q~q\);

ww_result(7) <= \result[7]~output_o\;

ww_result(6) <= \result[6]~output_o\;

ww_result(5) <= \result[5]~output_o\;

ww_result(4) <= \result[4]~output_o\;

ww_result(3) <= \result[3]~output_o\;

ww_result(2) <= \result[2]~output_o\;

ww_result(1) <= \result[1]~output_o\;

ww_result(0) <= \result[0]~output_o\;

ww_teste <= \teste~output_o\;
END structure;


