module tb_xor_gate;
    reg a, b;
    wire y;

    // Instantiate XOR gate
    xor_gate uut (
        .a(a),
        .b(b),
        .y(y)
    );

    // Apply inputs
    initial begin
        a = 0; b = 0;
        #10 a = 0; b = 1;
        #10 a = 1; b = 0;
        #10 a = 1; b = 1;
        #10 $finish;
    end

    // Monitor output
    initial begin
        $monitor("a=%b b=%b y=%b", a, b, y);
    end

    // Dump waveform
    initial begin
        $dumpfile("xor_gate.vcd");
        $dumpvars(0, tb_xor_gate);
    end
endmodule
