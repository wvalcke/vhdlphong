-- Listing 12.2
library ieee;
use ieee.std_logic_1164.all;
entity vga_test is
   port (
      clk: in std_logic;
	   btn: in std_logic_vector(3 downto 3);
      sw: in std_logic_vector(7 downto 0);
      hsync, vsync: out  std_logic;
      vgaRed: out std_logic_vector(3 downto 1);
		vgaGreen: out std_logic_vector(3 downto 1);
		vgaBlue : out std_logic_vector(3 downto 2)
   );
end vga_test;

architecture arch of vga_test is
   signal rgb_reg: std_logic_vector(7 downto 0);
	signal rgb: std_logic_vector(7 downto 0);
   signal video_on: std_logic;
	signal reset: std_logic;
begin
   -- instantiate VGA sync circuit
	reset <= btn(3);
	
   vga_sync_unit: entity work.vga_sync
      port map(clk=>clk, reset=>reset, hsync=>hsync,
               vsync=>vsync, video_on=>video_on,
               p_tick=>open, pixel_x=>open, pixel_y=>open);
   -- rgb buffer
   process (clk,reset)
   begin
      if reset='1' then
         rgb_reg <= (others=>'0');
      elsif (clk'event and clk='1') then
         rgb_reg <= sw;
      end if;
   end process;
   rgb <= rgb_reg when video_on='1' else "00000000";
	
	vgaRed(3 downto 1) <= rgb(2 downto 0);
	vgaGreen(3 downto 1) <= rgb(5 downto 3);
	vgaBlue(3 downto 2) <= rgb(7 downto 6);
end arch;
