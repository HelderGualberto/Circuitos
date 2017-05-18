LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY pll_tb IS
END pll_tb;


ARCHITECTURE behavior of pll_tb is

COMPONENT pll is
PORT
	(
		inclk0		: IN STD_LOGIC  := '0';
		c0		: OUT STD_LOGIC ;
		locked		: OUT STD_LOGIC 
	);
END COMPONENT;


SIGNAL clkIn : STD_LOGIC:= '0';
SIGNAL clkOut : STD_LOGIC;
SIGNAL locked : STD_LOGIC;

BEGIN

inst_pll : pll
	Port map (
		inclk0 => clkIn,
		c0 => clkOut,
		locked => locked
    ); 
	 
PROCESS
BEGIN
   clkIn <= '1';
   WAIT FOR 10ns;
   clkIn <= '0';
   WAIT FOR 10ns;
 END PROCESS;



END behavior;