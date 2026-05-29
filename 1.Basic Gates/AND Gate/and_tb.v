`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.05.2026 13:09:46
// Design Name: 
// Module Name: and_tb
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


module and_tb();
reg A,B;
wire Y;

AND utt(.a(A),.b(B),.y(Y));
initial begin
A=0;B=0;#10
A=0;B=1;#10
A=1;B=0;#10
A=1;B=1;#10
$stop;
end
endmodule
