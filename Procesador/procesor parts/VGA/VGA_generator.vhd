library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

library altera_mf;
use altera_mf.all;

entity VGA_generator is
    port(
        clock_25MHz : in std_logic;
        data_in	  : in std_logic_vector(3 downto 0);
        red         : out std_logic_vector(3 downto 0);
        green       : out std_logic_vector(3 downto 0);
        blue        : out std_logic_vector(3 downto 0);
        Hsync       : out std_logic;
        Vsync       : out std_logic;
		  Ena_datain  : out std_logic
    );
end VGA_generator;

architecture behaviour of VGA_generator is

signal rojo, verde, azul       : std_logic_vector(3 downto 0):= (others => '0');
signal Hsync_aux, Vsync_aux    : std_logic := '0';
signal video_on, video_on_v, video_on_h: std_logic;
signal h_count, v_count        : unsigned (9 downto 0) := (others => '0');

begin

    video_on <= video_on_h and video_on_v;
    
    process(clock_25MHz,video_on)
    begin
        if rising_edge(clock_25MHz) then 
				
				-- Contador horizontal
            if (h_count = 799) then
                h_count <= (others => '0');
            else
                h_count <= h_count + 1;
            end if;
            
				-- Genera sincronismo horizontal
            if (h_count <= 93) then -- (h_count <= 755) and (h_count >= 659) 
                Hsync_aux <= '0';
            else
                Hsync_aux <= '1';
            end if;
            
				-- Contador vertical 
            if  (v_count >= 524) and (h_count = 799) then  
                v_count <= (others => '0');
            elsif (h_count = 799) then
                    v_count <= v_count + 1;
            end if;
            
				-- Genera sincronismo vertical
            if (v_count <= 1) then -- (v_count >= 493) and (v_count <= 494)
                Vsync_aux <= '0';
            else 
                Vsync_aux <= '1';
            end if;
           
            if (h_count >= 139) and (h_count <= 778)  then -- (h_count <= 639)
                video_on_h <= '1';
            else 
                video_on_h <= '0';
            end if;
            
            if (v_count >= 34) and (v_count < 514) then -- (v_count <= 479)
                video_on_v <= '1';
            else
                video_on_v <= '0';
            end if;
        
        end if;
            
				rojo   <= (data_in(3) and video_on) & (data_in(2) and video_on) & (data_in(1) and video_on) & (data_in(0) and video_on); 
				verde  <= (data_in(3) and video_on) & (data_in(2) and video_on) & (data_in(1) and video_on) & (data_in(0) and video_on); 
				azul   <= (data_in(3) and video_on) & (data_in(2) and video_on) & (data_in(1) and video_on) & (data_in(0) and video_on); 
				
    end process;
    
    red    <= rojo;
    green  <= verde;
    blue   <= azul;
    
    Hsync  <= Hsync_aux;
    Vsync  <= Vsync_aux;
	 
	 Ena_datain <= video_on;
    
end behaviour;
