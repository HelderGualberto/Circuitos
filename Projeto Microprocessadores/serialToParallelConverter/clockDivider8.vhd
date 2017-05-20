LIBRARY ieee;
USE ieee.std_logic_1164.all; 
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY clockDivider8 IS 
   PORT
   (
      clockIn : IN STD_LOGIC;
      clockOut :  OUT  STD_LOGIC		
   );
END clockDivider8;

ARCHITECTURE behavior of clockDivider8 IS

SIGNAL clk : STD_LOGIC := '0';
SIGNAL clkC : STD_LOGIC_VECTOR (0 to 1) := "00";

begin

	process(clockIn)
   begin
   if rising_edge(clockIn) then
      clkC <= clkC + 1;
      if clkC = "00" then
         clk <= (not clk);
      end if;	
   end if;
end process;

clockOut <= clk;

END behavior;