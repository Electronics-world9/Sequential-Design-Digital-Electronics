`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/19/2025 07:31:57 PM
// Design Name: 
// Module Name: siso
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


module siso(
    input Sin,
    input Rst,
    input Clk,
    output reg [3:0] Q,
    output Sout
    );
    always @(posedge Clk)
    begin
      if(!Rst)
        Q<=4'b0000;
      else
        Q<={Q[2:0],Sin};
     end
      assign Sout=Q[3];
endmodule
