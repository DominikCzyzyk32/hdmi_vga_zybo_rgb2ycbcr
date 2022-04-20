--Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
--Date        : Thu Apr  7 11:18:28 2022
--Host        : DESKTOP-LKN5I8T running 64-bit major release  (build 9200)
--Command     : generate_target hdmi_vga.bd
--Design      : hdmi_vga
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity hdmi_vga is
  port (
    hdmi_hpd : out STD_LOGIC_VECTOR ( 0 to 0 );
    hdmi_in_clk_n : in STD_LOGIC;
    hdmi_in_clk_p : in STD_LOGIC;
    hdmi_in_data_n : in STD_LOGIC_VECTOR ( 2 downto 0 );
    hdmi_in_data_p : in STD_LOGIC_VECTOR ( 2 downto 0 );
    hdmi_in_ddc_scl_i : in STD_LOGIC;
    hdmi_in_ddc_scl_o : out STD_LOGIC;
    hdmi_in_ddc_scl_t : out STD_LOGIC;
    hdmi_in_ddc_sda_i : in STD_LOGIC;
    hdmi_in_ddc_sda_o : out STD_LOGIC;
    hdmi_in_ddc_sda_t : out STD_LOGIC;
    hdmi_out_en : out STD_LOGIC_VECTOR ( 0 to 0 );
    sys_clock : in STD_LOGIC;
    vga_pBlue : out STD_LOGIC_VECTOR ( 4 downto 0 );
    vga_pGreen : out STD_LOGIC_VECTOR ( 5 downto 0 );
    vga_pHSync : out STD_LOGIC;
    vga_pRed : out STD_LOGIC_VECTOR ( 4 downto 0 );
    vga_pVSync : out STD_LOGIC
  );
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of hdmi_vga : entity is "hdmi_vga.hwdef";
  attribute core_generation_info : string;
  attribute core_generation_info of hdmi_vga : entity is "hdmi_vga,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=hdmi_vga,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=6,numReposBlks=6,numNonXlnxBlks=2,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
end hdmi_vga;

architecture STRUCTURE of hdmi_vga is
  component hdmi_vga_dvi2rgb_0_0 is
  port (
    TMDS_Clk_p : in STD_LOGIC;
    TMDS_Clk_n : in STD_LOGIC;
    TMDS_Data_p : in STD_LOGIC_VECTOR ( 2 downto 0 );
    TMDS_Data_n : in STD_LOGIC_VECTOR ( 2 downto 0 );
    RefClk : in STD_LOGIC;
    aRst : in STD_LOGIC;
    vid_pData : out STD_LOGIC_VECTOR ( 23 downto 0 );
    vid_pVDE : out STD_LOGIC;
    vid_pHSync : out STD_LOGIC;
    vid_pVSync : out STD_LOGIC;
    PixelClk : out STD_LOGIC;
    aPixelClkLckd : out STD_LOGIC;
    pLocked : out STD_LOGIC;
    SDA_I : in STD_LOGIC;
    SDA_O : out STD_LOGIC;
    SDA_T : out STD_LOGIC;
    SCL_I : in STD_LOGIC;
    SCL_O : out STD_LOGIC;
    SCL_T : out STD_LOGIC;
    pRst : in STD_LOGIC
  );
  end component hdmi_vga_dvi2rgb_0_0;
  component hdmi_vga_rgb2vga_0_0 is
  port (
    rgb_pData : in STD_LOGIC_VECTOR ( 23 downto 0 );
    rgb_pVDE : in STD_LOGIC;
    rgb_pHSync : in STD_LOGIC;
    rgb_pVSync : in STD_LOGIC;
    PixelClk : in STD_LOGIC;
    vga_pRed : out STD_LOGIC_VECTOR ( 4 downto 0 );
    vga_pGreen : out STD_LOGIC_VECTOR ( 5 downto 0 );
    vga_pBlue : out STD_LOGIC_VECTOR ( 4 downto 0 );
    vga_pHSync : out STD_LOGIC;
    vga_pVSync : out STD_LOGIC
  );
  end component hdmi_vga_rgb2vga_0_0;
  component hdmi_vga_clk_wiz_0_0 is
  port (
    clk_in1 : in STD_LOGIC;
    clk_out1 : out STD_LOGIC
  );
  end component hdmi_vga_clk_wiz_0_0;
  component hdmi_vga_xlconstant_0_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component hdmi_vga_xlconstant_0_0;
  component hdmi_vga_xlconstant_1_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component hdmi_vga_xlconstant_1_0;
  component hdmi_vga_vp_0_0 is
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
  end component hdmi_vga_vp_0_0;
  signal clk_wiz_0_clk_out1 : STD_LOGIC;
  signal dvi2rgb_0_DDC_SCL_I : STD_LOGIC;
  signal dvi2rgb_0_DDC_SCL_O : STD_LOGIC;
  signal dvi2rgb_0_DDC_SCL_T : STD_LOGIC;
  signal dvi2rgb_0_DDC_SDA_I : STD_LOGIC;
  signal dvi2rgb_0_DDC_SDA_O : STD_LOGIC;
  signal dvi2rgb_0_DDC_SDA_T : STD_LOGIC;
  signal dvi2rgb_0_PixelClk : STD_LOGIC;
  signal dvi2rgb_0_vid_pData : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal dvi2rgb_0_vid_pHSync : STD_LOGIC;
  signal dvi2rgb_0_vid_pVDE : STD_LOGIC;
  signal dvi2rgb_0_vid_pVSync : STD_LOGIC;
  signal hdmi_in_1_CLK_N : STD_LOGIC;
  signal hdmi_in_1_CLK_P : STD_LOGIC;
  signal hdmi_in_1_DATA_N : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal hdmi_in_1_DATA_P : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal rgb2vga_0_vga_pBlue : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal rgb2vga_0_vga_pGreen : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal rgb2vga_0_vga_pHSync : STD_LOGIC;
  signal rgb2vga_0_vga_pRed : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal rgb2vga_0_vga_pVSync : STD_LOGIC;
  signal sys_clock_1 : STD_LOGIC;
  signal vp_0_de_out : STD_LOGIC;
  signal vp_0_h_sync_out : STD_LOGIC;
  signal vp_0_pixel_out : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal vp_0_v_sync_out : STD_LOGIC;
  signal xlconstant_0_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlconstant_1_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_dvi2rgb_0_aPixelClkLckd_UNCONNECTED : STD_LOGIC;
  signal NLW_dvi2rgb_0_pLocked_UNCONNECTED : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of hdmi_in_clk_n : signal is "digilentinc.com:interface:tmds:1.0 hdmi_in CLK_N";
  attribute x_interface_info of hdmi_in_clk_p : signal is "digilentinc.com:interface:tmds:1.0 hdmi_in CLK_P";
  attribute x_interface_info of hdmi_in_ddc_scl_i : signal is "xilinx.com:interface:iic:1.0 hdmi_in_ddc SCL_I";
  attribute x_interface_info of hdmi_in_ddc_scl_o : signal is "xilinx.com:interface:iic:1.0 hdmi_in_ddc SCL_O";
  attribute x_interface_info of hdmi_in_ddc_scl_t : signal is "xilinx.com:interface:iic:1.0 hdmi_in_ddc SCL_T";
  attribute x_interface_info of hdmi_in_ddc_sda_i : signal is "xilinx.com:interface:iic:1.0 hdmi_in_ddc SDA_I";
  attribute x_interface_info of hdmi_in_ddc_sda_o : signal is "xilinx.com:interface:iic:1.0 hdmi_in_ddc SDA_O";
  attribute x_interface_info of hdmi_in_ddc_sda_t : signal is "xilinx.com:interface:iic:1.0 hdmi_in_ddc SDA_T";
  attribute x_interface_info of sys_clock : signal is "xilinx.com:signal:clock:1.0 CLK.SYS_CLOCK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of sys_clock : signal is "XIL_INTERFACENAME CLK.SYS_CLOCK, CLK_DOMAIN hdmi_vga_sys_clock, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute x_interface_info of hdmi_in_data_n : signal is "digilentinc.com:interface:tmds:1.0 hdmi_in DATA_N";
  attribute x_interface_info of hdmi_in_data_p : signal is "digilentinc.com:interface:tmds:1.0 hdmi_in DATA_P";
begin
  dvi2rgb_0_DDC_SCL_I <= hdmi_in_ddc_scl_i;
  dvi2rgb_0_DDC_SDA_I <= hdmi_in_ddc_sda_i;
  hdmi_hpd(0) <= xlconstant_0_dout(0);
  hdmi_in_1_CLK_N <= hdmi_in_clk_n;
  hdmi_in_1_CLK_P <= hdmi_in_clk_p;
  hdmi_in_1_DATA_N(2 downto 0) <= hdmi_in_data_n(2 downto 0);
  hdmi_in_1_DATA_P(2 downto 0) <= hdmi_in_data_p(2 downto 0);
  hdmi_in_ddc_scl_o <= dvi2rgb_0_DDC_SCL_O;
  hdmi_in_ddc_scl_t <= dvi2rgb_0_DDC_SCL_T;
  hdmi_in_ddc_sda_o <= dvi2rgb_0_DDC_SDA_O;
  hdmi_in_ddc_sda_t <= dvi2rgb_0_DDC_SDA_T;
  hdmi_out_en(0) <= xlconstant_1_dout(0);
  sys_clock_1 <= sys_clock;
  vga_pBlue(4 downto 0) <= rgb2vga_0_vga_pBlue(4 downto 0);
  vga_pGreen(5 downto 0) <= rgb2vga_0_vga_pGreen(5 downto 0);
  vga_pHSync <= rgb2vga_0_vga_pHSync;
  vga_pRed(4 downto 0) <= rgb2vga_0_vga_pRed(4 downto 0);
  vga_pVSync <= rgb2vga_0_vga_pVSync;
clk_wiz_0: component hdmi_vga_clk_wiz_0_0
     port map (
      clk_in1 => sys_clock_1,
      clk_out1 => clk_wiz_0_clk_out1
    );
dvi2rgb_0: component hdmi_vga_dvi2rgb_0_0
     port map (
      PixelClk => dvi2rgb_0_PixelClk,
      RefClk => clk_wiz_0_clk_out1,
      SCL_I => dvi2rgb_0_DDC_SCL_I,
      SCL_O => dvi2rgb_0_DDC_SCL_O,
      SCL_T => dvi2rgb_0_DDC_SCL_T,
      SDA_I => dvi2rgb_0_DDC_SDA_I,
      SDA_O => dvi2rgb_0_DDC_SDA_O,
      SDA_T => dvi2rgb_0_DDC_SDA_T,
      TMDS_Clk_n => hdmi_in_1_CLK_N,
      TMDS_Clk_p => hdmi_in_1_CLK_P,
      TMDS_Data_n(2 downto 0) => hdmi_in_1_DATA_N(2 downto 0),
      TMDS_Data_p(2 downto 0) => hdmi_in_1_DATA_P(2 downto 0),
      aPixelClkLckd => NLW_dvi2rgb_0_aPixelClkLckd_UNCONNECTED,
      aRst => '0',
      pLocked => NLW_dvi2rgb_0_pLocked_UNCONNECTED,
      pRst => '0',
      vid_pData(23 downto 0) => dvi2rgb_0_vid_pData(23 downto 0),
      vid_pHSync => dvi2rgb_0_vid_pHSync,
      vid_pVDE => dvi2rgb_0_vid_pVDE,
      vid_pVSync => dvi2rgb_0_vid_pVSync
    );
rgb2vga_0: component hdmi_vga_rgb2vga_0_0
     port map (
      PixelClk => dvi2rgb_0_PixelClk,
      rgb_pData(23 downto 0) => vp_0_pixel_out(23 downto 0),
      rgb_pHSync => vp_0_h_sync_out,
      rgb_pVDE => vp_0_de_out,
      rgb_pVSync => vp_0_v_sync_out,
      vga_pBlue(4 downto 0) => rgb2vga_0_vga_pBlue(4 downto 0),
      vga_pGreen(5 downto 0) => rgb2vga_0_vga_pGreen(5 downto 0),
      vga_pHSync => rgb2vga_0_vga_pHSync,
      vga_pRed(4 downto 0) => rgb2vga_0_vga_pRed(4 downto 0),
      vga_pVSync => rgb2vga_0_vga_pVSync
    );
vp_0: component hdmi_vga_vp_0_0
     port map (
      clk => dvi2rgb_0_PixelClk,
      de_in => dvi2rgb_0_vid_pVDE,
      de_out => vp_0_de_out,
      h_sync_in => dvi2rgb_0_vid_pHSync,
      h_sync_out => vp_0_h_sync_out,
      pixel_in(23 downto 0) => dvi2rgb_0_vid_pData(23 downto 0),
      pixel_out(23 downto 0) => vp_0_pixel_out(23 downto 0),
      v_sync_in => dvi2rgb_0_vid_pVSync,
      v_sync_out => vp_0_v_sync_out
    );
xlconstant_0: component hdmi_vga_xlconstant_0_0
     port map (
      dout(0) => xlconstant_0_dout(0)
    );
xlconstant_1: component hdmi_vga_xlconstant_1_0
     port map (
      dout(0) => xlconstant_1_dout(0)
    );
end STRUCTURE;
