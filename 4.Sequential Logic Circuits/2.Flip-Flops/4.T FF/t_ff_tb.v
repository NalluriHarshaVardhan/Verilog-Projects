`timescale 1ns/1ps

module t_ff_tb;

reg clk, T;
wire Q;

t_ff uut (
    .clk(clk),
    .T(T),
    .Q(Q)
);

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin
    T = 0; #10;   // Hold
    T = 1; #40;   // Toggle
    T = 0; #10;   // Hold
    $finish;
end

endmodule