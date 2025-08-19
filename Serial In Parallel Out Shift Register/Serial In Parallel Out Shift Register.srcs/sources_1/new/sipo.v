`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/19/2025 07:55:37 PM
// Design Name: 
// Module Name: sipo
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


module sipo(
    input Sin,
    input Rst,
    input Clk,
    output reg[3:0] pout
    );
    always @(posedge Clk)
    begin
    if(!Rst)
    pout<=4'b0000;
    else
    pout<={pout[2:0],Sin};
    end
endmodule
