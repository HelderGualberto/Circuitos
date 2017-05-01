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
-- Generated on "05/01/2017 12:18:21"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          edgeDetector
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY edgeDetector_vhd_vec_tst IS
END edgeDetector_vhd_vec_tst;
ARCHITECTURE edgeDetector_arch OF edgeDetector_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL dataClock : STD_LOGIC;
SIGNAL dataSignal : STD_LOGIC;
SIGNAL EDGES : STD_LOGIC;
COMPONENT edgeDetector
	PORT (
	dataClock : IN STD_LOGIC;
	dataSignal : IN STD_LOGIC;
	EDGES : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : edgeDetector
	PORT MAP (
-- list connections between master ports and signals
	dataClock => dataClock,
	dataSignal => dataSignal,
	EDGES => EDGES
	);

-- dataClock
t_prcs_dataClock: PROCESS
BEGIN
	FOR i IN 1 TO 24
	LOOP
		dataClock <= '0';
		WAIT FOR 62112 ps;
		dataClock <= '1';
		WAIT FOR 62111 ps;
	END LOOP;
	dataClock <= '0';
WAIT;
END PROCESS t_prcs_dataClock;

-- dataSignal
t_prcs_dataSignal: PROCESS
BEGIN
	dataSignal <= '0';
	WAIT FOR 125000 ps;
	dataSignal <= '1';
	WAIT FOR 250000 ps;
	dataSignal <= '0';
	WAIT FOR 125000 ps;
	dataSignal <= '1';
	WAIT FOR 250000 ps;
	dataSignal <= '0';
	WAIT FOR 500000 ps;
	dataSignal <= '1';
	WAIT FOR 125000 ps;
	dataSignal <= '0';
	WAIT FOR 125000 ps;
	dataSignal <= '1';
	WAIT FOR 375000 ps;
	dataSignal <= '0';
	WAIT FOR 125000 ps;
	dataSignal <= '1';
	WAIT FOR 625000 ps;
	dataSignal <= '0';
	WAIT FOR 125000 ps;
	dataSignal <= '1';
	WAIT FOR 125000 ps;
	dataSignal <= '0';
WAIT;
END PROCESS t_prcs_dataSignal;
END edgeDetector_arch;
