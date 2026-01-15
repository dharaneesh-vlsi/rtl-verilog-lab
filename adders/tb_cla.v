

module tb_cla;

    reg  [3:0] a, b;
    reg        cin;
    wire [3:0] sum;
    wire       cout;

    cla_4bit dut (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    initial begin
        $dumpfile("cla.vcd");
        $dumpvars(0, tb_cla);

        a = 0; b = 0; cin = 0;
        #10 a = 4'b0011; b = 4'b0101; cin = 0;
        #10 a = 4'b1111; b = 4'b0001; cin = 0;
        #10 a = 4'b1010; b = 4'b0101; cin = 1;
        #10 a = 4'b0110; b = 4'b0011; cin = 0;
        #10 $finish;
    end

endmodule
