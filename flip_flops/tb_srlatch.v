

module tb_srlatch;
    reg s;
    reg r;
    reg en;
    wire q;

    srlatch uut (.s(s), .r(r), .en(en), .q(q));

    initial begin
        en = 0; s = 0; r = 0;
        #5 en = 1;

        s = 1; r = 0; #10;   // Set
        s = 0; r = 1; #10;   // Reset
        s = 0; r = 0; #10;   // Hold
        s = 1; r = 1; #10;   // Hold previous value

        $finish;
    end

    initial begin
        $dumpfile("srlatch.vcd");
        $dumpvars(0, tb_srlatch);
    end

endmodule
