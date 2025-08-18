`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/18/2025 09:27:47 PM
// Design Name: 
// Module Name: up_down_tb
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


module up_down_tb();
reg Clk,Rst,En;
wire [3:0]Out;
sync_up_down uut(Clk,Rst,En,Out);
initial 
begin
Clk=0;
forever #5 Clk=~Clk;
end
initial
begin
En=0;Rst=1;#10;
En=1; Rst=0;#10;
En=1;Rst=1;#200;
En=0;Rst=1;#200;
$finish;
end
endmodule
