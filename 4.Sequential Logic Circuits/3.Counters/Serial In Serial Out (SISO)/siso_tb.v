module siso_tb;

reg clk;
reg rst;
reg serial_in;
wire serial_out;

// Instantiate DUT
siso uut (
    .clk(clk),
    .rst(rst),
    .serial_in(serial_in),
    .serial_out(serial_out)
);

// Clock generation
always #5 clk = ~clk;

initial
begin
    clk = 0;
    rst = 1;
    serial_in = 0;

    // Apply reset
    #10 rst = 0;

    // Input sequence: 1,0,1,1
    serial_in = 1; #10;
    serial_in = 0; #10;
    serial_in = 1; #10;
    serial_in = 1; #10;

    // Extra clocks to observe output
    serial_in = 0; #20;

    $finish;
end

initial
begin
    $monitor("Time=%0t rst=%b serial_in=%b serial_out=%b",
              $time, rst, serial_in,  serial_out);
end

endmodule