

module tb_csa;

    reg  [3:0] a, b, c;
    wire [3:0] sum, carry;

    csa dut (
        .a(a),
        .b(b),
        .c(c),
        .sum(sum),
        .carry(carry)
    );

    initial begin
        $dumpfile("csa.vcd");
        $dumpvars(0, tb_csa);

        a = 0; b = 0; c = 0;
        #10 a = 4'b0011; b = 4'b0101; c = 4'b0001;
        #10 a = 4'b1111; b = 4'b0001; c = 4'b0010;
        #10 a = 4'b1010; b = 4'b0101; c = 4'b0011;
        #10 $finish;
    end

endmodule
