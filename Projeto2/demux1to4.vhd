-- demultiplexer 1 to 4

LIBRARY ieee;
use ieee.std_logic_1164.all;

ENTITY demux1to4 is
	port(
		A : in std_logic_vector(0 to 6);
		S : in std_logic_vector(0 to 1);
		u,v,w,x : out std_logic_vector(0 to 6)
	);
end demux1to4;

ARCHITECTURE comport of demux1to4 is
	begin
	
	u <= A when S = "00" else "0000000";
	v <= A when S = "01" else "0000000";
	w <= A when S = "10" else "0000000";
	x <= A when S = "11" else "0000000";
	
end comport;