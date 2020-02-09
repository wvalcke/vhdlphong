--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:32:34 02/01/2020
-- Design Name:   
-- Module Name:   /home/dumbo/XilinxProjects/PhongVhdlBook/vgacircuit1/test_vga_bench.vhd
-- Project Name:  vgacircuit1
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
 
ENTITY test_vga_bench IS
END test_vga_bench;
 
ARCHITECTURE behavior OF test_vga_bench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT vga_test
    PORT(
         clk : IN  std_logic;
         btn : IN  std_logic_vector(3 downto 3);
         sw : IN  std_logic_vector(7 downto 0);
         hsync : OUT  std_logic;
         vsync : OUT  std_logic;
         vgaRed : OUT  std_logic_vector(3 downto 1);
         vgaGreen : OUT  std_logic_vector(3 downto 1);
         vgaBlue : OUT  std_logic_vector(3 downto 2)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal btn : std_logic_vector(3 downto 3) := (others => '0');
   signal sw : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal hsync : std_logic;
   signal vsync : std_logic;
   signal vgaRed : std_logic_vector(3 downto 1);
   signal vgaGreen : std_logic_vector(3 downto 1);
   signal vgaBlue : std_logic_vector(3 downto 2);

   -- Clock period definitions
   constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: vga_test PORT MAP (
          clk => clk,
          btn => btn,
          sw => sw,
          hsync => hsync,
          vsync => vsync,
          vgaRed => vgaRed,
          vgaGreen => vgaGreen,
          vgaBlue => vgaBlue
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
		btn(3) <= '1';
		wait for 100 ns;
		btn(3) <= '0';
		sw(2 downto 0) <= "111";

		wait for 40000000 ns;
		
		assert false
		    report "Simulation completed"
			 severity failure;
      -- insert stimulus here 

      wait;
   end process;

END;
