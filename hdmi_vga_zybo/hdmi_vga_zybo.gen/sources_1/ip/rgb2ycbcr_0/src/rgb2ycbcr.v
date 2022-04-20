`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.04.2022 18:50:33
// Design Name: 
// Module Name: rgb2ycbcr
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


module rgb2ycbcr(
        input clk,
        input de_in,
        input h_sync_in,
        input v_sync_in,
        input [23:0] pixel_in,
        output de_out,
        output h_sync_out,
        output v_sync_out,
        output [23:0] pixel_out
    );
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
    
    wire signed [17:0] R;
    wire signed [17:0] G;
    wire signed [17:0] B;
    assign R = {10'b0,pixel_in[23:16]};
    assign G = {10'b0,pixel_in[15:8]};
    assign B = {10'b0,pixel_in[7:0]};
    
    wire signed [17:0] coeff [8:0];
    assign coeff[0] = 18'b001001100100010111;
    assign coeff[1] = 18'b010010110010001011;
    assign coeff[2] = 18'b000011101001011110;
    assign coeff[3] = 18'b111010100110011011;
    assign coeff[4] = 18'b110101011001100101;
    assign coeff[5] = 18'b010000000000000000;
    assign coeff[6] = 18'b010000000000000000;
    assign coeff[7] = 18'b110010100110100010;
    assign coeff[8] = 18'b111101011001011110;
    
    wire signed [35:0] M [8:0];
    wire signed [8:0] M_conv [8:0];
    
    // Mno¿enie
    mult_gen_0 R_0
    (
        .CLK(clk),
        .A(coeff[0]),
        .B(R),
        .P(M[0])
    );
    
     mult_gen_0 G_0
    (
        .CLK(clk),
        .A(coeff[1]),
        .B(G),
        .P(M[1])
    );
    
     mult_gen_0 B_0
    (
        .CLK(clk),
        .A(coeff[2]),
        .B(B),
        .P(M[2])
    );
    
    mult_gen_0 R_1
    (
        .CLK(clk),
        .A(coeff[3]),
        .B(R),
        .P(M[3])
    );
    
     mult_gen_0 G_1
    (
        .CLK(clk),
        .A(coeff[4]),
        .B(G),
        .P(M[4])
    );
    
     mult_gen_0 B_1
    (
        .CLK(clk),
        .A(coeff[5]),
        .B(B),
        .P(M[5])
    );
    
    mult_gen_0 R_2
    (
        .CLK(clk),
        .A(coeff[6]),
        .B(R),
        .P(M[6])
    );
    
     mult_gen_0 G_2
    (
        .CLK(clk),
        .A(coeff[7]),
        .B(G),
        .P(M[7])
    );
    
     mult_gen_0 B_2
    (
        .CLK(clk),
        .A(coeff[8]),
        .B(B),
        .P(M[8])
    );
    
    assign M_conv[0] = M[0][25:17];
    assign M_conv[1] = M[1][25:17];
    assign M_conv[2] = M[2][25:17];
    assign M_conv[3] = M[3][25:17];
    assign M_conv[4] = M[4][25:17];
    assign M_conv[5] = M[5][25:17];
    assign M_conv[6] = M[6][25:17];
    assign M_conv[7] = M[7][25:17];
    assign M_conv[8] = M[8][25:17];
    
    reg [8:0] Rest = 9'b010000000;
    wire signed [8:0] R_G_0;
    wire signed [8:0] R_G_1;
    wire signed [8:0] R_G_2;
    wire signed [8:0] B_Rest_1;
    wire signed [8:0] B_Rest_2;
    wire signed [8:0] M2_conv_delayed;
    wire signed [8:0] R_G_B_0;
    wire signed [8:0] R_G_B_1;
    wire signed [8:0] R_G_B_2;
    
    // Dodawanie
    c_addsub_0 RG_0
    (
        .CLK(clk),
        .A(M_conv[0]),
        .B(M_conv[1]),
        .S(R_G_0)
    );
    
    delay_line #
    (
        .N(9),
        .DELAY(2)
    )
    d_l
    (
        .clk(clk),
        .idata(M_conv[2]),
        .odata(M2_conv_delayed)
    );
    
    c_addsub_0 RGB_0
    (
        .CLK(clk),
        .A(R_G_0),
        .B(M2_conv_delayed),
        .S(R_G_B_0)
    );
    
     c_addsub_0 RG_1
    (
        .CLK(clk),
        .A(M_conv[3]),
        .B(M_conv[4]),
        .S(R_G_1)
    );
    
    c_addsub_0 BRest_1
    (
        .CLK(clk),
        .A(M_conv[5]),
        .B(Rest),
        .S(B_Rest_1)
    );
    
    c_addsub_0 RGB_1
    (
        .CLK(clk),
        .A(R_G_1),
        .B(B_Rest_1),
        .S(R_G_B_1)
    );
    
    c_addsub_0 RG_2
    (
        .CLK(clk),
        .A(M_conv[6]),
        .B(M_conv[7]),
        .S(R_G_2)
    );
    
    c_addsub_0 BRest_2
    (
        .CLK(clk),
        .A(M_conv[8]),
        .B(Rest),
        .S(B_Rest_2)
    );
    
    c_addsub_0 RGB_2
    (
        .CLK(clk),
        .A(R_G_2),
        .B(B_Rest_2),
        .S(R_G_B_2)
    );
    
    wire [7:0] Y;
    wire [7:0] Cb;
    wire [7:0] Cr;
    
    assign Y = R_G_B_0[7:0];
    assign Cb = R_G_B_1[7:0];
    assign Cr = R_G_B_2[7:0];
    
    assign pixel_out = {Y, Cb, Cr};
    
    // Synchronizacja
    wire [2:0] sync_in;
    wire [2:0] sync_out;
    assign sync_in = {de_in, h_sync_in, v_sync_in};
    
    delay_line #
    (
        .N(3),
        .DELAY(7)
    )
    sync
    (
        .clk(clk),
        .idata(sync_in),
        .odata(sync_out)
    );
    
    assign de_out = sync_out[2];
    assign h_sync_out = sync_out[1];
    assign v_sync_out = sync_out[0];
    
    
    
endmodule
