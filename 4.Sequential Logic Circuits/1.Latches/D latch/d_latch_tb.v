`timescale 1ns/1ps

module d_latch_tb;

reg D;
reg EN;
wire Q;

d_latch uut (
    .D(D),
    .EN(EN),
    .Q(Q)
);

initial begin
    $monitor("Time=%0t EN=%b D=%b Q=%b",
              $time, EN, D, Q);

    // Initially disabled
    EN = 0; D = 0; #10;

    // Enable latch
    EN = 1; D = 0; #10;
    D = 1; #10;
    D = 0; #10;
    D = 1; #10;

    // Disable latch (Q should hold)
    EN = 0; #10;
    D = 0; #10;
    D = 1; #10;

    // Enable again
    EN = 1; #10;
    D = 0; #10;

    $finish;
end

endmodule