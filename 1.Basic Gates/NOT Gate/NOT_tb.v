`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.05.2026 15:05:39
// Design Name: 
// Module Name: NOT_tb
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


module NOT_tb();
reg A;
wire B;
NOT utt(.a(A),.b(B));
initial begin
A=0;#10;
A=1;#10;
$stop;
end

endmodule
