-- Listing 7.5
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity uart_test is
   port(
      clk: in std_logic;
      btn: in std_logic_vector(3 downto 0);
		jb5: out std_logic;
		jb6: in std_logic;
      --rx: in std_logic;
      --tx: out std_logic;
      led: out std_logic_vector(7 downto 0);
      seg: out std_logic_vector(6 downto 0);
      an: out std_logic_vector(3 downto 0);
		dp: out std_logic
   );
end uart_test;

architecture arch of uart_test is
   signal rx, tx: std_logic;
   signal reset: std_logic;
   signal tx_full, rx_empty: std_logic;
   signal rec_data,rec_data1: std_logic_vector(7 downto 0);
   signal btn_tick: std_logic;
begin
   rx <= jb6;
	jb5 <= tx;
   reset <= btn(3);
	dp <= '1';
   -- instantiate uart
   uart_unit: entity work.uart(str_arch)
      port map(clk=>clk, reset=>reset, rd_uart=>btn_tick,
               wr_uart=>btn_tick, rx=>rx, w_data=>rec_data1,
               tx_full=>tx_full, rx_empty=>rx_empty,
               r_data=>rec_data, tx=>tx);
   -- instantiate debounce circuit
   btn_db_unit: entity work.debounce(fsmd_arch)
      port map(clk=>clk, reset=>reset, sw=>btn(0),
               db_level=>open, db_tick=>btn_tick);
   -- incremented data loop back
   rec_data1 <= std_logic_vector(unsigned(rec_data)+1);
   --  led display
   led <= rec_data;
   an <= "1110";
   seg <= "111" & (not rx_empty) & "11" & (not tx_full);
end arch;
