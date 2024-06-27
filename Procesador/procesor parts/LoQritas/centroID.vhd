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
		h_count							: in std_logic_vector(9 downto 0);
		v_count							: in std_logic_vector(9 downto 0);
		
		c_X							: out std_logic_vector(9 downto 0);
		c_Y							: out std_logic_vector(9 downto 0)
	);
end entity;






architecture shape of centroID is

signal whiteCount			: unsigned(8 downto 0);
signal mostCount			: unsigned(8 downto 0);
signal mostLocX			: std_logic_vector(9 downto 0);
signal mostLocY			: std_logic_vector(9 downto 0);
signal lastLocX			: std_logic_vector(9 downto 0);
signal lastLocY			: std_logic_vector(9 downto 0);
signal firstWhite			: std_logic_vector(9 downto 0);
signal lastWhite			: std_logic_vector(9 downto 0);
signal firstRow			: std_logic_vector(9 downto 0);
signal lastRow				: std_logic_vector(9 downto 0);


begin
	
	
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
					lastRow <= v_count;
				end if;
			end if;
			
			if (h_count >= 319) then
				if (whiteCount > mostCount) then
					if (mostCount = 0) then
						firstRow <= v_count;
					end if;
					
					mostCount <= whiteCount;
					mostLocX <= firstWhite + lastWhite;
					mostLocY <= firstRow + lastRow;
					
				end if;
			
				whiteCount <= (others => '0');
				firstWhite <= (others => '0');
				lastWhite <= (others => '0');
			
				if (v_count >= 478) then
					lastLocX <= mostLocX;
					mostLocX <= (others => '0');
					lastLocY <= '0' & mostLocY(9 downto 1);		--divide by 2
					mostLocY <= (others => '0');
					
					mostCount <= (others => '0');
			
				end if;
			
			
			
			end if;
		end if;
	end process;
	
	
	c_X <= lastLocX(9 downto 0);
	c_Y <= lastLocY(9 downto 0);

end shape;