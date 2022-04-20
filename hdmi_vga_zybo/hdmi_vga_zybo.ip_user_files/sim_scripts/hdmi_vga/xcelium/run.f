-makelib xcelium_lib/xpm -sv \
  "D:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "D:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "D:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/hdmi_vga/ip/hdmi_vga_dvi2rgb_0_0_1/src/ila_pixclk/sim/ila_pixclk.v" \
  "../../../bd/hdmi_vga/ip/hdmi_vga_dvi2rgb_0_0_1/src/ila_refclk/sim/ila_refclk.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../hdmi_vga_zybo.gen/sources_1/bd/hdmi_vga/ipshared/f99d/src/DVI_Constants.vhd" \
  "../../../../hdmi_vga_zybo.gen/sources_1/bd/hdmi_vga/ipshared/f99d/src/ChannelBond.vhd" \
  "../../../../hdmi_vga_zybo.gen/sources_1/bd/hdmi_vga/ipshared/f99d/src/SyncAsync.vhd" \
  "../../../../hdmi_vga_zybo.gen/sources_1/bd/hdmi_vga/ipshared/f99d/src/GlitchFilter.vhd" \
  "../../../../hdmi_vga_zybo.gen/sources_1/bd/hdmi_vga/ipshared/f99d/src/TWI_SlaveCtl.vhd" \
  "../../../../hdmi_vga_zybo.gen/sources_1/bd/hdmi_vga/ipshared/f99d/src/EEPROM_8b.vhd" \
  "../../../../hdmi_vga_zybo.gen/sources_1/bd/hdmi_vga/ipshared/f99d/src/InputSERDES.vhd" \
  "../../../../hdmi_vga_zybo.gen/sources_1/bd/hdmi_vga/ipshared/f99d/src/PhaseAlign.vhd" \
  "../../../../hdmi_vga_zybo.gen/sources_1/bd/hdmi_vga/ipshared/f99d/src/ResyncToBUFG.vhd" \
  "../../../../hdmi_vga_zybo.gen/sources_1/bd/hdmi_vga/ipshared/f99d/src/SyncAsyncReset.vhd" \
  "../../../../hdmi_vga_zybo.gen/sources_1/bd/hdmi_vga/ipshared/f99d/src/SyncBase.vhd" \
  "../../../../hdmi_vga_zybo.gen/sources_1/bd/hdmi_vga/ipshared/f99d/src/TMDS_Clocking.vhd" \
  "../../../../hdmi_vga_zybo.gen/sources_1/bd/hdmi_vga/ipshared/f99d/src/TMDS_Decoder.vhd" \
  "../../../../hdmi_vga_zybo.gen/sources_1/bd/hdmi_vga/ipshared/f99d/src/dvi2rgb.vhd" \
  "../../../bd/hdmi_vga/ip/hdmi_vga_dvi2rgb_0_0_1/sim/hdmi_vga_dvi2rgb_0_0.vhd" \
  "../../../bd/hdmi_vga/ipshared/69dc/src/rgb2vga.vhd" \
  "../../../bd/hdmi_vga/ip/hdmi_vga_rgb2vga_0_0_1/sim/hdmi_vga_rgb2vga_0_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/hdmi_vga/ip/hdmi_vga_clk_wiz_0_0_1/hdmi_vga_clk_wiz_0_0_clk_wiz.v" \
  "../../../bd/hdmi_vga/ip/hdmi_vga_clk_wiz_0_0_1/hdmi_vga_clk_wiz_0_0.v" \
-endlib
-makelib xcelium_lib/xlconstant_v1_1_7 \
  "../../../../hdmi_vga_zybo.gen/sources_1/bd/hdmi_vga/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/hdmi_vga/ip/hdmi_vga_xlconstant_0_0_1/sim/hdmi_vga_xlconstant_0_0.v" \
  "../../../bd/hdmi_vga/ip/hdmi_vga_xlconstant_1_0_1/sim/hdmi_vga_xlconstant_1_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/hdmi_vga/ip/hdmi_vga_vp_0_0/sim/hdmi_vga_vp_0_0.vhd" \
  "../../../bd/hdmi_vga/sim/hdmi_vga.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

