module t_ff (
    input clk,
    input T,
    output reg Q
);

initial
    Q = 0;

always @(posedge clk)
begin
    if (T)
        Q <= ~Q;
end

endmodule