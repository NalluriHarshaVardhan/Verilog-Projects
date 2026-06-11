`timescale 1ns/1ps

module sr_ff_tb;

reg clk, S, R;
wire Q;

sr_ff uut (
    .clk(clk),
    .S(S),
    .R(R),
    .Q(Q)
);

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin
    S = 0; R = 0; #10;  // Hold

    S = 1; R = 0; #10;  // Set
    S = 0; R = 0; #10;  // Hold

    S = 0; R = 1; #10;  // Reset
    S = 0; R = 0; #10;  // Hold

    S = 1; R = 1; #10;  // Invalid

    $finish;
end

initial begin
    $monitor("Time=%0t clk=%b S=%b R=%b Q=%b",
             $time, clk, S, R, Q);
end

endmodule