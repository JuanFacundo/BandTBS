library ieee;
use ieee.std_logic_1164.all;

entity Ttype is
	port(
		clk		: in std_logic;
		sync_rst	: in std_logic;
		rst		: in std_logic;
		ena		: in std_logic;
		T			: in std_logic;
		
		Q			: out std_logic
	);
end entity;

architecture shape of Ttype is
signal Qaux, Taux : std_logic;

begin
	
	Taux <=  T when ena = '0' else
				'0' when ena = '1';

	
	Pr0: process(clk, rst, sync_rst, Taux)
	begin
		if rst = '1' then
			Qaux <= '0';
		elsif rising_edge(clk) then
			if sync_rst = '1' then
				Qaux <= '0';
			else
				if Taux = '1' then
					Qaux <= not Qaux;
				else
					Qaux <= Qaux;
				end if;
			end if;
		end if;
	end process;
	
	Q <= Qaux;
	
end shape;