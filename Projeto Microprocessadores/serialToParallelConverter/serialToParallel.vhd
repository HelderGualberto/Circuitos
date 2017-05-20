
LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY serialToParallel IS 
	PORT
	(
		dataSerial :  IN  STD_LOGIC;
		dataParallel : OUT STD_LOGIC_VECTOR (7 downto 0);
		clock : IN STD_LOGIC
	);
END serialToParallel;


ARCHITECTURE behavior OF serialToParallel IS 

SIGNAL syncData : STD_LOGIC;
SIGNAL syncClock : STD_LOGIC;
SIGNAL clockPLL : STD_LOGIC;
SIGNAL locked : STD_LOGIC;
SIGNAL readClock : STD_LOGIC;
SIGNAL rempty : STD_LOGIC := '0';
SIGNAL wfull : STD_LOGIC := '0';
SIGNAL notempty : STD_LOGIC := '1';
SIGNAL notfull : STD_LOGIC := '1';

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
			inclk0 : IN STD_LOGIC := '0';
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

inst_Pll : pll PORT
	map(clock, clockPll, locked);
	
inst_clockDivider : clockDivider8 PORT
	map(syncClock, readClock);

inst_clockRecovery : clockRecovery PORT
	map( clockPLL, dataSerial, syncData, syncClock);
	
inst_fifo : fifo PORT map(
	data(0) => syncData, 
	rdclk => readClock,
	rdreq => notempty,
	wrclk => syncClock,
	wrreq => notfull,
	q => dataParallel,
	rdempty => rempty,
	wrfull => wfull);

notfull <= not wfull;
notempty <= not rempty;

END behavior;