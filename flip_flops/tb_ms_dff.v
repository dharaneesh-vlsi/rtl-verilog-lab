

module tb_ms_dff;
    reg clk;
    reg reset;
    reg d;
    wire q;

    ms_dff uut (.clk(clk), .reset(reset), .d(d), .q(q));

    initial clk = 0;   // clock generation
    always #5 clk = ~clk;

    initial begin
        reset = 1; d = 0;
        #12;
        reset = 0;

        d = 1; #10;
        d = 0; #10;
        d = 1; #10;
        d = 0; #10;

        $finish;
    end

    initial begin
        $dumpfile("ms_dff.vcd");
        $dumpvars(0, tb_ms_dff);
    end

endmodule
