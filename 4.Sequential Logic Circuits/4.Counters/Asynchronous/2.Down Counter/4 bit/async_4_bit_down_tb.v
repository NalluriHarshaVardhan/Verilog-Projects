module tb_async_down_counter_4bit;

reg clk;
reg rst;
wire [3:0] q;

// Instantiate DUT
async_down_counter_4bit dut (
    .clk(clk),
    .rst(rst),
    .q(q)
);

// Clock generation
always #5 clk = ~clk;

initial begin
    clk = 0;
    rst = 1;

    // Apply reset
    #10 rst = 0;

    // Run for some time
    #200;

    $finish;
end

// Monitor outputs
initial begin
    $monitor("Time=%0t Reset=%b Count=%b", $time, rst, q);
end

endmodule