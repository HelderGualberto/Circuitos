-- Arquivo xor_component.vhd
-- Objeto da porta xor.

library ieee;
use ieee.std_logic_1164.all;

entity xor_component is
	port(
		a : in bit;
		b : in bit;
		c : out bit
	);
end xor_component;

architecture arquitetura_xor of xor_component is

	begin
		c <= a xor b;
		
end arquitetura_xor;