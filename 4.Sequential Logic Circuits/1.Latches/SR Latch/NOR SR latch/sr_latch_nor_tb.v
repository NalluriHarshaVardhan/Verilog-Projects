module sr_latch_tb;

reg S, R;
wire Q, Qbar;

sr_latch uut (
    .S(S),
    .R(R),
    .Q(Q),
    .Qbar(Qbar)
);

initial begin
    $monitor("Time=%0t S=%b R=%b Q=%b Qbar=%b",
              $time, S, R, Q, Qbar);

    S=0; R=0; #10;  // Hold
    S=1; R=0; #10;  // Set
    S=0; R=0; #10;  // Hold
    S=0; R=1; #10;  // Reset
    S=0; R=0; #10;  // Hold
    S=1; R=1; #10;  // Invalid

    $finish;
end

endmodule