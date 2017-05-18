LIBRARY ieee;
USE ieee.std_logic_1164.all; 
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


ENTITY clockDivider8_tb IS
END clockDivider8_tb;

ARCHITECTURE behavior OF clockDivider8_tb IS

SIGNAL clockIn : STD_LOGIC :='0';
SIGNAL clockOut : STD_LOGIC;


COMPONENT clockDivider8
   PORT
   (
      clockIn : IN STD_LOGIC;
      clockOut :  OUT  STD_LOGIC		
   );
END COMPONENT;

BEGIN

inst_clockDivider8 : clockDivider8
    Port map (
		clockIn => clockIn,
		clockOut => clockOut
    ); 

PROCESS
  BEGIN
   clockIn <= '1';
   WAIT FOR 125ns;
   clockIn <= '0';
   WAIT FOR 125ns;
 END PROCESS;


END behavior; 