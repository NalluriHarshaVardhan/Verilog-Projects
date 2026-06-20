module pipo_tb;

reg clk;
reg rst;
reg [3:0] d;
wire [3:0] q;

pipo uut(
    .clk(clk),
    .rst(rst),
    .d(d),
    .q(q)
);

always #5 clk = ~clk;

initial begin
    clk = 0;
    rst = 1;
    d = 4'b0000;

    #10 rst = 0;

    d = 4'b1011; #10;
    d = 4'b0110; #10;
    d = 4'b1100; #10;

    #20 $finish;
end

endmodule