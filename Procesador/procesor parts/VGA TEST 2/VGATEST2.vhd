library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

library altera_mf;
use altera_mf.all;

entity VGATEST2 is
    port(
		  CLOCK_50		: in std_logic;
		  SW				: in std_logic_vector(2 downto 0);
		  VGA_R			: out std_logic_vector(3 downto 0);
		  VGA_G			: out std_logic_vector(3 downto 0);
		  VGA_B			: out std_logic_vector(3 downto 0);
		  VGA_HS			: out std_logic;
		  VGA_VS			: out std_logic;
		  
		  GPIO0_D		: out std_logic_vector(1 downto 0)
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

signal clk25M,video_on			 	: std_logic;
signal h_count, v_count        	: unsigned (9 downto 0) := (others => '0');
signal data							 	: std_logic_vector(3 downto 0):= (others => '0');
signal Hsync, Vsync					: std_logic;
signal tap								: std_logic_vector(3 downto 0);
signal m									: std_logic;
signal count							: unsigned(9 downto 0) := (others => '0');

begin

	CLK25: pll2 port map(
		areset		=> SW(0),
		inclk0		=> CLOCK_50,
		c0				=> clk25M
	);
	
	VGA_controller : VGA_generator port map(
		clock_25MHz => clk25M, 
		data_in 		=> data,
		rst			=> SW(1),
		ena			=> SW(2),
		red 			=> tap, 
		green 		=> VGA_G, 
		blue 			=> VGA_B, 
		Hsync 		=> Hsync, 
		Vsync 		=> Vsync,
		Hcount		=> h_count,
		Vcount		=> v_count,  
		VideoOn	  	=> video_on
    );
	 
	 VGA_R <= tap;
	 VGA_VS <= Vsync;
	 VGA_HS <= Hsync;
	 
	 setcolor: process(h_count,v_count,video_on)
	 begin
	 
		if video_on = '1' and h_count <= 1 then
			data <= "1111";
		elsif video_on = '1' and v_count = 0 then
			data <= "1111";
		elsif video_on = '1' and v_count = 479 then
			data <= "1111";
		elsif video_on = '1' and h_count - v_count - 80 < 3  and h_count >= 80 then
			data <= "0011";
		elsif video_on = '1' and 480 - h_count - v_count + 80 < 3  and h_count >= 80 then
			data <= "0011";
		elsif video_on = '1' and h_count = 80 then
			data <= "1111";
		elsif video_on = '1' and h_count = 560 then
			data <= "1111";
		elsif video_on = '1' and h_count >= 639 then
			data <= "1111";
		else
			data <= "0000";
		end if;
	end process;
	
	GPIO0_D(0) <= Hsync;
	--GPIO0_D(1) <= video_on;
	
	
	
	cyclecount: process(clk25M)
	begin
		if falling_edge(clk25M) and Hsync = '1' then
			count <= count + 1;
		end if;
		
		if Hsync = '0' then
			count <= (others => '0');
		end if;
		
		
		if count >= 44 and count <= 683 then
			m <= '1';
		else
			m <= '0';
		end if;
	end process;
			
	GPIO0_D(1) <= m;
end behaviour;