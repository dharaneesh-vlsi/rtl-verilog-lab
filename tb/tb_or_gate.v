module tb_or_gate;
    reg a, b;
    wire y;

    or_gate uut (
        .a(a),
        .b(b),
        .y(y)
    );

    initial begin
        $dumpfile("or_gate.vcd");
        $dumpvars(0, tb_or_gate);
    end

    initial begin
        a=0; b=0; #10;
        a=0; b=1; #10;
        a=1; b=0; #10;
        a=1; b=1; #10;
        $finish;
    end
endmodule
