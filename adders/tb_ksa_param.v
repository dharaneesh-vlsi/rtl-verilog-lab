

module tb_ksa_param;

    parameter N = 8;

    reg  [N-1:0] a, b;
    reg          cin;
    wire [N-1:0] sum;
    wire         cout;

    ksa_param #(.N(N)) dut (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    initial begin
        $dumpfile("ksa_param.vcd");
        $dumpvars(0, tb_ksa_param);

        a = 0; b = 0; cin = 0;
        #10 a = 8'h0F; b = 8'h01; cin = 0;
        #10 a = 8'hAA; b = 8'h55; cin = 1;
        #10 a = 8'hFF; b = 8'h01; cin = 0;
        #10 $finish;
    end

endmodule
