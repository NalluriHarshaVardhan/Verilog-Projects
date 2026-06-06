`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.06.2026 14:22:32
// Design Name: 
// Module Name: demux_tb
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


module demux_tb();
reg Y,S0,S1;
wire A,B,C,D;
demux utt (.y(Y),.s0(S0),.s1(S1),.a(A),.b(B),.c(C),.d(D));
initial begin
Y=1;S0=0;S1=0;#10;
Y=1;S0=0;S1=1;#10;
Y=1;S0=1;S1=0;#10;
Y=1;S0=1;S1=1;#10;
$stop;
end
endmodule
