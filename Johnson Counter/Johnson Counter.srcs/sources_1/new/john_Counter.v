`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/18/2025 10:13:31 PM
// Design Name: 
// Module Name: john_Counter
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


module john_Counter(
    input Clk,
    input Rst,
    output reg[3:0] Out
    );
    always @ (posedge Clk)
    begin
    if(!Rst)
    Out<=4'b0000;
    else
    Out<={~Out[0],Out[3:1]};
    end
endmodule
