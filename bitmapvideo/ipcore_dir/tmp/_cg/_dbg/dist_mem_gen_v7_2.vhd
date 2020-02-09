--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2020 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
--    Generated from core with identifier: xilinx.com:ip:dist_mem_gen:7.2     --
--                                                                            --
--    Rev 1. The LogiCORE Xilinx Distributed Memory Generator creates area    --
--    and performance optimized ROM blocks, single and dual port              --
--    distributed memories, and SRL16-based memories for Xilinx FPGAs. The    --
--    core supersedes the previously released LogiCORE Distributed Memory     --
--    core. Use this core in all new designs for supported families           --
--    wherever a distributed memory is required.                              --
--------------------------------------------------------------------------------
-- Source Code Wrapper
-- This file is provided to wrap around the source code (if appropriate)
-- and is designed for use with XST

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

LIBRARY dist_mem_gen_v7_2;
USE dist_mem_gen_v7_2.dist_mem_gen_v7_2;

ENTITY dist_mem_gen_v7_2 IS
  PORT (
    a : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
    d : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    dpra : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
    clk : IN STD_LOGIC;
    we : IN STD_LOGIC;
    spo : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    dpo : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END dist_mem_gen_v7_2;

ARCHITECTURE spartan3e OF dist_mem_gen_v7_2 IS

  COMPONENT dist_mem_gen_v7_2 IS
    GENERIC (
      c_family : STRING;
      c_addr_width : INTEGER;
      c_default_data : STRING;
      c_depth : INTEGER;
      c_has_clk : INTEGER;
      c_has_d : INTEGER;
      c_has_dpo : INTEGER;
      c_has_dpra : INTEGER;
      c_has_i_ce : INTEGER;
      c_has_qdpo : INTEGER;
      c_has_qdpo_ce : INTEGER;
      c_has_qdpo_clk : INTEGER;
      c_has_qdpo_rst : INTEGER;
      c_has_qdpo_srst : INTEGER;
      c_has_qspo : INTEGER;
      c_has_qspo_ce : INTEGER;
      c_has_qspo_rst : INTEGER;
      c_has_qspo_srst : INTEGER;
      c_has_spo : INTEGER;
      c_has_spra : INTEGER;
      c_has_we : INTEGER;
      c_mem_init_file : STRING;
      c_elaboration_dir : STRING;
      c_mem_type : INTEGER;
      c_pipeline_stages : INTEGER;
      c_qce_joined : INTEGER;
      c_qualify_we : INTEGER;
      c_read_mif : INTEGER;
      c_reg_a_d_inputs : INTEGER;
      c_reg_dpra_input : INTEGER;
      c_sync_enable : INTEGER;
      c_width : INTEGER;
      c_parser_type : INTEGER
    );
    PORT (
      a : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
      d : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      dpra : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
      clk : IN STD_LOGIC;
      we : IN STD_LOGIC;
      spo : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      dpo : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
    );
  END COMPONENT dist_mem_gen_v7_2;

  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF spartan3e : ARCHITECTURE IS "dist_mem_gen_v7_2, Xilinx CORE Generator 14.7";

  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF spartan3e : ARCHITECTURE IS "dist_mem_gen_v7_2,dist_mem_gen_v7_2,{}";

  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF spartan3e : ARCHITECTURE IS "dist_mem_gen_v7_2,dist_mem_gen_v7_2,{c_addr_width=14,c_default_data=0,c_depth=16384,c_elaboration_dir=/home/dumbo/XilinxProjects/PhongVhdlBook/bitmapvideo/ipcore_dir/tmp/_cg/,c_family=spartan3,c_has_clk=1,c_has_d=1,c_has_dpo=1,c_has_dpra=1,c_has_i_ce=0,c_has_qdpo=0,c_has_qdpo_ce=0,c_has_qdpo_clk=0,c_has_qdpo_rst=0,c_has_qdpo_srst=0,c_has_qspo=0,c_has_qspo_ce=0,c_has_qspo_rst=0,c_has_qspo_srst=0,c_has_spo=1,c_has_spra=0,c_has_we=1,c_mem_init_file=no_coe_file_loaded,c_mem_type=2,c_parser_type=1,c_pipeline_stages=0,c_qce_joined=0,c_qualify_we=0,c_read_mif=0,c_reg_a_d_inputs=0,c_reg_dpra_input=0,c_sync_enable=1,c_width=8}";

BEGIN

  U0 : dist_mem_gen_v7_2
    GENERIC MAP (
      c_addr_width => 14,
      c_default_data => "0",
      c_depth => 16384,
      c_elaboration_dir => "/home/dumbo/XilinxProjects/PhongVhdlBook/bitmapvideo/ipcore_dir/tmp/_cg/",
      c_family => "spartan3",
      c_has_clk => 1,
      c_has_d => 1,
      c_has_dpo => 1,
      c_has_dpra => 1,
      c_has_i_ce => 0,
      c_has_qdpo => 0,
      c_has_qdpo_ce => 0,
      c_has_qdpo_clk => 0,
      c_has_qdpo_rst => 0,
      c_has_qdpo_srst => 0,
      c_has_qspo => 0,
      c_has_qspo_ce => 0,
      c_has_qspo_rst => 0,
      c_has_qspo_srst => 0,
      c_has_spo => 1,
      c_has_spra => 0,
      c_has_we => 1,
      c_mem_init_file => "no_coe_file_loaded",
      c_mem_type => 2,
      c_parser_type => 1,
      c_pipeline_stages => 0,
      c_qce_joined => 0,
      c_qualify_we => 0,
      c_read_mif => 0,
      c_reg_a_d_inputs => 0,
      c_reg_dpra_input => 0,
      c_sync_enable => 1,
      c_width => 8
    )
    PORT MAP (
      a => a,
      d => d,
      dpra => dpra,
      clk => clk,
      we => we,
      spo => spo,
      dpo => dpo
    );

END spartan3e;
