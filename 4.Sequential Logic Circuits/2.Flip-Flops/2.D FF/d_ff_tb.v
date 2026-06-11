`timescale 1ns/1ps

module d_ff_tb;

reg clk;
reg D;
wire Q;

d_ff uut (
    .clk(clk),
    .D(D),
    .Q(Q)
);

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin
    D = 0; #12;
    D = 1; #10;
    D = 0; #10;
    D = 1; #10;

    $finish;
end

initial
    $monitor("t=%0t clk=%b D=%b Q=%b",
              $time, clk, D, Q);

endmodule