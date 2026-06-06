module bcd_to_7segment(
    input  [3:0] bcd,
    output reg [6:0] seg
);

always @(*) begin
    case(bcd)
        4'd0: seg = 7'b1111110;
        4'd1: seg = 7'b0110000;
        4'd2: seg = 7'b1101101;
        4'd3: seg = 7'b1111001;
        4'd4: seg = 7'b0110011;
        4'd5: seg = 7'b1011011;
        4'd6: seg = 7'b1011111;
        4'd7: seg = 7'b1110000;
        4'd8: seg = 7'b1111111;
        4'd9: seg = 7'b1111011;
        default: seg = 7'b0000000;
    endcase
end

endmodule


module n_digit_bcd_to_7segment
#(
    parameter N = 1
)
(
    input  [4*N-1:0] bcd,
    output [7*N-1:0] seg
);

genvar i;

generate
    for(i=0; i<N; i=i+1)
    begin : DECODER

        bcd_to_7segment UUT (
            .bcd(bcd[4*i +: 4]),
            .seg(seg[7*i +: 7])
        );

    end
endgenerate

endmodule