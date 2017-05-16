
-- Libraries
LIBRARY ieee;
use IEEE.STD_LOGIC_ARITH.ALL;
USE ieee.numeric_std.ALL;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;
USE ieee.std_logic_textio.ALL;
USE std.textio.ALL;

--  Entity Declaration - Testbench
ENTITY clockRecovery_tb IS
END clockRecovery_tb;

--  Architecture Body
ARCHITECTURE arq OF clockRecovery_tb IS

 
COMPONENT clockRecovery
     PORT
   (
      clockPLL : IN STD_LOGIC;
      dataIn :  IN  STD_LOGIC;
      syncData : OUT STD_LOGIC;
      syncClock : OUT STD_LOGIC
		
   );        
end component; 

 

 -- signals
 signal clockPLL           : std_logic := '0';
 signal dataIn          	: std_logic := '0';
 signal syncData           : std_logic := '0'; 
 signal syncClock          : std_logic := '0';
 signal countClk 	: std_logic_vector(0 to 1) := "00";
 
 signal bitvector     : std_logic_vector(15 downto 0) := (others => '0');
 
--------------------------------------------------------------------------------
-- TestBench Architecture
--------------------------------------------------------------------------------
BEGIN
 
inst_clockRecovery : clockRecovery
    Port map (      
      clockPLL   => clockPLL,
      dataIn   => dataIn,
      syncData   => syncData,
		syncClock => syncClock
    );             


ClockGenProc:
 PROCESS
  BEGIN
   clockPLL <= '1';
   WAIT FOR 10ns;
   clockPLL <= '0';
   WAIT FOR 10ns;
 END PROCESS;
 
CounterClk2:
PROCESS
  BEGIN
    wait until rising_edge(clockPLL);
    countClk <= countClk + 1;
END PROCESS;


BitGenProc:
 PROCESS
  BEGIN
    bitvector <= "0101010000110101";
    for i in 0 to bitvector'length-1 loop
      dataIn <= bitvector(i);
      wait until countClk = "00";
    end loop;
    wait;    
 END PROCESS;
 

END arq;
-- End of file








