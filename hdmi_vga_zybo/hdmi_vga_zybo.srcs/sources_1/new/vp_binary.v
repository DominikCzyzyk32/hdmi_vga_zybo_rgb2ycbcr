`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.04.2022 10:42:58
// Design Name: 
// Module Name: vp_binary
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


module vp_binary(
        input clk,
        input de_in,
        input h_sync_in,
        input v_sync_in,
        input [23:0] pixel_in,
        output de_out,
        output h_sync_out,
        output v_sync_out,
        output pixel_out
    );
    reg r_de = 0;
    reg r_hsync = 0;
    reg r_vsync = 0;
    wire [2:0] pixel_c = 3'b0;
    always @(posedge clk)
    begin
        r_de <= de_in;
        r_hsync <= h_sync_in;
        r_vsync <= v_sync_in;
    end
    assign de_out = r_de;
    assign h_sync_out = r_hsync;
    assign v_sync_out = r_vsync;

LUT_bin r_LUT_bin
(
    .a(pixel_in[23:16]), //pixel_in[23-:8]
    .clk(clk),
    .qspo(pixel_c[2])
);
    
LUT_bin g_LUT_bin
(
    .a(pixel_in[15:8]),
    .clk(clk),
    .qspo(pixel_c[1])
);
    
LUT_bin b_LUT_bin
(
    .a(pixel_in[7:0]),
    .clk(clk),
    .qspo(pixel_c[0])
);  
assign pixel_out = pixel_c[0] & pixel_c[1] & pixel_c[2];
endmodule
