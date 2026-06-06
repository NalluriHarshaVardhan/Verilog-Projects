`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.06.2026 15:23:56
// Design Name: 
// Module Name: bcd_to_xs3_tb
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


module bcd_to_xs3_tb();
reg [3:0] BCD;
wire [3:0] EXCESS3;

bcd_to_xs3 utt(.bcd(BCD),.excess3(EXCESS3));
integer i;
initial begin
for (i=0;i<10;i=i+1) begin
BCD=i;#10;
end
$finish;
end
endmodule
