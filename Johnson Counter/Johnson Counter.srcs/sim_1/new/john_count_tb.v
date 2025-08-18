`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/18/2025 10:17:12 PM
// Design Name: 
// Module Name: john_count_tb
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


module john_count_tb();
reg Clk,Rst;
wire [3:0]Out;
john_Counter uut(Clk,Rst,Out);
initial
begin
Clk=0;
forever #5 Clk=~Clk;
end
initial
begin
Rst=1;#5;
Rst=0;#5;
Rst=1;#100;
$finish;
end
endmodule
