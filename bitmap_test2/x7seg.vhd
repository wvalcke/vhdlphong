----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:46:12 11/11/2019 
-- Design Name: 
-- Module Name:    x7seg - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity x7seg is
port (
   x : in std_logic_vector(15 downto 0);
	clk: in std_logic;
	clr : in std_logic;
	a_to_g : out std_logic_vector(6 downto 0);
	an : out std_logic_vector(3 downto 0);
	dp: out std_logic
);
end x7seg;

architecture Behavioral of x7seg is

constant count190: integer := 263158;
signal q190: integer range 0 to count190-1 := 0;
signal clk190enable: std_logic;

signal s: std_logic_vector(1 downto 0);
signal digit: std_logic_vector(3 downto 0);
signal aen: std_logic_vector(3 downto 0);

begin

process(clk, clr)
begin
  if clr = '1' then
     q190 <= 0;
  elsif clk'event and clk = '1'then
     q190 <= (q190 + 1) mod count190;
  end if;
end process;

process(q190)
begin
	clk190enable <= '0';
	if q190 = (count190-1) then
		clk190enable <= '1';
	end if;
end process;

aen(3) <= x(15) or x(14) or x(13) or x(12);
aen(2) <= x(15) or x(14) or x(13) or x(12) or x(11) or x(10) or x(9) or x(8);
aen(1) <= x(15) or x(14) or x(13) or x(12) or x(11) or x(10) or x(9) or x(8) or x(7) or x(6) or x(5) or x(4);
aen(0) <= '1';

dp <= '1';

process(s, x)
begin
   case s is
	   when "00" => digit <= x(3 downto 0);
		when "01" => digit <= x(7 downto 4);
		when "10" => digit <= x(11 downto 8);
		when others => digit <= x(15 downto 12);
	end case;
end process;

process(digit)
begin
  case digit is
     when X"0" => a_to_g <= "0000001";
     when X"1" => a_to_g <= "1001111";
     when X"2" => a_to_g <= "0010010";
     when X"3" => a_to_g <= "0000110";
     when X"4" => a_to_g <= "1001100";
     when X"5" => a_to_g <= "0100100";
     when X"6" => a_to_g <= "0100000";
     when X"7" => a_to_g <= "0001101";
     when X"8" => a_to_g <= "0000000";
     when X"9" => a_to_g <= "0000100";
     when X"A" => a_to_g <= "0001000";
     when X"B" => a_to_g <= "1100000";
     when X"C" => a_to_g <= "0110001";
     when X"D" => a_to_g <= "1000010";
     when X"E" => a_to_g <= "0110000";
     when others => a_to_g <= "0111000";
  end case;
end process;

process(s, aen)
begin
   an <= "1111";
	if aen(conv_integer(s)) = '1' then
	   an(conv_integer(s)) <= '0';
	end if;
end process;

process(clk, clr, clk190enable)
begin
   if clr = '1' then
	   s <= "00";
	elsif clk'event and clk = '1' and clk190enable = '1' then
	   s <= s + 1;
	end if;
end process;

end Behavioral;

