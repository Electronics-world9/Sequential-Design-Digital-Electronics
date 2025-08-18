`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/17/2025 10:38:15 PM
// Design Name: 
// Module Name: t_ff_tb
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


module t_ff_tb();
reg T,RST,CLK;
wire Q;
t_ff uut(T,RST,CLK,Q);
initial
begin
CLK=0;
forever #5 CLK = ~CLK;
end
initial
begin
RST =0;#7
RST=1;T=0; #10
T=1; #10
T=1; #10
RST=0;T=0; #10
RST=1;T=1; #10
T=0; #10;
$finish;
end
endmodule
