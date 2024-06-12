library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity CAPdiez is
	port(
		rst		: in std_logic;
		D_in		: in std_logic_vector(7 downto 0);
		PCLK		: in std_logic;
		HREF		: in std_logic;
		
		D_out		: out std_logic_vector(3 downto 0);
		RAMadr	: out std_logic_vector(15 downto 0);
		outCLK	: out std_logic
	);
end entity;




architecture shape of CAPdiez is

component FullAdd is
	port(
		dA : in std_logic;
		dB : in std_logic;
		ci : in std_logic;
		co : out std_logic;
		s : out std_logic
	);
end component;

component Z_1 is
	port(
		rst		: in std_logic;
		clk_in	: in std_logic;
		
		clk_out	: out std_logic
	);
end component;


signal QinReg			: std_logic_vector(7 downto 0);
signal dPCLK			: std_logic;
signal ADDed			: std_logic_vector(5 downto 0);
signal A,B				: std_logic_vector(4 downto 0);
signal Caux				: std_logic_vector(5 downto 0);
signal takeTurn		: std_logic;
signal QaddReg			: std_logic_vector(5 downto 0);
signal HRST				: std_logic;
signal lateTurn		: std_logic;
signal CAPclk			: std_logic;
signal h_count, v_count        	: std_logic_vector (9 downto 0) := (others => '0');
signal RAM_adr			: std_logic_vector(15 downto 0);
signal enawRAMclk		: std_logic;

begin
	HRST <= not(HREF);
	
	dPCLK	<= HREF and not(PCLK);
	
	
	DEPHASE: Z_1 port map(
		rst => HRST,
		clk_in => PCLK,
		clk_out => lateTurn
	);
	
	
	
	QinReg <= 
		"00000000" when rst='1' else
		D_in when falling_edge(dPCLK);
		
	
	takeTurn <=
		'0' when HREF='0' else
		not(takeTurn) when falling_edge(dPCLK);
	

	
	Caux(0) <= '0';
	
	RipCar: for n in 0 to 4 generate
		FA: FullAdd port map(
			dA => A(n),
			dB => B(n),
			ci => Caux(n),
			co => Caux(n+1),
			s  => ADDed(n)
		);
	end generate;
	
	ADDed(5) <= Caux(5);
	
	A(3 downto 0) <= QinReg(7 downto 4);
	A(4) <= '0';
	
	B(3 downto 0) <= 
		QinReg(3 downto 0) when takeTurn='1' else
		QaddReg(3 downto 0) when takeTurn='0';
	B(4) <=
		'0' when takeTurn='1' else
		QaddReg(4) when takeTurn='0';

	
	QaddReg <=
		"000000" when HREF='0' else
		ADDed when rising_edge(dPCLK);
		
	D_out <= QaddReg(5 downto 2);
	
	CAPclk <= 
		'0' when HRST = '1' else
		not(CAPclk) when rising_edge(lateTurn);
	
	--outCLK <= CAPclk;
	
	
	-------------------------------------------
	
	
	
	
	
	process(CAPclk,rst)
   begin
		
		if rst = '1' then
			h_count <= (others => '0');
			v_count <= (others => '0');


		elsif falling_edge(CAPclk) then

			h_count <= h_count + 1;
		
			if h_count = 320 then
				h_count <= (others => '0');
			
				v_count <= v_count + 1;
			
				if v_count = 480 then
					v_count <= (others => '0');
				end if;
			
			end if;
		
		
			--Genera RAM address
			if std_logic(v_count(0)) = '0' then
				enawRAMclk <= '1';
				if (h_count > 40) and (h_count <= 280) then
				
					RAM_adr <= RAM_adr + 1;
					
					if RAM_adr = 57599 then
						RAM_adr <= (others => '0');
					end if;
					
				end if;
				
			elsif std_logic(v_count(0)) = '1' then
				enawRAMclk <= '0';
			end if;				

		end if; 

		
   end process;
	
	RAMadr <= RAM_adr;
	outCLK <= CAPclk and enawRAMclk;
		
end shape;

