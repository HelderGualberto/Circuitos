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

-- DATE "05/22/2017 12:37:53"

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

ENTITY 	pinPlanner IS
    PORT (
	SW : IN std_logic_vector(0 DOWNTO 0);
	LEDR : OUT std_logic_vector(7 DOWNTO 0);
	CLOCK3_50 : IN std_logic
	);
END pinPlanner;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK3_50	=>  Location: PIN_AG15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF pinPlanner IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_CLOCK3_50 : std_logic;
SIGNAL \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|fifo_ram|ram_block9a0_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|fifo_ram|ram_block9a0_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|fifo_ram|ram_block9a0_PORTBADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|fifo_ram|ram_block9a0_PORTBDATAOUT_bus\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst_serialToParallel|inst_Pll|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst_serialToParallel|inst_Pll|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst_serialToParallel|inst_clockDivider|clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst_serialToParallel|inst_clockRecovery|clkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst_serialToParallel|inst_Pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DCLK~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_nCEO~~padout\ : std_logic;
SIGNAL \~ALTERA_DCLK~~obuf_o\ : std_logic;
SIGNAL \~ALTERA_nCEO~~obuf_o\ : std_logic;
SIGNAL \CLOCK3_50~input_o\ : std_logic;
SIGNAL \inst_serialToParallel|inst_Pll|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \inst_serialToParallel|inst_Pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \inst_serialToParallel|inst_clockRecovery|clockOutCounter[1]~0_combout\ : std_logic;
SIGNAL \inst_serialToParallel|inst_clockRecovery|clkOut~0_combout\ : std_logic;
SIGNAL \inst_serialToParallel|inst_clockRecovery|clkOut~q\ : std_logic;
SIGNAL \inst_serialToParallel|inst_clockRecovery|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \inst_serialToParallel|inst_clockDivider|clkC[1]~1_combout\ : std_logic;
SIGNAL \inst_serialToParallel|inst_clockDivider|clkC[0]~0_combout\ : std_logic;
SIGNAL \inst_serialToParallel|inst_clockDivider|clk~0_combout\ : std_logic;
SIGNAL \inst_serialToParallel|inst_clockDivider|clk~feeder_combout\ : std_logic;
SIGNAL \inst_serialToParallel|inst_clockDivider|clk~q\ : std_logic;
SIGNAL \inst_serialToParallel|inst_clockDivider|clk~clkctrl_outclk\ : std_logic;
SIGNAL \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|delayed_wrptr_g[0]~feeder_combout\ : std_logic;
SIGNAL \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rs_dgwp|dffpipe10|dffe12a[0]~feeder_combout\ : std_logic;
SIGNAL \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g[1]~feeder_combout\ : std_logic;
SIGNAL \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_comb_bita0~combout\ : std_logic;
SIGNAL \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_reg_bit0~0_combout\ : std_logic;
SIGNAL \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_reg_bit0~q\ : std_logic;
SIGNAL \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_comb_bita1~combout\ : std_logic;
SIGNAL \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_reg_bit1~q\ : std_logic;
SIGNAL \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_comb_bita2~combout\ : std_logic;
SIGNAL \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_reg_bit2~q\ : std_logic;
SIGNAL \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_comb_bita2~0_combout\ : std_logic;
SIGNAL \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|_~0_combout\ : std_logic;
SIGNAL \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a[2]~0_combout\ : std_logic;
SIGNAL \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g[5]~feeder_combout\ : std_logic;
SIGNAL \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|delayed_wrptr_g[2]~feeder_combout\ : std_logic;
SIGNAL \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rs_dgwp|dffpipe10|dffe11a[2]~feeder_combout\ : std_logic;
SIGNAL \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rs_dgwp|dffpipe10|dffe12a[2]~feeder_combout\ : std_logic;
SIGNAL \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a[3]~1_combout\ : std_logic;
SIGNAL \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g[6]~feeder_combout\ : std_logic;
SIGNAL \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|delayed_wrptr_g[3]~feeder_combout\ : std_logic;
SIGNAL \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rs_dgwp|dffpipe10|dffe11a[3]~feeder_combout\ : std_logic;
SIGNAL \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~0_combout\ : std_logic;
SIGNAL \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g[4]~feeder_combout\ : std_logic;
SIGNAL \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|delayed_wrptr_g[1]~feeder_combout\ : std_logic;
SIGNAL \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a0~0_combout\ : std_logic;
SIGNAL \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a0~q\ : std_logic;
SIGNAL \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g[0]~0_combout\ : std_logic;
SIGNAL \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~1_combout\ : std_logic;
SIGNAL \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|_~1_combout\ : std_logic;
SIGNAL \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a2~0_combout\ : std_logic;
SIGNAL \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a2~q\ : std_logic;
SIGNAL \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|_~2_combout\ : std_logic;
SIGNAL \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|parity6~q\ : std_logic;
SIGNAL \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a1~0_combout\ : std_logic;
SIGNAL \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a1~q\ : std_logic;
SIGNAL \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a3~0_combout\ : std_logic;
SIGNAL \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a3~q\ : std_logic;
SIGNAL \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g[3]~feeder_combout\ : std_logic;
SIGNAL \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|ws_dgrp|dffpipe13|dffe14a[3]~feeder_combout\ : std_logic;
SIGNAL \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|ws_dgrp|dffpipe13|dffe15a[3]~feeder_combout\ : std_logic;
SIGNAL \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|ws_dgrp|dffpipe13|dffe15a[2]~feeder_combout\ : std_logic;
SIGNAL \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~0_combout\ : std_logic;
SIGNAL \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a[1]~3_combout\ : std_logic;
SIGNAL \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a[1]~4_combout\ : std_logic;
SIGNAL \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|_~1_combout\ : std_logic;
SIGNAL \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|parity7~0_combout\ : std_logic;
SIGNAL \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|parity7~q\ : std_logic;
SIGNAL \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a[0]~2_combout\ : std_logic;
SIGNAL \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g[3]~feeder_combout\ : std_logic;
SIGNAL \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|ws_dgrp|dffpipe13|dffe14a[0]~feeder_combout\ : std_logic;
SIGNAL \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|ws_dgrp|dffpipe13|dffe15a[0]~feeder_combout\ : std_logic;
SIGNAL \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~1_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \inst_serialToParallel|inst_clockRecovery|counter[1]~1_combout\ : std_logic;
SIGNAL \inst_serialToParallel|inst_clockRecovery|edge1|temp~q\ : std_logic;
SIGNAL \inst_serialToParallel|inst_clockRecovery|edge1|EDGES~combout\ : std_logic;
SIGNAL \inst_serialToParallel|inst_clockRecovery|counter[0]~0_combout\ : std_logic;
SIGNAL \inst_serialToParallel|inst_clockRecovery|syncData~0_combout\ : std_logic;
SIGNAL \inst_serialToParallel|inst_clockRecovery|syncData~1_combout\ : std_logic;
SIGNAL \inst_serialToParallel|inst_clockRecovery|syncData~q\ : std_logic;
SIGNAL \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g[0]~0_combout\ : std_logic;
SIGNAL \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a0~_wirecell_combout\ : std_logic;
SIGNAL \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|_~0_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|fifo_ram|q_b\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|ram_address_a\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdempty_eq_comp|aneb_result_wire\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst_serialToParallel|inst_Pll|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|ws_dgrp|dffpipe13|dffe15a\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rs_dgwp|dffpipe10|dffe12a\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrfull_eq_comp|aneb_result_wire\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|ws_dgrp|dffpipe13|dffe14a\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst_serialToParallel|inst_clockDivider|clkC\ : std_logic_vector(0 TO 1);
SIGNAL \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rs_dgwp|dffpipe10|dffe11a\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst_serialToParallel|inst_clockRecovery|clockOutCounter\ : std_logic_vector(0 TO 1);
SIGNAL \inst_serialToParallel|inst_clockRecovery|counter\ : std_logic_vector(0 TO 1);
SIGNAL \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|delayed_wrptr_g\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst_serialToParallel|inst_clockRecovery|ALT_INV_clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \inst_serialToParallel|inst_clockRecovery|edge1|ALT_INV_EDGES~combout\ : std_logic;
SIGNAL \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdempty_eq_comp|ALT_INV_aneb_result_wire\ : std_logic_vector(0 DOWNTO 0);

BEGIN

ww_SW <= SW;
LEDR <= ww_LEDR;
ww_CLOCK3_50 <= CLOCK3_50;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|fifo_ram|ram_block9a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & \inst_serialToParallel|inst_clockRecovery|syncData~q\);

\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|fifo_ram|ram_block9a0_PORTAADDR_bus\ <= (\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|ram_address_a\(5) & 
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g\(4) & \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g\(3) & 
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g\(2) & \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g\(1) & 
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g\(0));

\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|fifo_ram|ram_block9a0_PORTBADDR_bus\ <= (\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|_~0_combout\ & 
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a1~q\ & \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a0~_wirecell_combout\);

\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|fifo_ram|q_b\(0) <= \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|fifo_ram|ram_block9a0_PORTBDATAOUT_bus\(0);
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|fifo_ram|q_b\(1) <= \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|fifo_ram|ram_block9a0_PORTBDATAOUT_bus\(4);
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|fifo_ram|q_b\(2) <= \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|fifo_ram|ram_block9a0_PORTBDATAOUT_bus\(8);
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|fifo_ram|q_b\(3) <= \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|fifo_ram|ram_block9a0_PORTBDATAOUT_bus\(12);
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|fifo_ram|q_b\(4) <= \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|fifo_ram|ram_block9a0_PORTBDATAOUT_bus\(16);
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|fifo_ram|q_b\(5) <= \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|fifo_ram|ram_block9a0_PORTBDATAOUT_bus\(20);
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|fifo_ram|q_b\(6) <= \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|fifo_ram|ram_block9a0_PORTBDATAOUT_bus\(24);
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|fifo_ram|q_b\(7) <= \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|fifo_ram|ram_block9a0_PORTBDATAOUT_bus\(28);

\inst_serialToParallel|inst_Pll|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \CLOCK3_50~input_o\);

\inst_serialToParallel|inst_Pll|altpll_component|auto_generated|wire_pll1_clk\(0) <= \inst_serialToParallel|inst_Pll|altpll_component|auto_generated|pll1_CLK_bus\(0);
\inst_serialToParallel|inst_Pll|altpll_component|auto_generated|wire_pll1_clk\(1) <= \inst_serialToParallel|inst_Pll|altpll_component|auto_generated|pll1_CLK_bus\(1);
\inst_serialToParallel|inst_Pll|altpll_component|auto_generated|wire_pll1_clk\(2) <= \inst_serialToParallel|inst_Pll|altpll_component|auto_generated|pll1_CLK_bus\(2);
\inst_serialToParallel|inst_Pll|altpll_component|auto_generated|wire_pll1_clk\(3) <= \inst_serialToParallel|inst_Pll|altpll_component|auto_generated|pll1_CLK_bus\(3);
\inst_serialToParallel|inst_Pll|altpll_component|auto_generated|wire_pll1_clk\(4) <= \inst_serialToParallel|inst_Pll|altpll_component|auto_generated|pll1_CLK_bus\(4);

\inst_serialToParallel|inst_clockDivider|clk~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst_serialToParallel|inst_clockDivider|clk~q\);

\inst_serialToParallel|inst_clockRecovery|clkOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst_serialToParallel|inst_clockRecovery|clkOut~q\);

\inst_serialToParallel|inst_Pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst_serialToParallel|inst_Pll|altpll_component|auto_generated|wire_pll1_clk\(0));
\inst_serialToParallel|inst_clockRecovery|ALT_INV_clkOut~clkctrl_outclk\ <= NOT \inst_serialToParallel|inst_clockRecovery|clkOut~clkctrl_outclk\;
\inst_serialToParallel|inst_clockRecovery|edge1|ALT_INV_EDGES~combout\ <= NOT \inst_serialToParallel|inst_clockRecovery|edge1|EDGES~combout\;
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdempty_eq_comp|ALT_INV_aneb_result_wire\(0) <= NOT \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdempty_eq_comp|aneb_result_wire\(0);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|fifo_ram|q_b\(0),
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|fifo_ram|q_b\(1),
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|fifo_ram|q_b\(2),
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|fifo_ram|q_b\(3),
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X87_Y73_N16
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|fifo_ram|q_b\(4),
	devoe => ww_devoe,
	o => ww_LEDR(4));

-- Location: IOOBUF_X87_Y73_N9
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|fifo_ram|q_b\(5),
	devoe => ww_devoe,
	o => ww_LEDR(5));

-- Location: IOOBUF_X72_Y73_N9
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|fifo_ram|q_b\(6),
	devoe => ww_devoe,
	o => ww_LEDR(6));

-- Location: IOOBUF_X72_Y73_N2
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|fifo_ram|q_b\(7),
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOIBUF_X58_Y0_N8
\CLOCK3_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK3_50,
	o => \CLOCK3_50~input_o\);

-- Location: PLL_4
\inst_serialToParallel|inst_Pll|altpll_component|auto_generated|pll1\ : cycloneive_pll
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
	simulation_type => "timing",
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
	fbin => \inst_serialToParallel|inst_Pll|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \inst_serialToParallel|inst_Pll|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \inst_serialToParallel|inst_Pll|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \inst_serialToParallel|inst_Pll|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G18
\inst_serialToParallel|inst_Pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst_serialToParallel|inst_Pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst_serialToParallel|inst_Pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X114_Y37_N18
\inst_serialToParallel|inst_clockRecovery|clockOutCounter[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_serialToParallel|inst_clockRecovery|clockOutCounter[1]~0_combout\ = !\inst_serialToParallel|inst_clockRecovery|clockOutCounter\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_serialToParallel|inst_clockRecovery|clockOutCounter\(1),
	combout => \inst_serialToParallel|inst_clockRecovery|clockOutCounter[1]~0_combout\);

-- Location: FF_X114_Y37_N19
\inst_serialToParallel|inst_clockRecovery|clockOutCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_serialToParallel|inst_Pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_serialToParallel|inst_clockRecovery|clockOutCounter[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_serialToParallel|inst_clockRecovery|clockOutCounter\(1));

-- Location: LCCOMB_X114_Y37_N2
\inst_serialToParallel|inst_clockRecovery|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_serialToParallel|inst_clockRecovery|clkOut~0_combout\ = \inst_serialToParallel|inst_clockRecovery|clockOutCounter\(1) $ (!\inst_serialToParallel|inst_clockRecovery|clkOut~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_serialToParallel|inst_clockRecovery|clockOutCounter\(1),
	datac => \inst_serialToParallel|inst_clockRecovery|clkOut~q\,
	combout => \inst_serialToParallel|inst_clockRecovery|clkOut~0_combout\);

-- Location: FF_X114_Y37_N3
\inst_serialToParallel|inst_clockRecovery|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_serialToParallel|inst_Pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_serialToParallel|inst_clockRecovery|clkOut~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_serialToParallel|inst_clockRecovery|clkOut~q\);

-- Location: CLKCTRL_G5
\inst_serialToParallel|inst_clockRecovery|clkOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst_serialToParallel|inst_clockRecovery|clkOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst_serialToParallel|inst_clockRecovery|clkOut~clkctrl_outclk\);

-- Location: LCCOMB_X59_Y72_N22
\inst_serialToParallel|inst_clockDivider|clkC[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_serialToParallel|inst_clockDivider|clkC[1]~1_combout\ = !\inst_serialToParallel|inst_clockDivider|clkC\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_serialToParallel|inst_clockDivider|clkC\(1),
	combout => \inst_serialToParallel|inst_clockDivider|clkC[1]~1_combout\);

-- Location: FF_X59_Y72_N23
\inst_serialToParallel|inst_clockDivider|clkC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_serialToParallel|inst_clockRecovery|ALT_INV_clkOut~clkctrl_outclk\,
	d => \inst_serialToParallel|inst_clockDivider|clkC[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_serialToParallel|inst_clockDivider|clkC\(1));

-- Location: LCCOMB_X59_Y72_N28
\inst_serialToParallel|inst_clockDivider|clkC[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_serialToParallel|inst_clockDivider|clkC[0]~0_combout\ = \inst_serialToParallel|inst_clockDivider|clkC\(0) $ (\inst_serialToParallel|inst_clockDivider|clkC\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_serialToParallel|inst_clockDivider|clkC\(0),
	datad => \inst_serialToParallel|inst_clockDivider|clkC\(1),
	combout => \inst_serialToParallel|inst_clockDivider|clkC[0]~0_combout\);

-- Location: FF_X59_Y72_N29
\inst_serialToParallel|inst_clockDivider|clkC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_serialToParallel|inst_clockRecovery|ALT_INV_clkOut~clkctrl_outclk\,
	d => \inst_serialToParallel|inst_clockDivider|clkC[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_serialToParallel|inst_clockDivider|clkC\(0));

-- Location: LCCOMB_X59_Y72_N26
\inst_serialToParallel|inst_clockDivider|clk~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_serialToParallel|inst_clockDivider|clk~0_combout\ = \inst_serialToParallel|inst_clockDivider|clk~q\ $ (((!\inst_serialToParallel|inst_clockDivider|clkC\(1) & !\inst_serialToParallel|inst_clockDivider|clkC\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_serialToParallel|inst_clockDivider|clk~q\,
	datac => \inst_serialToParallel|inst_clockDivider|clkC\(1),
	datad => \inst_serialToParallel|inst_clockDivider|clkC\(0),
	combout => \inst_serialToParallel|inst_clockDivider|clk~0_combout\);

-- Location: LCCOMB_X59_Y72_N14
\inst_serialToParallel|inst_clockDivider|clk~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_serialToParallel|inst_clockDivider|clk~feeder_combout\ = \inst_serialToParallel|inst_clockDivider|clk~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_serialToParallel|inst_clockDivider|clk~0_combout\,
	combout => \inst_serialToParallel|inst_clockDivider|clk~feeder_combout\);

-- Location: FF_X59_Y72_N15
\inst_serialToParallel|inst_clockDivider|clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_serialToParallel|inst_clockRecovery|ALT_INV_clkOut~clkctrl_outclk\,
	d => \inst_serialToParallel|inst_clockDivider|clk~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_serialToParallel|inst_clockDivider|clk~q\);

-- Location: CLKCTRL_G11
\inst_serialToParallel|inst_clockDivider|clk~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst_serialToParallel|inst_clockDivider|clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst_serialToParallel|inst_clockDivider|clk~clkctrl_outclk\);

-- Location: LCCOMB_X76_Y63_N16
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|delayed_wrptr_g[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|delayed_wrptr_g[0]~feeder_combout\ = \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g\(3),
	combout => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|delayed_wrptr_g[0]~feeder_combout\);

-- Location: FF_X76_Y63_N17
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|delayed_wrptr_g[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_serialToParallel|inst_clockRecovery|ALT_INV_clkOut~clkctrl_outclk\,
	d => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|delayed_wrptr_g[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|delayed_wrptr_g\(0));

-- Location: FF_X77_Y63_N19
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rs_dgwp|dffpipe10|dffe11a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst_serialToParallel|inst_clockDivider|clk~clkctrl_outclk\,
	asdata => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|delayed_wrptr_g\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rs_dgwp|dffpipe10|dffe11a\(0));

-- Location: LCCOMB_X77_Y63_N6
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rs_dgwp|dffpipe10|dffe12a[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rs_dgwp|dffpipe10|dffe12a[0]~feeder_combout\ = \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rs_dgwp|dffpipe10|dffe11a\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rs_dgwp|dffpipe10|dffe11a\(0),
	combout => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rs_dgwp|dffpipe10|dffe12a[0]~feeder_combout\);

-- Location: FF_X77_Y63_N7
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rs_dgwp|dffpipe10|dffe12a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst_serialToParallel|inst_clockDivider|clk~clkctrl_outclk\,
	d => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rs_dgwp|dffpipe10|dffe12a[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rs_dgwp|dffpipe10|dffe12a\(0));

-- Location: LCCOMB_X77_Y63_N28
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g[1]~feeder_combout\ = \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a1~q\,
	combout => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g[1]~feeder_combout\);

-- Location: LCCOMB_X73_Y63_N12
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_comb_bita0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_comb_bita0~combout\ = \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_reg_bit0~q\ $ (GND)
-- \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_comb_bita0~COUT\ = CARRY(!\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_reg_bit0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_reg_bit0~q\,
	datad => VCC,
	combout => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_comb_bita0~combout\,
	cout => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X73_Y63_N20
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_reg_bit0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_reg_bit0~0_combout\ = !\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_comb_bita0~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_comb_bita0~combout\,
	combout => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_reg_bit0~0_combout\);

-- Location: FF_X73_Y63_N21
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_reg_bit0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_serialToParallel|inst_clockRecovery|ALT_INV_clkOut~clkctrl_outclk\,
	d => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_reg_bit0~0_combout\,
	ena => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrfull_eq_comp|aneb_result_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_reg_bit0~q\);

-- Location: LCCOMB_X73_Y63_N14
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_comb_bita1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_comb_bita1~combout\ = (\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_reg_bit1~q\ & 
-- (!\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_comb_bita0~COUT\)) # (!\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_reg_bit1~q\ & 
-- ((\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_comb_bita0~COUT\) # (GND)))
-- \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_comb_bita1~COUT\ = CARRY((!\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_comb_bita0~COUT\) # 
-- (!\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_reg_bit1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_reg_bit1~q\,
	datad => VCC,
	cin => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_comb_bita0~COUT\,
	combout => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_comb_bita1~combout\,
	cout => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_comb_bita1~COUT\);

-- Location: FF_X73_Y63_N15
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_reg_bit1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_serialToParallel|inst_clockRecovery|ALT_INV_clkOut~clkctrl_outclk\,
	d => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_comb_bita1~combout\,
	ena => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrfull_eq_comp|aneb_result_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_reg_bit1~q\);

-- Location: LCCOMB_X73_Y63_N16
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_comb_bita2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_comb_bita2~combout\ = (\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_reg_bit2~q\ & 
-- (\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_comb_bita1~COUT\ $ (GND))) # (!\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_reg_bit2~q\ & 
-- (!\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_comb_bita1~COUT\ & VCC))
-- \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_comb_bita2~COUT\ = CARRY((\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_reg_bit2~q\ & 
-- !\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_reg_bit2~q\,
	datad => VCC,
	cin => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_comb_bita1~COUT\,
	combout => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_comb_bita2~combout\,
	cout => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_comb_bita2~COUT\);

-- Location: FF_X73_Y63_N17
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_reg_bit2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_serialToParallel|inst_clockRecovery|ALT_INV_clkOut~clkctrl_outclk\,
	d => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_comb_bita2~combout\,
	ena => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrfull_eq_comp|aneb_result_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_reg_bit2~q\);

-- Location: LCCOMB_X73_Y63_N18
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_comb_bita2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_comb_bita2~0_combout\ = \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_comb_bita2~COUT\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_comb_bita2~COUT\,
	combout => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_comb_bita2~0_combout\);

-- Location: LCCOMB_X73_Y63_N28
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|_~0_combout\ = (\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|parity7~q\ & 
-- (\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_comb_bita2~0_combout\ & ((\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~1_combout\) # 
-- (\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~1_combout\,
	datab => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~0_combout\,
	datac => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|parity7~q\,
	datad => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_comb_bita2~0_combout\,
	combout => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|_~0_combout\);

-- Location: LCCOMB_X73_Y63_N8
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a[2]~0_combout\ = \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a\(2) $ 
-- (((\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a\(1) & (!\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a\(0) & 
-- \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a\(1),
	datab => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a\(0),
	datac => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a\(2),
	datad => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|_~0_combout\,
	combout => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a[2]~0_combout\);

-- Location: FF_X73_Y63_N9
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_serialToParallel|inst_clockRecovery|ALT_INV_clkOut~clkctrl_outclk\,
	d => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a\(2));

-- Location: LCCOMB_X74_Y63_N18
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g[5]~feeder_combout\ = \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a\(2),
	combout => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g[5]~feeder_combout\);

-- Location: FF_X74_Y63_N19
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_serialToParallel|inst_clockRecovery|ALT_INV_clkOut~clkctrl_outclk\,
	d => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g[5]~feeder_combout\,
	ena => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrfull_eq_comp|aneb_result_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g\(5));

-- Location: LCCOMB_X75_Y63_N14
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|delayed_wrptr_g[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|delayed_wrptr_g[2]~feeder_combout\ = \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g\(5),
	combout => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|delayed_wrptr_g[2]~feeder_combout\);

-- Location: FF_X75_Y63_N15
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|delayed_wrptr_g[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_serialToParallel|inst_clockRecovery|ALT_INV_clkOut~clkctrl_outclk\,
	d => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|delayed_wrptr_g[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|delayed_wrptr_g\(2));

-- Location: LCCOMB_X76_Y63_N12
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rs_dgwp|dffpipe10|dffe11a[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rs_dgwp|dffpipe10|dffe11a[2]~feeder_combout\ = \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|delayed_wrptr_g\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|delayed_wrptr_g\(2),
	combout => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rs_dgwp|dffpipe10|dffe11a[2]~feeder_combout\);

-- Location: FF_X76_Y63_N13
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rs_dgwp|dffpipe10|dffe11a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst_serialToParallel|inst_clockDivider|clk~clkctrl_outclk\,
	d => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rs_dgwp|dffpipe10|dffe11a[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rs_dgwp|dffpipe10|dffe11a\(2));

-- Location: LCCOMB_X77_Y63_N12
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rs_dgwp|dffpipe10|dffe12a[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rs_dgwp|dffpipe10|dffe12a[2]~feeder_combout\ = \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rs_dgwp|dffpipe10|dffe11a\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rs_dgwp|dffpipe10|dffe11a\(2),
	combout => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rs_dgwp|dffpipe10|dffe12a[2]~feeder_combout\);

-- Location: FF_X77_Y63_N13
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rs_dgwp|dffpipe10|dffe12a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst_serialToParallel|inst_clockDivider|clk~clkctrl_outclk\,
	d => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rs_dgwp|dffpipe10|dffe12a[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rs_dgwp|dffpipe10|dffe12a\(2));

-- Location: LCCOMB_X73_Y63_N26
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a[3]~1_combout\ = \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a\(3) $ 
-- (((!\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a\(1) & (!\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a\(0) & 
-- \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a\(1),
	datab => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a\(0),
	datac => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a\(3),
	datad => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|_~0_combout\,
	combout => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a[3]~1_combout\);

-- Location: FF_X73_Y63_N27
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_serialToParallel|inst_clockRecovery|ALT_INV_clkOut~clkctrl_outclk\,
	d => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a\(3));

-- Location: LCCOMB_X74_Y63_N26
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g[6]~feeder_combout\ = \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a\(3),
	combout => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g[6]~feeder_combout\);

-- Location: FF_X74_Y63_N27
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_serialToParallel|inst_clockRecovery|ALT_INV_clkOut~clkctrl_outclk\,
	d => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g[6]~feeder_combout\,
	ena => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrfull_eq_comp|aneb_result_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g\(6));

-- Location: LCCOMB_X75_Y63_N24
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|delayed_wrptr_g[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|delayed_wrptr_g[3]~feeder_combout\ = \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g\(6),
	combout => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|delayed_wrptr_g[3]~feeder_combout\);

-- Location: FF_X75_Y63_N25
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|delayed_wrptr_g[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_serialToParallel|inst_clockRecovery|ALT_INV_clkOut~clkctrl_outclk\,
	d => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|delayed_wrptr_g[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|delayed_wrptr_g\(3));

-- Location: LCCOMB_X76_Y63_N6
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rs_dgwp|dffpipe10|dffe11a[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rs_dgwp|dffpipe10|dffe11a[3]~feeder_combout\ = \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|delayed_wrptr_g\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|delayed_wrptr_g\(3),
	combout => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rs_dgwp|dffpipe10|dffe11a[3]~feeder_combout\);

-- Location: FF_X76_Y63_N7
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rs_dgwp|dffpipe10|dffe11a[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst_serialToParallel|inst_clockDivider|clk~clkctrl_outclk\,
	d => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rs_dgwp|dffpipe10|dffe11a[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rs_dgwp|dffpipe10|dffe11a\(3));

-- Location: FF_X77_Y63_N11
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rs_dgwp|dffpipe10|dffe12a[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst_serialToParallel|inst_clockDivider|clk~clkctrl_outclk\,
	asdata => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rs_dgwp|dffpipe10|dffe11a\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rs_dgwp|dffpipe10|dffe12a\(3));

-- Location: FF_X77_Y63_N3
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_serialToParallel|inst_clockDivider|clk~clkctrl_outclk\,
	asdata => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a2~q\,
	sload => VCC,
	ena => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdempty_eq_comp|aneb_result_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g\(2));

-- Location: LCCOMB_X77_Y63_N10
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~0_combout\ = (\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rs_dgwp|dffpipe10|dffe12a\(2) & 
-- ((\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g\(3) $ (\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rs_dgwp|dffpipe10|dffe12a\(3))) # 
-- (!\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g\(2)))) # (!\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rs_dgwp|dffpipe10|dffe12a\(2) & 
-- ((\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g\(2)) # (\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g\(3) $ 
-- (\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rs_dgwp|dffpipe10|dffe12a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rs_dgwp|dffpipe10|dffe12a\(2),
	datab => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g\(3),
	datac => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rs_dgwp|dffpipe10|dffe12a\(3),
	datad => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g\(2),
	combout => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~0_combout\);

-- Location: LCCOMB_X77_Y63_N14
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdempty_eq_comp|aneb_result_wire\(0) = (\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~1_combout\) # 
-- (\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~1_combout\,
	datad => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~0_combout\,
	combout => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdempty_eq_comp|aneb_result_wire\(0));

-- Location: FF_X77_Y63_N29
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_serialToParallel|inst_clockDivider|clk~clkctrl_outclk\,
	d => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g[1]~feeder_combout\,
	ena => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdempty_eq_comp|aneb_result_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g\(1));

-- Location: LCCOMB_X74_Y63_N2
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g[4]~feeder_combout\ = \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a\(1),
	combout => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g[4]~feeder_combout\);

-- Location: FF_X74_Y63_N3
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_serialToParallel|inst_clockRecovery|ALT_INV_clkOut~clkctrl_outclk\,
	d => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g[4]~feeder_combout\,
	ena => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrfull_eq_comp|aneb_result_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g\(4));

-- Location: LCCOMB_X76_Y63_N26
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|delayed_wrptr_g[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|delayed_wrptr_g[1]~feeder_combout\ = \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g\(4),
	combout => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|delayed_wrptr_g[1]~feeder_combout\);

-- Location: FF_X76_Y63_N27
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|delayed_wrptr_g[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_serialToParallel|inst_clockRecovery|ALT_INV_clkOut~clkctrl_outclk\,
	d => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|delayed_wrptr_g[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|delayed_wrptr_g\(1));

-- Location: FF_X77_Y63_N15
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rs_dgwp|dffpipe10|dffe11a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst_serialToParallel|inst_clockDivider|clk~clkctrl_outclk\,
	asdata => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|delayed_wrptr_g\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rs_dgwp|dffpipe10|dffe11a\(1));

-- Location: FF_X77_Y63_N17
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rs_dgwp|dffpipe10|dffe12a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst_serialToParallel|inst_clockDivider|clk~clkctrl_outclk\,
	asdata => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rs_dgwp|dffpipe10|dffe11a\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rs_dgwp|dffpipe10|dffe12a\(1));

-- Location: LCCOMB_X77_Y63_N8
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a0~0_combout\ = \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a0~q\ $ 
-- (((\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|parity6~q\ & ((\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~1_combout\) # 
-- (\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|parity6~q\,
	datab => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~1_combout\,
	datac => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a0~q\,
	datad => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~0_combout\,
	combout => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a0~0_combout\);

-- Location: FF_X77_Y63_N9
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_serialToParallel|inst_clockDivider|clk~clkctrl_outclk\,
	d => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a0~q\);

-- Location: LCCOMB_X77_Y63_N24
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g[0]~0_combout\ = !\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a0~q\,
	combout => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g[0]~0_combout\);

-- Location: FF_X77_Y63_N25
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_serialToParallel|inst_clockDivider|clk~clkctrl_outclk\,
	d => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g[0]~0_combout\,
	ena => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdempty_eq_comp|aneb_result_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g\(0));

-- Location: LCCOMB_X77_Y63_N16
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~1_combout\ = (\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rs_dgwp|dffpipe10|dffe12a\(0) & 
-- ((\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g\(1) $ (\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rs_dgwp|dffpipe10|dffe12a\(1))) # 
-- (!\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g\(0)))) # (!\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rs_dgwp|dffpipe10|dffe12a\(0) & 
-- ((\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g\(0)) # (\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g\(1) $ 
-- (\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rs_dgwp|dffpipe10|dffe12a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rs_dgwp|dffpipe10|dffe12a\(0),
	datab => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g\(1),
	datac => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rs_dgwp|dffpipe10|dffe12a\(1),
	datad => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g\(0),
	combout => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~1_combout\);

-- Location: LCCOMB_X77_Y63_N0
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|_~1_combout\ = (!\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|parity6~q\ & 
-- (\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a0~q\ & ((\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~1_combout\) # 
-- (\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|parity6~q\,
	datab => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~1_combout\,
	datac => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a0~q\,
	datad => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdempty_eq_comp|aneb_result_wire[0]~0_combout\,
	combout => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|_~1_combout\);

-- Location: LCCOMB_X77_Y63_N4
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a2~0_combout\ = \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a2~q\ $ 
-- (((\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a1~q\ & \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|_~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a1~q\,
	datac => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a2~q\,
	datad => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|_~1_combout\,
	combout => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a2~0_combout\);

-- Location: FF_X77_Y63_N5
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_serialToParallel|inst_clockDivider|clk~clkctrl_outclk\,
	d => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a2~q\);

-- Location: LCCOMB_X77_Y63_N22
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|_~2_combout\ = \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a3~q\ $ 
-- (\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a2~q\ $ (\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a1~q\ $ 
-- (!\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a3~q\,
	datab => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a2~q\,
	datac => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a1~q\,
	datad => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a0~q\,
	combout => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|_~2_combout\);

-- Location: FF_X77_Y63_N23
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|parity6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_serialToParallel|inst_clockDivider|clk~clkctrl_outclk\,
	d => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|_~2_combout\,
	ena => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdempty_eq_comp|aneb_result_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|parity6~q\);

-- Location: LCCOMB_X77_Y63_N30
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a1~0_combout\ = \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a1~q\ $ 
-- (((!\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|parity6~q\ & (\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdempty_eq_comp|aneb_result_wire\(0) & 
-- !\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|parity6~q\,
	datab => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdempty_eq_comp|aneb_result_wire\(0),
	datac => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a1~q\,
	datad => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a0~q\,
	combout => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a1~0_combout\);

-- Location: FF_X77_Y63_N31
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_serialToParallel|inst_clockDivider|clk~clkctrl_outclk\,
	d => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a1~q\);

-- Location: LCCOMB_X77_Y63_N26
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a3~0_combout\ = \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a3~q\ $ 
-- (((!\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a1~q\ & \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|_~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a1~q\,
	datac => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a3~q\,
	datad => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|_~1_combout\,
	combout => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a3~0_combout\);

-- Location: FF_X77_Y63_N27
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_serialToParallel|inst_clockDivider|clk~clkctrl_outclk\,
	d => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a3~q\);

-- Location: LCCOMB_X77_Y63_N20
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g[3]~feeder_combout\ = \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a3~q\,
	combout => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g[3]~feeder_combout\);

-- Location: FF_X77_Y63_N21
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_serialToParallel|inst_clockDivider|clk~clkctrl_outclk\,
	d => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g[3]~feeder_combout\,
	ena => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdempty_eq_comp|aneb_result_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g\(3));

-- Location: LCCOMB_X74_Y63_N28
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|ws_dgrp|dffpipe13|dffe14a[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|ws_dgrp|dffpipe13|dffe14a[3]~feeder_combout\ = \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g\(3),
	combout => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|ws_dgrp|dffpipe13|dffe14a[3]~feeder_combout\);

-- Location: FF_X74_Y63_N29
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|ws_dgrp|dffpipe13|dffe14a[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst_serialToParallel|inst_clockRecovery|ALT_INV_clkOut~clkctrl_outclk\,
	d => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|ws_dgrp|dffpipe13|dffe14a[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|ws_dgrp|dffpipe13|dffe14a\(3));

-- Location: LCCOMB_X74_Y63_N6
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|ws_dgrp|dffpipe13|dffe15a[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|ws_dgrp|dffpipe13|dffe15a[3]~feeder_combout\ = \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|ws_dgrp|dffpipe13|dffe14a\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|ws_dgrp|dffpipe13|dffe14a\(3),
	combout => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|ws_dgrp|dffpipe13|dffe15a[3]~feeder_combout\);

-- Location: FF_X74_Y63_N7
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|ws_dgrp|dffpipe13|dffe15a[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst_serialToParallel|inst_clockRecovery|ALT_INV_clkOut~clkctrl_outclk\,
	d => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|ws_dgrp|dffpipe13|dffe15a[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|ws_dgrp|dffpipe13|dffe15a\(3));

-- Location: FF_X74_Y63_N21
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|ws_dgrp|dffpipe13|dffe14a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst_serialToParallel|inst_clockRecovery|ALT_INV_clkOut~clkctrl_outclk\,
	asdata => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|ws_dgrp|dffpipe13|dffe14a\(2));

-- Location: LCCOMB_X74_Y63_N16
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|ws_dgrp|dffpipe13|dffe15a[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|ws_dgrp|dffpipe13|dffe15a[2]~feeder_combout\ = \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|ws_dgrp|dffpipe13|dffe14a\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|ws_dgrp|dffpipe13|dffe14a\(2),
	combout => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|ws_dgrp|dffpipe13|dffe15a[2]~feeder_combout\);

-- Location: FF_X74_Y63_N17
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|ws_dgrp|dffpipe13|dffe15a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst_serialToParallel|inst_clockRecovery|ALT_INV_clkOut~clkctrl_outclk\,
	d => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|ws_dgrp|dffpipe13|dffe15a[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|ws_dgrp|dffpipe13|dffe15a\(2));

-- Location: LCCOMB_X74_Y63_N24
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~0_combout\ = (\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|ws_dgrp|dffpipe13|dffe15a\(3) & 
-- ((\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g\(6)) # (\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|ws_dgrp|dffpipe13|dffe15a\(2) $ 
-- (!\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g\(5))))) # (!\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|ws_dgrp|dffpipe13|dffe15a\(3) & 
-- ((\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|ws_dgrp|dffpipe13|dffe15a\(2) $ (!\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g\(5))) # 
-- (!\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110110110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|ws_dgrp|dffpipe13|dffe15a\(3),
	datab => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|ws_dgrp|dffpipe13|dffe15a\(2),
	datac => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g\(6),
	datad => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g\(5),
	combout => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~0_combout\);

-- Location: LCCOMB_X74_Y63_N4
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a[1]~3_combout\ = (\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|parity7~q\ & 
-- ((\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~1_combout\) # 
-- (\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~1_combout\,
	datab => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|parity7~q\,
	datad => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~0_combout\,
	combout => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a[1]~3_combout\);

-- Location: LCCOMB_X73_Y63_N6
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a[1]~4_combout\ = \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a\(1) $ 
-- (((\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a[1]~3_combout\ & (\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a\(0) & 
-- \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_comb_bita2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a[1]~3_combout\,
	datab => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a\(0),
	datac => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a\(1),
	datad => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_comb_bita2~0_combout\,
	combout => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a[1]~4_combout\);

-- Location: FF_X73_Y63_N7
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_serialToParallel|inst_clockRecovery|ALT_INV_clkOut~clkctrl_outclk\,
	d => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a\(1));

-- Location: LCCOMB_X73_Y63_N10
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|_~1_combout\ = \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a\(1) $ 
-- (\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a\(2) $ (\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a\(3) $ 
-- (\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a\(1),
	datab => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a\(2),
	datac => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a\(3),
	datad => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a\(0),
	combout => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|_~1_combout\);

-- Location: LCCOMB_X73_Y63_N22
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|parity7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|parity7~0_combout\ = (\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrfull_eq_comp|aneb_result_wire\(0) & 
-- ((\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_comb_bita2~0_combout\ & (!\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|_~1_combout\)) # 
-- (!\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_comb_bita2~0_combout\ & ((\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|parity7~q\))))) # 
-- (!\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrfull_eq_comp|aneb_result_wire\(0) & (((\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|parity7~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|_~1_combout\,
	datab => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrfull_eq_comp|aneb_result_wire\(0),
	datac => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|parity7~q\,
	datad => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_comb_bita2~0_combout\,
	combout => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|parity7~0_combout\);

-- Location: FF_X73_Y63_N23
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|parity7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_serialToParallel|inst_clockRecovery|ALT_INV_clkOut~clkctrl_outclk\,
	d => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|parity7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|parity7~q\);

-- Location: LCCOMB_X73_Y63_N24
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a[0]~2_combout\ = \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a\(0) $ 
-- (((!\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|parity7~q\ & (\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrfull_eq_comp|aneb_result_wire\(0) & 
-- \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_comb_bita2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|parity7~q\,
	datab => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrfull_eq_comp|aneb_result_wire\(0),
	datac => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a\(0),
	datad => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_comb_bita2~0_combout\,
	combout => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a[0]~2_combout\);

-- Location: FF_X73_Y63_N25
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_serialToParallel|inst_clockRecovery|ALT_INV_clkOut~clkctrl_outclk\,
	d => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a\(0));

-- Location: LCCOMB_X74_Y63_N10
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g[3]~feeder_combout\ = \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g1p|counter8a\(0),
	combout => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g[3]~feeder_combout\);

-- Location: FF_X74_Y63_N11
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_serialToParallel|inst_clockRecovery|ALT_INV_clkOut~clkctrl_outclk\,
	d => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g[3]~feeder_combout\,
	ena => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrfull_eq_comp|aneb_result_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g\(3));

-- Location: LCCOMB_X74_Y63_N22
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|ws_dgrp|dffpipe13|dffe14a[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|ws_dgrp|dffpipe13|dffe14a[0]~feeder_combout\ = \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g\(0),
	combout => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|ws_dgrp|dffpipe13|dffe14a[0]~feeder_combout\);

-- Location: FF_X74_Y63_N23
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|ws_dgrp|dffpipe13|dffe14a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst_serialToParallel|inst_clockRecovery|ALT_INV_clkOut~clkctrl_outclk\,
	d => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|ws_dgrp|dffpipe13|dffe14a[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|ws_dgrp|dffpipe13|dffe14a\(0));

-- Location: LCCOMB_X74_Y63_N0
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|ws_dgrp|dffpipe13|dffe15a[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|ws_dgrp|dffpipe13|dffe15a[0]~feeder_combout\ = \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|ws_dgrp|dffpipe13|dffe14a\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|ws_dgrp|dffpipe13|dffe14a\(0),
	combout => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|ws_dgrp|dffpipe13|dffe15a[0]~feeder_combout\);

-- Location: FF_X74_Y63_N1
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|ws_dgrp|dffpipe13|dffe15a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst_serialToParallel|inst_clockRecovery|ALT_INV_clkOut~clkctrl_outclk\,
	d => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|ws_dgrp|dffpipe13|dffe15a[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|ws_dgrp|dffpipe13|dffe15a\(0));

-- Location: FF_X74_Y63_N9
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|ws_dgrp|dffpipe13|dffe14a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst_serialToParallel|inst_clockRecovery|ALT_INV_clkOut~clkctrl_outclk\,
	asdata => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|ws_dgrp|dffpipe13|dffe14a\(1));

-- Location: FF_X74_Y63_N31
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|ws_dgrp|dffpipe13|dffe15a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst_serialToParallel|inst_clockRecovery|ALT_INV_clkOut~clkctrl_outclk\,
	asdata => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|ws_dgrp|dffpipe13|dffe14a\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|ws_dgrp|dffpipe13|dffe15a\(1));

-- Location: LCCOMB_X74_Y63_N30
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~1_combout\ = (\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g\(3) & 
-- ((\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|ws_dgrp|dffpipe13|dffe15a\(1) $ (\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g\(4))) # 
-- (!\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|ws_dgrp|dffpipe13|dffe15a\(0)))) # (!\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g\(3) & 
-- ((\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|ws_dgrp|dffpipe13|dffe15a\(0)) # (\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|ws_dgrp|dffpipe13|dffe15a\(1) $ 
-- (\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g\(3),
	datab => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|ws_dgrp|dffpipe13|dffe15a\(0),
	datac => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|ws_dgrp|dffpipe13|dffe15a\(1),
	datad => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g\(4),
	combout => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~1_combout\);

-- Location: LCCOMB_X74_Y63_N12
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrfull_eq_comp|aneb_result_wire\(0) = (\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~1_combout\) # 
-- (\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~1_combout\,
	datad => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrfull_eq_comp|aneb_result_wire[0]~0_combout\,
	combout => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrfull_eq_comp|aneb_result_wire\(0));

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LCCOMB_X83_Y63_N26
\inst_serialToParallel|inst_clockRecovery|counter[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_serialToParallel|inst_clockRecovery|counter[1]~1_combout\ = !\inst_serialToParallel|inst_clockRecovery|counter\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_serialToParallel|inst_clockRecovery|counter\(1),
	combout => \inst_serialToParallel|inst_clockRecovery|counter[1]~1_combout\);

-- Location: FF_X83_Y63_N21
\inst_serialToParallel|inst_clockRecovery|edge1|temp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_serialToParallel|inst_Pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_serialToParallel|inst_clockRecovery|edge1|temp~q\);

-- Location: LCCOMB_X83_Y63_N28
\inst_serialToParallel|inst_clockRecovery|edge1|EDGES\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_serialToParallel|inst_clockRecovery|edge1|EDGES~combout\ = \inst_serialToParallel|inst_clockRecovery|edge1|temp~q\ $ (\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_serialToParallel|inst_clockRecovery|edge1|temp~q\,
	datad => \SW[0]~input_o\,
	combout => \inst_serialToParallel|inst_clockRecovery|edge1|EDGES~combout\);

-- Location: FF_X83_Y63_N27
\inst_serialToParallel|inst_clockRecovery|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_serialToParallel|inst_Pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_serialToParallel|inst_clockRecovery|counter[1]~1_combout\,
	clrn => \inst_serialToParallel|inst_clockRecovery|edge1|ALT_INV_EDGES~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_serialToParallel|inst_clockRecovery|counter\(1));

-- Location: LCCOMB_X83_Y63_N18
\inst_serialToParallel|inst_clockRecovery|counter[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_serialToParallel|inst_clockRecovery|counter[0]~0_combout\ = \inst_serialToParallel|inst_clockRecovery|counter\(0) $ (\inst_serialToParallel|inst_clockRecovery|counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_serialToParallel|inst_clockRecovery|counter\(0),
	datad => \inst_serialToParallel|inst_clockRecovery|counter\(1),
	combout => \inst_serialToParallel|inst_clockRecovery|counter[0]~0_combout\);

-- Location: FF_X83_Y63_N19
\inst_serialToParallel|inst_clockRecovery|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_serialToParallel|inst_Pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_serialToParallel|inst_clockRecovery|counter[0]~0_combout\,
	clrn => \inst_serialToParallel|inst_clockRecovery|edge1|ALT_INV_EDGES~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_serialToParallel|inst_clockRecovery|counter\(0));

-- Location: LCCOMB_X83_Y63_N20
\inst_serialToParallel|inst_clockRecovery|syncData~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_serialToParallel|inst_clockRecovery|syncData~0_combout\ = (\inst_serialToParallel|inst_clockRecovery|counter\(0) & (!\inst_serialToParallel|inst_clockRecovery|counter\(1) & (\SW[0]~input_o\ $ 
-- (!\inst_serialToParallel|inst_clockRecovery|edge1|temp~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \inst_serialToParallel|inst_clockRecovery|counter\(0),
	datac => \inst_serialToParallel|inst_clockRecovery|edge1|temp~q\,
	datad => \inst_serialToParallel|inst_clockRecovery|counter\(1),
	combout => \inst_serialToParallel|inst_clockRecovery|syncData~0_combout\);

-- Location: LCCOMB_X83_Y63_N24
\inst_serialToParallel|inst_clockRecovery|syncData~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_serialToParallel|inst_clockRecovery|syncData~1_combout\ = (\inst_serialToParallel|inst_clockRecovery|syncData~0_combout\ & ((\SW[0]~input_o\))) # (!\inst_serialToParallel|inst_clockRecovery|syncData~0_combout\ & 
-- (\inst_serialToParallel|inst_clockRecovery|syncData~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_serialToParallel|inst_clockRecovery|syncData~0_combout\,
	datac => \inst_serialToParallel|inst_clockRecovery|syncData~q\,
	datad => \SW[0]~input_o\,
	combout => \inst_serialToParallel|inst_clockRecovery|syncData~1_combout\);

-- Location: FF_X83_Y63_N25
\inst_serialToParallel|inst_clockRecovery|syncData\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_serialToParallel|inst_Pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_serialToParallel|inst_clockRecovery|syncData~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_serialToParallel|inst_clockRecovery|syncData~q\);

-- Location: LCCOMB_X74_Y63_N14
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g[0]~0_combout\ = !\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_reg_bit0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_reg_bit0~q\,
	combout => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g[0]~0_combout\);

-- Location: FF_X74_Y63_N15
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_serialToParallel|inst_clockRecovery|ALT_INV_clkOut~clkctrl_outclk\,
	d => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g[0]~0_combout\,
	ena => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrfull_eq_comp|aneb_result_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g\(0));

-- Location: FF_X74_Y63_N13
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_serialToParallel|inst_clockRecovery|ALT_INV_clkOut~clkctrl_outclk\,
	asdata => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_reg_bit1~q\,
	sload => VCC,
	ena => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrfull_eq_comp|aneb_result_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g\(1));

-- Location: FF_X74_Y63_N5
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_serialToParallel|inst_clockRecovery|ALT_INV_clkOut~clkctrl_outclk\,
	asdata => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|cntr_b|counter_reg_bit2~q\,
	sload => VCC,
	ena => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrfull_eq_comp|aneb_result_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g\(2));

-- Location: LCCOMB_X75_Y63_N0
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|ram_address_a[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|ram_address_a\(5) = \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g\(5) $ 
-- (\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g\(5),
	datac => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrptr_g\(6),
	combout => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|ram_address_a\(5));

-- Location: LCCOMB_X77_Y63_N2
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a0~_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a0~_wirecell_combout\ = !\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a0~q\,
	combout => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a0~_wirecell_combout\);

-- Location: LCCOMB_X77_Y63_N18
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|_~0_combout\ = \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a3~q\ $ 
-- (\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a3~q\,
	datad => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|counter5a2~q\,
	combout => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdptr_g1p|_~0_combout\);

-- Location: LCCOMB_X79_Y63_N16
\~QUARTUS_CREATED_GND~I\ : cycloneive_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: M9K_X78_Y63_N0
\inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|fifo_ram|ram_block9a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_output_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "serialToParallel:inst_serialToParallel|fifo:inst_fifo|dcfifo_mixed_widths:dcfifo_mixed_widths_component|dcfifo_hgf1:auto_generated|altsyncram_ss01:fifo_ram|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
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
	port_b_data_width => 32,
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
	portawe => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrfull_eq_comp|aneb_result_wire\(0),
	portbre => VCC,
	portbaddrstall => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdempty_eq_comp|ALT_INV_aneb_result_wire\(0),
	clk0 => \inst_serialToParallel|inst_clockRecovery|ALT_INV_clkOut~clkctrl_outclk\,
	clk1 => \inst_serialToParallel|inst_clockDivider|clk~clkctrl_outclk\,
	ena0 => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|wrfull_eq_comp|aneb_result_wire\(0),
	ena1 => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|rdempty_eq_comp|aneb_result_wire\(0),
	portadatain => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|fifo_ram|ram_block9a0_PORTADATAIN_bus\,
	portaaddr => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|fifo_ram|ram_block9a0_PORTAADDR_bus\,
	portbaddr => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|fifo_ram|ram_block9a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst_serialToParallel|inst_fifo|dcfifo_mixed_widths_component|auto_generated|fifo_ram|ram_block9a0_PORTBDATAOUT_bus\);
END structure;


