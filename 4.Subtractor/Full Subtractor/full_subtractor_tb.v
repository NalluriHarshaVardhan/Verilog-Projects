`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.06.2026 11:37:43
// Design Name: 
// Module Name: full_subtractor_tb
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


module full_subtractor_tb();
reg A,C,Bin;
wire Dif,Bout;
full_subtractor utt(.a(A),.c(C),.bin(Bin),.dif(Dif),.bout(Bout));
initial begin
$monitor("Time=%0t A=%b C=%b Bin=%b Dif=%b Bout=%b",
              $time,A,C,Bin,Dif,Bout);
A=0;C=0;Bin=0;#10;
A=0;C=0;Bin=1;#10;
A=0;C=1;Bin=0;#10;
A=0;C=1;Bin=1;#10;
A=1;C=0;Bin=0;#10;
A=1;C=0;Bin=1;#10;
A=1;C=1;Bin=0;#10;
A=1;C=1;Bin=1;#10;
$stop;
end
endmodule
