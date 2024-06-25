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
		h_count						: in std_logic_vector(9 downto 0);
		v_count						: in std_logic_vector(9 downto 0);
		
		c_X							: out std_logic_vector(9 downto 0);
		c_Y							: out std_logic_vector(9 downto 0)
	);
end entity;






architecture shape of centroID is
signal whiteCount			: unsigned(8 downto 0);
signal mostCount			: unsigned(8 downto 0);
signal mostLoc				: std_logic_vector(9 downto 0);
signal lastLoc				: std_logic_vector(9 downto 0);

begin

	C_WHITE: process(pixCLK, rst)
	begin
		if (rst = '1') then
			whiteCount <= (others => '0');
			mostCount <= (others => '0');
			mostLoc <= (others => '0');
			lastLoc <= (others => '0');

			
		elsif rising_edge(pixCLK) then
			
			if (newPix >= 14) then
				whiteCount <= whiteCount + 1;
			end if;
			
			if (h_count >= 319) then
				if (whiteCount > mostCount) then
				
					mostCount <= whiteCount;
					mostLoc <= v_count;
					
				end if;
				
				whiteCount <= (others => '0');
				
				if (v_count >= 478) then
				
					lastLoc <= mostLoc;
					mostLoc <= (others => '0');
					mostCount <= (others => '0');
				
				end if;
				
				
				
			end if;
		end if;
	end process;
	
	
	c_X <= (others => '0');
	c_Y <= lastLoc(9 downto 0);

end shape;