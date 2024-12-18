library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity counterSync19 is
	port(
		clk		: in std_logic;
		rst		: in std_logic;
		
		count		: out std_logic_vector(18 downto 0)
	);
end entity;


architecture shape of counterSync19 is

component Ttype is
	port(
		clk		: in std_logic;
		sync_rst	: in std_logic;
		rst		: in std_logic;
		ena		: in std_logic;
		T			: in std_logic;
		
		Q			: out std_logic
	);
end component;

signal T_aux		: std_logic_vector(18 downto 0);
signal Q_aux		: std_logic_vector(18 downto 0);
signal rstSync		: std_logic;

begin

	CONTR: for n in 0 to 18 generate
		Treg: Ttype port map(
			clk 		=> clk,
			sync_rst => rstSync,
			rst		=> rst,
			ena		=> '1',
			T			=> T_aux(n),
			Q			=> Q_aux(n)
		);
	end generate;


	T_aux(18 downto 0) <= Q_aux(17 downto 0) & '1';

	rstSync <= '0';
	
	count <= Q_aux;

end shape;