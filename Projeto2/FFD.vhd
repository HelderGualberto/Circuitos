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

-- PROGRAM		"Quartus II 64-Bit"
-- VERSION		"Version 14.0.0 Build 200 06/17/2014 SJ Web Edition"
-- CREATED		"Sun Oct 26 14:25:37 2014"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY FFD IS 
	PORT
	(
		CLR :  IN  STD_LOGIC;
		D :  IN  STD_LOGIC;
		CLK :  IN  STD_LOGIC;
		Q :  OUT  STD_LOGIC
	);
END FFD;

ARCHITECTURE bdf_type OF FFD IS 



BEGIN 



PROCESS(CLK,CLR)
BEGIN
IF (CLR = '0') THEN
	Q <= '0';
ELSIF (RISING_EDGE(CLK)) THEN
	Q <= D;
END IF;
END PROCESS;


END bdf_type;