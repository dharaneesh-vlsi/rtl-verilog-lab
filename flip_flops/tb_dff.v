

module tb_dff;
    reg clk;
    reg reset;
    reg d;
    wire q;

    // Instantiate DFF
    dff uut (
        .clk(clk),
        .reset(reset),
        .d(d),
        .q(q)
    );

    // Clock generation: 10ns period
    initial clk = 0;
    always #5 clk = ~clk;

    // Test sequence
    initial begin
        // Initialize signals
        reset = 1; d = 0;
        #12;          // keep reset high for a short time
        reset = 0;    // release reset

        // Apply data input after reset
        d = 1; #10;
        d = 0; #10;
        d = 1; #10;
        d = 0; #10;

        // Finish simulation
        $finish;
    end

    // Dump waveform for GTKWave
    initial begin
        $dumpfile("dff.vcd");
        $dumpvars(0, tb_dff);
    end

endmodule
