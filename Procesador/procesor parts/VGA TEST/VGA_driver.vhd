library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

library altera_mf;
use altera_mf.all;

entity VGA_driver is
    port(
        clock_25MHz : in std_logic;
		  rst 		  : in std_logic;
		  ena 		  : in std_logic;
        data_in	  : in std_logic_vector(3 downto 0);
        red         : out std_logic_vector(3 downto 0);
        green       : out std_logic_vector(3 downto 0);
        blue        : out std_logic_vector(3 downto 0);
        Hsync       : out std_logic;
        Vsync       : out std_logic;
		  Ena_datain  : out std_logic
    );
end VGA_driver;

architecture behaviour of VGA_driver is

signal rojo, verde, azul       : std_logic_vector(3 downto 0):= (others => '0');
signal Hsync_aux, Vsync_aux    : std_logic := '0';
signal video_on					 : std_logic := '0';
signal h_count, v_count        : unsigned (9 downto 0) := (others => '0');

begin

	Horizontal_counter: process (clock_25MHz,ena,rst) 
	begin
		if rst = '1' then 
			h_count <= (others => '0');
		elsif rising_edge(clock_25MHz) and ena = '1' then
			if (h_count = 800) then
				h_count <= "0000000001"; --(others => '0');
			else
				h_count <= h_count + 1;
			end if;
		end if;
	end process;

	vertical_counter: process (clock_25MHz,ena,rst,h_count) 
	begin
		if rst = '1' then 
			v_count <= (others => '0');
		elsif rising_edge(clock_25MHz) and ena = '1' and h_count = 800 then
			if (v_count = 525) then
				v_count <= "0000000001"; --(others => '0');
			else
				v_count <= v_count + 1;
			end if;
		end if;
	end process;

	Horizontal_syncro: process (ena,rst,h_count) 
	begin
		if rst = '1' then 
			hsync_aux <= '0';
		elsif ena = '1' then
			if (h_count <= 656) or (h_count > 752) then
				hsync_aux <= '1';
			else
				hsync_aux <= '0';
			end if;
		end if;
	end process;

	vertical_syncro: process (ena,rst,v_count) 
	begin
		if rst = '1' then 
			vsync_aux <= '0';
		elsif ena = '1' then
			if (v_count <= 490) or (v_count > 492) then
				vsync_aux <= '1';
			else
				vsync_aux <= '0';
			end if;
		end if;
	end process;

	videoON: process (ena,rst,h_count,v_count) 
	begin
		if rst = '1' then 
			video_on <= '0';
		elsif ena = '1' then
			if (h_count <= 640) and (v_count <= 480) then
				video_on <= '1';
			else
				video_on <= '0';
			end if;
		end if;
	end process;

	RGB: process(clock_25MHz,ena,rst,video_on)
	begin
		if rst = '1' then 
			rojo	<= (others => '0');
			verde	<= (others => '0');
			azul	<= (others => '0');
		elsif rising_edge(clock_25MHz) and ena = '1' and video_on = '1' then
			rojo   <= data_in; 
			verde  <= data_in; 
			azul   <= data_in;
		end if;
	end process;

	 
	red    <= "0000";--rojo;
	green  <= "0010";--verde;
	blue   <= "0000";--azul;
	 
	Hsync  <= Hsync_aux;
	Vsync  <= Vsync_aux;
	 
	Ena_datain <= video_on;
    
end behaviour;