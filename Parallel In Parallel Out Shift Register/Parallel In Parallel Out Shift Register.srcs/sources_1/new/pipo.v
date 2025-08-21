`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/20/2025 11:18:41 PM
// Design Name: 
// Module Name: pipo
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


module pipo(input Rst,Clk,ld,[3:0]pin,
     output reg [3:0]pout );
     always @(posedge Clk)
     begin
     if(!Rst)
     pout<=4'b0000;
     else if(ld)
     pout<=pin;
     else
     pout<=(pout<<1);
     end
endmodule
