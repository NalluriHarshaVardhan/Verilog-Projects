`timescale 1ns / 1ps

module mux_tb;

reg A,B,C,D;
reg S0,S1;
wire K;

mux uut (
    .a(A),
    .b(B),
    .c(C),
    .d(D),
    .s0(S0),
    .s1(S1),
    .k(K)
);

initial begin

    // Test Case 1
    A=0; B=1; C=0; D=1;
    S1=0; S0=0; #10;   // K = A = 0

    // Test Case 2
    S1=0; S0=1; #10;   // K = B = 1

    // Test Case 3
    S1=1; S0=0; #10;   // K = C = 0

    // Test Case 4
    S1=1; S0=1; #10;   // K = D = 1

    $stop;
end

endmodule