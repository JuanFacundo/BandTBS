library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity Z_1 is
	port(
		rst		: in std_logic;
		clk_in	: in std_logic;
		
		clk_out	: out std_logic
	);
end entity;


architecture shape of Z_1 is

signal Qt : std_logic;
signal Qd : std_logic_vector(1 downto 0);

begin
	
	Qt <=
		'0' when rst='1' else
		not(Qt) when rising_edge(clk_in);
		
	Qd(0) <=
		'0' when rst='1' else
		Qt when rising_edge(clk_in);
		
	Qd(1) <=
		'0' when rst='1' else
		Qd(0) when rising_edge(clk_in);
	
	clk_out <= Qd(1);

end shape;