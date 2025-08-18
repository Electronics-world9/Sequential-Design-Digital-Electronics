`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/17/2025 06:53:06 PM
// Design Name: 
// Module Name: jk_ff_tf
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


module jk_ff_tf();
reg J,K,Clk;
wire Q;
jk_ff uut(J,K,Clk,Q);
initial
begin
Clk=0;
forever #5 Clk=~Clk;
end
initial
begin
J=0;K=0;#10;
J=0;K=1;#10;
J=1;K=0;#10;
J=1;K=1;#10;
J=0;K=1;#10;
$finish;
end
endmodule
