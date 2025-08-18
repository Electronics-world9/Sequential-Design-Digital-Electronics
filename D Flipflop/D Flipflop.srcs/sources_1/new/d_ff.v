`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/17/2025 07:12:56 PM
// Design Name: 
// Module Name: d_ff
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


module d_ff(
    input D,
    input Clk,
    output reg Q
    );
    always @(posedge Clk)
    begin
    case(D)
    1'b0: Q= 0;
    1'b1: Q=1;
    endcase
    end
endmodule
