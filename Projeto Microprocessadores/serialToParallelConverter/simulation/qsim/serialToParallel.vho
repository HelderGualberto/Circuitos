-- Copyright (C) 2016  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 16.1.0 Build 196 10/24/2016 SJ Lite Edition"

-- DATE "05/01/2017 19:27:15"

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

ENTITY 	clockRecovery IS
    PORT (
	clockPLL : IN std_logic;
	dataIn : IN std_logic;
	syncData : BUFFER std_logic;
	syncClock : BUFFER std_logic
	);
END clockRecovery;

ARCHITECTURE structure OF clockRecovery IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clockPLL : std_logic;
SIGNAL ww_dataIn : std_logic;
SIGNAL ww_syncData : std_logic;
SIGNAL ww_syncClock : std_logic;
SIGNAL \syncData~output_o\ : std_logic;
SIGNAL \syncClock~output_o\ : std_logic;
SIGNAL \clockPLL~input_o\ : std_logic;
SIGNAL \dataIn~input_o\ : std_logic;
SIGNAL \counter[1]~1_combout\ : std_logic;
SIGNAL \edge1|temp~q\ : std_logic;
SIGNAL \edge1|EDGES~combout\ : std_logic;
SIGNAL \counter[0]~0_combout\ : std_logic;
SIGNAL \syncData~0_combout\ : std_logic;
SIGNAL \syncData~1_combout\ : std_logic;
SIGNAL \syncData~reg0_q\ : std_logic;
SIGNAL \clockOutCounter[1]~0_combout\ : std_logic;
SIGNAL \clkOut~0_combout\ : std_logic;
SIGNAL \clkOut~q\ : std_logic;
SIGNAL counter : std_logic_vector(0 TO 1);
SIGNAL clockOutCounter : std_logic_vector(0 TO 1);
SIGNAL \ALT_INV_clkOut~q\ : std_logic;
SIGNAL \edge1|ALT_INV_EDGES~combout\ : std_logic;

BEGIN

ww_clockPLL <= clockPLL;
ww_dataIn <= dataIn;
syncData <= ww_syncData;
syncClock <= ww_syncClock;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_clkOut~q\ <= NOT \clkOut~q\;
\edge1|ALT_INV_EDGES~combout\ <= NOT \edge1|EDGES~combout\;

\syncData~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \syncData~reg0_q\,
	devoe => ww_devoe,
	o => \syncData~output_o\);

\syncClock~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_clkOut~q\,
	devoe => ww_devoe,
	o => \syncClock~output_o\);

\clockPLL~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clockPLL,
	o => \clockPLL~input_o\);

\dataIn~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn,
	o => \dataIn~input_o\);

\counter[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[1]~1_combout\ = !counter(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	combout => \counter[1]~1_combout\);

\edge1|temp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockPLL~input_o\,
	d => \dataIn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \edge1|temp~q\);

\edge1|EDGES\ : cycloneive_lcell_comb
-- Equation(s):
-- \edge1|EDGES~combout\ = \dataIn~input_o\ $ (\edge1|temp~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dataIn~input_o\,
	datad => \edge1|temp~q\,
	combout => \edge1|EDGES~combout\);

\counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockPLL~input_o\,
	d => \counter[1]~1_combout\,
	clrn => \edge1|ALT_INV_EDGES~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(1));

\counter[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[0]~0_combout\ = counter(0) $ (counter(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => counter(0),
	datad => counter(1),
	combout => \counter[0]~0_combout\);

\counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockPLL~input_o\,
	d => \counter[0]~0_combout\,
	clrn => \edge1|ALT_INV_EDGES~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(0));

\syncData~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \syncData~0_combout\ = (counter(0) & (!counter(1) & (\dataIn~input_o\ $ (!\edge1|temp~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => \dataIn~input_o\,
	datac => \edge1|temp~q\,
	datad => counter(1),
	combout => \syncData~0_combout\);

\syncData~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \syncData~1_combout\ = (\syncData~0_combout\ & (\dataIn~input_o\)) # (!\syncData~0_combout\ & ((\syncData~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn~input_o\,
	datab => \syncData~reg0_q\,
	datad => \syncData~0_combout\,
	combout => \syncData~1_combout\);

\syncData~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockPLL~input_o\,
	d => \syncData~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syncData~reg0_q\);

\clockOutCounter[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockOutCounter[1]~0_combout\ = !clockOutCounter(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clockOutCounter(1),
	combout => \clockOutCounter[1]~0_combout\);

\clockOutCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockPLL~input_o\,
	d => \clockOutCounter[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockOutCounter(1));

\clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkOut~0_combout\ = \clkOut~q\ $ (!clockOutCounter(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkOut~q\,
	datab => clockOutCounter(1),
	combout => \clkOut~0_combout\);

clkOut : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockPLL~input_o\,
	d => \clkOut~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkOut~q\);

ww_syncData <= \syncData~output_o\;

ww_syncClock <= \syncClock~output_o\;
END structure;


