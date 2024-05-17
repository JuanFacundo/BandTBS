library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;


entity div800k is
	port(
		rst			: in std_logic;
		clk_800k		: out std_logic;
		
		clk_50M		: in std_logic
	);
end entity;



architecture shape of div800k is

signal Qaux, Daux		: std_logic_vector(5 downto 0);

begin
	
	Daux <= not(Qaux);
	
	Qaux(0) <= 
		'0' when rst='1' else
		Daux(0) when rising_edge(clk_50M);
	
	divisor: for n in 1 to 5 generate
		Qaux(n) <=
			'0' when rst='1' else
			Daux(n) when rising_edge(Qaux(n-1));
	end generate;
	
	clk_800k <= Qaux(5);

end shape;