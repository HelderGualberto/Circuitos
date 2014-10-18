-- Arquivo not_component.hdl
-- objeto da porta inversora

library ieee;
use ieee.std_logic_1164.all;

entity not_component is
	port(
		a : in bit;
		b : out bit
	);
end not_component;

architecture arquitetura_not of not_component is

	begin
		b <= not a;
		
end arquitetura_not;