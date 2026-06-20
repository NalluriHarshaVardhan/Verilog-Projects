`timescale 1ns/1ps

module tb_async_up_down_counter_4bit;

reg clk;
reg rst;
reg mode;
wire [3:0] q;

async_up_down_counter_4bit dut (
    .clk(clk),
    .rst(rst),
    .mode(mode),
    .q(q)
);

always #5 clk = ~clk;

initial begin
    clk  = 0;
    rst  = 1;
    mode = 1;   // UP mode

    #10 rst = 0;

    // Count UP
    #160;

    // Switch to DOWN mode
    mode = 0;

    // Count DOWN
    #160;

    $finish;
end

initial begin
    $monitor("Time=%0t rst=%b mode=%b q=%b",
              $time, rst, mode, q);
end

endmodule