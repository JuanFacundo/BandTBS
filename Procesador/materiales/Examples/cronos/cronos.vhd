library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity cronos is
	port(
		CLOCK_50	: in std_logic;
		SW			: in std_logic_vector(1 downto 0); --switch
		-- displays
		HEX0_D 	: out std_logic_vector(6 downto 0);
		HEX1_D	: out std_logic_vector(6 downto 0);
		HEX2_D 	: out std_logic_vector(6 downto 0);
		HEX3_D 	: out std_logic_vector(6 downto 0);
		-- puntito
		HEX2_DP 	: out std_logic;
		
		GPIO0_D 	: out std_logic_vector(1 downto 0)
	);
end entity;





architecture shape of cronos is

component deco is
	port(
		num : in integer range 0 to 9;
		decoded : out std_logic_vector(6 downto 0)
	);
end component;

component Ttype is
	port(
		clk		: in std_logic;
		rst		: in std_logic;
		sync_rst	: in std_logic;
		ena		: in std_logic;
		T			: in std_logic;
		
		Q		: out std_logic
	);
end component;



type superand is
	array (0 to 17) of std_logic_vector(17 downto 0);

signal Qaux, Taux : std_logic_vector(18 downto 0);
signal flag			: std_logic;
signal desec		: integer range 0 to 9 :=0;
signal sec			: integer range 0 to 9 :=0;
signal dec			: integer range 0 to 9 :=0;
signal cent			: integer range 0 to 9 :=0;

signal ander : superand;

begin
	
	deco_cent: deco port map(num=>cent, decoded=>HEX0_D);
	deco_dec	: deco port map(num=>dec, decoded=>HEX1_D);
	deco_sec: deco port map(num=>sec, decoded=>HEX2_D);
	deco_desec: deco port map(num=>desec, decoded=>HEX3_D);
	
	TFFg: for n in 0 to 18 generate
	
		TFF0: Ttype port map(clk => CLOCK_50, rst => SW(0), sync_rst=>flag, ena => SW(1), T=>Taux(n), Q => Qaux(n));
	
	end generate;
	
	
	
	Taux(0) <= '1';
	anderer: for n in 0 to 17 generate
		ander(n)(0) <= Qaux(0);
		single_ander: for m in 1 to n generate
			ander(n)(m) <= Qaux(m) and ander(n)(m-1);
		end generate;
		Taux(n+1) <= ander(n)(n);
	end generate;
	
	
	
	flag <= Qaux(18) and Qaux(17) and Qaux(16) and Qaux(15) and (not Qaux(14)) and Qaux(13) and (not Qaux(12)) and (not Qaux(11)) and (not Qaux(10)) and (not Qaux(9)) and Qaux(8)  and (not Qaux(7)) and (not Qaux(6)) and (not Qaux(5)) and Qaux(4) and Qaux(3) and Qaux(2) and Qaux(1) and Qaux(0);


	
	PR0: process(flag, SW)
	begin
		if SW(0) = '1' then
			cent <= 0;
			dec <= 0;
			sec <= 0;
			desec <= 0;
		elsif falling_edge (flag) then
			if SW(1)  = '0' then 
				if cent = 9 then
					if dec = 9 then
						if sec = 9 then
							if desec = 9 then
								desec <= 0;
							else
								desec <= desec + 1;
							end if;
							sec <= 0;
						else
							sec <= sec + 1;
						end if;
						dec <= 0;
					else
						dec <= dec +1;
					end if;
					cent <= 0;
				else
					cent <= cent +1;
				end if;
			end if;
		end if;
	end process;
	
	HEX2_DP <= '0';
	
	
	
	GPIO0_D(0) <= CLOCK_50;
	
	
	
	
	
end shape;