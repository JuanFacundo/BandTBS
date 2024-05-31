library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity COMTEST is
	port(
		SW			: in std_logic_vector(1 downto 0);
		
		GPIO0_D	: out std_logic_vector(1 downto 0)
	);
end entity;


architecture shape of COMTEST is

begin

	GPIO0_D(1 downto 0) <= SW(1 downto 0);

end shape;