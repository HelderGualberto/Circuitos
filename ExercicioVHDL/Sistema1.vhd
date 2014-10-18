-- Arquivo Sistema1.vhd
-- Sistema integrador dos componentes xor_component,and_component e not_component

library ieee;
use ieee.std_logic_1164.all;

entity Sistema1 is 
	port(
		in1 : in bit;
		in2 : in bit;
		in3 : in bit;
		in4 : in bit;
		in5 : in bit;
		out1 : out bit;
		out2 : out bit
	);
end Sistema1;

architecture arquitetura_sistema of Sistema1 is

	component xor_component
		port(a,b : in bit; c : out bit);
		
	end component; 
	
	component and_component
		port(a,b : in bit; c : out bit);
	end component;
	
	component not_component
		port(a : in bit; b : out bit);
	end component;
	
	signal s1,s2,s3,s4,s5 : bit;
	
	begin
		xor1 : xor_component port map (a => in1,b => in2, c=> s1);
		and1 : and_component port map (a => in3,b => in4, c=> s2);
		and2 : and_component port map (a => s2,b => in5,c => out2);
		and3 : and_component port map (a => s1,b => s2, c => s4);
		inv1 : not_component port map (a => s4,b => out1);		
		
end arquitetura_sistema;
	
		