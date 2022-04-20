-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
-- Date        : Thu Apr  7 11:19:44 2022
-- Host        : DESKTOP-LKN5I8T running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/domin/hdmi_vga_zybo/hdmi_vga_zybo.gen/sources_1/bd/hdmi_vga/ip/hdmi_vga_vp_0_0/hdmi_vga_vp_0_0_sim_netlist.vhdl
-- Design      : hdmi_vga_vp_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity hdmi_vga_vp_0_0_vp is
  port (
    clk : in STD_LOGIC;
    de_in : in STD_LOGIC;
    h_sync_in : in STD_LOGIC;
    v_sync_in : in STD_LOGIC;
    pixel_in : in STD_LOGIC_VECTOR ( 23 downto 0 );
    de_out : out STD_LOGIC;
    h_sync_out : out STD_LOGIC;
    v_sync_out : out STD_LOGIC;
    pixel_out : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of hdmi_vga_vp_0_0_vp : entity is "vp";
end hdmi_vga_vp_0_0_vp;

architecture STRUCTURE of hdmi_vga_vp_0_0_vp is
  signal \<const0>\ : STD_LOGIC;
begin
  pixel_out(23) <= \<const0>\;
  pixel_out(22) <= \<const0>\;
  pixel_out(21) <= \<const0>\;
  pixel_out(20) <= \<const0>\;
  pixel_out(19) <= \<const0>\;
  pixel_out(18) <= \<const0>\;
  pixel_out(17) <= \<const0>\;
  pixel_out(16) <= \<const0>\;
  pixel_out(15) <= \<const0>\;
  pixel_out(14) <= \<const0>\;
  pixel_out(13) <= \<const0>\;
  pixel_out(12) <= \<const0>\;
  pixel_out(11) <= \<const0>\;
  pixel_out(10) <= \<const0>\;
  pixel_out(9) <= \<const0>\;
  pixel_out(8) <= \<const0>\;
  pixel_out(7) <= \<const0>\;
  pixel_out(6) <= \<const0>\;
  pixel_out(5) <= \<const0>\;
  pixel_out(4) <= \<const0>\;
  pixel_out(3) <= \<const0>\;
  pixel_out(2) <= \<const0>\;
  pixel_out(1) <= \<const0>\;
  pixel_out(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
r_de_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => de_in,
      Q => de_out,
      R => '0'
    );
r_hsync_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => h_sync_in,
      Q => h_sync_out,
      R => '0'
    );
r_vsync_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => v_sync_in,
      Q => v_sync_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity hdmi_vga_vp_0_0 is
  port (
    clk : in STD_LOGIC;
    de_in : in STD_LOGIC;
    h_sync_in : in STD_LOGIC;
    v_sync_in : in STD_LOGIC;
    pixel_in : in STD_LOGIC_VECTOR ( 23 downto 0 );
    de_out : out STD_LOGIC;
    h_sync_out : out STD_LOGIC;
    v_sync_out : out STD_LOGIC;
    pixel_out : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of hdmi_vga_vp_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of hdmi_vga_vp_0_0 : entity is "hdmi_vga_vp_0_0,vp,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of hdmi_vga_vp_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of hdmi_vga_vp_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of hdmi_vga_vp_0_0 : entity is "vp,Vivado 2021.2";
end hdmi_vga_vp_0_0;

architecture STRUCTURE of hdmi_vga_vp_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal NLW_U0_pixel_out_UNCONNECTED : STD_LOGIC_VECTOR ( 23 downto 0 );
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN hdmi_vga_dvi2rgb_0_0_PixelClk, INSERT_VIP 0";
begin
  pixel_out(23) <= \<const0>\;
  pixel_out(22) <= \<const0>\;
  pixel_out(21) <= \<const0>\;
  pixel_out(20) <= \<const0>\;
  pixel_out(19) <= \<const0>\;
  pixel_out(18) <= \<const0>\;
  pixel_out(17) <= \<const0>\;
  pixel_out(16) <= \<const0>\;
  pixel_out(15) <= \<const0>\;
  pixel_out(14) <= \<const0>\;
  pixel_out(13) <= \<const0>\;
  pixel_out(12) <= \<const0>\;
  pixel_out(11) <= \<const0>\;
  pixel_out(10) <= \<const0>\;
  pixel_out(9) <= \<const0>\;
  pixel_out(8) <= \<const0>\;
  pixel_out(7) <= \<const0>\;
  pixel_out(6) <= \<const0>\;
  pixel_out(5) <= \<const0>\;
  pixel_out(4) <= \<const0>\;
  pixel_out(3) <= \<const0>\;
  pixel_out(2) <= \<const0>\;
  pixel_out(1) <= \<const0>\;
  pixel_out(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.hdmi_vga_vp_0_0_vp
     port map (
      clk => clk,
      de_in => de_in,
      de_out => de_out,
      h_sync_in => h_sync_in,
      h_sync_out => h_sync_out,
      pixel_in(23 downto 0) => B"000000000000000000000000",
      pixel_out(23 downto 0) => NLW_U0_pixel_out_UNCONNECTED(23 downto 0),
      v_sync_in => v_sync_in,
      v_sync_out => v_sync_out
    );
end STRUCTURE;
