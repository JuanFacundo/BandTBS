library ieee;
use ieee.std_logic_1164.all;

entity deco_sincero is 

	port(
		numer : in integer range 0 to 9;
		decod : out std_logic_vector(6 downto 0)
	);
	
end entity;

architecture shape of deco_sincero is 
begin

	process(numer)
	begin
		case numer is 
			when 0 => decod  <= "1111111";
			when 1 => decod  <= "1111001";
			when 2 => decod  <= "0100100";
			when 3 => decod  <= "0110000";
			when 4 => decod  <= "0011001";
			when 5 => decod  <= "0010010";
			when 6 => decod  <= "0000010";
			when 7 => decod  <= "1111000";
			when 8 => decod  <= "0000000";
			when 9 => decod  <= "0010000";
		end case ;
	end process;
end shape;