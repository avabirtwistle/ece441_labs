library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity booth_multiplier is
    port(
        a   : in  std_logic_vector(7 downto 0);
        b   : in  std_logic_vector(7 downto 0);
        p   : out std_logic_vector(15 downto 0);
        clk : in  std_logic
    );
end booth_multiplier;

architecture Behavioral of booth_multiplier is
    signal booth_pos : signed(15 downto 0);
    signal booth_neg : signed(15 downto 0);
    signal booth_acc : signed(15 downto 0) := (others => '0');
    signal i         : integer range 0 to 8 := 0;
begin
    booth_pos <= resize(signed(a), 16);
    booth_neg <= -resize(signed(a), 16);  

    process(clk)
        variable acc_next : signed(15 downto 0);
        variable bits     : std_logic_vector(1 downto 0);
    begin
        if rising_edge(clk) then
            -- start of a new multiply
            if i = 0 then
                acc_next := (others => '0');
            else
                acc_next := booth_acc;
            end if;

            if i <= 7 then
                if i = 0 then
                    bits := b(0) & '0';
                else
                    bits := b(i) & b(i-1);
                end if;

                case bits is
                    when "01" =>
                        acc_next := acc_next + shift_left(booth_pos, i);
                    when "10" =>
                        acc_next := acc_next + shift_left(booth_neg, i);
                    when others =>
                        null;
                end case;

                booth_acc <= acc_next;
                i <= i + 1;
            else
                p <= std_logic_vector(booth_acc);
                i <= 0;  -- ready for next multiply
            end if;
        end if;
    end process;
end Behavioral;
