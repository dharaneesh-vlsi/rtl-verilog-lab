`timescale 1ns/1ps

module tb_rca;

    parameter N = 4;

    reg  [N-1:0] a, b;
    reg          cin;
    wire [N-1:0] sum;
    wire         cout;

    rca #(N) dut (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    initial begin
        $dumpfile("rca.vcd");
        $dumpvars(1, tb_rca);   // 👈 depth = 1 is IMPORTANT

        a = 0; b = 0; cin = 0;
        #10;

        a = 4'b0011; b = 4'b0101; cin = 0;
        #10;

        a = 4'b1111; b = 4'b0001; cin = 0;
        #10;

        a = 4'b1010; b = 4'b0101; cin = 1;
        #10;

        $finish;
    end

endmodule
