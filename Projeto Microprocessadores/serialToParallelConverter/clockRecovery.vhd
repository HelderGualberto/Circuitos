LIBRARY ieee;
USE ieee.std_logic_1164.all; 
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

LIBRARY work;

ENTITY clockRecovery IS 
	PORT
	(
		clockPLL : IN STD_LOGIC;
		dataIn :  IN  STD_LOGIC;
		syncData : OUT STD_LOGIC;
		syncClock : OUT STD_LOGIC
	);
END clockRecovery;

ARCHITECTURE behavior of clockRecovery is

SIGNAL edge : STD_LOGIC := '0';
SIGNAL clkOut : STD_LOGIC := '1';
SIGNAL counter : STD_LOGIC_VECTOR(0 to 1) := "00";
SIGNAL clockOutCounter : STD_LOGIC_VECTOR(0 to 1) := "00";

component edgeDetector is
		port(
			dataClock : IN STD_LOGIC;
			dataSignal :  IN  STD_LOGIC;
			EDGES :  OUT  STD_LOGIC
		);
	end component;
	
begin


process(clockPLL)
	begin
	if edge = '1' then
		counter <= "00";
	elsif rising_edge(clockPLL) then
		counter <= counter + 1;		
		if counter = "10" then
			syncData <= dataIn;
		end if;
	end if;
	
end process;

process(clockPLL)
	begin
	if rising_edge(clockPLL) then
		clockOutCOunter <= clockOutCounter + 1;
		if clockOutCounter = "00" or clockOutCounter = "10" then
			clkOut <= (not clkOut);
		end if;
	end if;
end process;


edge1 : edgeDetector port map(clockPLL, dataIn, edge);
syncClock <= clkOut;

	
END behavior;