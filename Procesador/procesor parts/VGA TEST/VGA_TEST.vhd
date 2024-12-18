library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

library altera_mf;
use altera_mf.all;

entity VGA_TEST is
	port(
		CLOCK_50		: in std_logic;
		SW				: in std_logic_vector(5 downto 0);
		VGA_R			: out std_logic_vector(3 downto 0);
		VGA_G			: out std_logic_vector(3 downto 0);
		VGA_B			: out std_logic_vector(3 downto 0);
		VGA_HS		: out std_logic;
		VGA_VS		: out std_logic;
		GPIO0_D		: out std_logic_vector(1 downto 0)
   );
end entity;

architecture behaviour of VGA_TEST is

component VGA_generator is
    port(
        clock_25MHz : in std_logic;
        data_in	  : in std_logic_vector(3 downto 0);
        red         : out std_logic_vector(3 downto 0);
        green       : out std_logic_vector(3 downto 0);
        blue        : out std_logic_vector(3 downto 0);
        Hsync       : out std_logic;
        Vsync       : out std_logic
    );
end component;

component pll2 is
	port(
		areset		: in std_logic := '0';
		inclk0		: in std_logic := '0';
		c0				: out std_logic
	);
end component;

signal clk25M			: std_logic;
signal ena				: std_logic;
begin

	CLK25: pll2 port map(
		areset		=> SW(1),
		inclk0		=> CLOCK_50,
		c0				=> clk25M
	);
	
	VGA_controller : VGA_generator port map(
		clock_25MHz => clk25M , 
		data_in 		=> "0000", 
		red 			=> VGA_R, 
		green 		=> VGA_G, 
		blue 			=> VGA_B, 
		Hsync 		=> VGA_HS, 
		Vsync 		=> VGA_VS
	);
		
	GPIO0_D(0) <= clk25M;
	--GPIO0_D(1) <= 
    
end behaviour;