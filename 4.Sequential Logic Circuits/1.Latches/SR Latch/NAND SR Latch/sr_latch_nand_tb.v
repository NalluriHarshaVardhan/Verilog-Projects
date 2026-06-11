module sr_latch_tb;

reg S_bar, R_bar;
wire Q, Qbar;

sr_latch_nand uut (
    .S_bar(S_bar),
    .R_bar(R_bar),
    .Q(Q),
    .Qbar(Qbar)
);

initial begin
    $monitor("Time=%0t S=%b R=%b Q=%b Qbar=%b",
              $time, S_bar, R_bar, Q, Qbar);

    S_bar=0; R_bar=0; #10;  // Hold
    S_bar=1; R_bar=0; #10;  // Set
    S_bar=0; R_bar=0; #10;  // Hold
    S_bar=0; R_bar=1; #10;  // Reset
    S_bar=0; R_bar=0; #10;  // Hold
    S_bar=1; R_bar=1; #10;  // Invalid

    $finish;
end

endmodule