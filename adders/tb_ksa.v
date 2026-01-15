

module tb_ksa;

    reg  [3:0] a, b;
    reg        cin;
    wire [3:0] sum;
    wire       cout;

    ksa_4bit dut (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    initial begin
        $dumpfile("ksa.vcd");
        $dumpvars(0, tb_ksa);

        a=0; b=0; cin=0;
        #10 a=4'b0011; b=4'b0101; cin=0;
        #10 a=4'b1111; b=4'b0001; cin=0;
        #10 a=4'b1010; b=4'b0101; cin=1;
        #10 $finish;
    end

endmodule
