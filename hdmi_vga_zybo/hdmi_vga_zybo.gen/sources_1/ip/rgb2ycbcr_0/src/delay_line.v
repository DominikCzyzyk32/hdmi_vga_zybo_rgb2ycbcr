`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.03.2022 19:46:19
// Design Name: 
// Module Name: delay_line
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
module single_delay #(
    parameter N = 12
    )
    (
        input clk,
        input [N-1:0]idata,
        output [N-1:0]odata
    );
    reg [N-1:0]val;
    
    always @(posedge clk)
    begin
        val<=idata;
    end
    
    assign odata=val;  
endmodule

module delay_line #(
    parameter N = 12,
    parameter DELAY = 2
)
(
    input clk,
    input [N-1:0]idata,
    output [N-1:0]odata
);

wire [N-1:0] tdata [DELAY:0];
assign tdata[0] = idata;

genvar i;
generate
    if(DELAY > 0)
    begin
        for (i=0; i < DELAY; i=i+1)
        begin
            single_delay s_delay
            (
                .clk(clk),
                .idata(tdata[i]),
                .odata(tdata[i+1])
            );
        end
    end else
    begin
        assign odata = idata;
    end
assign odata = tdata[DELAY];
endgenerate
    
endmodule