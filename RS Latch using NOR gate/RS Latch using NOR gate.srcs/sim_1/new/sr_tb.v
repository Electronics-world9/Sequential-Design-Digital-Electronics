`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/15/2025 04:05:49 AM
// Design Name: 
// Module Name: sr_tb
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


module sr_tb();
reg S,R;
wire Q,Q0;
rs_latch_nor uut(S,R,Q0,Q);
initial
begin
S=0; R=0; #10
S=0; R=1; #10
S=1; R=0; #10
S=1; R=1; #10
$finish;
end
endmodule
