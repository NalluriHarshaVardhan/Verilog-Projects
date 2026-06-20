module t_ff(
    input clk,
    input rst,
    output reg q
);

always @(posedge clk or posedge rst)
begin
    if (rst)
        q <= 1'b0;
    else
        q <= ~q;
end

endmodule


module async_up_down_counter_4bit(
    input clk,
    input rst,
    input mode,      // 1 = UP, 0 = DOWN
    output [3:0] q
);

wire clk1, clk2, clk3;

assign clk1 = mode ? ~q[0] : q[0];
assign clk2 = mode ? ~q[1] : q[1];
assign clk3 = mode ? ~q[2] : q[2];

t_ff ff0(clk,  rst, q[0]);
t_ff ff1(clk1, rst, q[1]);
t_ff ff2(clk2, rst, q[2]);
t_ff ff3(clk3, rst, q[3]);

endmodule