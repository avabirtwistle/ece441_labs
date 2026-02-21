library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb is
end;

architecture sim of tb is

  signal clk : std_logic := '0';
  signal a   : std_logic_vector(7 downto 0);
  signal b   : std_logic_vector(7 downto 0);
  signal p   : std_logic_vector(15 downto 0);

  constant CLK_PERIOD : time := 10 ns;

begin

  -- Instantiate DUT
  uut: entity work.booth_multiplier
    port map (
      a   => a,
      b   => b,
      p   => p,
      clk => clk
    );

  -- Clock generator
  clk <= not clk after CLK_PERIOD/2;

  process
  begin
    wait for 20 ns;

    -- 3 * 5 = 15
    a <= std_logic_vector(to_signed(3,8));
    b <= std_logic_vector(to_signed(5,8));
    wait for 100 ns;   -- wait ~10 clock cycles

    -- -3 * 5 = -15
    a <= std_logic_vector(to_signed(-3,8));
    b <= std_logic_vector(to_signed(5,8));
    wait for 100 ns;

    -- -7 * -9 = 63
    a <= std_logic_vector(to_signed(-7,8));
    b <= std_logic_vector(to_signed(-9,8));
    wait for 100 ns;

    wait;
  end process;

end;
