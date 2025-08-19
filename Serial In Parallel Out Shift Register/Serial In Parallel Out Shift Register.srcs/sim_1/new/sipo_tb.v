`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/19/2025 07:58:41 PM
// Design Name: 
// Module Name: sipo_tb
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


module sipo_tb();
reg Sin,Rst,Clk;
wire [3:0]pout;
sipo uut(Sin,Rst,Clk,pout);
initial
begin
Clk=0;
forever #5 Clk=~Clk;
end
initial
begin
Rst=1; Sin=1; #5
Rst=0; Sin=0; #10
Rst=1; Sin=1; #10
Sin=1; #10
Sin=1; #10
Sin=0; #10
Sin=1; #5
$finish;
end
endmodule
