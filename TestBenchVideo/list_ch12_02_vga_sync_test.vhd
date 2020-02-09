-- Listing 12.2
library ieee;
use ieee.std_logic_1164.all;
entity vga_test is
   port (
      clk, reset: in std_logic;
      sw: in std_logic_vector(2 downto 0);
      hsync, vsync: out  std_logic;
      rgb: out std_logic_vector(8 downto 0);
		pixel_x_o: out std_logic_vector(9 downto 0)
   );
end vga_test;

architecture arch of vga_test is
   signal rgb_reg, rgb_next: std_logic_vector(8 downto 0);
   signal video_on, p_tick: std_logic;
	signal pixel_x: std_logic_vector(9 downto 0);
begin
   -- instantiate VGA sync circuit
   vga_sync_unit: entity work.vga_sync
      port map(clk=>clk, reset=>reset, hsync=>hsync,
               vsync=>vsync, video_on=>video_on,
               p_tick=>p_tick, pixel_x=>pixel_x, pixel_y=>open);
   -- rgb buffer
	
	process (pixel_x)
	begin
	    rgb_next <= (others => '0');
		 if (video_on = '1') then
		     rgb_next <= pixel_x(8 downto 0);
		 end if;
	end process;
	
   process (clk,reset)
   begin
      if reset='1' then
         rgb_reg <= (others=>'0');
      elsif (clk'event and clk='1') then
			    rgb_reg <= rgb_next;
      end if;
   end process;
   rgb <= rgb_reg;
	pixel_x_o <= pixel_x;
end arch;