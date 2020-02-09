-- Listing 13.3
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity font_test_top is
   port(
      clk: in std_logic;
		btn: in std_logic_vector(3 downto 3);
      hsync, vsync: out  std_logic;
      vgared: out std_logic_vector(3 downto 1);
		vgagreen: out std_logic_vector(3 downto 1);
		vgablue: out std_logic_vector(3 downto 2)
   );
end font_test_top;

architecture arch of font_test_top is
   signal pixel_x, pixel_y: std_logic_vector(9 downto 0);
   signal video_on, pixel_tick: std_logic;
   signal rgb_reg, rgb_next: std_logic_vector(7 downto 0);
	signal reset: std_logic;
begin
   reset <= btn(3);
 
   -- instantiate VGA sync circuit
   vga_sync_unit: entity work.vga_sync
      port map(clk=>clk, reset=>reset, hsync=>hsync,
               vsync=>vsync, video_on=>video_on,
               pixel_x=>pixel_x, pixel_y=>pixel_y,
               p_tick=>pixel_tick);
   -- instantiate font ROM
   font_gen_unit: entity work.font_test_gen
      port map(clk => clk, video_on=>video_on,
               pixel_x=>pixel_x, pixel_y=>pixel_y,
               rgb_text=>rgb_next);
   -- rgb buffer
   process (clk, reset)
   begin
	   if (reset  = '1') then
		    rgb_reg <= (others => '0');
      elsif (clk'event and clk='1') then
		  if pixel_tick = '1' then
            rgb_reg <= rgb_next;
		  end if;
      end if;
   end process;
	
	--rgb_reg <= rgb_next;
   vgared <= rgb_reg(2 downto 0);
	vgagreen <= rgb_reg(5 downto 3);
	vgablue <= rgb_reg(7 downto 6);
end arch;
