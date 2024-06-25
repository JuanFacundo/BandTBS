library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity GeoLoc is
	port(
		clk		: in std_logic;
		Vsync		: in std_logic;
		Pixel		: in std_logic_vector(3 downto 0);
		h_count	: in std_logic_vector(9 downto 0);
		v_count	: in std_logic_vector(9 downto 0);
		
		X_loc		: out std_logic_vector(7 downto 0);
		Y_loc		: out std_logic_vector(7 downto 0)
	);
end entity;

architecture shape of GeoLoc is

signal h_match_count	: std_logic_vector(5 downto 0) := (others => '0');
signal max_match		: std_logic_vector(5 downto 0) := (others => '0');
signal v_max_match	: std_logic_vector(9 downto 0) := (others => '0');
signal reset			: std_logic;

begin
	
	
	BallTracker: process (Vsync,clk)
	
	begin
	
		if Vsync = '1' and reset = '1' then 
			
			x_loc <= v_max_match(7 downto 0);
			y_loc <= v_max_match(7 downto 0);
			
			h_match_count	<= (others => '0');
			max_match		<= (others => '0');
			v_max_match 	<= (others => '0');	
			
			reset <= '0';
		
		else 
			
			if rising_edge(clk) then
			
				if (h_count > 40) and (h_count <= 280) and (Pixel >= 7) then
					h_match_count <= h_match_count + 1;
				end if;
				
				if (h_count = 281) then
					
					if (h_match_count > max_match) then
						
						max_match 	<= h_match_count;
						
						v_max_match <= v_count;
						
					end if;
					
					h_match_count <= (others => '0');
					
					reset <= '1';
				
				end if;
			
			end if;
		
		end if;
			
	end process;
		
end shape;