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
-- Generated on "05/14/2017 19:02:34"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          clockDivider8
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY clockDivider8_vhd_vec_tst IS
END clockDivider8_vhd_vec_tst;
ARCHITECTURE clockDivider8_arch OF clockDivider8_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clockIn : STD_LOGIC;
SIGNAL clockOut : STD_LOGIC;
COMPONENT clockDivider8
	PORT (
	clockIn : IN STD_LOGIC;
	clockOut : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : clockDivider8
	PORT MAP (
-- list connections between master ports and signals
	clockIn => clockIn,
	clockOut => clockOut
	);

-- clockIn
t_prcs_clockIn: PROCESS
BEGIN
LOOP
	clockIn <= '0';
	WAIT FOR 15625 ps;
	clockIn <= '1';
	WAIT FOR 15625 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clockIn;
END clockDivider8_arch;
