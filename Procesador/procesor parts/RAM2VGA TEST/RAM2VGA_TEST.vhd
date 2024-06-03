library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

library altera_mf;
use altera_mf.all;

entity RAM2VGA_TEST is
    port(
		  CLOCK_50		: in std_logic;
		  SW				: in std_logic_vector(5 downto 0);
		  VGA_R			: out std_logic_vector(3 downto 0);
		  VGA_G			: out std_logic_vector(3 downto 0);
		  VGA_B			: out std_logic_vector(3 downto 0);
		  VGA_HS			: out std_logic;
		  VGA_VS			: out std_logic
    );
end RAM2VGA_TEST;







architecture shape of RAM2VGA_TEST is

component VGA_generator is
    port(
        clock_25MHz : in std_logic;
        data_in	  : in std_logic_vector(3 downto 0);
		  rst			  : in std_logic;
		  ena			  : in std_logic;
        red         : out std_logic_vector(3 downto 0);
        green       : out std_logic_vector(3 downto 0);
        blue        : out std_logic_vector(3 downto 0);
        Hsync       : out std_logic;
        Vsync       : out std_logic;
		  Hcount		  : out unsigned (9 downto 0);
		  Vcount		  : out unsigned (9 downto 0);
		  VideoOn	  : out std_logic
    );
end component;


component RAMdrive is
	port(
		clkWrite			: in std_logic;
		clkRead			: in std_logic;
		
		D_in				: in std_logic_vector(31 downto 0);
		D_out				: out std_logic_vector(3 downto 0);
		
		writeEna			: in std_logic;
		readEna			: in std_logic;
		
		clear				: in std_logic;
		rstCount16		: in std_logic;
		rstCount19		: in std_logic
		
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
signal ena25M			: std_logic;
signal RAMclk			: std_logic;
signal Hcount,Vcount : unsigned (9 downto 0);
signal fallCount		: unsigned (9 downto 0);
signal D_read			: std_logic;
signal Hsync,Vsync	: std_logic;
signal VGAdata			: std_logic_vector(3 downto 0);
signal rstRead			: std_logic;



begin

	ena <= SW(0);

	CLK25: pll2 port map(
		areset		=> SW(1),
		inclk0		=> CLOCK_50,
		c0				=> clk25M
	);
	
	VGA_controller : VGA_generator port map(
		clock_25MHz => clk25M,			--: in std_logic;
		data_in		=> VGAdata,			--: in std_logic_vector(3 downto 0);
		rst			=> SW(1),				--: in std_logic;
		ena			=> ena,				--: in std_logic;
		red         => VGA_R,				--: out std_logic_vector(3 downto 0);
		green       => VGA_G,				--: out std_logic_vector(3 downto 0);
		blue        => VGA_B,				--: out std_logic_vector(3 downto 0);
		Hsync       => Hsync,			--: out std_logic;
		Vsync       => Vsync,			--: out std_logic;
		Hcount		=> Hcount,			--: out unsigned (9 downto 0);
		Vcount		=> Vcount,			--: out unsigned (9 downto 0);
		VideoOn	  	=> D_read				--: out std_logic
   );
	
	VGA_HS <= Hsync;
	VGA_VS <= Vsync;
	
	cyclecount: process(clk25M)
	begin
		if falling_edge(clk25M) and Hsync = '1' then
			fallCount <= fallCount + 1;
		end if;
		
		if Hsync = '0' then
			fallCount <= (others => '0');
		end if;
		
		
		if fallCount >= 44 and fallCount <= 683 then
			ena25M <= '1';
		else
			ena25M <= '0';
		end if;
	end process;
	
	RAMclk <= not(clk25M) and ena25M;
	
	rstRead <= not(Vsync);
	
	RAMbus: RAMdrive port map(
		clkWrite			=> clk25M,			--: in std_logic;
		clkRead			=> RAMclk,			--: in std_logic;
		
		D_in				=> "00000000000000000000000000001111",			--: in std_logic_vector(31 downto 0);
		D_out				=> VGAdata,			--: out std_logic_vector(3 downto 0);
		
		writeEna			=> '1',				--: in std_logic;
		readEna			=> SW(0),			--: in std_logic;
		
		clear				=> SW(1),			--: in std_logic;
		rstCount16		=> SW(1),			--: in std_logic;
		rstCount19		=> rstRead
	);
    
end shape;