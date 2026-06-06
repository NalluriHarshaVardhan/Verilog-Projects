`timescale 1ns/1ps

module xs3_to_bcd_tb;

reg  [3:0] excess3;
wire [3:0] bcd;

xs3_to_bcd uut(.excess3(excess3),.bcd(bcd));

integer i;

initial begin
    for(i=3; i<=12; i=i+1) begin
        excess3 = i;
        #10;
    end

    $finish;
end

initial begin
    $monitor("Excess3=%b BCD=%b",
              excess3, bcd);
end

endmodule