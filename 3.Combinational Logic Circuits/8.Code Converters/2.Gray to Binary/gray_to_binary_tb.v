`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.06.2026 11:49:28
// Design Name: 
// Module Name: gray_to_binary_tb
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


module gray_to_binary_tb();
reg [3:0] Gray;
wire [3:0] Binary;

gray_to_binary utt(.gray(Gray),.binary(Binary));
integer i;
initial begin
    $monitor("Time=%0t Gray=%b Binary=%b",
             $time, Gray, Binary);

    for(i=0; i<16; i=i+1) begin
        Gray = i;
        #10;
    end

    $finish;
end
endmodule
