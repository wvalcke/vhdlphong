--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:54:12 01/19/2020
-- Design Name:   
-- Module Name:   /home/dumbo/XilinxProjects/PhongVhdlBook/TestBenchVideo/test_top.vhd
-- Project Name:  TestBenchVideo
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: vga_test
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY test_top IS
END test_top;
 
ARCHITECTURE behavior OF test_top IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT vga_test
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         sw : IN  std_logic_vector(2 downto 0);
         hsync : OUT  std_logic;
         vsync : OUT  std_logic;
         rgb : OUT  std_logic_vector(8 downto 0);
			pixel_x_o: out std_logic_vector(9 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal sw : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal hsync : std_logic;
   signal vsync : std_logic;
   signal rgb : std_logic_vector(8 downto 0);
	signal pixel_x_o: std_logic_vector(9 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: vga_test PORT MAP (
          clk => clk,
          reset => reset,
          sw => sw,
          hsync => hsync,
          vsync => vsync,
          rgb => rgb,
			 pixel_x_o => pixel_x_o
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		reset <= '1';
      wait for 100 ns;	
		reset <= '0';

      wait for clk_period*10;
		wait for 10000000 ns;
		
		assert false
		    report "Simulation completed"
			 severity failure;

      -- insert stimulus here 

   end process;

END;
