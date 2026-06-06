`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.06.2026 11:04:00
// Design Name: 
// Module Name: encoder
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


module encoder(input d0,d1,d2,d3,d4,d5,d6,d7, output a,b,c);
assign a=(d1|d3|d5|d7);
assign b=(d2|d3|d6|d7);
assign c=(d4|d5|d6|d7);
endmodule
