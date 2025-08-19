`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/19/2025 07:35:45 PM
// Design Name: 
// Module Name: siso_tb
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


module siso_tb();
reg Sin,Rst,Clk;
wire Sout;
wire [3:0]Q;
siso uut(Sin,Rst,Clk,Q,Sout);
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
$finish;
end

endmodule
