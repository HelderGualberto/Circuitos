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

-- DATE "10/18/2014 21:09:44"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hello IS
    PORT (
	sw : IN std_logic_vector(0 TO 14);
	s : IN std_logic_vector(0 TO 2);
	dOut : BUFFER std_logic_vector(0 TO 34)
	);
END hello;

-- Design Ports Information
-- dOut[34]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[33]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[32]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[31]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[30]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[29]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[28]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[27]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[26]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[25]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[24]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[23]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[22]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[21]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[20]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[19]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[18]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[17]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[16]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[15]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[14]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[13]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[12]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[11]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[10]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[9]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[8]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[7]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[6]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[5]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[4]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[3]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[2]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[1]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[0]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_J28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[4]	=>  Location: PIN_J27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[7]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[13]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[10]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[6]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[3]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[12]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[9]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[5]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[8]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[14]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[11]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[2]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[1]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[0]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF hello IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_sw : std_logic_vector(0 TO 14);
SIGNAL ww_s : std_logic_vector(0 TO 2);
SIGNAL ww_dOut : std_logic_vector(0 TO 34);
SIGNAL \dOut[34]~output_o\ : std_logic;
SIGNAL \dOut[33]~output_o\ : std_logic;
SIGNAL \dOut[32]~output_o\ : std_logic;
SIGNAL \dOut[31]~output_o\ : std_logic;
SIGNAL \dOut[30]~output_o\ : std_logic;
SIGNAL \dOut[29]~output_o\ : std_logic;
SIGNAL \dOut[28]~output_o\ : std_logic;
SIGNAL \dOut[27]~output_o\ : std_logic;
SIGNAL \dOut[26]~output_o\ : std_logic;
SIGNAL \dOut[25]~output_o\ : std_logic;
SIGNAL \dOut[24]~output_o\ : std_logic;
SIGNAL \dOut[23]~output_o\ : std_logic;
SIGNAL \dOut[22]~output_o\ : std_logic;
SIGNAL \dOut[21]~output_o\ : std_logic;
SIGNAL \dOut[20]~output_o\ : std_logic;
SIGNAL \dOut[19]~output_o\ : std_logic;
SIGNAL \dOut[18]~output_o\ : std_logic;
SIGNAL \dOut[17]~output_o\ : std_logic;
SIGNAL \dOut[16]~output_o\ : std_logic;
SIGNAL \dOut[15]~output_o\ : std_logic;
SIGNAL \dOut[14]~output_o\ : std_logic;
SIGNAL \dOut[13]~output_o\ : std_logic;
SIGNAL \dOut[12]~output_o\ : std_logic;
SIGNAL \dOut[11]~output_o\ : std_logic;
SIGNAL \dOut[10]~output_o\ : std_logic;
SIGNAL \dOut[9]~output_o\ : std_logic;
SIGNAL \dOut[8]~output_o\ : std_logic;
SIGNAL \dOut[7]~output_o\ : std_logic;
SIGNAL \dOut[6]~output_o\ : std_logic;
SIGNAL \dOut[5]~output_o\ : std_logic;
SIGNAL \dOut[4]~output_o\ : std_logic;
SIGNAL \dOut[3]~output_o\ : std_logic;
SIGNAL \dOut[2]~output_o\ : std_logic;
SIGNAL \dOut[1]~output_o\ : std_logic;
SIGNAL \dOut[0]~output_o\ : std_logic;
SIGNAL \s[0]~input_o\ : std_logic;
SIGNAL \s[2]~input_o\ : std_logic;
SIGNAL \s[1]~input_o\ : std_logic;
SIGNAL \s4[1]~0_combout\ : std_logic;
SIGNAL \s4[2]~1_combout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \sw[4]~input_o\ : std_logic;
SIGNAL \sw[10]~input_o\ : std_logic;
SIGNAL \sw[13]~input_o\ : std_logic;
SIGNAL \sw[7]~input_o\ : std_logic;
SIGNAL \dec4|mux0|m[1]~4_combout\ : std_logic;
SIGNAL \dec4|mux0|m[1]~5_combout\ : std_logic;
SIGNAL \dec4|mux0|m[1]~10_combout\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \sw[12]~input_o\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \dec4|mux0|m[0]~6_combout\ : std_logic;
SIGNAL \sw[6]~input_o\ : std_logic;
SIGNAL \sw[9]~input_o\ : std_logic;
SIGNAL \dec4|mux0|m[0]~7_combout\ : std_logic;
SIGNAL \dec4|h0|seg[6]~7_combout\ : std_logic;
SIGNAL \dec4|h0|seg[6]~4_combout\ : std_logic;
SIGNAL \sw[11]~input_o\ : std_logic;
SIGNAL \sw[5]~input_o\ : std_logic;
SIGNAL \sw[14]~input_o\ : std_logic;
SIGNAL \sw[8]~input_o\ : std_logic;
SIGNAL \dec4|mux0|m[2]~8_combout\ : std_logic;
SIGNAL \dec4|mux0|m[2]~9_combout\ : std_logic;
SIGNAL \dec4|h0|seg[3]~8_combout\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \dec3|h0|seg[3]~4_combout\ : std_logic;
SIGNAL \dec4|h0|seg[3]~9_combout\ : std_logic;
SIGNAL \dec4|mux0|m[2]~11_combout\ : std_logic;
SIGNAL \dec4|h0|seg[2]~5_combout\ : std_logic;
SIGNAL \dec4|h0|seg[0]~6_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \s4[2]~2_combout\ : std_logic;
SIGNAL \comb~2_combout\ : std_logic;
SIGNAL \dec3|mux0|m[0]~6_combout\ : std_logic;
SIGNAL \dec3|mux0|m[0]~7_combout\ : std_logic;
SIGNAL \dec3|h0|seg[6]~8_combout\ : std_logic;
SIGNAL \dec3|mux0|m[1]~4_combout\ : std_logic;
SIGNAL \dec3|mux0|m[1]~5_combout\ : std_logic;
SIGNAL \dec3|mux0|m[1]~10_combout\ : std_logic;
SIGNAL \dec3|h0|seg[6]~5_combout\ : std_logic;
SIGNAL \dec3|mux0|m[2]~8_combout\ : std_logic;
SIGNAL \dec3|mux0|m[2]~9_combout\ : std_logic;
SIGNAL \dec3|h0|seg[3]~9_combout\ : std_logic;
SIGNAL \dec3|h0|seg[3]~10_combout\ : std_logic;
SIGNAL \dec3|mux0|m[2]~11_combout\ : std_logic;
SIGNAL \dec3|h0|seg[2]~6_combout\ : std_logic;
SIGNAL \dec3|h0|seg[0]~7_combout\ : std_logic;
SIGNAL \comb~5_combout\ : std_logic;
SIGNAL \comb~6_combout\ : std_logic;
SIGNAL \comb~3_combout\ : std_logic;
SIGNAL \comb~4_combout\ : std_logic;
SIGNAL \dec2|mux0|m[1]~5_combout\ : std_logic;
SIGNAL \dec2|mux0|m[1]~6_combout\ : std_logic;
SIGNAL \dec2|h0|seg[6]~8_combout\ : std_logic;
SIGNAL \dec2|mux0|m[0]~2_combout\ : std_logic;
SIGNAL \dec2|mux0|m[0]~3_combout\ : std_logic;
SIGNAL \dec2|mux0|m[0]~4_combout\ : std_logic;
SIGNAL \dec2|h0|seg[6]~4_combout\ : std_logic;
SIGNAL \dec2|mux0|m[2]~7_combout\ : std_logic;
SIGNAL \dec2|mux0|m[2]~8_combout\ : std_logic;
SIGNAL \dec2|mux0|m[2]~9_combout\ : std_logic;
SIGNAL \dec2|h0|seg[3]~9_combout\ : std_logic;
SIGNAL \dec2|h0|seg[3]~10_combout\ : std_logic;
SIGNAL \dec2|h0|seg[3]~11_combout\ : std_logic;
SIGNAL \dec2|h0|seg[3]~5_combout\ : std_logic;
SIGNAL \dec2|h0|seg[2]~6_combout\ : std_logic;
SIGNAL \dec2|h0|seg[0]~7_combout\ : std_logic;
SIGNAL \comb~9_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \comb~8_combout\ : std_logic;
SIGNAL \comb~7_combout\ : std_logic;
SIGNAL \dec1|mux0|m[0]~6_combout\ : std_logic;
SIGNAL \dec1|mux0|m[0]~7_combout\ : std_logic;
SIGNAL \dec1|h0|seg[6]~7_combout\ : std_logic;
SIGNAL \dec1|mux0|m[1]~4_combout\ : std_logic;
SIGNAL \dec1|mux0|m[1]~5_combout\ : std_logic;
SIGNAL \dec1|mux0|m[1]~10_combout\ : std_logic;
SIGNAL \dec1|h0|seg[6]~4_combout\ : std_logic;
SIGNAL \dec1|mux0|m[2]~8_combout\ : std_logic;
SIGNAL \dec1|mux0|m[2]~9_combout\ : std_logic;
SIGNAL \dec1|h0|seg[3]~8_combout\ : std_logic;
SIGNAL \dec1|h0|seg[3]~9_combout\ : std_logic;
SIGNAL \dec1|mux0|m[2]~11_combout\ : std_logic;
SIGNAL \dec1|h0|seg[2]~5_combout\ : std_logic;
SIGNAL \dec1|h0|seg[0]~6_combout\ : std_logic;
SIGNAL \comb~12_combout\ : std_logic;
SIGNAL \comb~13_combout\ : std_logic;
SIGNAL \comb~10_combout\ : std_logic;
SIGNAL \comb~11_combout\ : std_logic;
SIGNAL \dec0|mux0|m[1]~4_combout\ : std_logic;
SIGNAL \dec0|mux0|m[1]~5_combout\ : std_logic;
SIGNAL \dec0|mux0|m[1]~10_combout\ : std_logic;
SIGNAL \dec0|mux0|m[0]~6_combout\ : std_logic;
SIGNAL \dec0|mux0|m[0]~7_combout\ : std_logic;
SIGNAL \dec0|h0|seg[6]~7_combout\ : std_logic;
SIGNAL \dec0|h0|seg[6]~4_combout\ : std_logic;
SIGNAL \dec0|mux0|m[2]~8_combout\ : std_logic;
SIGNAL \dec0|mux0|m[2]~9_combout\ : std_logic;
SIGNAL \dec0|h0|seg[3]~8_combout\ : std_logic;
SIGNAL \dec0|h0|seg[3]~9_combout\ : std_logic;
SIGNAL \dec0|mux0|m[2]~11_combout\ : std_logic;
SIGNAL \dec0|h0|seg[2]~5_combout\ : std_logic;
SIGNAL \dec0|h0|seg[0]~6_combout\ : std_logic;
SIGNAL s2 : std_logic_vector(0 TO 2);
SIGNAL s0 : std_logic_vector(0 TO 2);
SIGNAL s1 : std_logic_vector(0 TO 2);
SIGNAL s3 : std_logic_vector(0 TO 2);
SIGNAL s4 : std_logic_vector(0 TO 2);

BEGIN

ww_sw <= sw;
ww_s <= s;
dOut <= ww_dOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X40_Y73_N9
\dOut[34]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec4|h0|seg[6]~4_combout\,
	devoe => ww_devoe,
	o => \dOut[34]~output_o\);

-- Location: IOOBUF_X31_Y73_N2
\dOut[33]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec4|h0|seg[6]~7_combout\,
	devoe => ww_devoe,
	o => \dOut[33]~output_o\);

-- Location: IOOBUF_X33_Y73_N2
\dOut[32]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec4|h0|seg[6]~7_combout\,
	devoe => ww_devoe,
	o => \dOut[32]~output_o\);

-- Location: IOOBUF_X47_Y73_N2
\dOut[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec4|h0|seg[3]~9_combout\,
	devoe => ww_devoe,
	o => \dOut[31]~output_o\);

-- Location: IOOBUF_X38_Y73_N2
\dOut[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec4|h0|seg[2]~5_combout\,
	devoe => ww_devoe,
	o => \dOut[30]~output_o\);

-- Location: IOOBUF_X40_Y73_N2
\dOut[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec4|h0|seg[2]~5_combout\,
	devoe => ww_devoe,
	o => \dOut[29]~output_o\);

-- Location: IOOBUF_X38_Y73_N9
\dOut[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec4|h0|seg[0]~6_combout\,
	devoe => ww_devoe,
	o => \dOut[28]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\dOut[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec3|h0|seg[6]~5_combout\,
	devoe => ww_devoe,
	o => \dOut[27]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\dOut[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec3|h0|seg[6]~8_combout\,
	devoe => ww_devoe,
	o => \dOut[26]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\dOut[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec3|h0|seg[6]~8_combout\,
	devoe => ww_devoe,
	o => \dOut[25]~output_o\);

-- Location: IOOBUF_X58_Y73_N23
\dOut[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec3|h0|seg[3]~10_combout\,
	devoe => ww_devoe,
	o => \dOut[24]~output_o\);

-- Location: IOOBUF_X38_Y73_N16
\dOut[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec3|h0|seg[2]~6_combout\,
	devoe => ww_devoe,
	o => \dOut[23]~output_o\);

-- Location: IOOBUF_X38_Y73_N23
\dOut[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec3|h0|seg[2]~6_combout\,
	devoe => ww_devoe,
	o => \dOut[22]~output_o\);

-- Location: IOOBUF_X47_Y73_N16
\dOut[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec3|h0|seg[0]~7_combout\,
	devoe => ww_devoe,
	o => \dOut[21]~output_o\);

-- Location: IOOBUF_X52_Y73_N9
\dOut[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec2|h0|seg[6]~4_combout\,
	devoe => ww_devoe,
	o => \dOut[20]~output_o\);

-- Location: IOOBUF_X33_Y73_N9
\dOut[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec2|mux0|m[0]~4_combout\,
	devoe => ww_devoe,
	o => \dOut[19]~output_o\);

-- Location: IOOBUF_X18_Y73_N16
\dOut[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec2|mux0|m[0]~4_combout\,
	devoe => ww_devoe,
	o => \dOut[18]~output_o\);

-- Location: IOOBUF_X58_Y73_N16
\dOut[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec2|h0|seg[3]~5_combout\,
	devoe => ww_devoe,
	o => \dOut[17]~output_o\);

-- Location: IOOBUF_X60_Y73_N9
\dOut[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec2|h0|seg[2]~6_combout\,
	devoe => ww_devoe,
	o => \dOut[16]~output_o\);

-- Location: IOOBUF_X60_Y73_N2
\dOut[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec2|h0|seg[2]~6_combout\,
	devoe => ww_devoe,
	o => \dOut[15]~output_o\);

-- Location: IOOBUF_X0_Y44_N2
\dOut[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec2|h0|seg[0]~7_combout\,
	devoe => ww_devoe,
	o => \dOut[14]~output_o\);

-- Location: IOOBUF_X0_Y46_N16
\dOut[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec1|h0|seg[6]~4_combout\,
	devoe => ww_devoe,
	o => \dOut[13]~output_o\);

-- Location: IOOBUF_X52_Y0_N2
\dOut[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec1|h0|seg[6]~7_combout\,
	devoe => ww_devoe,
	o => \dOut[12]~output_o\);

-- Location: IOOBUF_X54_Y0_N16
\dOut[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec1|h0|seg[6]~7_combout\,
	devoe => ww_devoe,
	o => \dOut[11]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\dOut[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec1|h0|seg[3]~9_combout\,
	devoe => ww_devoe,
	o => \dOut[10]~output_o\);

-- Location: IOOBUF_X35_Y73_N16
\dOut[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec1|h0|seg[2]~5_combout\,
	devoe => ww_devoe,
	o => \dOut[9]~output_o\);

-- Location: IOOBUF_X31_Y73_N9
\dOut[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec1|h0|seg[2]~5_combout\,
	devoe => ww_devoe,
	o => \dOut[8]~output_o\);

-- Location: IOOBUF_X42_Y73_N2
\dOut[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec1|h0|seg[0]~6_combout\,
	devoe => ww_devoe,
	o => \dOut[7]~output_o\);

-- Location: IOOBUF_X49_Y73_N16
\dOut[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec0|h0|seg[6]~4_combout\,
	devoe => ww_devoe,
	o => \dOut[6]~output_o\);

-- Location: IOOBUF_X52_Y0_N23
\dOut[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec0|h0|seg[6]~7_combout\,
	devoe => ww_devoe,
	o => \dOut[5]~output_o\);

-- Location: IOOBUF_X47_Y0_N2
\dOut[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec0|h0|seg[6]~7_combout\,
	devoe => ww_devoe,
	o => \dOut[4]~output_o\);

-- Location: IOOBUF_X49_Y0_N23
\dOut[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec0|h0|seg[3]~9_combout\,
	devoe => ww_devoe,
	o => \dOut[3]~output_o\);

-- Location: IOOBUF_X49_Y0_N16
\dOut[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec0|h0|seg[2]~5_combout\,
	devoe => ww_devoe,
	o => \dOut[2]~output_o\);

-- Location: IOOBUF_X47_Y0_N9
\dOut[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec0|h0|seg[2]~5_combout\,
	devoe => ww_devoe,
	o => \dOut[1]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\dOut[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec0|h0|seg[0]~6_combout\,
	devoe => ww_devoe,
	o => \dOut[0]~output_o\);

-- Location: IOIBUF_X45_Y73_N1
\s[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s(0),
	o => \s[0]~input_o\);

-- Location: IOIBUF_X45_Y0_N15
\s[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s(2),
	o => \s[2]~input_o\);

-- Location: IOIBUF_X54_Y73_N8
\s[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s(1),
	o => \s[1]~input_o\);

-- Location: LCCOMB_X49_Y42_N12
\s4[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s4[1]~0_combout\ = (\s[0]~input_o\) # (\s[2]~input_o\ $ (!\s[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s[0]~input_o\,
	datab => \s[2]~input_o\,
	datac => \s[1]~input_o\,
	combout => \s4[1]~0_combout\);

-- Location: LCCOMB_X49_Y42_N6
\s4[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \s4[2]~1_combout\ = ((!\s[2]~input_o\ & !\s[1]~input_o\)) # (!\s[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s[0]~input_o\,
	datab => \s[2]~input_o\,
	datac => \s[1]~input_o\,
	combout => \s4[2]~1_combout\);

-- Location: LCCOMB_X49_Y42_N28
\s4[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- s4(1) = (\s4[1]~0_combout\ & ((\s4[2]~1_combout\) # (s4(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s4[1]~0_combout\,
	datac => \s4[2]~1_combout\,
	datad => s4(1),
	combout => s4(1));

-- Location: LCCOMB_X49_Y42_N24
\comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = (\s[0]~input_o\ & (!\s[2]~input_o\ & !\s[1]~input_o\)) # (!\s[0]~input_o\ & (\s[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s[0]~input_o\,
	datab => \s[2]~input_o\,
	datac => \s[1]~input_o\,
	combout => \comb~0_combout\);

-- Location: LCCOMB_X49_Y42_N18
\Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!\s[2]~input_o\ & !\s[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s[2]~input_o\,
	datad => \s[0]~input_o\,
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X48_Y42_N16
\s4[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- s4(2) = (!\comb~0_combout\ & ((\Equal2~0_combout\) # (s4(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb~0_combout\,
	datac => \Equal2~0_combout\,
	datad => s4(2),
	combout => s4(2));

-- Location: IOIBUF_X115_Y37_N8
\sw[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(1),
	o => \sw[1]~input_o\);

-- Location: IOIBUF_X115_Y37_N1
\sw[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(4),
	o => \sw[4]~input_o\);

-- Location: IOIBUF_X52_Y0_N15
\sw[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(10),
	o => \sw[10]~input_o\);

-- Location: IOIBUF_X54_Y73_N1
\sw[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(13),
	o => \sw[13]~input_o\);

-- Location: IOIBUF_X0_Y44_N8
\sw[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(7),
	o => \sw[7]~input_o\);

-- Location: LCCOMB_X50_Y41_N16
\dec4|mux0|m[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec4|mux0|m[1]~4_combout\ = (s4(2) & (((s4(1))))) # (!s4(2) & ((s4(1) & ((\sw[7]~input_o\))) # (!s4(1) & (\sw[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s4(2),
	datab => \sw[13]~input_o\,
	datac => s4(1),
	datad => \sw[7]~input_o\,
	combout => \dec4|mux0|m[1]~4_combout\);

-- Location: LCCOMB_X50_Y41_N2
\dec4|mux0|m[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec4|mux0|m[1]~5_combout\ = (s4(2) & ((\dec4|mux0|m[1]~4_combout\ & ((\sw[10]~input_o\))) # (!\dec4|mux0|m[1]~4_combout\ & (\sw[4]~input_o\)))) # (!s4(2) & (((\dec4|mux0|m[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[4]~input_o\,
	datab => \sw[10]~input_o\,
	datac => s4(2),
	datad => \dec4|mux0|m[1]~4_combout\,
	combout => \dec4|mux0|m[1]~5_combout\);

-- Location: LCCOMB_X49_Y41_N12
\dec4|mux0|m[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec4|mux0|m[1]~10_combout\ = (s4(1) & (((\dec4|mux0|m[1]~5_combout\)))) # (!s4(1) & ((s4(2) & ((\dec4|mux0|m[1]~5_combout\))) # (!s4(2) & (\sw[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s4(1),
	datab => s4(2),
	datac => \sw[1]~input_o\,
	datad => \dec4|mux0|m[1]~5_combout\,
	combout => \dec4|mux0|m[1]~10_combout\);

-- Location: IOIBUF_X52_Y73_N22
\sw[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(0),
	o => \sw[0]~input_o\);

-- Location: IOIBUF_X45_Y73_N8
\sw[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(12),
	o => \sw[12]~input_o\);

-- Location: IOIBUF_X52_Y73_N15
\sw[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(3),
	o => \sw[3]~input_o\);

-- Location: LCCOMB_X49_Y41_N24
\dec4|mux0|m[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec4|mux0|m[0]~6_combout\ = (s4(2) & (((s4(1)) # (\sw[3]~input_o\)))) # (!s4(2) & (\sw[12]~input_o\ & (!s4(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[12]~input_o\,
	datab => s4(2),
	datac => s4(1),
	datad => \sw[3]~input_o\,
	combout => \dec4|mux0|m[0]~6_combout\);

-- Location: IOIBUF_X49_Y73_N22
\sw[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(6),
	o => \sw[6]~input_o\);

-- Location: IOIBUF_X52_Y73_N1
\sw[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(9),
	o => \sw[9]~input_o\);

-- Location: LCCOMB_X49_Y41_N18
\dec4|mux0|m[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec4|mux0|m[0]~7_combout\ = (s4(1) & ((\dec4|mux0|m[0]~6_combout\ & ((\sw[9]~input_o\))) # (!\dec4|mux0|m[0]~6_combout\ & (\sw[6]~input_o\)))) # (!s4(1) & (\dec4|mux0|m[0]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s4(1),
	datab => \dec4|mux0|m[0]~6_combout\,
	datac => \sw[6]~input_o\,
	datad => \sw[9]~input_o\,
	combout => \dec4|mux0|m[0]~7_combout\);

-- Location: LCCOMB_X49_Y41_N6
\dec4|h0|seg[6]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec4|h0|seg[6]~7_combout\ = (s4(2) & (((\dec4|mux0|m[0]~7_combout\)))) # (!s4(2) & ((s4(1) & ((\dec4|mux0|m[0]~7_combout\))) # (!s4(1) & (\sw[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => s4(2),
	datac => s4(1),
	datad => \dec4|mux0|m[0]~7_combout\,
	combout => \dec4|h0|seg[6]~7_combout\);

-- Location: LCCOMB_X41_Y70_N0
\dec4|h0|seg[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec4|h0|seg[6]~4_combout\ = (\dec4|mux0|m[1]~10_combout\) # (\dec4|h0|seg[6]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dec4|mux0|m[1]~10_combout\,
	datad => \dec4|h0|seg[6]~7_combout\,
	combout => \dec4|h0|seg[6]~4_combout\);

-- Location: IOIBUF_X0_Y42_N1
\sw[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(11),
	o => \sw[11]~input_o\);

-- Location: IOIBUF_X42_Y73_N8
\sw[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(5),
	o => \sw[5]~input_o\);

-- Location: IOIBUF_X0_Y43_N15
\sw[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(14),
	o => \sw[14]~input_o\);

-- Location: IOIBUF_X0_Y42_N8
\sw[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(8),
	o => \sw[8]~input_o\);

-- Location: LCCOMB_X50_Y41_N4
\dec4|mux0|m[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec4|mux0|m[2]~8_combout\ = (s4(1) & (((\sw[8]~input_o\) # (s4(2))))) # (!s4(1) & (\sw[14]~input_o\ & ((!s4(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s4(1),
	datab => \sw[14]~input_o\,
	datac => \sw[8]~input_o\,
	datad => s4(2),
	combout => \dec4|mux0|m[2]~8_combout\);

-- Location: LCCOMB_X50_Y41_N6
\dec4|mux0|m[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec4|mux0|m[2]~9_combout\ = (\dec4|mux0|m[2]~8_combout\ & ((\sw[11]~input_o\) # ((!s4(2))))) # (!\dec4|mux0|m[2]~8_combout\ & (((\sw[5]~input_o\ & s4(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[11]~input_o\,
	datab => \sw[5]~input_o\,
	datac => \dec4|mux0|m[2]~8_combout\,
	datad => s4(2),
	combout => \dec4|mux0|m[2]~9_combout\);

-- Location: LCCOMB_X49_Y41_N28
\dec4|h0|seg[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec4|h0|seg[3]~8_combout\ = (\dec4|mux0|m[0]~7_combout\) # ((!\dec4|mux0|m[1]~5_combout\ & !\dec4|mux0|m[2]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec4|mux0|m[1]~5_combout\,
	datab => \dec4|mux0|m[0]~7_combout\,
	datad => \dec4|mux0|m[2]~9_combout\,
	combout => \dec4|h0|seg[3]~8_combout\);

-- Location: IOIBUF_X58_Y73_N8
\sw[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(2),
	o => \sw[2]~input_o\);

-- Location: LCCOMB_X50_Y44_N16
\dec3|h0|seg[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec3|h0|seg[3]~4_combout\ = (\sw[0]~input_o\) # ((!\sw[2]~input_o\ & !\sw[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[2]~input_o\,
	datac => \sw[0]~input_o\,
	datad => \sw[1]~input_o\,
	combout => \dec3|h0|seg[3]~4_combout\);

-- Location: LCCOMB_X49_Y41_N22
\dec4|h0|seg[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec4|h0|seg[3]~9_combout\ = (s4(1) & (\dec4|h0|seg[3]~8_combout\)) # (!s4(1) & ((s4(2) & (\dec4|h0|seg[3]~8_combout\)) # (!s4(2) & ((\dec3|h0|seg[3]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s4(1),
	datab => \dec4|h0|seg[3]~8_combout\,
	datac => s4(2),
	datad => \dec3|h0|seg[3]~4_combout\,
	combout => \dec4|h0|seg[3]~9_combout\);

-- Location: LCCOMB_X49_Y41_N0
\dec4|mux0|m[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec4|mux0|m[2]~11_combout\ = (s4(2) & (\dec4|mux0|m[2]~9_combout\)) # (!s4(2) & ((s4(1) & (\dec4|mux0|m[2]~9_combout\)) # (!s4(1) & ((\sw[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec4|mux0|m[2]~9_combout\,
	datab => s4(2),
	datac => s4(1),
	datad => \sw[2]~input_o\,
	combout => \dec4|mux0|m[2]~11_combout\);

-- Location: LCCOMB_X41_Y70_N2
\dec4|h0|seg[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec4|h0|seg[2]~5_combout\ = (\dec4|h0|seg[6]~7_combout\) # (\dec4|mux0|m[1]~10_combout\ $ (\dec4|mux0|m[2]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dec4|mux0|m[1]~10_combout\,
	datac => \dec4|mux0|m[2]~11_combout\,
	datad => \dec4|h0|seg[6]~7_combout\,
	combout => \dec4|h0|seg[2]~5_combout\);

-- Location: LCCOMB_X41_Y70_N4
\dec4|h0|seg[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec4|h0|seg[0]~6_combout\ = (\dec4|h0|seg[6]~7_combout\) # (!\dec4|mux0|m[2]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dec4|mux0|m[2]~11_combout\,
	datad => \dec4|h0|seg[6]~7_combout\,
	combout => \dec4|h0|seg[0]~6_combout\);

-- Location: LCCOMB_X49_Y42_N10
\Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (\s[2]~input_o\ & !\s[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s[2]~input_o\,
	datad => \s[0]~input_o\,
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X49_Y42_N0
\comb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = (!\s[2]~input_o\ & ((!\s[1]~input_o\) # (!\s[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s[0]~input_o\,
	datab => \s[2]~input_o\,
	datac => \s[1]~input_o\,
	combout => \comb~1_combout\);

-- Location: LCCOMB_X50_Y43_N16
\s3[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- s3(2) = (!\comb~1_combout\ & ((\Equal3~0_combout\) # (s3(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~0_combout\,
	datab => \comb~1_combout\,
	datad => s3(2),
	combout => s3(2));

-- Location: LCCOMB_X49_Y42_N4
\s4[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \s4[2]~2_combout\ = (!\s[0]~input_o\ & \s[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s[0]~input_o\,
	datac => \s[1]~input_o\,
	combout => \s4[2]~2_combout\);

-- Location: LCCOMB_X49_Y42_N14
\comb~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~2_combout\ = (\s[1]~input_o\) # ((\s[0]~input_o\ & \s[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s[0]~input_o\,
	datab => \s[2]~input_o\,
	datac => \s[1]~input_o\,
	combout => \comb~2_combout\);

-- Location: LCCOMB_X49_Y44_N0
\s3[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- s3(1) = (!\s4[2]~2_combout\ & ((s3(1)) # (!\comb~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s4[2]~2_combout\,
	datac => \comb~2_combout\,
	datad => s3(1),
	combout => s3(1));

-- Location: LCCOMB_X49_Y41_N20
\dec3|mux0|m[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec3|mux0|m[0]~6_combout\ = (s3(2) & ((s3(1)) # ((\sw[3]~input_o\)))) # (!s3(2) & (!s3(1) & (\sw[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s3(2),
	datab => s3(1),
	datac => \sw[12]~input_o\,
	datad => \sw[3]~input_o\,
	combout => \dec3|mux0|m[0]~6_combout\);

-- Location: LCCOMB_X49_Y41_N14
\dec3|mux0|m[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec3|mux0|m[0]~7_combout\ = (s3(1) & ((\dec3|mux0|m[0]~6_combout\ & (\sw[9]~input_o\)) # (!\dec3|mux0|m[0]~6_combout\ & ((\sw[6]~input_o\))))) # (!s3(1) & (((\dec3|mux0|m[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[9]~input_o\,
	datab => s3(1),
	datac => \sw[6]~input_o\,
	datad => \dec3|mux0|m[0]~6_combout\,
	combout => \dec3|mux0|m[0]~7_combout\);

-- Location: LCCOMB_X49_Y41_N10
\dec3|h0|seg[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec3|h0|seg[6]~8_combout\ = (s3(2) & (\dec3|mux0|m[0]~7_combout\)) # (!s3(2) & ((s3(1) & (\dec3|mux0|m[0]~7_combout\)) # (!s3(1) & ((\sw[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s3(2),
	datab => \dec3|mux0|m[0]~7_combout\,
	datac => s3(1),
	datad => \sw[0]~input_o\,
	combout => \dec3|h0|seg[6]~8_combout\);

-- Location: LCCOMB_X50_Y41_N24
\dec3|mux0|m[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec3|mux0|m[1]~4_combout\ = (s3(1) & ((s3(2)) # ((\sw[7]~input_o\)))) # (!s3(1) & (!s3(2) & (\sw[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s3(1),
	datab => s3(2),
	datac => \sw[13]~input_o\,
	datad => \sw[7]~input_o\,
	combout => \dec3|mux0|m[1]~4_combout\);

-- Location: LCCOMB_X50_Y41_N26
\dec3|mux0|m[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec3|mux0|m[1]~5_combout\ = (\dec3|mux0|m[1]~4_combout\ & (((\sw[10]~input_o\) # (!s3(2))))) # (!\dec3|mux0|m[1]~4_combout\ & (\sw[4]~input_o\ & (s3(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[4]~input_o\,
	datab => \dec3|mux0|m[1]~4_combout\,
	datac => s3(2),
	datad => \sw[10]~input_o\,
	combout => \dec3|mux0|m[1]~5_combout\);

-- Location: LCCOMB_X50_Y41_N0
\dec3|mux0|m[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec3|mux0|m[1]~10_combout\ = (s3(2) & (\dec3|mux0|m[1]~5_combout\)) # (!s3(2) & ((s3(1) & (\dec3|mux0|m[1]~5_combout\)) # (!s3(1) & ((\sw[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec3|mux0|m[1]~5_combout\,
	datab => s3(2),
	datac => \sw[1]~input_o\,
	datad => s3(1),
	combout => \dec3|mux0|m[1]~10_combout\);

-- Location: LCCOMB_X50_Y45_N8
\dec3|h0|seg[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec3|h0|seg[6]~5_combout\ = (\dec3|h0|seg[6]~8_combout\) # (\dec3|mux0|m[1]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec3|h0|seg[6]~8_combout\,
	datac => \dec3|mux0|m[1]~10_combout\,
	combout => \dec3|h0|seg[6]~5_combout\);

-- Location: LCCOMB_X50_Y41_N12
\dec3|mux0|m[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec3|mux0|m[2]~8_combout\ = (s3(1) & ((s3(2)) # ((\sw[8]~input_o\)))) # (!s3(1) & (!s3(2) & ((\sw[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s3(1),
	datab => s3(2),
	datac => \sw[8]~input_o\,
	datad => \sw[14]~input_o\,
	combout => \dec3|mux0|m[2]~8_combout\);

-- Location: LCCOMB_X50_Y41_N22
\dec3|mux0|m[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec3|mux0|m[2]~9_combout\ = (s3(2) & ((\dec3|mux0|m[2]~8_combout\ & (\sw[11]~input_o\)) # (!\dec3|mux0|m[2]~8_combout\ & ((\sw[5]~input_o\))))) # (!s3(2) & (((\dec3|mux0|m[2]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[11]~input_o\,
	datab => \sw[5]~input_o\,
	datac => s3(2),
	datad => \dec3|mux0|m[2]~8_combout\,
	combout => \dec3|mux0|m[2]~9_combout\);

-- Location: LCCOMB_X50_Y41_N28
\dec3|h0|seg[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec3|h0|seg[3]~9_combout\ = (\dec3|mux0|m[0]~7_combout\) # ((!\dec3|mux0|m[1]~5_combout\ & !\dec3|mux0|m[2]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec3|mux0|m[0]~7_combout\,
	datac => \dec3|mux0|m[1]~5_combout\,
	datad => \dec3|mux0|m[2]~9_combout\,
	combout => \dec3|h0|seg[3]~9_combout\);

-- Location: LCCOMB_X50_Y41_N14
\dec3|h0|seg[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec3|h0|seg[3]~10_combout\ = (s3(1) & (\dec3|h0|seg[3]~9_combout\)) # (!s3(1) & ((s3(2) & (\dec3|h0|seg[3]~9_combout\)) # (!s3(2) & ((\dec3|h0|seg[3]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s3(1),
	datab => \dec3|h0|seg[3]~9_combout\,
	datac => s3(2),
	datad => \dec3|h0|seg[3]~4_combout\,
	combout => \dec3|h0|seg[3]~10_combout\);

-- Location: LCCOMB_X50_Y45_N6
\dec3|mux0|m[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec3|mux0|m[2]~11_combout\ = (s3(1) & (((\dec3|mux0|m[2]~9_combout\)))) # (!s3(1) & ((s3(2) & ((\dec3|mux0|m[2]~9_combout\))) # (!s3(2) & (\sw[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s3(1),
	datab => s3(2),
	datac => \sw[2]~input_o\,
	datad => \dec3|mux0|m[2]~9_combout\,
	combout => \dec3|mux0|m[2]~11_combout\);

-- Location: LCCOMB_X50_Y45_N10
\dec3|h0|seg[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec3|h0|seg[2]~6_combout\ = (\dec3|h0|seg[6]~8_combout\) # (\dec3|mux0|m[1]~10_combout\ $ (\dec3|mux0|m[2]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec3|h0|seg[6]~8_combout\,
	datac => \dec3|mux0|m[1]~10_combout\,
	datad => \dec3|mux0|m[2]~11_combout\,
	combout => \dec3|h0|seg[2]~6_combout\);

-- Location: LCCOMB_X50_Y45_N4
\dec3|h0|seg[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec3|h0|seg[0]~7_combout\ = (\dec3|h0|seg[6]~8_combout\) # (!\dec3|mux0|m[2]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec3|h0|seg[6]~8_combout\,
	datad => \dec3|mux0|m[2]~11_combout\,
	combout => \dec3|h0|seg[0]~7_combout\);

-- Location: LCCOMB_X49_Y42_N20
\comb~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~5_combout\ = (\s[0]~input_o\ & (!\s[2]~input_o\ & !\s[1]~input_o\)) # (!\s[0]~input_o\ & (\s[2]~input_o\ & \s[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s[0]~input_o\,
	datab => \s[2]~input_o\,
	datac => \s[1]~input_o\,
	combout => \comb~5_combout\);

-- Location: LCCOMB_X49_Y42_N22
\comb~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~6_combout\ = (!\s[0]~input_o\ & ((!\s[1]~input_o\) # (!\s[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s[0]~input_o\,
	datab => \s[2]~input_o\,
	datac => \s[1]~input_o\,
	combout => \comb~6_combout\);

-- Location: LCCOMB_X49_Y43_N16
\s2[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- s2(1) = (!\comb~5_combout\ & ((\comb~6_combout\) # (s2(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb~5_combout\,
	datac => \comb~6_combout\,
	datad => s2(1),
	combout => s2(1));

-- Location: LCCOMB_X49_Y42_N8
\comb~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~3_combout\ = (!\s[0]~input_o\ & ((\s[2]~input_o\) # (!\s[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s[0]~input_o\,
	datab => \s[2]~input_o\,
	datac => \s[1]~input_o\,
	combout => \comb~3_combout\);

-- Location: LCCOMB_X49_Y42_N2
\comb~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~4_combout\ = (!\s[2]~input_o\ & (\s[0]~input_o\ $ (\s[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s[0]~input_o\,
	datab => \s[2]~input_o\,
	datac => \s[1]~input_o\,
	combout => \comb~4_combout\);

-- Location: LCCOMB_X50_Y42_N16
\s2[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- s2(2) = (!\comb~3_combout\ & ((\comb~4_combout\) # (s2(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~3_combout\,
	datac => \comb~4_combout\,
	datad => s2(2),
	combout => s2(2));

-- Location: LCCOMB_X50_Y44_N4
\dec2|mux0|m[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec2|mux0|m[1]~5_combout\ = (s2(1) & (s2(2))) # (!s2(1) & ((s2(2) & ((\sw[4]~input_o\))) # (!s2(2) & (\sw[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s2(1),
	datab => s2(2),
	datac => \sw[13]~input_o\,
	datad => \sw[4]~input_o\,
	combout => \dec2|mux0|m[1]~5_combout\);

-- Location: LCCOMB_X50_Y44_N6
\dec2|mux0|m[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec2|mux0|m[1]~6_combout\ = (s2(1) & ((\dec2|mux0|m[1]~5_combout\ & ((\sw[10]~input_o\))) # (!\dec2|mux0|m[1]~5_combout\ & (\sw[7]~input_o\)))) # (!s2(1) & (((\dec2|mux0|m[1]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s2(1),
	datab => \sw[7]~input_o\,
	datac => \dec2|mux0|m[1]~5_combout\,
	datad => \sw[10]~input_o\,
	combout => \dec2|mux0|m[1]~6_combout\);

-- Location: LCCOMB_X50_Y44_N12
\dec2|h0|seg[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec2|h0|seg[6]~8_combout\ = (s2(1) & (((\dec2|mux0|m[1]~6_combout\)))) # (!s2(1) & ((s2(2) & ((\dec2|mux0|m[1]~6_combout\))) # (!s2(2) & (\sw[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s2(1),
	datab => \sw[1]~input_o\,
	datac => s2(2),
	datad => \dec2|mux0|m[1]~6_combout\,
	combout => \dec2|h0|seg[6]~8_combout\);

-- Location: LCCOMB_X49_Y41_N16
\dec2|mux0|m[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec2|mux0|m[0]~2_combout\ = (s2(2) & (((s2(1))))) # (!s2(2) & ((s2(1) & ((\sw[6]~input_o\))) # (!s2(1) & (\sw[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[12]~input_o\,
	datab => s2(2),
	datac => \sw[6]~input_o\,
	datad => s2(1),
	combout => \dec2|mux0|m[0]~2_combout\);

-- Location: LCCOMB_X49_Y41_N2
\dec2|mux0|m[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec2|mux0|m[0]~3_combout\ = (\dec2|mux0|m[0]~2_combout\ & ((\sw[9]~input_o\) # ((!s2(2))))) # (!\dec2|mux0|m[0]~2_combout\ & (((s2(2) & \sw[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[9]~input_o\,
	datab => \dec2|mux0|m[0]~2_combout\,
	datac => s2(2),
	datad => \sw[3]~input_o\,
	combout => \dec2|mux0|m[0]~3_combout\);

-- Location: LCCOMB_X50_Y44_N26
\dec2|mux0|m[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec2|mux0|m[0]~4_combout\ = (s2(1) & (((\dec2|mux0|m[0]~3_combout\)))) # (!s2(1) & ((s2(2) & ((\dec2|mux0|m[0]~3_combout\))) # (!s2(2) & (\sw[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s2(1),
	datab => \sw[0]~input_o\,
	datac => \dec2|mux0|m[0]~3_combout\,
	datad => s2(2),
	combout => \dec2|mux0|m[0]~4_combout\);

-- Location: LCCOMB_X50_Y44_N0
\dec2|h0|seg[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec2|h0|seg[6]~4_combout\ = (\dec2|h0|seg[6]~8_combout\) # (\dec2|mux0|m[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec2|h0|seg[6]~8_combout\,
	datad => \dec2|mux0|m[0]~4_combout\,
	combout => \dec2|h0|seg[6]~4_combout\);

-- Location: LCCOMB_X50_Y44_N18
\dec2|mux0|m[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec2|mux0|m[2]~7_combout\ = (s2(1) & ((\sw[8]~input_o\) # ((s2(2))))) # (!s2(1) & (((!s2(2) & \sw[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s2(1),
	datab => \sw[8]~input_o\,
	datac => s2(2),
	datad => \sw[14]~input_o\,
	combout => \dec2|mux0|m[2]~7_combout\);

-- Location: LCCOMB_X50_Y44_N28
\dec2|mux0|m[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec2|mux0|m[2]~8_combout\ = (s2(2) & ((\dec2|mux0|m[2]~7_combout\ & (\sw[11]~input_o\)) # (!\dec2|mux0|m[2]~7_combout\ & ((\sw[5]~input_o\))))) # (!s2(2) & (((\dec2|mux0|m[2]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[11]~input_o\,
	datab => \sw[5]~input_o\,
	datac => s2(2),
	datad => \dec2|mux0|m[2]~7_combout\,
	combout => \dec2|mux0|m[2]~8_combout\);

-- Location: LCCOMB_X50_Y44_N8
\dec2|mux0|m[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec2|mux0|m[2]~9_combout\ = (s2(1) & (((\dec2|mux0|m[2]~8_combout\)))) # (!s2(1) & ((s2(2) & ((\dec2|mux0|m[2]~8_combout\))) # (!s2(2) & (\sw[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s2(1),
	datab => s2(2),
	datac => \sw[2]~input_o\,
	datad => \dec2|mux0|m[2]~8_combout\,
	combout => \dec2|mux0|m[2]~9_combout\);

-- Location: LCCOMB_X50_Y44_N22
\dec2|h0|seg[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec2|h0|seg[3]~9_combout\ = (!\dec2|mux0|m[2]~8_combout\ & (!\dec2|mux0|m[1]~6_combout\ & ((s2(1)) # (s2(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s2(1),
	datab => \dec2|mux0|m[2]~8_combout\,
	datac => s2(2),
	datad => \dec2|mux0|m[1]~6_combout\,
	combout => \dec2|h0|seg[3]~9_combout\);

-- Location: LCCOMB_X50_Y44_N10
\dec2|h0|seg[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec2|h0|seg[3]~10_combout\ = (s2(1)) # ((\sw[0]~input_o\) # ((!\sw[2]~input_o\ & !\sw[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s2(1),
	datab => \sw[0]~input_o\,
	datac => \sw[2]~input_o\,
	datad => \sw[1]~input_o\,
	combout => \dec2|h0|seg[3]~10_combout\);

-- Location: LCCOMB_X50_Y44_N20
\dec2|h0|seg[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec2|h0|seg[3]~11_combout\ = (s2(1) & (((\dec2|mux0|m[0]~3_combout\ & \dec2|h0|seg[3]~10_combout\)))) # (!s2(1) & ((s2(2) & (\dec2|mux0|m[0]~3_combout\)) # (!s2(2) & ((\dec2|h0|seg[3]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s2(1),
	datab => s2(2),
	datac => \dec2|mux0|m[0]~3_combout\,
	datad => \dec2|h0|seg[3]~10_combout\,
	combout => \dec2|h0|seg[3]~11_combout\);

-- Location: LCCOMB_X50_Y44_N14
\dec2|h0|seg[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec2|h0|seg[3]~5_combout\ = (\dec2|h0|seg[3]~9_combout\) # ((\dec2|h0|seg[3]~11_combout\) # ((!\dec2|h0|seg[6]~8_combout\ & !\dec2|mux0|m[2]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec2|h0|seg[6]~8_combout\,
	datab => \dec2|mux0|m[2]~9_combout\,
	datac => \dec2|h0|seg[3]~9_combout\,
	datad => \dec2|h0|seg[3]~11_combout\,
	combout => \dec2|h0|seg[3]~5_combout\);

-- Location: LCCOMB_X50_Y44_N24
\dec2|h0|seg[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec2|h0|seg[2]~6_combout\ = (\dec2|mux0|m[0]~4_combout\) # (\dec2|h0|seg[6]~8_combout\ $ (\dec2|mux0|m[2]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec2|h0|seg[6]~8_combout\,
	datac => \dec2|mux0|m[2]~9_combout\,
	datad => \dec2|mux0|m[0]~4_combout\,
	combout => \dec2|h0|seg[2]~6_combout\);

-- Location: LCCOMB_X50_Y44_N2
\dec2|h0|seg[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec2|h0|seg[0]~7_combout\ = (\dec2|mux0|m[0]~4_combout\) # (!\dec2|mux0|m[2]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dec2|mux0|m[2]~9_combout\,
	datad => \dec2|mux0|m[0]~4_combout\,
	combout => \dec2|h0|seg[0]~7_combout\);

-- Location: LCCOMB_X50_Y40_N10
\comb~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~9_combout\ = (!\s[0]~input_o\ & ((\s[2]~input_o\) # (\s[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s[2]~input_o\,
	datab => \s[0]~input_o\,
	datad => \s[1]~input_o\,
	combout => \comb~9_combout\);

-- Location: LCCOMB_X50_Y40_N24
\Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (!\s[2]~input_o\ & !\s[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s[2]~input_o\,
	datad => \s[1]~input_o\,
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X50_Y40_N20
\s1[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- s1(1) = (!\Equal4~0_combout\ & ((\comb~9_combout\) # (s1(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~9_combout\,
	datab => \Equal4~0_combout\,
	datad => s1(1),
	combout => s1(1));

-- Location: LCCOMB_X49_Y42_N26
\comb~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~8_combout\ = (!\s[0]~input_o\ & (\s[2]~input_o\ $ (!\s[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s[0]~input_o\,
	datab => \s[2]~input_o\,
	datac => \s[1]~input_o\,
	combout => \comb~8_combout\);

-- Location: LCCOMB_X49_Y42_N16
\comb~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~7_combout\ = (\s[0]~input_o\ & (!\s[2]~input_o\ & !\s[1]~input_o\)) # (!\s[0]~input_o\ & (\s[2]~input_o\ $ (\s[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s[0]~input_o\,
	datab => \s[2]~input_o\,
	datac => \s[1]~input_o\,
	combout => \comb~7_combout\);

-- Location: LCCOMB_X49_Y42_N30
\s1[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- s1(2) = (!\comb~7_combout\ & ((\comb~8_combout\) # (s1(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~8_combout\,
	datab => \comb~7_combout\,
	datac => s1(2),
	combout => s1(2));

-- Location: LCCOMB_X49_Y41_N4
\dec1|mux0|m[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec1|mux0|m[0]~6_combout\ = (s1(1) & (((s1(2))))) # (!s1(1) & ((s1(2) & ((\sw[3]~input_o\))) # (!s1(2) & (\sw[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[12]~input_o\,
	datab => s1(1),
	datac => s1(2),
	datad => \sw[3]~input_o\,
	combout => \dec1|mux0|m[0]~6_combout\);

-- Location: LCCOMB_X49_Y41_N30
\dec1|mux0|m[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec1|mux0|m[0]~7_combout\ = (\dec1|mux0|m[0]~6_combout\ & ((\sw[9]~input_o\) # ((!s1(1))))) # (!\dec1|mux0|m[0]~6_combout\ & (((\sw[6]~input_o\ & s1(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[9]~input_o\,
	datab => \dec1|mux0|m[0]~6_combout\,
	datac => \sw[6]~input_o\,
	datad => s1(1),
	combout => \dec1|mux0|m[0]~7_combout\);

-- Location: LCCOMB_X49_Y40_N30
\dec1|h0|seg[6]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec1|h0|seg[6]~7_combout\ = (s1(1) & (((\dec1|mux0|m[0]~7_combout\)))) # (!s1(1) & ((s1(2) & (\dec1|mux0|m[0]~7_combout\)) # (!s1(2) & ((\sw[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s1(1),
	datab => s1(2),
	datac => \dec1|mux0|m[0]~7_combout\,
	datad => \sw[0]~input_o\,
	combout => \dec1|h0|seg[6]~7_combout\);

-- Location: LCCOMB_X50_Y41_N8
\dec1|mux0|m[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec1|mux0|m[1]~4_combout\ = (s1(2) & (s1(1))) # (!s1(2) & ((s1(1) & ((\sw[7]~input_o\))) # (!s1(1) & (\sw[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s1(2),
	datab => s1(1),
	datac => \sw[13]~input_o\,
	datad => \sw[7]~input_o\,
	combout => \dec1|mux0|m[1]~4_combout\);

-- Location: LCCOMB_X50_Y41_N18
\dec1|mux0|m[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec1|mux0|m[1]~5_combout\ = (s1(2) & ((\dec1|mux0|m[1]~4_combout\ & (\sw[10]~input_o\)) # (!\dec1|mux0|m[1]~4_combout\ & ((\sw[4]~input_o\))))) # (!s1(2) & (((\dec1|mux0|m[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s1(2),
	datab => \sw[10]~input_o\,
	datac => \dec1|mux0|m[1]~4_combout\,
	datad => \sw[4]~input_o\,
	combout => \dec1|mux0|m[1]~5_combout\);

-- Location: LCCOMB_X50_Y41_N10
\dec1|mux0|m[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec1|mux0|m[1]~10_combout\ = (s1(2) & (((\dec1|mux0|m[1]~5_combout\)))) # (!s1(2) & ((s1(1) & ((\dec1|mux0|m[1]~5_combout\))) # (!s1(1) & (\sw[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s1(2),
	datab => s1(1),
	datac => \sw[1]~input_o\,
	datad => \dec1|mux0|m[1]~5_combout\,
	combout => \dec1|mux0|m[1]~10_combout\);

-- Location: LCCOMB_X47_Y46_N16
\dec1|h0|seg[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec1|h0|seg[6]~4_combout\ = (\dec1|h0|seg[6]~7_combout\) # (\dec1|mux0|m[1]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dec1|h0|seg[6]~7_combout\,
	datad => \dec1|mux0|m[1]~10_combout\,
	combout => \dec1|h0|seg[6]~4_combout\);

-- Location: LCCOMB_X49_Y40_N16
\dec1|mux0|m[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec1|mux0|m[2]~8_combout\ = (s1(1) & ((\sw[8]~input_o\) # ((s1(2))))) # (!s1(1) & (((!s1(2) & \sw[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s1(1),
	datab => \sw[8]~input_o\,
	datac => s1(2),
	datad => \sw[14]~input_o\,
	combout => \dec1|mux0|m[2]~8_combout\);

-- Location: LCCOMB_X49_Y40_N2
\dec1|mux0|m[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec1|mux0|m[2]~9_combout\ = (s1(2) & ((\dec1|mux0|m[2]~8_combout\ & ((\sw[11]~input_o\))) # (!\dec1|mux0|m[2]~8_combout\ & (\sw[5]~input_o\)))) # (!s1(2) & (((\dec1|mux0|m[2]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[5]~input_o\,
	datab => \sw[11]~input_o\,
	datac => s1(2),
	datad => \dec1|mux0|m[2]~8_combout\,
	combout => \dec1|mux0|m[2]~9_combout\);

-- Location: LCCOMB_X49_Y40_N12
\dec1|h0|seg[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec1|h0|seg[3]~8_combout\ = (\dec1|mux0|m[0]~7_combout\) # ((!\dec1|mux0|m[2]~9_combout\ & !\dec1|mux0|m[1]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dec1|mux0|m[2]~9_combout\,
	datac => \dec1|mux0|m[0]~7_combout\,
	datad => \dec1|mux0|m[1]~5_combout\,
	combout => \dec1|h0|seg[3]~8_combout\);

-- Location: LCCOMB_X49_Y40_N22
\dec1|h0|seg[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec1|h0|seg[3]~9_combout\ = (s1(1) & (((\dec1|h0|seg[3]~8_combout\)))) # (!s1(1) & ((s1(2) & ((\dec1|h0|seg[3]~8_combout\))) # (!s1(2) & (\dec3|h0|seg[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s1(1),
	datab => \dec3|h0|seg[3]~4_combout\,
	datac => s1(2),
	datad => \dec1|h0|seg[3]~8_combout\,
	combout => \dec1|h0|seg[3]~9_combout\);

-- Location: LCCOMB_X49_Y40_N0
\dec1|mux0|m[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec1|mux0|m[2]~11_combout\ = (s1(1) & (\dec1|mux0|m[2]~9_combout\)) # (!s1(1) & ((s1(2) & (\dec1|mux0|m[2]~9_combout\)) # (!s1(2) & ((\sw[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s1(1),
	datab => \dec1|mux0|m[2]~9_combout\,
	datac => s1(2),
	datad => \sw[2]~input_o\,
	combout => \dec1|mux0|m[2]~11_combout\);

-- Location: LCCOMB_X47_Y46_N18
\dec1|h0|seg[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec1|h0|seg[2]~5_combout\ = (\dec1|h0|seg[6]~7_combout\) # (\dec1|mux0|m[2]~11_combout\ $ (\dec1|mux0|m[1]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec1|mux0|m[2]~11_combout\,
	datac => \dec1|h0|seg[6]~7_combout\,
	datad => \dec1|mux0|m[1]~10_combout\,
	combout => \dec1|h0|seg[2]~5_combout\);

-- Location: LCCOMB_X47_Y46_N4
\dec1|h0|seg[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec1|h0|seg[0]~6_combout\ = (\dec1|h0|seg[6]~7_combout\) # (!\dec1|mux0|m[2]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec1|mux0|m[2]~11_combout\,
	datac => \dec1|h0|seg[6]~7_combout\,
	combout => \dec1|h0|seg[0]~6_combout\);

-- Location: LCCOMB_X50_Y40_N16
\comb~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~12_combout\ = (\s[0]~input_o\) # (\s[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s[0]~input_o\,
	datad => \s[1]~input_o\,
	combout => \comb~12_combout\);

-- Location: LCCOMB_X50_Y40_N26
\comb~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~13_combout\ = (\s[0]~input_o\ & (!\s[2]~input_o\ & !\s[1]~input_o\)) # (!\s[0]~input_o\ & ((\s[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s[2]~input_o\,
	datab => \s[0]~input_o\,
	datad => \s[1]~input_o\,
	combout => \comb~13_combout\);

-- Location: LCCOMB_X50_Y40_N0
\s0[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- s0(1) = (\comb~12_combout\ & ((\comb~13_combout\) # (s0(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb~12_combout\,
	datac => \comb~13_combout\,
	datad => s0(1),
	combout => s0(1));

-- Location: LCCOMB_X50_Y40_N12
\comb~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~10_combout\ = (!\s[0]~input_o\ & ((\s[1]~input_o\) # (!\s[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s[2]~input_o\,
	datab => \s[0]~input_o\,
	datad => \s[1]~input_o\,
	combout => \comb~10_combout\);

-- Location: LCCOMB_X50_Y40_N6
\comb~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~11_combout\ = (!\s[1]~input_o\ & (\s[2]~input_o\ $ (\s[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s[2]~input_o\,
	datab => \s[0]~input_o\,
	datad => \s[1]~input_o\,
	combout => \comb~11_combout\);

-- Location: LCCOMB_X50_Y40_N22
\s0[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- s0(2) = (!\comb~10_combout\ & ((s0(2)) # (\comb~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~10_combout\,
	datac => s0(2),
	datad => \comb~11_combout\,
	combout => s0(2));

-- Location: LCCOMB_X50_Y41_N20
\dec0|mux0|m[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec0|mux0|m[1]~4_combout\ = (s0(2) & (s0(1))) # (!s0(2) & ((s0(1) & ((\sw[7]~input_o\))) # (!s0(1) & (\sw[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s0(2),
	datab => s0(1),
	datac => \sw[13]~input_o\,
	datad => \sw[7]~input_o\,
	combout => \dec0|mux0|m[1]~4_combout\);

-- Location: LCCOMB_X50_Y41_N30
\dec0|mux0|m[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec0|mux0|m[1]~5_combout\ = (s0(2) & ((\dec0|mux0|m[1]~4_combout\ & (\sw[10]~input_o\)) # (!\dec0|mux0|m[1]~4_combout\ & ((\sw[4]~input_o\))))) # (!s0(2) & (((\dec0|mux0|m[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s0(2),
	datab => \sw[10]~input_o\,
	datac => \dec0|mux0|m[1]~4_combout\,
	datad => \sw[4]~input_o\,
	combout => \dec0|mux0|m[1]~5_combout\);

-- Location: LCCOMB_X49_Y40_N26
\dec0|mux0|m[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec0|mux0|m[1]~10_combout\ = (s0(1) & (((\dec0|mux0|m[1]~5_combout\)))) # (!s0(1) & ((s0(2) & ((\dec0|mux0|m[1]~5_combout\))) # (!s0(2) & (\sw[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => s0(1),
	datac => \dec0|mux0|m[1]~5_combout\,
	datad => s0(2),
	combout => \dec0|mux0|m[1]~10_combout\);

-- Location: LCCOMB_X49_Y41_N8
\dec0|mux0|m[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec0|mux0|m[0]~6_combout\ = (s0(1) & (((s0(2))))) # (!s0(1) & ((s0(2) & ((\sw[3]~input_o\))) # (!s0(2) & (\sw[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[12]~input_o\,
	datab => s0(1),
	datac => s0(2),
	datad => \sw[3]~input_o\,
	combout => \dec0|mux0|m[0]~6_combout\);

-- Location: LCCOMB_X49_Y41_N26
\dec0|mux0|m[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec0|mux0|m[0]~7_combout\ = (\dec0|mux0|m[0]~6_combout\ & ((\sw[9]~input_o\) # ((!s0(1))))) # (!\dec0|mux0|m[0]~6_combout\ & (((\sw[6]~input_o\ & s0(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[9]~input_o\,
	datab => \dec0|mux0|m[0]~6_combout\,
	datac => \sw[6]~input_o\,
	datad => s0(1),
	combout => \dec0|mux0|m[0]~7_combout\);

-- Location: LCCOMB_X49_Y40_N20
\dec0|h0|seg[6]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec0|h0|seg[6]~7_combout\ = (s0(2) & (\dec0|mux0|m[0]~7_combout\)) # (!s0(2) & ((s0(1) & (\dec0|mux0|m[0]~7_combout\)) # (!s0(1) & ((\sw[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec0|mux0|m[0]~7_combout\,
	datab => s0(2),
	datac => s0(1),
	datad => \sw[0]~input_o\,
	combout => \dec0|h0|seg[6]~7_combout\);

-- Location: LCCOMB_X49_Y40_N4
\dec0|h0|seg[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec0|h0|seg[6]~4_combout\ = (\dec0|mux0|m[1]~10_combout\) # (\dec0|h0|seg[6]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dec0|mux0|m[1]~10_combout\,
	datad => \dec0|h0|seg[6]~7_combout\,
	combout => \dec0|h0|seg[6]~4_combout\);

-- Location: LCCOMB_X49_Y40_N6
\dec0|mux0|m[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec0|mux0|m[2]~8_combout\ = (s0(2) & (((s0(1))))) # (!s0(2) & ((s0(1) & ((\sw[8]~input_o\))) # (!s0(1) & (\sw[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[14]~input_o\,
	datab => s0(2),
	datac => s0(1),
	datad => \sw[8]~input_o\,
	combout => \dec0|mux0|m[2]~8_combout\);

-- Location: LCCOMB_X49_Y40_N8
\dec0|mux0|m[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec0|mux0|m[2]~9_combout\ = (s0(2) & ((\dec0|mux0|m[2]~8_combout\ & ((\sw[11]~input_o\))) # (!\dec0|mux0|m[2]~8_combout\ & (\sw[5]~input_o\)))) # (!s0(2) & (((\dec0|mux0|m[2]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[5]~input_o\,
	datab => s0(2),
	datac => \sw[11]~input_o\,
	datad => \dec0|mux0|m[2]~8_combout\,
	combout => \dec0|mux0|m[2]~9_combout\);

-- Location: LCCOMB_X49_Y40_N24
\dec0|h0|seg[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec0|h0|seg[3]~8_combout\ = (\dec0|mux0|m[0]~7_combout\) # ((!\dec0|mux0|m[2]~9_combout\ & !\dec0|mux0|m[1]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dec0|mux0|m[2]~9_combout\,
	datac => \dec0|mux0|m[1]~5_combout\,
	datad => \dec0|mux0|m[0]~7_combout\,
	combout => \dec0|h0|seg[3]~8_combout\);

-- Location: LCCOMB_X49_Y40_N10
\dec0|h0|seg[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec0|h0|seg[3]~9_combout\ = (s0(2) & (\dec0|h0|seg[3]~8_combout\)) # (!s0(2) & ((s0(1) & (\dec0|h0|seg[3]~8_combout\)) # (!s0(1) & ((\dec3|h0|seg[3]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s0(2),
	datab => \dec0|h0|seg[3]~8_combout\,
	datac => s0(1),
	datad => \dec3|h0|seg[3]~4_combout\,
	combout => \dec0|h0|seg[3]~9_combout\);

-- Location: LCCOMB_X49_Y40_N14
\dec0|mux0|m[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec0|mux0|m[2]~11_combout\ = (s0(2) & (\dec0|mux0|m[2]~9_combout\)) # (!s0(2) & ((s0(1) & (\dec0|mux0|m[2]~9_combout\)) # (!s0(1) & ((\sw[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec0|mux0|m[2]~9_combout\,
	datab => s0(2),
	datac => s0(1),
	datad => \sw[2]~input_o\,
	combout => \dec0|mux0|m[2]~11_combout\);

-- Location: LCCOMB_X49_Y40_N18
\dec0|h0|seg[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec0|h0|seg[2]~5_combout\ = (\dec0|h0|seg[6]~7_combout\) # (\dec0|mux0|m[1]~10_combout\ $ (\dec0|mux0|m[2]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec0|mux0|m[1]~10_combout\,
	datac => \dec0|mux0|m[2]~11_combout\,
	datad => \dec0|h0|seg[6]~7_combout\,
	combout => \dec0|h0|seg[2]~5_combout\);

-- Location: LCCOMB_X49_Y40_N28
\dec0|h0|seg[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec0|h0|seg[0]~6_combout\ = (\dec0|h0|seg[6]~7_combout\) # (!\dec0|mux0|m[2]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dec0|mux0|m[2]~11_combout\,
	datad => \dec0|h0|seg[6]~7_combout\,
	combout => \dec0|h0|seg[0]~6_combout\);

ww_dOut(34) <= \dOut[34]~output_o\;

ww_dOut(33) <= \dOut[33]~output_o\;

ww_dOut(32) <= \dOut[32]~output_o\;

ww_dOut(31) <= \dOut[31]~output_o\;

ww_dOut(30) <= \dOut[30]~output_o\;

ww_dOut(29) <= \dOut[29]~output_o\;

ww_dOut(28) <= \dOut[28]~output_o\;

ww_dOut(27) <= \dOut[27]~output_o\;

ww_dOut(26) <= \dOut[26]~output_o\;

ww_dOut(25) <= \dOut[25]~output_o\;

ww_dOut(24) <= \dOut[24]~output_o\;

ww_dOut(23) <= \dOut[23]~output_o\;

ww_dOut(22) <= \dOut[22]~output_o\;

ww_dOut(21) <= \dOut[21]~output_o\;

ww_dOut(20) <= \dOut[20]~output_o\;

ww_dOut(19) <= \dOut[19]~output_o\;

ww_dOut(18) <= \dOut[18]~output_o\;

ww_dOut(17) <= \dOut[17]~output_o\;

ww_dOut(16) <= \dOut[16]~output_o\;

ww_dOut(15) <= \dOut[15]~output_o\;

ww_dOut(14) <= \dOut[14]~output_o\;

ww_dOut(13) <= \dOut[13]~output_o\;

ww_dOut(12) <= \dOut[12]~output_o\;

ww_dOut(11) <= \dOut[11]~output_o\;

ww_dOut(10) <= \dOut[10]~output_o\;

ww_dOut(9) <= \dOut[9]~output_o\;

ww_dOut(8) <= \dOut[8]~output_o\;

ww_dOut(7) <= \dOut[7]~output_o\;

ww_dOut(6) <= \dOut[6]~output_o\;

ww_dOut(5) <= \dOut[5]~output_o\;

ww_dOut(4) <= \dOut[4]~output_o\;

ww_dOut(3) <= \dOut[3]~output_o\;

ww_dOut(2) <= \dOut[2]~output_o\;

ww_dOut(1) <= \dOut[1]~output_o\;

ww_dOut(0) <= \dOut[0]~output_o\;
END structure;


