library IEEE;
use ieee.std_logic_1164.all;


entity FullAdd is
	port(
		dA : in std_logic;
		dB : in std_logic;
		ci : in std_logic;
		co : out std_logic;
		s : out std_logic
	);
end entity;

architecture shape of FullAdd is
	begin
		s <= dA xor dB xor ci;
		co <= (dA and dB) or (dA and ci) or (dB and ci);
end shape;