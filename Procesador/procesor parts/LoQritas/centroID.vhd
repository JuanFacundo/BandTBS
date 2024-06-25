library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity centroID is
	port(
		rst							: in std_logic;
		newPix						: in std_logic_vector(3 downto 0);
		pixCLK						: in std_logic;
		HREF							: in std_logic;
		h_cnt							: in std_logic_vector(9 downto 0);
		v_count							: in std_logic_vector(9 downto 0);
		
		c_X							: out std_logic_vector(9 downto 0);
		c_Y							: out std_logic_vector(9 downto 0)
	);
end entity;






architecture shape of centroID is
signal h_count				: std_logic_vector(10 downto 0);
signal whiteCount			: unsigned(8 downto 0);
signal mostCount			: unsigned(8 downto 0);
signal mostLocX			: std_logic_vector(10 downto 0);---------modify length
signal mostLocY			: std_logic_vector(9 downto 0);
signal lastLocX			: std_logic_vector(10 downto 0);---------modify
signal lastLocY			: std_logic_vector(9 downto 0);
signal firstWhite			: std_logic_vector(10 downto 0);
signal lastWhite			: std_logic_vector(10 downto 0);


begin
	
	h_count <= '0' & h_cnt(9 downto 0);
	
	C_WHITE: process(pixCLK, rst)
	begin
		if (rst = '1') then
			whiteCount <= (others => '0');
			mostCount <= (others => '0');
			mostLocX <= (others => '0');
			mostLocY <= (others => '0');
			lastLocX <= (others => '0');
			lastLocY <= (others => '0');
			firstWhite <= (others => '0');
			lastWhite <= (others => '0');

			
		elsif rising_edge(pixCLK) then
			if (h_count > 40) and (h_count <= 280) then
				
				if (newPix >= 14) then
					whiteCount <= whiteCount + 1;
					if (whiteCount = 1) then
						firstWhite <= h_count;
					end if;
					lastWhite <= std_logic_vector(whiteCount(7 downto 0)) + firstWhite;
				end if;
			end if;
			
			if (h_count >= 319) then
				if (whiteCount > mostCount) then
			
					mostCount <= whiteCount;
					mostLocY <= v_count;
					mostLocX <= firstWhite + lastWhite;
				
				end if;
			
				whiteCount <= (others => '0');
				firstWhite <= (others => '0');
				lastWhite <= (others => '0');
			
				if (v_count >= 478) then
					lastLocX <= mostLocX;
					mostLocX <= (others => '0');
					lastLocY <= mostLocY;
					mostLocY <= (others => '0');
					
					mostCount <= (others => '0');
			
				end if;
			
			
			
			end if;
		end if;
	end process;
	
	
	c_X <= lastLocX(9 downto 0);
	c_Y <= lastLocY(9 downto 0);

end shape;