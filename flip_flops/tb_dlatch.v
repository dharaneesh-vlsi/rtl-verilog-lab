

module tb_dlatch;
    reg clk;
    reg reset;
    reg d;
    wire q;

    dlatch uut (.clk(clk), .reset(reset), .d(d), .q(q));

    initial clk = 0;
    always #5 clk = ~clk;  // clock for enable

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
        $dumpfile("dlatch.vcd");
        $dumpvars(0, tb_dlatch);
    end

endmodule
