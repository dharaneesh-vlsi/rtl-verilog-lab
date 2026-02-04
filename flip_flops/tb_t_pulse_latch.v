

module tb_t_pulse_latch;
    reg clk;
    reg reset;
    reg t;
    wire q;

    t_pulse_latch uut (.clk(clk), .reset(reset), .t(t), .q(q));

    initial clk = 0;
    always #5 clk = ~clk;

    initial begin
        reset = 1; t = 0;
        #12; reset = 0;

        t = 1; #10; t = 0; #10;
        t = 1; #10; t = 0; #10;
        t = 1; #10; t = 0; #10;

        $finish;
    end

    initial begin
        $dumpfile("t_pulse_latch.vcd");
        $dumpvars(0, tb_t_pulse_latch);
    end
endmodule
