

module tb_srff;
    reg clk;
    reg reset;
    reg s;
    reg r;
    wire q;

    srff uut (.clk(clk), .reset(reset), .s(s), .r(r), .q(q));

    initial clk = 0;
    always #5 clk = ~clk;

    initial begin
        reset = 1; s = 0; r = 0;
        #12;
        reset = 0;

        s = 1; r = 0; #10;
        s = 0; r = 1; #10;
        s = 0; r = 0; #10;
        s = 1; r = 1; #10;   // Q now holds previous value instead of X

        $finish;
    end

    initial begin
        $dumpfile("srff.vcd");
        $dumpvars(0, tb_srff);
    end

endmodule
