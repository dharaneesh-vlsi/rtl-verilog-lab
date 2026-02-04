

module tb_tlatch;
    reg clk;
    reg reset;
    reg t;
    wire q;

    tlatch uut (.clk(clk), .reset(reset), .t(t), .q(q));

    initial clk = 0;   // Enable clock generation
    always #5 clk = ~clk;

    initial begin
        reset = 1; t = 0;
        #12;
        reset = 0;

        t = 1; #10;    // toggle
        t = 1; #10;    // toggle
        t = 0; #10;    // hold
        t = 1; #10;    // toggle
        t = 0; #10;    // hold

        $finish;
    end

    initial begin
        $dumpfile("tlatch.vcd");
        $dumpvars(0, tb_tlatch);
    end

endmodule
