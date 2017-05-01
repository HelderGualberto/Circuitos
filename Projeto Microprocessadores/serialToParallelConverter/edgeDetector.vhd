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

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 16.1.0 Build 196 10/24/2016 SJ Lite Edition"
-- CREATED		"Wed Apr 26 21:33:26 2017"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY edgeDetector IS 
	PORT
	(
		dataClock : IN STD_LOGIC;
		dataSignal :  IN  STD_LOGIC;
		EDGES :  OUT  STD_LOGIC
	);
END edgeDetector;

ARCHITECTURE behavior OF edgeDetector IS 

SIGNAL temp : STD_LOGIC;


BEGIN 


process(dataClock)
    begin
         if rising_edge(dataClock)then
				temp<= dataSignal;
         end if;
    end process;

	 EDGES <= temp xor dataSignal;
	 

END behavior;