`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/15/2025 03:53:26 AM
// Design Name: 
// Module Name: rs_latch_nor
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


module rs_latch_nor(
    input S,
    input R,
    output Q0,
    output Q
    );
    assign Q = ~(R | Q0);
    assign Q0 = ~(S | Q) ;
endmodule
