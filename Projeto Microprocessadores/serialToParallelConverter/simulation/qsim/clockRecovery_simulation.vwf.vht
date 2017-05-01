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
-- Generated on "05/01/2017 19:27:14"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          clockRecovery
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY clockRecovery_vhd_vec_tst IS
END clockRecovery_vhd_vec_tst;
ARCHITECTURE clockRecovery_arch OF clockRecovery_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clockPLL : STD_LOGIC;
SIGNAL dataIn : STD_LOGIC;
SIGNAL syncClock : STD_LOGIC;
SIGNAL syncData : STD_LOGIC;
COMPONENT clockRecovery
	PORT (
	clockPLL : IN STD_LOGIC;
	dataIn : IN STD_LOGIC;
	syncClock : BUFFER STD_LOGIC;
	syncData : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : clockRecovery
	PORT MAP (
-- list connections between master ports and signals
	clockPLL => clockPLL,
	dataIn => dataIn,
	syncClock => syncClock,
	syncData => syncData
	);

-- clockPLL
t_prcs_clockPLL: PROCESS
BEGIN
LOOP
	clockPLL <= '0';
	WAIT FOR 15625 ps;
	clockPLL <= '1';
	WAIT FOR 15625 ps;
	IF (NOW >= 3000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clockPLL;

-- dataIn
t_prcs_dataIn: PROCESS
BEGIN
	dataIn <= '0';
	WAIT FOR 250000 ps;
	dataIn <= '1';
	WAIT FOR 1125000 ps;
	dataIn <= '0';
	WAIT FOR 250000 ps;
	dataIn <= '1';
	WAIT FOR 125000 ps;
	dataIn <= '0';
	WAIT FOR 250000 ps;
	dataIn <= '1';
WAIT;
END PROCESS t_prcs_dataIn;
END clockRecovery_arch;
