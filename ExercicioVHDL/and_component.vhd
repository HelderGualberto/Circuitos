-- Arquivo and_component.vhd
-- Descreve a porta AND

library ieee;
use ieee.std_logic_1164.all;


entity and_component is
	
	port(
		a : in bit;
		b : in bit;
		c : out bit
	);
	end and_component;
	
	architecture arquitetura_and of and_component is 
	
		begin
			c <= a and b;
			
	end arquitetura_and;
	
