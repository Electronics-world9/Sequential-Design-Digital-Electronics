`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/17/2025 06:46:14 PM
// Design Name: 
// Module Name: jk_ff
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


module jk_ff(
    input J,
    input K,
    input Clk,
    output reg Q
    );
    always @(posedge Clk)
    begin
    case({J,K})
    2'b00: Q=Q;
    2'b01: Q=0;
    2'b10: Q=1;
    2'b11: Q=~Q;
    endcase
    end
endmodule
