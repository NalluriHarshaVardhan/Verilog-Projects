`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.06.2026 11:03:38
// Design Name: 
// Module Name: encoder_tb
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


module encoder_tb();
reg D0,D1,D2,D3,D4,D5,D6,D7;
wire A,B,C;

encoder utt (.a(A),.b(B),.c(C),.d0(D0),.d1(D1),.d2(D2),.d3(D3),.d4(D4),.d5(D5),.d6(D6),.d7(D7));
initial begin
D0=1;D1=0;D2=0;D3=0;D4=0;D5=0;D6=0;D7=0;#10;
D0=0;D1=1;D2=0;D3=0;D4=0;D5=0;D6=0;D7=0;#10;
D0=0;D1=0;D2=1;D3=0;D4=0;D5=0;D6=0;D7=0;#10;
D0=0;D1=0;D2=0;D3=1;D4=0;D5=0;D6=0;D7=0;#10;
D0=0;D1=0;D2=0;D3=0;D4=1;D5=0;D6=0;D7=0;#10;
D0=0;D1=0;D2=0;D3=0;D4=0;D5=1;D6=0;D7=0;#10;
D0=0;D1=0;D2=0;D3=0;D4=0;D5=0;D6=1;D7=0;#10;
D0=0;D1=0;D2=0;D3=0;D4=0;D5=0;D6=0;D7=1;#10;
$stop;
end
endmodule
