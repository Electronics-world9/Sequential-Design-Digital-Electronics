`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/17/2025 10:44:27 PM
// Design Name: 
// Module Name: d_latch
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


module d_latch(
    input D,
    input EN,
    output reg Q
    );
    always @(D,EN)
    begin
    if(EN)
    Q=D;
    end
endmodule
