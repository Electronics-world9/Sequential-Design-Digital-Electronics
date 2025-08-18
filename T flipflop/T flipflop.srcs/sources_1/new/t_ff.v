`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/17/2025 10:34:06 PM
// Design Name: 
// Module Name: t_ff
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


module t_ff(
    input T,
    input RST,
    input CLK,
    output reg Q
    );
    always @(posedge CLK)
    begin
    if(!RST)
    Q=1'b0;
    else if (T)
    Q = ~Q;
    end
endmodule
