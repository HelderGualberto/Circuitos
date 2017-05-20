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

-- DATE "05/20/2017 10:59:55"

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

ENTITY 	serialToParallel IS
    PORT (
	dataSerial : IN std_logic;
	dataParallel : OUT std_logic_vector(7 DOWNTO 0);
	clock : IN std_logic
	);
END serialToParallel;

ARCHITECTURE structure OF serialToParallel IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_dataSerial : std_logic;
SIGNAL ww_dataParallel : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_clock : std_logic;
SIGNAL \inst_fifo|dcfifo_mixed_widths_component|auto_generated|fifo_ram|ram_block9a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst_fifo|dcfifo_mixed_widths_component|auto_generated|fifo_ram|ram_block9a0_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst_fifo|dcfifo_mixed_widths_component|auto_generated|fifo_ram|ram_block9a0_PORTBADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_fifo|dcfifo_mixed_widths_component|auto_generated|fifo_ram|ram_block9a0_PORTBDATAOUT_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst_Pll|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst_Pll|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \inst_Pll|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \inst_clockRecovery|clockOutCounter[1]~0_combout\ : std_logic;
SIGNAL \inst_clockRecovery|clkOut~0_combout\ : std_logic;
SIGNAL \inst_clockRecovery|clkOut~q\ : std_logic;
SIGNAL \inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_comb_bita0~combout\ : std_logic;
SIGNAL \inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_reg_bit0~0_combout\ : std_logic;
SIGNAL \inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_reg_bit0~q\ : std_logic;
SIGNAL \inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_comb_bita1~combout\ : std_logic;
SIGNAL \inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_reg_bit1~q\ : std_logic;
SIGNAL \inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_comb_bita2~combout\ : std_logic;
SIGNAL \inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_reg_bit2~q\ : std_logic;
SIGNAL \inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_comb_bita2~0_combout\ : std_logic;
SIGNAL \inst_clockDivider|clkC[2]~2_combout\ : std_logic;
SIGNAL \inst_clockDivider|clkC[1]~0_combout\ : std_logic;
SIGNAL \inst_clockDivider|clkC[0]~1_combout\ : std_logic;
SIGNAL \inst_clockDivider|clk~0_combout\ : std_logic;
SIGNAL \inst_clockDivider|clk~q\ : std_logic;
SIGNAL \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~1_combout\ : std_logic;
SIGNAL \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|_~1_combout\ : std_logic;
SIGNAL \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a2~0_combout\ : std_logic;
SIGNAL \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a2~q\ : std_logic;
SIGNAL \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a3~0_combout\ : std_logic;
SIGNAL \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a3~q\ : std_logic;
SIGNAL \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~0_combout\ : std_logic;
SIGNAL \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a1~0_combout\ : std_logic;
SIGNAL \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a1~q\ : std_logic;
SIGNAL \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|_~2_combout\ : std_logic;
SIGNAL \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|parity6~q\ : std_logic;
SIGNAL \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a0~0_combout\ : std_logic;
SIGNAL \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a0~q\ : std_logic;
SIGNAL \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g[0]~0_combout\ : std_logic;
SIGNAL \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~1_combout\ : std_logic;
SIGNAL \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|_~0_combout\ : std_logic;
SIGNAL \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a[1]~4_combout\ : std_logic;
SIGNAL \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a[3]~1_combout\ : std_logic;
SIGNAL \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a[3]~2_combout\ : std_logic;
SIGNAL \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|_~1_combout\ : std_logic;
SIGNAL \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|parity7~0_combout\ : std_logic;
SIGNAL \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|parity7~q\ : std_logic;
SIGNAL \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a[0]~3_combout\ : std_logic;
SIGNAL \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a[2]~0_combout\ : std_logic;
SIGNAL \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~0_combout\ : std_logic;
SIGNAL \dataSerial~input_o\ : std_logic;
SIGNAL \inst_clockRecovery|counter[1]~1_combout\ : std_logic;
SIGNAL \inst_clockRecovery|edge1|temp~q\ : std_logic;
SIGNAL \inst_clockRecovery|edge1|EDGES~combout\ : std_logic;
SIGNAL \inst_clockRecovery|counter[0]~0_combout\ : std_logic;
SIGNAL \inst_clockRecovery|syncData~0_combout\ : std_logic;
SIGNAL \inst_clockRecovery|syncData~1_combout\ : std_logic;
SIGNAL \inst_clockRecovery|syncData~q\ : std_logic;
SIGNAL \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g[0]~0_combout\ : std_logic;
SIGNAL \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a0~_wirecell_combout\ : std_logic;
SIGNAL \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|_~0_combout\ : std_logic;
SIGNAL \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrfull_eq_comp|aneb_result_wire\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst_fifo|dcfifo_mixed_widths_component|auto_generated|fifo_ram|q_b\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst_Pll|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst_fifo|dcfifo_mixed_widths_component|auto_generated|ws_dgrp|dffpipe13|dffe15a\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rs_dgwp|dffpipe10|dffe12a\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst_fifo|dcfifo_mixed_widths_component|auto_generated|ram_address_a\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdempty_eq_comp|aneb_result_wire\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst_fifo|dcfifo_mixed_widths_component|auto_generated|ws_dgrp|dffpipe13|dffe14a\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst_clockDivider|clkC\ : std_logic_vector(0 TO 2);
SIGNAL \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rs_dgwp|dffpipe10|dffe11a\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst_clockRecovery|clockOutCounter\ : std_logic_vector(0 TO 1);
SIGNAL \inst_clockRecovery|counter\ : std_logic_vector(0 TO 1);
SIGNAL \inst_fifo|dcfifo_mixed_widths_component|auto_generated|delayed_wrptr_g\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst_clockRecovery|edge1|ALT_INV_EDGES~combout\ : std_logic;
SIGNAL \inst_clockRecovery|ALT_INV_clkOut~q\ : std_logic;
SIGNAL \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdempty_eq_comp|ALT_INV_aneb_result_wire\ : std_logic_vector(0 DOWNTO 0);

BEGIN

ww_dataSerial <= dataSerial;
dataParallel <= ww_dataParallel;
ww_clock <= clock;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst_fifo|dcfifo_mixed_widths_component|auto_generated|fifo_ram|ram_block9a0_PORTADATAIN_bus\(0) <= \inst_clockRecovery|syncData~q\;

\inst_fifo|dcfifo_mixed_widths_component|auto_generated|fifo_ram|ram_block9a0_PORTAADDR_bus\ <= (\inst_fifo|dcfifo_mixed_widths_component|auto_generated|ram_address_a\(5) & \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g\(4) & 
\inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g\(3) & \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g\(2) & \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g\(1) & 
\inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g\(0));

\inst_fifo|dcfifo_mixed_widths_component|auto_generated|fifo_ram|ram_block9a0_PORTBADDR_bus\ <= (\inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|_~0_combout\ & 
\inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a1~q\ & \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a0~_wirecell_combout\);

\inst_fifo|dcfifo_mixed_widths_component|auto_generated|fifo_ram|q_b\(0) <= \inst_fifo|dcfifo_mixed_widths_component|auto_generated|fifo_ram|ram_block9a0_PORTBDATAOUT_bus\(0);
\inst_fifo|dcfifo_mixed_widths_component|auto_generated|fifo_ram|q_b\(1) <= \inst_fifo|dcfifo_mixed_widths_component|auto_generated|fifo_ram|ram_block9a0_PORTBDATAOUT_bus\(1);
\inst_fifo|dcfifo_mixed_widths_component|auto_generated|fifo_ram|q_b\(2) <= \inst_fifo|dcfifo_mixed_widths_component|auto_generated|fifo_ram|ram_block9a0_PORTBDATAOUT_bus\(2);
\inst_fifo|dcfifo_mixed_widths_component|auto_generated|fifo_ram|q_b\(3) <= \inst_fifo|dcfifo_mixed_widths_component|auto_generated|fifo_ram|ram_block9a0_PORTBDATAOUT_bus\(3);
\inst_fifo|dcfifo_mixed_widths_component|auto_generated|fifo_ram|q_b\(4) <= \inst_fifo|dcfifo_mixed_widths_component|auto_generated|fifo_ram|ram_block9a0_PORTBDATAOUT_bus\(4);
\inst_fifo|dcfifo_mixed_widths_component|auto_generated|fifo_ram|q_b\(5) <= \inst_fifo|dcfifo_mixed_widths_component|auto_generated|fifo_ram|ram_block9a0_PORTBDATAOUT_bus\(5);
\inst_fifo|dcfifo_mixed_widths_component|auto_generated|fifo_ram|q_b\(6) <= \inst_fifo|dcfifo_mixed_widths_component|auto_generated|fifo_ram|ram_block9a0_PORTBDATAOUT_bus\(6);
\inst_fifo|dcfifo_mixed_widths_component|auto_generated|fifo_ram|q_b\(7) <= \inst_fifo|dcfifo_mixed_widths_component|auto_generated|fifo_ram|ram_block9a0_PORTBDATAOUT_bus\(7);

\inst_Pll|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \clock~input_o\);

\inst_Pll|altpll_component|auto_generated|wire_pll1_clk\(0) <= \inst_Pll|altpll_component|auto_generated|pll1_CLK_bus\(0);
\inst_Pll|altpll_component|auto_generated|wire_pll1_clk\(1) <= \inst_Pll|altpll_component|auto_generated|pll1_CLK_bus\(1);
\inst_Pll|altpll_component|auto_generated|wire_pll1_clk\(2) <= \inst_Pll|altpll_component|auto_generated|pll1_CLK_bus\(2);
\inst_Pll|altpll_component|auto_generated|wire_pll1_clk\(3) <= \inst_Pll|altpll_component|auto_generated|pll1_CLK_bus\(3);
\inst_Pll|altpll_component|auto_generated|wire_pll1_clk\(4) <= \inst_Pll|altpll_component|auto_generated|pll1_CLK_bus\(4);
\inst_clockRecovery|edge1|ALT_INV_EDGES~combout\ <= NOT \inst_clockRecovery|edge1|EDGES~combout\;
\inst_clockRecovery|ALT_INV_clkOut~q\ <= NOT \inst_clockRecovery|clkOut~q\;
\inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdempty_eq_comp|ALT_INV_aneb_result_wire\(0) <= NOT \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdempty_eq_comp|aneb_result_wire\(0);

\dataParallel[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|fifo_ram|q_b\(0),
	devoe => ww_devoe,
	o => ww_dataParallel(0));

\dataParallel[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|fifo_ram|q_b\(1),
	devoe => ww_devoe,
	o => ww_dataParallel(1));

\dataParallel[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|fifo_ram|q_b\(2),
	devoe => ww_devoe,
	o => ww_dataParallel(2));

\dataParallel[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|fifo_ram|q_b\(3),
	devoe => ww_devoe,
	o => ww_dataParallel(3));

\dataParallel[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|fifo_ram|q_b\(4),
	devoe => ww_devoe,
	o => ww_dataParallel(4));

\dataParallel[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|fifo_ram|q_b\(5),
	devoe => ww_devoe,
	o => ww_dataParallel(5));

\dataParallel[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|fifo_ram|q_b\(6),
	devoe => ww_devoe,
	o => ww_dataParallel(6));

\dataParallel[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|fifo_ram|q_b\(7),
	devoe => ww_devoe,
	o => ww_dataParallel(7));

\clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

\inst_Pll|altpll_component|auto_generated|pll1\ : cycloneive_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 5,
	c0_initial => 1,
	c0_low => 5,
	c0_mode => "even",
	c0_ph => 0,
	c1_high => 0,
	c1_initial => 0,
	c1_low => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 25,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 16,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 24,
	m => 32,
	m_initial => 1,
	m_ph => 0,
	n => 5,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	self_reset_on_loss_lock => "off",
	simulation_type => "functional",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 390,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	fbin => \inst_Pll|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \inst_Pll|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \inst_Pll|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \inst_Pll|altpll_component|auto_generated|pll1_CLK_bus\);

\inst_clockRecovery|clockOutCounter[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_clockRecovery|clockOutCounter[1]~0_combout\ = !\inst_clockRecovery|clockOutCounter\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_clockRecovery|clockOutCounter\(1),
	combout => \inst_clockRecovery|clockOutCounter[1]~0_combout\);

\inst_clockRecovery|clockOutCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_Pll|altpll_component|auto_generated|wire_pll1_clk\(0),
	d => \inst_clockRecovery|clockOutCounter[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_clockRecovery|clockOutCounter\(1));

\inst_clockRecovery|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_clockRecovery|clkOut~0_combout\ = \inst_clockRecovery|clkOut~q\ $ (!\inst_clockRecovery|clockOutCounter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_clockRecovery|clkOut~q\,
	datab => \inst_clockRecovery|clockOutCounter\(1),
	combout => \inst_clockRecovery|clkOut~0_combout\);

\inst_clockRecovery|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_Pll|altpll_component|auto_generated|wire_pll1_clk\(0),
	d => \inst_clockRecovery|clkOut~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_clockRecovery|clkOut~q\);

\inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_comb_bita0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_comb_bita0~combout\ = \inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_reg_bit0~q\ $ (GND)
-- \inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_comb_bita0~COUT\ = CARRY(!\inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_reg_bit0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_reg_bit0~q\,
	datad => VCC,
	combout => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_comb_bita0~combout\,
	cout => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_comb_bita0~COUT\);

\inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_reg_bit0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_reg_bit0~0_combout\ = !\inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_comb_bita0~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_comb_bita0~combout\,
	combout => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_reg_bit0~0_combout\);

\inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_reg_bit0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_clockRecovery|ALT_INV_clkOut~q\,
	d => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_reg_bit0~0_combout\,
	ena => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrfull_eq_comp|aneb_result_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_reg_bit0~q\);

\inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_comb_bita1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_comb_bita1~combout\ = (\inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_reg_bit1~q\ & 
-- (!\inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_comb_bita0~COUT\)) # (!\inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_reg_bit1~q\ & 
-- ((\inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_comb_bita0~COUT\) # (GND)))
-- \inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_comb_bita1~COUT\ = CARRY((!\inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_comb_bita0~COUT\) # 
-- (!\inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_reg_bit1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_reg_bit1~q\,
	datad => VCC,
	cin => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_comb_bita0~COUT\,
	combout => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_comb_bita1~combout\,
	cout => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_comb_bita1~COUT\);

\inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_reg_bit1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_clockRecovery|ALT_INV_clkOut~q\,
	d => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_comb_bita1~combout\,
	ena => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrfull_eq_comp|aneb_result_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_reg_bit1~q\);

\inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_comb_bita2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_comb_bita2~combout\ = (\inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_reg_bit2~q\ & 
-- (\inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_comb_bita1~COUT\ $ (GND))) # (!\inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_reg_bit2~q\ & 
-- (!\inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_comb_bita1~COUT\ & VCC))
-- \inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_comb_bita2~COUT\ = CARRY((\inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_reg_bit2~q\ & 
-- !\inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_reg_bit2~q\,
	datad => VCC,
	cin => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_comb_bita1~COUT\,
	combout => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_comb_bita2~combout\,
	cout => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_comb_bita2~COUT\);

\inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_reg_bit2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_clockRecovery|ALT_INV_clkOut~q\,
	d => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_comb_bita2~combout\,
	ena => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrfull_eq_comp|aneb_result_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_reg_bit2~q\);

\inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_comb_bita2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_comb_bita2~0_combout\ = \inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_comb_bita2~COUT\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_comb_bita2~COUT\,
	combout => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_comb_bita2~0_combout\);

\inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_clockRecovery|ALT_INV_clkOut~q\,
	d => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a\(0),
	ena => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrfull_eq_comp|aneb_result_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g\(3));

\inst_clockDivider|clkC[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_clockDivider|clkC[2]~2_combout\ = !\inst_clockDivider|clkC\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_clockDivider|clkC\(2),
	combout => \inst_clockDivider|clkC[2]~2_combout\);

\inst_clockDivider|clkC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_clockRecovery|ALT_INV_clkOut~q\,
	d => \inst_clockDivider|clkC[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_clockDivider|clkC\(2));

\inst_clockDivider|clkC[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_clockDivider|clkC[1]~0_combout\ = \inst_clockDivider|clkC\(2) $ (\inst_clockDivider|clkC\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_clockDivider|clkC\(2),
	datad => \inst_clockDivider|clkC\(1),
	combout => \inst_clockDivider|clkC[1]~0_combout\);

\inst_clockDivider|clkC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_clockRecovery|ALT_INV_clkOut~q\,
	d => \inst_clockDivider|clkC[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_clockDivider|clkC\(1));

\inst_clockDivider|clkC[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_clockDivider|clkC[0]~1_combout\ = \inst_clockDivider|clkC\(0) $ (((\inst_clockDivider|clkC\(2) & \inst_clockDivider|clkC\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_clockDivider|clkC\(0),
	datac => \inst_clockDivider|clkC\(2),
	datad => \inst_clockDivider|clkC\(1),
	combout => \inst_clockDivider|clkC[0]~1_combout\);

\inst_clockDivider|clkC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_clockRecovery|ALT_INV_clkOut~q\,
	d => \inst_clockDivider|clkC[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_clockDivider|clkC\(0));

\inst_clockDivider|clk~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_clockDivider|clk~0_combout\ = \inst_clockDivider|clk~q\ $ (((!\inst_clockDivider|clkC\(2) & (!\inst_clockDivider|clkC\(1) & !\inst_clockDivider|clkC\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_clockDivider|clk~q\,
	datab => \inst_clockDivider|clkC\(2),
	datac => \inst_clockDivider|clkC\(1),
	datad => \inst_clockDivider|clkC\(0),
	combout => \inst_clockDivider|clk~0_combout\);

\inst_clockDivider|clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_clockRecovery|ALT_INV_clkOut~q\,
	d => \inst_clockDivider|clk~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_clockDivider|clk~q\);

\inst_fifo|dcfifo_mixed_widths_component|auto_generated|delayed_wrptr_g[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_clockRecovery|ALT_INV_clkOut~q\,
	d => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|delayed_wrptr_g\(0));

\inst_fifo|dcfifo_mixed_widths_component|auto_generated|rs_dgwp|dffpipe10|dffe11a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst_clockDivider|clk~q\,
	d => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|delayed_wrptr_g\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rs_dgwp|dffpipe10|dffe11a\(0));

\inst_fifo|dcfifo_mixed_widths_component|auto_generated|rs_dgwp|dffpipe10|dffe12a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst_clockDivider|clk~q\,
	d => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rs_dgwp|dffpipe10|dffe11a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rs_dgwp|dffpipe10|dffe12a\(0));

\inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_clockDivider|clk~q\,
	d => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a1~q\,
	ena => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdempty_eq_comp|aneb_result_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g\(1));

\inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_clockRecovery|ALT_INV_clkOut~q\,
	d => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a\(1),
	ena => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrfull_eq_comp|aneb_result_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g\(4));

\inst_fifo|dcfifo_mixed_widths_component|auto_generated|delayed_wrptr_g[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_clockRecovery|ALT_INV_clkOut~q\,
	d => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|delayed_wrptr_g\(1));

\inst_fifo|dcfifo_mixed_widths_component|auto_generated|rs_dgwp|dffpipe10|dffe11a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst_clockDivider|clk~q\,
	d => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|delayed_wrptr_g\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rs_dgwp|dffpipe10|dffe11a\(1));

\inst_fifo|dcfifo_mixed_widths_component|auto_generated|rs_dgwp|dffpipe10|dffe12a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst_clockDivider|clk~q\,
	d => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rs_dgwp|dffpipe10|dffe11a\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rs_dgwp|dffpipe10|dffe12a\(1));

\inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~1_combout\ = (\inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g\(0) & ((\inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g\(1) $ 
-- (\inst_fifo|dcfifo_mixed_widths_component|auto_generated|rs_dgwp|dffpipe10|dffe12a\(1))) # (!\inst_fifo|dcfifo_mixed_widths_component|auto_generated|rs_dgwp|dffpipe10|dffe12a\(0)))) # (!\inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g\(0) & 
-- ((\inst_fifo|dcfifo_mixed_widths_component|auto_generated|rs_dgwp|dffpipe10|dffe12a\(0)) # (\inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g\(1) $ (\inst_fifo|dcfifo_mixed_widths_component|auto_generated|rs_dgwp|dffpipe10|dffe12a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g\(0),
	datab => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rs_dgwp|dffpipe10|dffe12a\(0),
	datac => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g\(1),
	datad => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rs_dgwp|dffpipe10|dffe12a\(1),
	combout => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~1_combout\);

\inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|_~1_combout\ = (\inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a0~q\ & (!\inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|parity6~q\ & 
-- ((\inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~0_combout\) # (\inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a0~q\,
	datab => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~0_combout\,
	datac => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~1_combout\,
	datad => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|parity6~q\,
	combout => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|_~1_combout\);

\inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a2~0_combout\ = \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a2~q\ $ (((\inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a1~q\ 
-- & \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|_~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a2~q\,
	datac => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a1~q\,
	datad => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|_~1_combout\,
	combout => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a2~0_combout\);

\inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_clockDivider|clk~q\,
	d => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a2~q\);

\inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_clockDivider|clk~q\,
	d => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a2~q\,
	ena => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdempty_eq_comp|aneb_result_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g\(2));

\inst_fifo|dcfifo_mixed_widths_component|auto_generated|delayed_wrptr_g[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_clockRecovery|ALT_INV_clkOut~q\,
	d => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|delayed_wrptr_g\(2));

\inst_fifo|dcfifo_mixed_widths_component|auto_generated|rs_dgwp|dffpipe10|dffe11a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst_clockDivider|clk~q\,
	d => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|delayed_wrptr_g\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rs_dgwp|dffpipe10|dffe11a\(2));

\inst_fifo|dcfifo_mixed_widths_component|auto_generated|rs_dgwp|dffpipe10|dffe12a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst_clockDivider|clk~q\,
	d => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rs_dgwp|dffpipe10|dffe11a\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rs_dgwp|dffpipe10|dffe12a\(2));

\inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a3~0_combout\ = \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a3~q\ $ (((!\inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a1~q\ 
-- & \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|_~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a3~q\,
	datab => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a1~q\,
	datad => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|_~1_combout\,
	combout => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a3~0_combout\);

\inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_clockDivider|clk~q\,
	d => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a3~q\);

\inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_clockDivider|clk~q\,
	d => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a3~q\,
	ena => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdempty_eq_comp|aneb_result_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g\(3));

\inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_clockRecovery|ALT_INV_clkOut~q\,
	d => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a\(3),
	ena => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrfull_eq_comp|aneb_result_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g\(6));

\inst_fifo|dcfifo_mixed_widths_component|auto_generated|delayed_wrptr_g[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_clockRecovery|ALT_INV_clkOut~q\,
	d => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|delayed_wrptr_g\(3));

\inst_fifo|dcfifo_mixed_widths_component|auto_generated|rs_dgwp|dffpipe10|dffe11a[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst_clockDivider|clk~q\,
	d => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|delayed_wrptr_g\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rs_dgwp|dffpipe10|dffe11a\(3));

\inst_fifo|dcfifo_mixed_widths_component|auto_generated|rs_dgwp|dffpipe10|dffe12a[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst_clockDivider|clk~q\,
	d => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rs_dgwp|dffpipe10|dffe11a\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rs_dgwp|dffpipe10|dffe12a\(3));

\inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~0_combout\ = (\inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g\(2) & ((\inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g\(3) $ 
-- (\inst_fifo|dcfifo_mixed_widths_component|auto_generated|rs_dgwp|dffpipe10|dffe12a\(3))) # (!\inst_fifo|dcfifo_mixed_widths_component|auto_generated|rs_dgwp|dffpipe10|dffe12a\(2)))) # (!\inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g\(2) & 
-- ((\inst_fifo|dcfifo_mixed_widths_component|auto_generated|rs_dgwp|dffpipe10|dffe12a\(2)) # (\inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g\(3) $ (\inst_fifo|dcfifo_mixed_widths_component|auto_generated|rs_dgwp|dffpipe10|dffe12a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g\(2),
	datab => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rs_dgwp|dffpipe10|dffe12a\(2),
	datac => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g\(3),
	datad => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rs_dgwp|dffpipe10|dffe12a\(3),
	combout => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~0_combout\);

\inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdempty_eq_comp|aneb_result_wire\(0) = (\inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~0_combout\) # 
-- (\inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~0_combout\,
	datab => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~1_combout\,
	combout => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdempty_eq_comp|aneb_result_wire\(0));

\inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a1~0_combout\ = \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a1~q\ $ (((!\inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a0~q\ 
-- & (!\inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|parity6~q\ & \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdempty_eq_comp|aneb_result_wire\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a1~q\,
	datab => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a0~q\,
	datac => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|parity6~q\,
	datad => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdempty_eq_comp|aneb_result_wire\(0),
	combout => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a1~0_combout\);

\inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_clockDivider|clk~q\,
	d => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a1~q\);

\inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|_~2_combout\ = \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a0~q\ $ (\inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a1~q\ $ 
-- (\inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a2~q\ $ (!\inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a0~q\,
	datab => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a1~q\,
	datac => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a2~q\,
	datad => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a3~q\,
	combout => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|_~2_combout\);

\inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|parity6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_clockDivider|clk~q\,
	d => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|_~2_combout\,
	ena => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdempty_eq_comp|aneb_result_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|parity6~q\);

\inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a0~0_combout\ = \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a0~q\ $ (((\inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|parity6~q\ & 
-- ((\inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~0_combout\) # (\inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|parity6~q\,
	datab => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a0~q\,
	datac => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~0_combout\,
	datad => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~1_combout\,
	combout => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a0~0_combout\);

\inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_clockDivider|clk~q\,
	d => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a0~q\);

\inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g[0]~0_combout\ = !\inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a0~q\,
	combout => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g[0]~0_combout\);

\inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_clockDivider|clk~q\,
	d => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g[0]~0_combout\,
	ena => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdempty_eq_comp|aneb_result_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g\(0));

\inst_fifo|dcfifo_mixed_widths_component|auto_generated|ws_dgrp|dffpipe13|dffe14a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst_clockRecovery|ALT_INV_clkOut~q\,
	d => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|ws_dgrp|dffpipe13|dffe14a\(0));

\inst_fifo|dcfifo_mixed_widths_component|auto_generated|ws_dgrp|dffpipe13|dffe15a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst_clockRecovery|ALT_INV_clkOut~q\,
	d => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|ws_dgrp|dffpipe13|dffe14a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|ws_dgrp|dffpipe13|dffe15a\(0));

\inst_fifo|dcfifo_mixed_widths_component|auto_generated|ws_dgrp|dffpipe13|dffe14a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst_clockRecovery|ALT_INV_clkOut~q\,
	d => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|ws_dgrp|dffpipe13|dffe14a\(1));

\inst_fifo|dcfifo_mixed_widths_component|auto_generated|ws_dgrp|dffpipe13|dffe15a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst_clockRecovery|ALT_INV_clkOut~q\,
	d => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|ws_dgrp|dffpipe13|dffe14a\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|ws_dgrp|dffpipe13|dffe15a\(1));

\inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~1_combout\ = (\inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g\(3) & ((\inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g\(4) $ 
-- (\inst_fifo|dcfifo_mixed_widths_component|auto_generated|ws_dgrp|dffpipe13|dffe15a\(1))) # (!\inst_fifo|dcfifo_mixed_widths_component|auto_generated|ws_dgrp|dffpipe13|dffe15a\(0)))) # (!\inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g\(3) & 
-- ((\inst_fifo|dcfifo_mixed_widths_component|auto_generated|ws_dgrp|dffpipe13|dffe15a\(0)) # (\inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g\(4) $ (\inst_fifo|dcfifo_mixed_widths_component|auto_generated|ws_dgrp|dffpipe13|dffe15a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g\(3),
	datab => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|ws_dgrp|dffpipe13|dffe15a\(0),
	datac => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g\(4),
	datad => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|ws_dgrp|dffpipe13|dffe15a\(1),
	combout => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~1_combout\);

\inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|_~0_combout\ = (\inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|parity7~q\ & (\inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_comb_bita2~0_combout\ 
-- & ((\inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~0_combout\) # (\inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|parity7~q\,
	datab => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_comb_bita2~0_combout\,
	datac => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~0_combout\,
	datad => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~1_combout\,
	combout => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|_~0_combout\);

\inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a[1]~4_combout\ = \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a\(1) $ 
-- (((\inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a\(0) & \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a\(1),
	datac => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a\(0),
	datad => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|_~0_combout\,
	combout => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a[1]~4_combout\);

\inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_clockRecovery|ALT_INV_clkOut~q\,
	d => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a\(1));

\inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a[3]~1_combout\ = (\inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a\(0)) # 
-- (((!\inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~0_combout\ & !\inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~1_combout\)) # 
-- (!\inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|parity7~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a\(0),
	datab => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|parity7~q\,
	datac => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~0_combout\,
	datad => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~1_combout\,
	combout => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a[3]~1_combout\);

\inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a[3]~2_combout\ = \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a\(3) $ 
-- (((!\inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a\(1) & (\inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_comb_bita2~0_combout\ & 
-- !\inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a\(3),
	datab => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a\(1),
	datac => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_comb_bita2~0_combout\,
	datad => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a[3]~1_combout\,
	combout => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a[3]~2_combout\);

\inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_clockRecovery|ALT_INV_clkOut~q\,
	d => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a\(3));

\inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|_~1_combout\ = \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a\(2) $ (\inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a\(3) $ 
-- (\inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a\(0) $ (\inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a\(2),
	datab => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a\(3),
	datac => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a\(0),
	datad => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a\(1),
	combout => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|_~1_combout\);

\inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|parity7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|parity7~0_combout\ = (\inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrfull_eq_comp|aneb_result_wire\(0) & 
-- ((\inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_comb_bita2~0_combout\ & (!\inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|_~1_combout\)) # 
-- (!\inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_comb_bita2~0_combout\ & ((\inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|parity7~q\))))) # 
-- (!\inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrfull_eq_comp|aneb_result_wire\(0) & (((\inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|parity7~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|_~1_combout\,
	datab => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrfull_eq_comp|aneb_result_wire\(0),
	datac => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_comb_bita2~0_combout\,
	datad => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|parity7~q\,
	combout => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|parity7~0_combout\);

\inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|parity7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_clockRecovery|ALT_INV_clkOut~q\,
	d => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|parity7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|parity7~q\);

\inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a[0]~3_combout\ = \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a\(0) $ (((!\inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|parity7~q\ 
-- & (\inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrfull_eq_comp|aneb_result_wire\(0) & \inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_comb_bita2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a\(0),
	datab => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|parity7~q\,
	datac => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrfull_eq_comp|aneb_result_wire\(0),
	datad => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_comb_bita2~0_combout\,
	combout => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a[0]~3_combout\);

\inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_clockRecovery|ALT_INV_clkOut~q\,
	d => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a\(0));

\inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a[2]~0_combout\ = \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a\(2) $ 
-- (((!\inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a\(0) & (\inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a\(1) & \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a\(2),
	datab => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a\(0),
	datac => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a\(1),
	datad => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|_~0_combout\,
	combout => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a[2]~0_combout\);

\inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_clockRecovery|ALT_INV_clkOut~q\,
	d => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a\(2));

\inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_clockRecovery|ALT_INV_clkOut~q\,
	d => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a\(2),
	ena => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrfull_eq_comp|aneb_result_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g\(5));

\inst_fifo|dcfifo_mixed_widths_component|auto_generated|ws_dgrp|dffpipe13|dffe14a[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst_clockRecovery|ALT_INV_clkOut~q\,
	d => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|ws_dgrp|dffpipe13|dffe14a\(3));

\inst_fifo|dcfifo_mixed_widths_component|auto_generated|ws_dgrp|dffpipe13|dffe15a[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst_clockRecovery|ALT_INV_clkOut~q\,
	d => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|ws_dgrp|dffpipe13|dffe14a\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|ws_dgrp|dffpipe13|dffe15a\(3));

\inst_fifo|dcfifo_mixed_widths_component|auto_generated|ws_dgrp|dffpipe13|dffe14a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst_clockRecovery|ALT_INV_clkOut~q\,
	d => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|ws_dgrp|dffpipe13|dffe14a\(2));

\inst_fifo|dcfifo_mixed_widths_component|auto_generated|ws_dgrp|dffpipe13|dffe15a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst_clockRecovery|ALT_INV_clkOut~q\,
	d => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|ws_dgrp|dffpipe13|dffe14a\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|ws_dgrp|dffpipe13|dffe15a\(2));

\inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~0_combout\ = (\inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g\(5) & 
-- ((\inst_fifo|dcfifo_mixed_widths_component|auto_generated|ws_dgrp|dffpipe13|dffe15a\(2)) # (\inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g\(6) $ (!\inst_fifo|dcfifo_mixed_widths_component|auto_generated|ws_dgrp|dffpipe13|dffe15a\(3))))) # 
-- (!\inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g\(5) & ((\inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g\(6) $ (!\inst_fifo|dcfifo_mixed_widths_component|auto_generated|ws_dgrp|dffpipe13|dffe15a\(3))) # 
-- (!\inst_fifo|dcfifo_mixed_widths_component|auto_generated|ws_dgrp|dffpipe13|dffe15a\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g\(5),
	datab => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g\(6),
	datac => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|ws_dgrp|dffpipe13|dffe15a\(3),
	datad => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|ws_dgrp|dffpipe13|dffe15a\(2),
	combout => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~0_combout\);

\inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrfull_eq_comp|aneb_result_wire\(0) = (\inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~0_combout\) # 
-- (\inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~0_combout\,
	datab => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~1_combout\,
	combout => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrfull_eq_comp|aneb_result_wire\(0));

\dataSerial~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataSerial,
	o => \dataSerial~input_o\);

\inst_clockRecovery|counter[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_clockRecovery|counter[1]~1_combout\ = !\inst_clockRecovery|counter\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_clockRecovery|counter\(1),
	combout => \inst_clockRecovery|counter[1]~1_combout\);

\inst_clockRecovery|edge1|temp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_Pll|altpll_component|auto_generated|wire_pll1_clk\(0),
	d => \dataSerial~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_clockRecovery|edge1|temp~q\);

\inst_clockRecovery|edge1|EDGES\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_clockRecovery|edge1|EDGES~combout\ = \dataSerial~input_o\ $ (\inst_clockRecovery|edge1|temp~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dataSerial~input_o\,
	datad => \inst_clockRecovery|edge1|temp~q\,
	combout => \inst_clockRecovery|edge1|EDGES~combout\);

\inst_clockRecovery|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_Pll|altpll_component|auto_generated|wire_pll1_clk\(0),
	d => \inst_clockRecovery|counter[1]~1_combout\,
	clrn => \inst_clockRecovery|edge1|ALT_INV_EDGES~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_clockRecovery|counter\(1));

\inst_clockRecovery|counter[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_clockRecovery|counter[0]~0_combout\ = \inst_clockRecovery|counter\(0) $ (\inst_clockRecovery|counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_clockRecovery|counter\(0),
	datad => \inst_clockRecovery|counter\(1),
	combout => \inst_clockRecovery|counter[0]~0_combout\);

\inst_clockRecovery|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_Pll|altpll_component|auto_generated|wire_pll1_clk\(0),
	d => \inst_clockRecovery|counter[0]~0_combout\,
	clrn => \inst_clockRecovery|edge1|ALT_INV_EDGES~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_clockRecovery|counter\(0));

\inst_clockRecovery|syncData~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_clockRecovery|syncData~0_combout\ = (\inst_clockRecovery|counter\(0) & (!\inst_clockRecovery|counter\(1) & (\dataSerial~input_o\ $ (!\inst_clockRecovery|edge1|temp~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_clockRecovery|counter\(0),
	datab => \dataSerial~input_o\,
	datac => \inst_clockRecovery|edge1|temp~q\,
	datad => \inst_clockRecovery|counter\(1),
	combout => \inst_clockRecovery|syncData~0_combout\);

\inst_clockRecovery|syncData~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_clockRecovery|syncData~1_combout\ = (\inst_clockRecovery|syncData~0_combout\ & (\dataSerial~input_o\)) # (!\inst_clockRecovery|syncData~0_combout\ & ((\inst_clockRecovery|syncData~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataSerial~input_o\,
	datab => \inst_clockRecovery|syncData~q\,
	datad => \inst_clockRecovery|syncData~0_combout\,
	combout => \inst_clockRecovery|syncData~1_combout\);

\inst_clockRecovery|syncData\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_Pll|altpll_component|auto_generated|wire_pll1_clk\(0),
	d => \inst_clockRecovery|syncData~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_clockRecovery|syncData~q\);

\inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g[0]~0_combout\ = !\inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_reg_bit0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_reg_bit0~q\,
	combout => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g[0]~0_combout\);

\inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_clockRecovery|ALT_INV_clkOut~q\,
	d => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g[0]~0_combout\,
	ena => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrfull_eq_comp|aneb_result_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g\(0));

\inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_clockRecovery|ALT_INV_clkOut~q\,
	d => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_reg_bit1~q\,
	ena => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrfull_eq_comp|aneb_result_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g\(1));

\inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_clockRecovery|ALT_INV_clkOut~q\,
	d => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_reg_bit2~q\,
	ena => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrfull_eq_comp|aneb_result_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g\(2));

\inst_fifo|dcfifo_mixed_widths_component|auto_generated|ram_address_a[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_fifo|dcfifo_mixed_widths_component|auto_generated|ram_address_a\(5) = \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g\(5) $ (\inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g\(5),
	datad => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g\(6),
	combout => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|ram_address_a\(5));

\inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a0~_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a0~_wirecell_combout\ = !\inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a0~q\,
	combout => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a0~_wirecell_combout\);

\inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|_~0_combout\ = \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a2~q\ $ (\inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a2~q\,
	datad => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a3~q\,
	combout => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|_~0_combout\);

\inst_fifo|dcfifo_mixed_widths_component|auto_generated|fifo_ram|ram_block9a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_output_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fifo:inst_fifo|dcfifo_mixed_widths:dcfifo_mixed_widths_component|dcfifo_hgf1:auto_generated|altsyncram_ss01:fifo_ram|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 3,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 8,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 7,
	port_b_logical_ram_depth => 8,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrfull_eq_comp|aneb_result_wire\(0),
	portbre => VCC,
	portbaddrstall => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdempty_eq_comp|ALT_INV_aneb_result_wire\(0),
	clk0 => \inst_clockRecovery|ALT_INV_clkOut~q\,
	clk1 => \inst_clockDivider|clk~q\,
	ena0 => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrfull_eq_comp|aneb_result_wire\(0),
	ena1 => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdempty_eq_comp|aneb_result_wire\(0),
	portadatain => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|fifo_ram|ram_block9a0_PORTADATAIN_bus\,
	portaaddr => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|fifo_ram|ram_block9a0_PORTAADDR_bus\,
	portbaddr => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|fifo_ram|ram_block9a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst_fifo|dcfifo_mixed_widths_component|auto_generated|fifo_ram|ram_block9a0_PORTBDATAOUT_bus\);
END structure;


