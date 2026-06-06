module demux(
    input y,
    input s0,
    input s1,
    output a,b,c,d
);

assign a = y & ~s1 & ~s0;
assign b = y & ~s1 &  s0;
assign c = y &  s1 & ~s0;
assign d = y &  s1 &  s0;

endmodule