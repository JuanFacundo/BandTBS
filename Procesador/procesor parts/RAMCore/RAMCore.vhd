library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;



entity RAMCore is
	port(
		clkWrite				: in std_logic;
		clkRead				: in std_logic;
		
		--enaR					: in std_logic;
		--enaW					: in std_logic;
		
		D_in					: in std_logic_vector(3 downto 0);
		VS_in					: in std_logic;
		HREF					: in std_logic;
		
	);
end entity;



architecture shape of RAMCore is






end shape;