`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/17/2025 10:46:50 PM
// Design Name: 
// Module Name: d_latch_tb
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


module d_latch_tb();
reg D,EN;
wire Q;
d_latch uut(D,EN,Q);
initial
begin
EN=0;D=0; #10;
EN=1;D=0;#10;
D=1;#10;
EN=0;D=1; #10
D=0;
#10;

$finish;
end
endmodule
