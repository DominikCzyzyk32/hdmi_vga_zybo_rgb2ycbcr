`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.03.2022 08:14:53
// Design Name: 
// Module Name: vp
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module vp(
        input clk,
        input [2:0] sw,
        input de_in,
        input h_sync_in,
        input v_sync_in,
        input [23:0] pixel_in,
        output de_out,
        output h_sync_out,
        output v_sync_out,
        output [23:0] pixel_out
    );
//    wire [23:0] pixel_out_t;
//    reg r_de = 0;
//    reg r_hsync = 0;
//    reg r_vsync = 0;
//    always @(posedge clk)
//    begin
//        r_de <= de_in;
//        r_hsync <= h_sync_in;
//        r_vsync <= v_sync_in;
//    end
//    assign de_out = r_de;
//    assign h_sync_out = r_hsync;
//    assign v_sync_out = r_vsync;

//LUT_b r_LUT
//(
//    .a(pixel_in[23:16]), //pixel_in[23-:8]
//    .clk(clk),
//    .qspo(pixel_out_t[23:16])
//);
    
//LUT_b g_LUT
//(
//    .a(pixel_in[15:8]),
//    .clk(clk),
//    .qspo(pixel_out_t[15:8])
//);
    
//LUT_b b_LUT
//(
//    .a(pixel_in[7:0]),
//    .clk(clk),
//    .qspo(pixel_out_t[7:0])
//);  
//assign pixel_out[23:16] = pixel_out_t[7:0] & pixel_out_t[15:8] & pixel_out_t[23:16];
//assign pixel_out[15:8] = pixel_out_t[7:0] & pixel_out_t[15:8] & pixel_out_t[23:16];
//assign pixel_out[7:0] = pixel_out_t[7:0] & pixel_out_t[15:8] & pixel_out_t[23:16];
wire [23:0] rgb_mux [7:0];
wire de_mux[7:0];
wire hsync_mux[7:0];
wire vsync_mux[7:0];

assign rgb_mux[0] = pixel_in;
assign de_mux[0] = de_in;
assign hsync_mux[0] = h_sync_in;
assign vsync_mux[0] = v_sync_in;

rgb2ycbcr_0 rgb_to_ycbcr
(
    .clk(clk),
    .de_in(de_mux[0]),
    .h_sync_in(hsync_mux[0]),
    .v_sync_in(vsync_mux[0] ),
    .de_out(de_mux[1]),
    .h_sync_out(hsync_mux[1]),
    .v_sync_out(vsync_mux[1]),
    .pixel_in(rgb_mux[0]),
    .pixel_out(rgb_mux[1])
);

// Progowanie
wire [7:0] bin;

localparam Ta = 8'd110;
localparam Tb = 8'd255;
localparam Tc = 8'd120;
localparam Td = 8'd255;

assign bin = (rgb_mux[1][15:8] > Ta && rgb_mux[1][15:8] < Tb && rgb_mux[1][7:0] > Tc && rgb_mux[1][7:0] < Td ) ? 8'd255
 : 0;

assign rgb_mux[2] = {bin, bin, bin};
assign de_mux[2] = de_mux[1];
assign hsync_mux[2] = hsync_mux[1];
assign vsync_mux[2] = vsync_mux[1];

// Multiplekser
assign pixel_out = rgb_mux[sw];
assign de_out = de_mux[sw];
assign h_sync_out = hsync_mux[sw];
assign v_sync_out = vsync_mux[sw];

endmodule
