// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Fri Apr  1 10:47:13 2022
// Host        : DESKTOP-LKN5I8T running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ LUT_bin_sim_netlist.v
// Design      : LUT_bin
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "LUT_bin,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (a,
    clk,
    qspo);
  input [5:0]a;
  input clk;
  output [15:0]qspo;

  wire \<const0> ;
  wire [5:0]a;
  wire clk;
  wire [6:4]\^qspo ;
  wire [15:0]NLW_U0_dpo_UNCONNECTED;
  wire [15:0]NLW_U0_qdpo_UNCONNECTED;
  wire [15:0]NLW_U0_qspo_UNCONNECTED;
  wire [15:0]NLW_U0_spo_UNCONNECTED;

  assign qspo[15] = \<const0> ;
  assign qspo[14] = \<const0> ;
  assign qspo[13] = \<const0> ;
  assign qspo[12] = \<const0> ;
  assign qspo[11] = \<const0> ;
  assign qspo[10] = \<const0> ;
  assign qspo[9] = \<const0> ;
  assign qspo[8] = \<const0> ;
  assign qspo[7] = \<const0> ;
  assign qspo[6] = \^qspo [6];
  assign qspo[5] = \<const0> ;
  assign qspo[4] = \^qspo [4];
  assign qspo[3] = \<const0> ;
  assign qspo[2] = \<const0> ;
  assign qspo[1] = \<const0> ;
  assign qspo[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_DPO = "0" *) 
  (* C_HAS_DPRA = "0" *) 
  (* C_HAS_I_CE = "0" *) 
  (* C_HAS_QDPO = "0" *) 
  (* C_HAS_QDPO_CE = "0" *) 
  (* C_HAS_QDPO_CLK = "0" *) 
  (* C_HAS_QDPO_RST = "0" *) 
  (* C_HAS_QDPO_SRST = "0" *) 
  (* C_HAS_WE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_PIPELINE_STAGES = "0" *) 
  (* C_QCE_JOINED = "0" *) 
  (* C_QUALIFY_WE = "0" *) 
  (* C_REG_DPRA_INPUT = "0" *) 
  (* c_addr_width = "6" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "64" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_clk = "1" *) 
  (* c_has_qspo = "1" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "0" *) 
  (* c_mem_init_file = "LUT_bin.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "16" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 U0
       (.a({a[5:3],1'b0,1'b0,1'b0}),
        .clk(clk),
        .d({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dpo(NLW_U0_dpo_UNCONNECTED[15:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[15:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo({NLW_U0_qspo_UNCONNECTED[15:7],\^qspo ,NLW_U0_qspo_UNCONNECTED[3:0]}),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo(NLW_U0_spo_UNCONNECTED[15:0]),
        .we(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2021.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
qBHgXmwbTbZKEU9tcjZbsi+ExctvD8XefVx14BkxLFOTaColWRgtKU9vhojRxOADVyuCsE7IUw5/
fIBh9Lwwg/1gRLE7njxHZhWAz9S1sVJTpj4NzEQ/HyJYMIoxPpczRyPcn1WxmVNQqNuYI1QUkQdA
njnTdD+zeIXLmFmD1F8=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
V/TizgGPju21MuRFF7y/ABvr1JqliOqk4fYco5uCOBoyUST+UXZx+hvy+kbS/LIOoofVkSPNsgIB
cZoZuq7YCpk/jDm/+3eTRWDEB56vO8JkeH1jwR7EzYU3QoipBAujdnlLacwL/Qy/9BMtpw8ZC+MO
wBnu3Kj0Q1dJVGnfxGEY6YDPJ+d21AYrk0MUpKHc8NVxv4Hojk39AhtxcEVXw2v2A/fQ9jZC/Ndf
05gPeW4R8LQP/EGbOdtsgq9I5dfdsNv7iKW511rAce2zY8b2yC3vfsAK+YvJlJhR9xErRgfrNVjL
Wf/LCVNpz2k1nBpoU73eFFZpZpBgcK2RDNk23w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Bq6b1vbyY3ChcNU6TEnpKgFXql2W7SCpYB5BjNQXc3pXJDMmVkEfYRRu3dus6SDMFXRHG0YcdGWS
/wS2NHW3Y4jbYKRazEyz7v6YOZcyrun1KL6tR+AG/wFDOveXfxNNB+zhBzCpD4rjZneOXH/S238v
1RhzzAtXry9bFvLFEvM=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bYFsVmVVlPDgpJA7LNUGgEzYGUdTNv5Vsc3Jwzl3M7dMROVIX3hQvamUB9EXDcek0Zh/sGPCLhKi
ldQUStkE/1cexALf6/IyDRsZwk6TfIOli5xAX33R98gH53kMGqm4LeMSjvxdw1HFasq3DFQf9MFS
2Vd3MBk2RQ7oHEiynkyQ6u6rVzyv/fEvYXD4vddz2P59pyQWGFNkNK2IO+xY995zx5+zEWsxRbhY
BiKHBy3THjpQOfIu9GAuI55cn3CQjjpvKXcx+Y3heO9CKpqZLGfEqa24KfEbqGfiApu6kTIVexUg
dDBIIdD+N8LJltHRpZ+jbHfXPp+zcquX5mHHjw==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Qj/0qDRoIRfY71MSM/IDZuivT67/prQAAFtf0lEbUPKKco5uVYjUx2y9eBkAfFGhs2fZalRebtNk
xUbSGT68uQ1coh2Q6nhS4cdo4YPsspTH1Nhu4RIhtPgRxdUttXHYX/Gr97N9TcXoMsfDghFW64X1
k5hEWEfn83fPzGIjm+7kdnV/4img9Fa3ZxxYUrgr5ny+/n9TADBfPj0nanLXP9IfpXIXFMO4cZ0z
Bn1eYo5PYUkIMm2NtSetwGM6Rot106wWg5O8rFVPs19cOE8+1EqXo7dNBHsY+L8Kc+GyZSZKYJeV
JveQ0goTcw48qT7c20RAD9/7ios9uAXp0PTvpQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
n4eN8OcgE2ytgAerPG7drDMcMy/2Ng9XyKzdLoueXaLeh19zquDnQa2TeOOi0kQM7hGEW4N0KSLe
m6/JDweeF+Zh9xzzoNG/7KoO99Lq3PLQiMZJ59hyawaj7oI6PxjJXrmtNuERK3VaiwAJCkdIROIA
KQWVzBm/UM8v21JbncRVWz79jVq9PoB0JyDeHd8yQSMkqhlQuqJk6w0/g6hvk6v0eZ8cm+YQPd0g
lcExsPMEJVUIstZmgw7cO9bw9rbVgiwyICyHMF9e9m+Fe/Erm8j76lm7U0ARiW5L4G85A2pA7Npy
R4KxewsytXQLOLLLVKSJgeQsFsNGQkjyZbzRJw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Xr27ZXCB8OnsIkHZpOeCueAdq2OspASj7YxAKEG4q8NqrecPF23quvvBjuwcB49ClOEqtHMTy8Wx
weKE0jw+n98eLI9Twla9KkITonZCHdMyBRODorH0IaSSb4J6rlebTz4yIeDkU+T39FfS19iVrJv9
YqXU3m1SGEsOT1DI4s/uVoxGxOXgwU9vp+nGCLp4cWSDJ5NmNma3Bkvy1AofNpsy04s51ATfy536
dpOLpy/2AJscmf6UromXJmy3AjFYU5O9tgB+VG+ew3ZTMKUxBUQgIg6qI3jmIkWZ3kN/k2X52CIU
cKg6JWkdfO6Yk9nM2sROGf/SLG8ybirlacy0SQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
R2nz22UK9YsaRdZIY3kGldutQifE5DDy7NbJzgHH9NuMVkNCseU6780lVUn1OPAvaNVfCBMh5aZB
Qa0UQVeAStJarB7+LT6a3OM60oJ6FEegSw1JKYWlpr0J4bm0S8AP9vR86sm2qfGICS2ZYl4qJmT8
m4T3EkhhzBehr+YTSE5DVzXiDX1G5ichGCmCZeSTKbpaMUP4CxdLB3GXI3i/Q8iml9J42mVCnpUw
iemH4c94zF6h8A9D4QXZyzCcG7ls+jKtBjHptjiIu8+V0cg9S7zgQsphkLKIetlWBVuL7zqnpbWe
8s/b5fnpCatZemVgKkFuy8UKlkzOt0yBn4MFWqFhLaoZWztlyHiXcUuSgmaIK7C0o6rpozCRxgkr
/krI39PGhNLvh9r+dLgiXtDNHEPG7Rc1kGWMV4Tv/wTcuizsdwyK5ULiX9zDkm9Wp8wc2FmonXXs
zUMW2MTsj6qNgl3ly6aR71kz80w3HEm6vpYE0PgIioLUHtXSJrNI0YZH

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
KxbkAZO3A4DCLBukfrGMdxDyiqe7FeV3hRi5vLrwE66pgRsrzhpdsdVNVm9GBFGyirgfJc8Msa9K
Y4YDSFDYTsg59E8GFTF+GyDnevyA+S2gpVNFB0n2xfXaYhsh3iGMlmbrfQJILt4u+8Vuch+DunTO
8I4THbi625TC6yg0oe4r3JPCuc0C+w0RF2tsnPzM8RExC1kOIqKZaY9q1/wcBS5yGvCu13nNJIh8
IjjeDlgUK3GKB5FLzKJjUN79rMWT/qzH5OvgP7qaduyP5OfGm9E21O9eYtZEDGyGoM6ob08/TjSI
IIIPgVDQr6hOVM58Dogadky8yVeXSxHRau5RRA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4576)
`pragma protect data_block
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
fElwQ6do8Xl96WlksKWi/Q==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
