library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

library altera_mf;
use altera_mf.all;

entity VGATEST2 is
    port(
		  CLOCK_50		: in std_logic;
		  SW				: in std_logic_vector(5 downto 0);
		  VGA_R			: out std_logic_vector(3 downto 0);
		  VGA_G			: out std_logic_vector(3 downto 0);
		  VGA_B			: out std_logic_vector(3 downto 0);
		  VGA_HS			: out std_logic;
		  VGA_VS			: out std_logic
    );
end VGATEST2;

architecture behaviour of VGATEST2 is

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

component pll2 is
	port(
		areset		: in std_logic := '0';
		inclk0		: in std_logic := '0';
		c0				: out std_logic
	);
end component;

signal clk25M,video_on			 : std_logic;
signal h_count, v_count        : unsigned (9 downto 0) := (others => '0');
signal data							 : std_logic_vector(3 downto 0):= (others => '0');

begin

	CLK25: pll2 port map(
		areset		=> SW(1),
		inclk0		=> CLOCK_50,
		c0				=> clk25M
	);
	
	VGA_controller : VGA_generator port map(
		clock_25MHz => clk25M , 
		data_in 		=> data,
		rst			=> SW(2),
		ena			=> SW(3),
		red 			=> VGA_R, 
		green 		=> VGA_G, 
		blue 			=> VGA_B, 
		Hsync 		=> VGA_HS, 
		Vsync 		=> VGA_VS,
		Hcount		=> h_count,
		Vcount		=> v_count,  
		VideoOn	  	=> video_on
    );
	 
	 setcolor: process(h_count,v_count,video_on)
	 begin
	 
		if video_on = '1' and h_count <= 60 then
			data <= "0011";
		elsif video_on = '1' and h_count > 60 and h_count <= 120 then
			data <= "0000";
		elsif video_on = '1' and h_count > 120 and h_count <= 180 then
			data <= "0111";
		elsif video_on = '1' and h_count > 180 and h_count <= 240 then
			data <= "0010";
		elsif video_on = '1' and h_count > 240 and h_count <= 300 then
			data <= "1111";
		elsif video_on = '1' and h_count > 300 and h_count <= 480 then
			data <= "0001";
		end if;
	end process;
	
end behaviour;