----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:03:25 11/22/2019 
-- Design Name: 
-- Module Name:    clkdiv - Behavioral 
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
use IEEE.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity clkdiv is
port (
mclk : in std_logic;
clr: in std_logic;
clk190enable: out std_logic;
clk48enable: out std_logic
);
end clkdiv;

architecture Behavioral of clkdiv is
constant count190: integer := 263158;
constant count48: integer := 1041667;

signal q190: integer range 0 to count190-1 := 0;
signal q48: integer range 0 to count48-1 := 0;

begin

process(mclk, clr)
begin
  if clr = '1' then
     q190 <= 0;
	  q48 <= 0;
  elsif mclk'event and mclk = '1'then
     q190 <= (q190 + 1) mod count190;
	  q48 <= (q48 + 1) mod count48;
  end if;
end process;

process(q190, q48)
begin

clk190enable <= '0';
clk48enable <= '0';
if q190 = (count190-1) then
   clk190enable <= '1';
end if;

if q48 = (count48-1) then
   clk48enable <= '1';
end if;

end process;

end Behavioral;

