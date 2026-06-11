module sr_latch_nand (
    input S_bar,
    input R_bar,
    output Q,
    output Qbar
);

nand (Q, S_bar, Qbar);
nand (Qbar, R_bar, Q);

endmodule