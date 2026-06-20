module t_ff(
    input clk,
    input rst,
    output reg q
);

always @(posedge clk or posedge rst)
begin
    if(rst)
        q <= 1'b0;
    else
        q <= ~q;
end

endmodule


module async_up_counter_2bit(
    input clk,
    input rst,
    output [1:0] q
);

t_ff ff0(clk,    rst, q[0]);
t_ff ff1(~q[0],  rst, q[1]);



endmodule