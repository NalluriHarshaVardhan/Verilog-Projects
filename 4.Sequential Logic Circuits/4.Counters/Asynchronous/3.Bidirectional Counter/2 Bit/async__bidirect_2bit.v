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


module async_up_down_counter_2bit(
    input clk,
    input rst,
    input mode,      // 1 = UP, 0 = DOWN
    output [1:0] q
);

wire clk_ff1;

t_ff ff0(clk, rst, q[0]);

// UP  : use ~q[0]
// DOWN: use  q[0]
assign clk_ff1 = mode ? ~q[0] : q[0];

t_ff ff1(clk_ff1, rst, q[1]);

endmodule