library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity com_serie is
    generic (
        DATA_WIDTH : integer := 4 -- Ancho del dato a enviar, por defecto 8 bits
    );
    port (
        clk       : in std_logic;
        reset     : in std_logic;
        data_in   : in std_logic_vector(DATA_WIDTH-1 downto 0);
        send      : in std_logic;
        data_out  : out std_logic
    );
end com_serie;

architecture Behavioral of com_serie is
    signal bit_counter : integer range 0 to DATA_WIDTH-1 := 0;
    signal shift_reg   : std_logic_vector(DATA_WIDTH-1 downto 0) := (others => '0');
    signal sending     : std_logic := '0';
begin

    process(clk, reset)
    begin
        if reset = '1' then
            bit_counter <= 0;
            shift_reg <= (others => '0');
            data_out <= '0';
            sending <= '0';
        elsif falling_edge(clk) then
            if send = '1' and sending = '0' then
                shift_reg <= data_in;
                bit_counter <= 0;
                sending <= '1';
            elsif sending = '1' then
                data_out <= shift_reg(bit_counter);
                if bit_counter = DATA_WIDTH-1 then
                    sending <= '0';
                else
                    bit_counter <= bit_counter + 1;
                end if;
            end if;
				if send = '0' and sending = '0' then
					data_out <= '0';
				end if;
        end if;
    end process;

end Behavioral;