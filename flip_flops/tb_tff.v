

module tb_tff;
    reg clk;
    reg reset;
    reg t;
    wire q;

    // Instantiate TFF
    tff uut (
        .clk(clk),
        .reset(reset),
        .t(t),
        .q(q)
    );

    // Clock generation: 10ns period
    initial clk = 0;
    always #5 clk = ~clk;

    // Test sequence
    initial begin
        reset = 1; t = 0;
        #12;           // Keep reset high initially
        reset = 0;

        // Test toggling
        t = 1; #10;    // Q toggles
        t = 1; #10;    // Q toggles again
        t = 0; #10;    // Q stays
        t = 1; #10;    // Q toggles
        t = 0; #10;    // Q stays

        $finish;
    end

    // Dump waveform for GTKWave
    initial begin
        $dumpfile("tff.vcd");
        $dumpvars(0, tb_tff);
    end

endmodule
