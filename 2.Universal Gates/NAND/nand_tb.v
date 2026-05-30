`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.05.2026 19:00:13
// Design Name: 
// Module Name: nand_tb
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


module nand_tb();
reg A,B;
wire C;

NAND utt(.a(A),.b(B),.c(C));
initial begin
A=0;B=0;#10;
A=0;B=1;#10;
A=1;B=0;#10;
A=1;B=1;#10;
$stop;
end

endmodule
