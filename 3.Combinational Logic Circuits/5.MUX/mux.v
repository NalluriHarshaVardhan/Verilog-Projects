`timescale 1ns / 1ps

module mux(
    input a,
    input b,
    input c,
    input d,
    input s0,
    input s1,
    output reg k
);

always @(*) begin
    case ({s1,s0})
        2'b00: k = a;
        2'b01: k = b;
        2'b10: k = c;
        2'b11: k = d;
        default: k = 1'b0;
    endcase
end

endmodule