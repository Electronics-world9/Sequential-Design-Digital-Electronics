`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/18/2025 09:25:03 PM
// Design Name: 
// Module Name: sync_up_down
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


module sync_up_down(
    input Clk,
    input Rst,
    input En,
    output reg [3:0] Out
    );
    always @(posedge Clk)
    begin
    if(!Rst)
    Out=4'b0000;
    else if(En)
    Out=Out+1;
    else
    Out=Out-1;
    end
endmodule
