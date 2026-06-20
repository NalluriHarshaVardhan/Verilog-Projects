`timescale 1ns/1ps

module tb_async_up_down_counter_2bit;

reg clk;
reg rst;
reg mode;
wire [1:0] q;

async_up_down_counter_2bit dut (
    .clk(clk),
    .rst(rst),
    .mode(mode),
    .q(q)
);

// Clock generation
always #5 clk = ~clk;

initial begin
    $dumpfile("counter.vcd");
    $dumpvars(0, tb_async_up_down_counter_2bit);

    clk  = 0;
    rst  = 1;
    mode = 1;   // UP mode

    // Reset
    #10;
    rst = 0;

    // Count UP for 8 clock cycles
    #80;

    // Reset before changing direction
    rst = 1;
    #10;
    rst = 0;

    mode = 0;   // DOWN mode

    // Count DOWN for 8 clock cycles
    #80;

    $finish;
end

initial begin
    $monitor("Time=%0t  rst=%b  mode=%b  q=%b",
             $time, rst, mode, q);
end

endmodule