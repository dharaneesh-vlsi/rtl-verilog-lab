

module tb_jkff;
    reg clk;
    reg reset;
    reg j;
    reg k;
    wire q;

    // Instantiate JKFF
    jkff uut (
        .clk(clk),
        .reset(reset),
        .j(j),
        .k(k),
        .q(q)
    );

    // Clock generation: 10ns period
    initial clk = 0;
    always #5 clk = ~clk;

    // Test sequence
    initial begin
        reset = 1; j = 0; k = 0;
        #12;           // Apply reset initially
        reset = 0;

        // Test different JK combinations
        j = 1; k = 0; #10;   // Q = 1 (Set)
        j = 0; k = 1; #10;   // Q = 0 (Reset)
        j = 1; k = 1; #10;   // Q toggles
        j = 1; k = 1; #10;   // Q toggles
        j = 0; k = 0; #10;   // No change
        j = 1; k = 0; #10;   // Q = 1

        $finish;
    end

    // Dump waveform for GTKWave
    initial begin
        $dumpfile("jkff.vcd");
        $dumpvars(0, tb_jkff);
    end

endmodule
