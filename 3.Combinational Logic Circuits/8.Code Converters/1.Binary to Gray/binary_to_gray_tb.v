`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.06.2026 11:33:30
// Design Name: 
// Module Name: binary_to_gray_tb
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


module binary_to_gray_tb();
reg [3:0] Binary;
wire [3:0] Gray;
binary_to_gray utt(.binary(Binary),.gray(Gray));

initial begin
    $monitor("Time=%0t Binary=%b Gray=%b",
              $time, Binary, Gray);

    for(integer i = 0; i < 16; i = i + 1) begin
        Binary = i;
        #10;
    end

    $finish;
end

endmodule


