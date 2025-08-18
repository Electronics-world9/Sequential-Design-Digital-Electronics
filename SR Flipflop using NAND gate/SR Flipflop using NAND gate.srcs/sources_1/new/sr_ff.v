`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/16/2025 08:58:40 PM
// Design Name: 
// Module Name: sr_ff
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


module sr_ff(
    input S,
    input R,
    output Q0,
    output Q1,
    input CLK
    );
    assign Q1= ~(~(S & CLK) & Q0);
    assign Q0= ~(~(R & CLK)& Q1);
endmodule
