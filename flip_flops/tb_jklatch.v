

module tb_jklatch;
    reg clk;
    reg reset;
    reg j;
    reg k;
    wire q;

    jklatch uut (.clk(clk), .reset(reset), .j(j), .k(k), .q(q));

    initial clk = 0;   // Enable clock generation
    always #5 clk = ~clk;

    initial begin
        reset = 1; j = 0; k = 0;
        #12;
        reset = 0;

        j = 1; k = 0; #10;   // Set
        j = 0; k = 1; #10;   // Reset
        j = 1; k = 1; #10;   // Toggle
        j = 1; k = 1; #10;   // Toggle
        j = 0; k = 0; #10;   // Hold

        $finish;
    end

    initial begin
        $dumpfile("jklatch.vcd");
        $dumpvars(0, tb_jklatch);
    end

endmodule
