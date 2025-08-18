`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/16/2025 09:18:55 PM
// Design Name: 
// Module Name: sr_ff_tf
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


module sr_ff_tf();
reg CLK,S,R;
wire Q0,Q1;
sr_ff uut(S,R,Q0,Q1,CLK);
initial
begin
CLK=0;
forever #5 CLK= ~CLK;
end
initial 
begin
S=0;R=0; #10;
S=0;R=1; #10;
S=1;R=0; #10;
S=1;R=1; #10;
S=0;R=0; #10;
S=0;R=1; #10;
S=1;R=0; #10;
$finish;
end
endmodule
