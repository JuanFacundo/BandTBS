library ieee;
use ieee.std_logic_1164.all;

entity Ttype is
	port(
		clk		: in std_logic;
		--sync_rst	: in std_logic;
		rst		: in std_logic;
		--ena		: in std_logic;
		T			: in std_logic;
		
		Q			: out std_logic
	);
end entity;

architecture shape of Ttype is
signal Qaux, Daux : std_logic;

begin
	
	Daux <= Qaux xor T;

	
	
	Qaux <=
		'0' when rst='1' else
		Daux when rising_edge(clk);
	
	Q <= Qaux;
	
end shape;