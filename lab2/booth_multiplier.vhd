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
    booth_neg <= resize(-signed(a), 16);

    process(clk)
    begin
        if rising_edge(clk) then

            if i = 0 then
                booth_acc <= (others => '0');
            end if;

            if i <= 7 then

                if i = 0 then
                    if (b(0) & '0') = "01" then
                        booth_acc <= booth_acc + shift_left(booth_pos, i);
                    elsif (b(0) & '0') = "10" then
                        booth_acc <= booth_acc + shift_left(booth_neg, i);
                    end if;
                else
                    if (b(i) & b(i-1)) = "01" then
                        booth_acc <= booth_acc + shift_left(booth_pos, i);
                    elsif (b(i) & b(i-1)) = "10" then
                        booth_acc <= booth_acc + shift_left(booth_neg, i);
                    end if;
                end if;

                i <= i + 1;

            else
                p <= std_logic_vector(booth_acc);
                i <= 0;  -- ready for next multiply
            end if;

        end if;
    end process;

end Behavioral;
