library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity DelayedOutput is
	
    generic(
		COUNTER_LIMIT : natural := 2
	 );
	 port (
        clock   : in  std_logic;  -- Reloj de entrada
        reset   : in  std_logic;  -- Señal de reset (activo en bajo)
        output  : out std_logic   -- Salida retrasada
    );
end entity DelayedOutput;

architecture Behavioral of DelayedOutput is
    signal counter : natural range 0 to COUNTER_LIMIT := 0;
    signal delayed_output : std_logic := '0';  

begin
    process (clock, reset)
    begin
        if reset = '0' then  -- Resetea el contador y la salida
            counter <= 0;
            delayed_output <= '0';
        elsif rising_edge(clock) then
            if counter < COUNTER_LIMIT then  
                counter <= counter + 1;
            else
                delayed_output <= '1'; 
            end if;
        end if;
    end process;

    output <= delayed_output;

end Behavioral;