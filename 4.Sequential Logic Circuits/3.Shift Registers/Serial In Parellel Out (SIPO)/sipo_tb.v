module sipo_tb;

reg clk;
reg rst;
reg serial_in;
wire [3:0] q;

sipo uut (
    .clk(clk),
    .rst(rst),
    .serial_in(serial_in),
    .q(q)
);

always #5 clk = ~clk;

initial
begin
    clk = 0;
    rst = 1;
    serial_in = 0;

    #10 rst = 0;

    serial_in = 1; #10;
    serial_in = 0; #10;
    serial_in = 1; #10;
    serial_in = 1; #10;

    #20 $finish;
end

initial
begin
    $monitor("Time=%0t serial_in=%b q=%b",
              $time, serial_in, q);
end

endmodule