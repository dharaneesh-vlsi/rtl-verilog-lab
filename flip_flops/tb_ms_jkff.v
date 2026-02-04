

module tb_ms_jkff;
    reg clk;
    reg reset;
    reg j;
    reg k;
    wire q;

    ms_jkff uut (.clk(clk), .reset(reset), .j(j), .k(k), .q(q));

    initial clk = 0;
    always #5 clk = ~clk;

    initial begin
        reset = 1; j=0; k=0;
        #12; reset = 0;

        j=1; k=0; #10;
        j=0; k=1; #10;
        j=1; k=1; #10;
        j=1; k=1; #10;
        j=0; k=0; #10;

        $finish;
    end

    initial begin
        $dumpfile("ms_jkff.vcd");
        $dumpvars(0, tb_ms_jkff);
    end
endmodule
