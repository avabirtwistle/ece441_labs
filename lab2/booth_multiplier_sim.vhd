library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb is
end tb;

architecture sim of tb is
  signal clk : std_logic := '0';
  signal a   : std_logic_vector(7 downto 0) := (others => '0');
  signal b   : std_logic_vector(7 downto 0) := (others => '0');
  signal p   : std_logic_vector(15 downto 0);

  constant CLK_PERIOD : time := 10 ns;
begin
  uut: entity work.booth_multiplier
    port map (
      a   => a,
      b   => b,
      p   => p,
      clk => clk
    );

  clk <= not clk after CLK_PERIOD/2;

  process
  begin
    a <= std_logic_vector(to_signed(3,8));
    b <= std_logic_vector(to_signed(5,8));
    for i in 1 to 9 loop
      wait until rising_edge(clk);
    end loop;

    a <= std_logic_vector(to_signed(-3,8));
    b <= std_logic_vector(to_signed(5,8));
    for i in 1 to 9 loop
      wait until rising_edge(clk);
    end loop;

    a <= std_logic_vector(to_signed(-7,8));
    b <= std_logic_vector(to_signed(-9,8));
    for i in 1 to 9 loop
      wait until rising_edge(clk);
    end loop;

    wait;
  end process;
end sim;
