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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "05/20/2017 10:59:54"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          serialToParallel
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY serialToParallel_vhd_vec_tst IS
END serialToParallel_vhd_vec_tst;
ARCHITECTURE serialToParallel_arch OF serialToParallel_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock : STD_LOGIC;
SIGNAL dataParallel : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL dataSerial : STD_LOGIC;
COMPONENT serialToParallel
	PORT (
	clock : IN STD_LOGIC;
	dataParallel : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	dataSerial : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : serialToParallel
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	dataParallel => dataParallel,
	dataSerial => dataSerial
	);

-- clock
t_prcs_clock: PROCESS
BEGIN
LOOP
	clock <= '0';
	WAIT FOR 10000 ps;
	clock <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 10000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock;

-- dataSerial
t_prcs_dataSerial: PROCESS
BEGIN
	dataSerial <= '0';
	WAIT FOR 125000 ps;
	dataSerial <= '1';
	WAIT FOR 750000 ps;
	dataSerial <= '0';
	WAIT FOR 500000 ps;
	dataSerial <= '1';
	WAIT FOR 125000 ps;
	dataSerial <= '0';
	WAIT FOR 625000 ps;
	dataSerial <= '1';
	WAIT FOR 125000 ps;
	dataSerial <= '0';
	WAIT FOR 125000 ps;
	dataSerial <= '1';
	WAIT FOR 250000 ps;
	dataSerial <= '0';
	WAIT FOR 250000 ps;
	dataSerial <= '1';
	WAIT FOR 250000 ps;
	dataSerial <= '0';
	WAIT FOR 250000 ps;
	dataSerial <= '1';
	WAIT FOR 625000 ps;
	dataSerial <= '0';
	WAIT FOR 125000 ps;
	dataSerial <= '1';
	WAIT FOR 375000 ps;
	dataSerial <= '0';
	WAIT FOR 250000 ps;
	dataSerial <= '1';
	WAIT FOR 375000 ps;
	dataSerial <= '0';
	WAIT FOR 125000 ps;
	dataSerial <= '1';
	WAIT FOR 125000 ps;
	dataSerial <= '0';
	WAIT FOR 125000 ps;
	dataSerial <= '1';
	WAIT FOR 250000 ps;
	dataSerial <= '0';
	WAIT FOR 125000 ps;
	dataSerial <= '1';
	WAIT FOR 250000 ps;
	dataSerial <= '0';
	WAIT FOR 375000 ps;
	dataSerial <= '1';
	WAIT FOR 125000 ps;
	dataSerial <= '0';
	WAIT FOR 250000 ps;
	dataSerial <= '1';
	WAIT FOR 125000 ps;
	dataSerial <= '0';
	WAIT FOR 875000 ps;
	dataSerial <= '1';
	WAIT FOR 125000 ps;
	dataSerial <= '0';
	WAIT FOR 125000 ps;
	dataSerial <= '1';
	WAIT FOR 750000 ps;
	dataSerial <= '0';
	WAIT FOR 375000 ps;
	dataSerial <= '1';
	WAIT FOR 500000 ps;
	dataSerial <= '0';
	WAIT FOR 125000 ps;
	dataSerial <= '1';
WAIT;
END PROCESS t_prcs_dataSerial;
END serialToParallel_arch;
