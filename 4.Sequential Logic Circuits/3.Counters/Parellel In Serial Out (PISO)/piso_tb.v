module piso_tb;

reg clk;
reg rst;
reg load;
reg [3:0] d;
wire serial_out;

piso uut(
    .clk(clk),
    .rst(rst),
    .load(load),
    .d(d),
    .serial_out(serial_out)
);

always #5 clk = ~clk;

initial
begin
    clk = 0;
    rst = 1;
    load = 0;
    d = 4'b0000;

    #10 rst = 0;

    // Load data
    load = 1;
    d = 4'b1011;
    #10;

    load = 0;

    // Shift out bits
    #40;

    $finish;
end

initial
begin
    $monitor("Time=%0t load=%b d=%b q=%b serial_out=%b",
             $time, load, d, uut.q, serial_out);
end

endmodule