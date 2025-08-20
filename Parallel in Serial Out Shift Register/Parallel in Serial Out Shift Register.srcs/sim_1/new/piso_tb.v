`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/20/2025 08:10:41 PM
// Design Name: 
// Module Name: piso_tb
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


module piso_tb();
reg Rst,Clk,ld;
reg [3:0]pin;
wire Sout;
piso uut(Rst,Clk,ld,pin,Sout);
initial
begin
Clk=0;
forever #5 Clk=~Clk;
end
initial
begin
Rst=1;ld=0; pin=4'b1101; #5
Rst=0;ld=1; pin=4'b1010; #10
Rst=1; pin=4'b0101; #10
pin=4'b1011; #10
pin=4'b1101;ld=0; #30
$finish;
end
endmodule
