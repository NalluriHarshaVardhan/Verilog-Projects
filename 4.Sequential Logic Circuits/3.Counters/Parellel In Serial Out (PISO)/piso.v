module piso (
    input clk,
    input rst,
    input load,
    input [3:0] d,
    output reg serial_out
);

reg [3:0] q;

always @(posedge clk or posedge rst)
begin
    if(rst)
    begin
        q <= 4'b0000;
        serial_out <= 0;
    end
    else if(load)
    begin
        q <= d;           // Parallel Load
    end
    else
    begin
        serial_out <= q[0];
        q <= q >> 1;      // Right Shift
    end
end

endmodule