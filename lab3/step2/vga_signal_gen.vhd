--------------------------------------------------------------------------------
--
-- dwc ECE441 adapted from:
--
--  Gazi&Arli, “State Machines using VHDL
--              FPGA Implementation of Serial Communication and Display Protocols”
--              ©2021 The Editor(s) (if applicable) and The Author(s)
--              under exclusive license to Springer Nature Switzerland AG
--
-- P6.25, p.260
--   
--------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity vga_signal_gen is
    port(
    	clk: in std_logic;
	blank: out std_logic; -- high when outisde the active display
	hsync, vsync: out std_logic; -- synce pulses sent to VGA
	hpos, vpos: out positive range 1 to 1024 --active pixel column (1-640) and (1-482)
    );
end vga_signal_gen;

architecture logic_flow of vga_signal_gen is
	-- horizonal pixel counter (0-799) full 800 pixel line period
	-- vertical pixel counter (0-524) full 525 line frame period
	signal x, y: integer range 0 to 1023:=0;
	-- registered pixel position outputs, only increment during active display region
	signal act_pxl_hrzntl, act_pxl_vrtcl: positive range 1 to 1024:=1;
	-- internal copy of hsync because outports cannot be read back in VHDL
	--- doubles as clock source for the verticle sync process
	signal hsync_sig: std_logic:='0';
	-- Hactive is high during the 640 visible columns of each line
	-- Vactive is high during the 480 visible rows of each frame
	signal Hactive,Vactive: std_logic:='0';

begin

hpos<=act_pxl_hrzntl; -- assign column position output
vpos<=act_pxl_vrtcl; -- assign row position output 
Hsync<=hsync_sig; -- assign hsync from internal copy
blank<=not(Hactive and Vactive);

  ---------------------------------------------------------------------------
    -- HORIZONTAL SYNC PROCESS — clocked by 25MHz pixel clock
    -- One full line = 800 clocks:
    --   x:   0- 95  SYNC PULSE   hsync=0, Hactive=0  ( 96 clocks)
    --   x:  96-143  BACK PORCH   hsync=1, Hactive=0  ( 48 clocks)
    --   x: 144-783  ACTIVE VIDEO hsync=1, Hactive=1  (640 clocks)
    --   x: 784-799  FRONT PORCH  hsync=1, Hactive=0  ( 16 clocks)
    ---------------------------------------------------------------------------
horizontal_sync: process (clk, x, act_pxl_hrzntl )
begin
    if(rising_edge(clk)) then
        x <= x + 1; -- advance horizontal counter every pixel clock 
        if(x<96) then -- SYNC PULSE: start of line period, hsync pulled low
            hsync_sig <= '0';
            Hactive <= '0';

        elsif (x>=96 and x<144) then
            hsync_sig <= '1';
            Hactive <= '0';

        elsif (x>=144 and x<784) then
            hsync_sig <= '1';
            Hactive <= '1';
            act_pxl_hrzntl <= act_pxl_hrzntl + 1;

        elsif(x>=784 and x<800) then
            hsync_sig <= '1';
            Hactive <= '0';
        else
            hsync_sig <= '0';
            x <= 0;
            act_pxl_hrzntl <= 1;
        end if;
    end if;
end process;

--
-- Generation of Vertical signals
--
vertical_sync: process (hsync_sig, y, act_pxl_vrtcl )
begin
    if(rising_edge(hsync_sig)) then
        y <= y + 1;

        if(y<2) then
            Vsync <= '0';
            Vactive <= '0';

        elsif (y>=2 and y<33) then
            Vsync <= '1';
            Vactive <= '0';

        elsif (y>=33 and y<515) then
            Vsync <= '1';
            Vactive <= '1';
            act_pxl_vrtcl <= act_pxl_vrtcl + 1;

        elsif (y>=515 and y<525) then
            Vsync <= '1';
            Vactive <= '0';

        else
            Vsync <= '0';
            y <= 0;
            act_pxl_vrtcl <= 1;
        end if;
    end if;
end process;


end logic_flow;


