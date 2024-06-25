library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

library altera_mf;
use altera_mf.all;

entity VGA_generator is
    port(
        clock_25MHz 	: in std_logic;
        data_in	  	: in std_logic_vector(3 downto 0);
		  rst			  	: in std_logic;
		  ena			  	: in std_logic;
		  enaSquare		: in std_logic;
		  color			: in std_logic_vector(3 downto 0);
		  c_X				: in std_logic_vector(9 downto 0);
		  c_Y				: in std_logic_vector(9 downto 0);
        red         	: out std_logic_vector(3 downto 0);
        green       	: out std_logic_vector(3 downto 0);
        blue        	: out std_logic_vector(3 downto 0);
        Hsync       	: out std_logic;
        Vsync       	: out std_logic;
		  Hcount		  	: out unsigned (9 downto 0);
		  Vcount		  	: out unsigned (9 downto 0);
		  RAMadr			: out std_logic_vector (15 downto 0);
		  enarRAMclk	: out std_logic;
		  VideoOn	  	: out std_logic
    );
end VGA_generator;

architecture behaviour of VGA_generator is

signal Hsync_aux, Vsync_aux    				: std_logic := '0';
signal video_on									: std_logic;
signal h_count, v_count        				: unsigned (9 downto 0) := (others => '0');
signal set_color, isColor						: std_logic;
signal RAM_adr0, RAM_adr1						: std_logic_vector (15 downto 0) := (others => '0');

begin
	 
	
	process(clock_25MHz,rst,ena,h_count,v_count)
   begin
		
		if rst = '1' then
		
			video_on <= '0';
			red <= (others => '0');
			green <= (others => '0');
			blue <= (others => '0');
					
			h_count <= (others => '0');
			v_count <= (others => '0');
			Hsync_aux <= '0';
			Vsync_aux <= '0';

					
		elsif rising_edge (clock_25MHz) and ena = '1' then
        
			h_count <= h_count + 1;
		
			if h_count = 800 then
				h_count <= (others => '0');
			
				v_count <= v_count + 1;
			
				if v_count = 525 then
					v_count <= (others => '0');
				end if;
			
			end if;
		
		
			if (h_count <= 639) and (v_count <= 479) then
				video_on <= '1';
			else
				video_on <= '0';
			end if;

					
			-- Genera sincronismo horizontal
			if  (h_count >= 659) and (h_count <= 755) then 
				 Hsync_aux <= '0';
			else
				 Hsync_aux <= '1';
			end if;
					
					
					
			-- Genera sincronismo vertical
			if (v_count >= 493) and (v_count <= 494) then 
				Vsync_aux <= '0';
			else 
				Vsync_aux <= '1';
			end if;
			
			
			--Genera RAM address
			if (v_count <= 479) and std_logic(v_count(0)) = '0' then
				if (h_count > 79) and (h_count <= 559) and std_logic(h_count(0)) = '1' then
				
					RAM_adr0 <= RAM_adr0 + 1;
					
					if RAM_adr0 = 57599 then
						RAM_adr0 <= (others => '0');
					end if;
				
				end if;
				RAMadr <= RAM_adr0;
			elsif (v_count <= 479) and std_logic(v_count(0)) = '1' then
				if (h_count > 79) and (h_count <= 559) and std_logic(h_count(0)) = '1' then
				
					RAM_adr1 <= RAM_adr1 + 1;
					
					if RAM_adr1 = 57599 then
						RAM_adr1 <= (others => '0');
					end if;
				
				end if;
				RAMadr <= RAM_adr1;
			end if;
			
			
			
			--Genera enaR
			if (h_count >= 79) and (h_count <= 558) and (v_count <= 479) then
				enarRAMclk <= '1';
			else
				enarRAMclk <= '0';
			end if;
		  
						
			--- Genera cuadrado  de 480 x 480 y sus diagonales 
			if (enaSquare = '1') then
				if ( h_count = 80) or (h_count = 559) or (h_count = unsigned(c_X))   then
					set_color <= '1';
				
				elsif ( (( v_count = 0 ) or ( v_count = 479 )) or ( v_count = unsigned(c_Y) ) ) and ( h_count >= 80 ) and ( h_count <= 559 )then
					set_color <= '1'; 
				
				elsif ( h_count - v_count  = 80  )  and (h_count >= 80) and (h_count <= 559) then
					set_color <= '1';
				
				elsif ( h_count + v_count  = 559 )  and (h_count >= 80) and (h_count <= 559) then
					set_color <= '1';
				else
					set_color <= '0';
				end if;
			else
				set_color <= '0';
				
			end if;
			
			if (h_count < 80) or (h_count >= 560) then
				isColor <= '1';
			else
				isColor <= '0';
			end if;
			
			
				red(3)    <= ((data_in(3) and (not set_color) and (not isColor)) or (color(3) and isColor)) and video_on;
				red(2)    <= ((data_in(2) and (not set_color) and (not isColor)) or (color(2) and isColor)) and video_on;
				red(1)    <= ((data_in(1) and (not set_color) and (not isColor)) or (color(1) and isColor)) and video_on;
				red(0)    <= ((data_in(0) and (not set_color) and (not isColor)) or (color(0) and isColor)) and video_on;

				green(3)  <= ((data_in(3) and (not set_color) and (not isColor)) or ((color(3) and isColor) or set_color)) and video_on;
				green(2)  <= ((data_in(2) and (not set_color) and (not isColor)) or ((color(2) and isColor) or set_color)) and video_on;
				green(1)  <= ((data_in(1) and (not set_color) and (not isColor)) or ((color(1) and isColor) or set_color)) and video_on;
				green(0)  <= ((data_in(0) and (not set_color) and (not isColor)) or ((color(0) and isColor) or set_color)) and video_on;

				blue(3)   <= ((data_in(3) and (not set_color) and (not isColor)) or (color(3) and isColor)) and video_on;
				blue(2)   <= ((data_in(2) and (not set_color) and (not isColor)) or (color(2) and isColor)) and video_on;
				blue(1)   <= ((data_in(1) and (not set_color) and (not isColor)) or (color(1) and isColor)) and video_on;
				blue(0)   <= ((data_in(0) and (not set_color) and (not isColor)) or (color(0) and isColor)) and video_on;
		end if; 

		
   end process;
	
	Hsync  <= Hsync_aux;
	Vsync  <= Vsync_aux;

	Hcount <= h_count;
	Vcount <= v_count;
			
	videoOn <= video_on;
	
end behaviour;
