`timescale 1ns/1ps

module jk_ff_tb;

reg clk;
reg J, K;
wire Q;

jk_ff uut(
    .clk(clk),
    .J(J),
    .K(K),
    .Q(Q)
);

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin
    J=0; K=0; #10;   // Hold
    J=1; K=0; #10;   // Set
    J=0; K=1; #10;   // Reset
    J=1; K=1; #20;   // Toggle twice
    $finish;
end

endmodule