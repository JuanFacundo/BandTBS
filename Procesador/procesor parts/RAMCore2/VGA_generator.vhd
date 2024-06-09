library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

library altera_mf;
use altera_mf.all;

entity VGA_generator is
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
end VGA_generator;

architecture behaviour of VGA_generator is

signal Hsync_aux, Vsync_aux,set_color  : std_logic := '0';
signal video_on, video_on_v, video_on_h: std_logic;
signal h_count, v_count        : unsigned (9 downto 0) := (others => '0');

begin
	 
	 video_on <= video_on_h and video_on_v; 
	 
	 process(clock_25MHz,rst,ena,h_count,v_count)
    begin
		
		if rst = '1' then
		
				Hcount <= (others => '0');
				Vcount <= (others => '0');
				Hsync <= '0';
				Vsync <= '0';
				VideoOn <= '0';
				red <= (others => '0');
				green <= (others => '0');
				blue <= (others => '0');
				
				h_count <= (others => '0');
				V_count <= (others => '0');
				Hsync_aux <= '0';
				Vsync_aux <= '0';
				Video_on_h <= '0';
				Video_on_v <= '0';
					
		elsif rising_edge (clock_25MHz) and ena = '1' then
					
				-- Contador vertical 
				if  (v_count >= 524) and (h_count = 799) then  
					 v_count <= (others => '0');
				elsif (h_count = 799) then
						  v_count <= v_count + 1;
				end if;

				-- Genera sincronismo vertical
				if (v_count >= 493) and (v_count <= 494) then 
					 Vsync_aux <= '0';
				else 
					 Vsync_aux <= '1';
				end if;
				
				-- Contador horizontal
				if (h_count = 799) then
					 h_count <= (others => '0');
				else
					 h_count <= h_count + 1;
				end if;
				
				-- Genera sincronismo horizontal
				if (h_count <= 755) and (h_count >= 659)  then 
					 Hsync_aux <= '0';
				else
					 Hsync_aux <= '1';
				end if;
				
				--habilitación de impresión en pantalla
				if (h_count <= 639) then
					 video_on_h <= '1';
				else 
					 video_on_h <= '0';
				end if;
				
				if (v_count <= 479) then 
					 video_on_v <= '1';
				else
					 video_on_v <= '0';
				end if;
			
				--- Genera cuadrado  de 480 x 480 y sus diagonales 
				if (h_count = 80) or (h_count = 559)   then
					set_color <= '1';
					
				elsif (v_count = 0) or (v_count = 479)	then
					set_color <= '1';
					
				elsif (h_count + v_count - 80  = 0)  and (h_count >= 80) and (h_count <= 559) then
					set_color <= '1';
					
				elsif (h_count - v_count - 560 = 0)  and (h_count >= 80) and (h_count <= 559) then
					set_color <= '1';
					
				else
					set_color <= '0';
					
				end if;
				
				red(3)    <= data_in(3) and (not set_color) and video_on;
				red(2)    <= data_in(2) and (not set_color) and video_on;
				red(1)    <= data_in(1) and (not set_color) and video_on;
				red(0)    <= data_in(0) and (not set_color) and video_on;

				green(3)  <= ( (data_in(3) and (not set_color)) or set_color) and video_on;
				green(2)  <= ( (data_in(2) and (not set_color)) or set_color) and video_on;
				green(1)  <= ( (data_in(1) and (not set_color)) or set_color) and video_on;
				green(0)  <= ( (data_in(0) and (not set_color)) or set_color) and video_on;

				blue(3)   <= data_in(3) and (not set_color) and video_on;
				blue(2)   <= data_in(2) and (not set_color) and video_on;
				blue(1)   <= data_in(1) and (not set_color) and video_on;
				blue(0)   <= data_in(0) and (not set_color) and video_on;

			 
				Hsync  <= Hsync_aux;
				Vsync  <= Vsync_aux;

				Hcount <= h_count;
				Vcount <= v_count;
				
				videoOn <= video_on;
				
		end if; 
				
    end process;
	
	
	
end behaviour;
