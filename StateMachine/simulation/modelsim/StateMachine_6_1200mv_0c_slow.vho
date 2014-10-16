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

-- DATE "10/16/2014 17:16:08"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	StateMachine IS
    PORT (
	x : IN std_logic;
	clk : IN std_logic;
	y : OUT std_logic
	);
END StateMachine;

-- Design Ports Information
-- y	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF StateMachine IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_x : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_y : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \y~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \x~input_o\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \estado_atual.s0~q\ : std_logic;
SIGNAL \estado_atual~10_combout\ : std_logic;
SIGNAL \estado_atual.s11~q\ : std_logic;
SIGNAL \estado_atual~9_combout\ : std_logic;
SIGNAL \estado_atual.s110~q\ : std_logic;
SIGNAL \estado_atual~8_combout\ : std_logic;
SIGNAL \estado_atual.s1~q\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \estado_anterior.s110~q\ : std_logic;
SIGNAL \y~0_combout\ : std_logic;

BEGIN

ww_x <= x;
ww_clk <= clk;
y <= ww_y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: IOOBUF_X10_Y31_N2
\y~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y~0_combout\,
	devoe => ww_devoe,
	o => \y~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G17
\clk~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X12_Y31_N1
\x~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x,
	o => \x~input_o\);

-- Location: LCCOMB_X12_Y30_N20
\Selector0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\x~input_o\) # (\estado_atual.s11~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \x~input_o\,
	datad => \estado_atual.s11~q\,
	combout => \Selector0~0_combout\);

-- Location: FF_X12_Y30_N21
\estado_atual.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_atual.s0~q\);

-- Location: LCCOMB_X12_Y30_N18
\estado_atual~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \estado_atual~10_combout\ = (\x~input_o\ & (!\estado_atual.s110~q\ & \estado_atual.s0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x~input_o\,
	datac => \estado_atual.s110~q\,
	datad => \estado_atual.s0~q\,
	combout => \estado_atual~10_combout\);

-- Location: FF_X12_Y30_N19
\estado_atual.s11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estado_atual~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_atual.s11~q\);

-- Location: LCCOMB_X12_Y30_N30
\estado_atual~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \estado_atual~9_combout\ = (!\x~input_o\ & \estado_atual.s11~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \x~input_o\,
	datad => \estado_atual.s11~q\,
	combout => \estado_atual~9_combout\);

-- Location: FF_X12_Y30_N31
\estado_atual.s110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estado_atual~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_atual.s110~q\);

-- Location: LCCOMB_X12_Y30_N22
\estado_atual~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \estado_atual~8_combout\ = (\x~input_o\ & ((\estado_atual.s110~q\) # (!\estado_atual.s0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x~input_o\,
	datac => \estado_atual.s110~q\,
	datad => \estado_atual.s0~q\,
	combout => \estado_atual~8_combout\);

-- Location: FF_X12_Y30_N23
\estado_atual.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estado_atual~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_atual.s1~q\);

-- Location: LCCOMB_X12_Y30_N28
\Selector3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\estado_atual.s110~q\) # ((!\x~input_o\ & (\estado_anterior.s110~q\ & !\estado_atual.s0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_atual.s110~q\,
	datab => \x~input_o\,
	datac => \estado_anterior.s110~q\,
	datad => \estado_atual.s0~q\,
	combout => \Selector3~0_combout\);

-- Location: FF_X12_Y30_N29
\estado_anterior.s110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_anterior.s110~q\);

-- Location: LCCOMB_X12_Y30_N12
\y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \y~0_combout\ = (\estado_atual.s1~q\ & \estado_anterior.s110~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estado_atual.s1~q\,
	datad => \estado_anterior.s110~q\,
	combout => \y~0_combout\);

ww_y <= \y~output_o\;
END structure;


