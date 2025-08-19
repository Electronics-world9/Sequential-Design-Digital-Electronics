`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/19/2025 06:50:39 PM
// Design Name: 
// Module Name: ring_counter_tb
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


module ring_counter_tb();
reg Rst,Clk;
wire [3:0]Q;
ring_counter uut(Rst,Clk,Q);
initial
begin
Clk=0;
forever#5 Clk=~Clk;
end
initial
begin
Rst=1;#5;
Rst=0;#10;
Rst=1;#90;
$finish;
end
endmodule
