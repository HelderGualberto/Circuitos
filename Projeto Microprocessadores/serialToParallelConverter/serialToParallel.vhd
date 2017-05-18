
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


component fifo is
      port(
         data		: IN STD_LOGIC_VECTOR (0 DOWNTO 0);
			rdclk		: IN STD_LOGIC ; 
			rdreq		: IN STD_LOGIC ; 
			wrclk		: IN STD_LOGIC ; 
			wrreq		: IN STD_LOGIC ; 
			q		: OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			rdempty		: OUT STD_LOGIC; 
			wrfull		: OUT STD_LOGIC 
      );
   end component;

component pll is
	PORT
		(
			inclk0 : IN STD_LOGIC  := '0';
			c0	: OUT STD_LOGIC ;
			locked : OUT STD_LOGIC 
		);
	end component;
	
component clockRecovery is
      port(
         clockPLL : IN STD_LOGIC;
			dataIn :  IN  STD_LOGIC;
			syncData : OUT STD_LOGIC;
			syncClock : OUT STD_LOGIC
      );
   end component;

component clockDivider8 is
      port(
         clockIn : IN STD_LOGIC;
			clockOut :  OUT  STD_LOGIC
      );
   end component;
	
begin
	
END behavior;