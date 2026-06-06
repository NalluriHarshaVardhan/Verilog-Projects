`timescale 1ns/1ps

module comparator_tb;

reg [3:0] A;
reg [3:0] B;
wire G;
wire E;
wire L;

comparator uut (.a(A),.b(B),.g(G),.e(E),.l(L));

integer i;

initial begin

    for(i = 0; i < 20; i = i + 1)
    begin
        A = $random;
        B = $random;
        #10;

        $display("A=%d B=%d G=%b E=%b L=%b",
                  A,B,G,E,L);
    end

    $finish;
end

endmodule