`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/19/2025 06:48:06 PM
// Design Name: 
// Module Name: ring_counter
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


module ring_counter(
    input Rst,
    input Clk,
    output reg[3:0] Q
    );
    always @(posedge Clk)
    begin
    if(!Rst)
    Q=4'b0001;
    else
    Q<={Q[0],Q[3:1]};
    end
endmodule
