`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.06.2026 10:42:11
// Design Name: 
// Module Name: full_adder_tb
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


module full_adder_tb();
reg A,B,Cin;
wire Cout,Sum;
full_adder  utt(.a(A),.b(B),.cin(Cin),.sum(Sum),.cout(Cout));
initial begin
A=0;B=0;Cin=0;#10
A=0;B=0;Cin=1;#10
A=0;B=1;Cin=0;#10
A=0;B=1;Cin=1;#10
A=1;B=0;Cin=0;#10
A=1;B=0;Cin=1;#10
A=1;B=1;Cin=0;#10
A=1;B=1;Cin=1;#10
$stop;
end


endmodule
