

module tb_pulse_dff;
    reg clk;
    reg reset;
    reg d;
    wire q;

    pulse_dff uut (.clk(clk), .reset(reset), .d(d), .q(q));

    initial clk = 0;
    always #5 clk = ~clk;

    initial begin
        reset = 1; d=0;
        #12; reset = 0;

        d = 1; #2; d=0; #8;   // simulate narrow pulse
        d = 1; #2; d=0; #8;
        d = 1; #2; d=0; #8;

        $finish;
    end

    initial begin
        $dumpfile("pulse_dff.vcd");
        $dumpvars(0, tb_pulse_dff);
    end
endmodule
