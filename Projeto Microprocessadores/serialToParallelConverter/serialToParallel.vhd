
LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY serialToParallel IS 
	PORT
	(
		dataIn :  IN  STD_LOGIC;
		dataOut : OUT STD_LOGIC_VECTOR (0 to 7)
	);
END serialToParallel;


ARCHITECTURE behavior OF serialToParallel IS 



begin
	
END behavior;