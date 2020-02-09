-- Listing 12.6
library ieee;
use ieee.std_logic_1164.all;
entity pong_top_an is
   port (
      clk: in std_logic;
      btn: in std_logic_vector (2 downto 0);
      hsync, vsync: out  std_logic;
      vgared:out std_logic_vector(3 downto 1);
		vgagreen: out std_logic_vector(3 downto 1);
		vgablue: out std_logic_vector(3 downto 2)
   );
end pong_top_an;

architecture arch of pong_top_an is
   signal pixel_x, pixel_y: std_logic_vector (9 downto 0);
   signal video_on, pixel_tick: std_logic;
   signal rgb_reg, rgb_next: std_logic_vector(7 downto 0);
	signal reset: std_logic;
begin
   reset <= btn(2);
   -- instantiate VGA sync
   vga_sync_unit: entity work.vga_sync
      port map(clk=>clk, reset=>reset,
               video_on=>video_on, p_tick=>pixel_tick,
               hsync=>hsync, vsync=>vsync,
               pixel_x=>pixel_x, pixel_y=>pixel_y);
   -- instantiate graphic generator
   pong_graph_an_unit: entity work.pong_graph_animate
      port map (clk=>clk, reset=>reset,
                btn=>btn(1 downto 0), video_on=>video_on,
                pixel_x=>pixel_x, pixel_y=>pixel_y,
                graph_rgb=>rgb_next);
   -- rgb buffer
   process (clk)
   begin
      if (clk'event and clk='1') then
            rgb_reg <= rgb_next;
      end if;
   end process;
   vgared(3 downto 1) <= rgb_reg(2 downto 0);
	vgagreen(3 downto 1) <= rgb_reg(5 downto 3);
	vgablue(3 downto 2) <= rgb_reg(7 downto 6);
end arch;
