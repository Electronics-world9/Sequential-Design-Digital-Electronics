`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/17/2025 07:22:25 PM
// Design Name: 
// Module Name: d_ff_tb
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


module d_ff_tb();
reg D,Clk;
wire Q;
d_ff uut(D,Clk,Q);
initial
begin
Clk=0;
forever #5 Clk=~Clk;
end
initial
begin
D=0;#10;
D=1;#10;
D=0;#10;
D=1;#10;
D=0;#10;
D=1;#10;
D=0;#10;
$finish;
end
endmodule
