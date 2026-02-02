

module tb_full_adder;

reg a, b, cin;
wire sum, carry;

// Instantiate Full Adder
full_adder uut (
    .a(a),
    .b(b),
    .cin(cin),
    .sum(sum),
    .carry(carry)
);

initial begin
    // Initial values
    a = 0; b = 0; cin = 0;

    // Dump waveform
    $dumpfile("full_adder.vcd");
    $dumpvars(0, tb_full_adder);

    #10 a = 0; b = 0; cin = 1;
    #10 a = 0; b = 1; cin = 0;
    #10 a = 0; b = 1; cin = 1;
    #10 a = 1; b = 0; cin = 0;
    #10 a = 1; b = 0; cin = 1;
    #10 a = 1; b = 1; cin = 0;
    #10 a = 1; b = 1; cin = 1;
    #10;

    $finish;
end

endmodule
