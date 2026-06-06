`timescale 1ns/1ps

module n_digit_bcd_to_7segment_tb;

parameter N = 1;

reg  [4*N-1:0] bcd;
wire [7*N-1:0] seg;

n_digit_bcd_to_7segment #(.N(N))
dut
(
    .bcd(bcd),
    .seg(seg)
);

initial begin

    // 0000
    bcd = 16'h0000;
    #10;

    // 1234
    bcd = 16'h1234;
    #10;

    // 3785
    bcd = 16'h3785;
    #10;

    // 9999
    bcd = 16'h9999;
    #10;

    // Invalid BCD digits
    bcd = 16'hABCD;
    #10;

    $finish;

end

initial begin
    $monitor("Time=%0t BCD=%h SEG=%h",
              $time,bcd,seg);
end

endmodule