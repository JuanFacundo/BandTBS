library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity counterSync10 is
	port(
		clk		: in std_logic;
		rst		: in std_logic;
		
		count		: out std_logic_vector(9 downto 0)
	);
end entity;






architecture shape of counterSync10 is

component Ttype is
	port(
		clk		: in std_logic;
		--sync_rst	: in std_logic;
		rst		: in std_logic;
		--ena		: in std_logic;
		T			: in std_logic;
		
		Q			: out std_logic
	);
end component;

type superand is
	array (0 to 8) of std_logic_vector(8 downto 0);

signal Taux		: std_logic_vector(9 downto 0);
signal Qaux		: std_logic_vector(9 downto 0);
signal rstSync		: std_logic;
signal ander		: superand;

begin

	CONTR: for n in 0 to 9 generate
		Treg: Ttype port map(
			clk 		=> clk,
			--sync_rst => rstSync,
			rst		=> rst,
			--ena		=> '1',
			T			=> Taux(n),
			Q			=> Qaux(n)
		);
	end generate;

	Taux(0) <= '1';
	anderer: for n in 0 to 8 generate
		ander(n)(0) <= Qaux(0);
		single_ander: for m in 1 to n generate
			ander(n)(m) <= Qaux(m) and ander(n)(m-1);
		end generate;
		Taux(n+1) <= ander(n)(n);
	end generate;
	
	
	count <= Qaux;

end shape;