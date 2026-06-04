`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.06.2026 10:27:59
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


module half_adder_tb();
reg A,B;
wire S,C;
half_adder utt(.a(A),.b(B),.s(S),.c(C));
initial begin
A=0;B=0;#10;
A=0;B=1;#10
A=1;B=0;#10
A=1;B=1;#10
$stop;
end

endmodule
