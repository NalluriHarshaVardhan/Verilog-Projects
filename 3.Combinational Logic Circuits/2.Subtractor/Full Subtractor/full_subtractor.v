`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.06.2026 11:38:03
// Design Name: 
// Module Name: full_subtractor
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


module full_subtractor(a,c,bin,dif,bout);

input a,c,bin;
output dif,bout;

assign dif  = a ^ c ^ bin;
assign bout = ((~a)&c) | (c&bin) | ((~a)&bin);

endmodule


