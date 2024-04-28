library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;



entity SCCBdrive is
	port(
		clk800	: in std_logic;
		E			: in std_logic;
		rst		: in std_logic;
		
		SIO_C		: out std_logic;
		SIO_D		: out std_logic;
--		PWDN		: out std_logic;
		LIVE		: out std_logic
	);
end entity;






architecture shape of SCCBdrive is


component P2Sreg is
	port(
		mssg		: in std_logic_vector(26 downto 0);
		E			: in std_logic;
		clk		: in std_logic;
		rst		: in std_logic;
		
		S			: out std_logic;
		sending	: out std_logic
	);
end component;



signal eInd,DeInd				: std_logic;	
signal Q0,Q1,D0,D1			: std_logic;
signal mssgCount				: integer;

signal nullMssg				: std_logic_vector(26 downto 0) := "000000000000000000000000000";
signal COM7 					: std_logic_vector(26 downto 0) := "010000100000100100000001010";
signal COM15 					: std_logic_vector(26 downto 0) := "010000100001000000110100000";
signal RGB444					: std_logic_vector(26 downto 0) := "010000100100011000000000110";
signal mailbox					: std_logic_vector(26 downto 0);

signal clk400					: std_logic;
signal clk400data				: std_logic;

signal ready, EE				: std_logic;
signal C_E, C_Eedge			: std_logic;
signal regOUT, regLIVE		: std_logic;
signal clkE, clk400D			: std_logic; 
signal C_Esync					: std_logic;

signal mssgGO					: std_logic;
signal dataEedge				: std_logic;

begin

	ready <= --señal que indica que ya se resetearon los registros
		'1' when falling_edge(rst);
	
	EE <= E and ready;
	

	D0 <= EE and ((Q1 and not(Q0 xor eInd)) or (not(Q1) and (eInd or not(Q0))));
	
	Q0 <=
		'0' when rst='1' else
		D0 when rising_edge(clk800);
	
	D1 <= EE and ((Q0 and not(Q1 xor eInd)) or (Q1 and not(Q0)));
	
	Q1 <=
		'0' when rst='1' else
		D1 when rising_edge(clk800);
	
	mailbox <=
		nullMssg	when (not(Q0) and not(Q1))='1' 	else
		COM7		when (not(Q1) and Q0)='1' 			else
		COM15		when (Q1 and not(Q0))='1'			else
		RGB444	when (Q1 and Q0)='1';
		
	
	DeInd <= EE and not(eInd xor C_Esync);
	
	eInd <=
		'0' when rst='1' else
		DeInd when falling_edge(clk800);
		





	clkE <= not(eInd) or not(clk400);
	
	clk400 <= 
		'0' when (rst = '1') else
		(clkE) when rising_edge(clk800);
		
	C_Eedge <= (eInd and not(C_E)) or (not(mssgGO) and C_E);
	
	C_E <=	--SIO_C Enable
		'0' when rst = '1' else
		not(C_E) when rising_edge(C_Eedge);
	
	SIO_C <= not(C_E) or clk400;
	
	
	
	
	C_Esync <=
		'0' when rst = '1' else
		C_E when rising_edge(clk800);
	
	clk400D <= C_Esync and not(clk400data);
	
	clk400data <=
		'0' when (rst = '1') else
		clk400D when falling_edge(clk800);
		
	
		
	
	
	
	
	
	
	
	REGS: P2sreg port map(mssg => mailbox, E => mssgGO, clk => clk400data, rst => rst, S => regOUT, sending => regLIVE);
	
	dataEedge <= (clk400data and clk400) and not(regLIVE);
		
	mssgGO <=
		'0' when (rst = '1') else
		not(mssgGO) when falling_edge(dataEedge);
		
--	mailbox <= RGB444;
	
	SIO_D <= not(mssgGO) or regOUT;
	
	
	
	
	
	LIVE <=
		'0' when rst = '1' else
		(eInd or (Q0 xor Q1)) when rising_edge(clk800);
	
end shape;