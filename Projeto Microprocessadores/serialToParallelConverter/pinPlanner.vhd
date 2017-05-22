LIBRARY ieee;
USE ieee.std_logic_1164.all; 
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY pinPlanner IS 
   PORT
   (
      SW :  IN  STD_LOGIC_VECTOR(0 downto 0);
		LEDR : OUT STD_LOGIC_VECTOR (7 downto 0);
		CLOCK3_50 : IN STD_LOGIC	
   );
END pinPlanner;

ARCHITECTURE behavior of pinPlanner IS

component serialToParallel is
	PORT
		(
			dataSerial :  IN  STD_LOGIC;
			dataParallel : OUT STD_LOGIC_VECTOR (7 downto 0);
			clock : IN STD_LOGIC 
		);
	end component;

begin
	inst_serialToParallel : serialToParallel PORT MAP
	(
		dataSerial => SW(0),
		dataParallel => LEDR,
		clock => CLOCK3_50
	);
	
END behavior;
