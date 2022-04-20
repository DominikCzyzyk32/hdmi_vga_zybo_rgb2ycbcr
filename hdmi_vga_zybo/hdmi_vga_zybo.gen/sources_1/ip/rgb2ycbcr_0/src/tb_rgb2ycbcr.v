`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.04.2022 17:29:45
// Design Name: 
// Module Name: tb_rgb2ycbcr
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


module tb_rgb2ycbcr(

    );
    reg clk = 1'b0;
    reg de_in = 1'b0;
    reg h_sync_in = 1'b0;
    reg v_sync_in = 1'b0;
    wire de_out;
    wire h_sync_out;
    wire v_sync_out;
    reg [23:0] pixel_in = 24'b111111111111110000010000;
    wire signed [23:0] pixel_out;
    
    initial
    begin
        while(1)
        begin
            #2; 
           clk <= clk + 1;     
        end
    end
    
    initial
    begin
        while(1)
        begin
            #4; 
           pixel_in <= pixel_in + 10;     
        end
    end
    rgb2ycbcr rgb
    (
        .clk(clk),
        .de_in(de_in),
        .h_sync_in(h_sync_in),
        .v_sync_in(v_sync_in),
        .de_out(de_out),
        .h_sync_out(h_sync_out),
        .v_sync_out(v_sync_out),
        .pixel_in(pixel_in),
        .pixel_out(pixel_out)
    );
endmodule
