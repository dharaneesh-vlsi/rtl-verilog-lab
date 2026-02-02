module tb_ripple_borrow_subtractor;
    reg  [3:0] A, B;
    reg        Bin;
    wire [3:0] Diff;
    wire       Bout;

    ripple_borrow_subtractor dut(.A(a), .B(b), .Bin(c), .diff(Diff), .borrow(Bout));

    initial begin
        $dumpfile("rbs.vcd");
        $dumpvars(0, tb_ripple_borrow_subtractor);

        A=4'b0101; B=4'b0011; Bin=0; #10;
        A=4'b0010; B=4'b0101; Bin=0; #10;
        A=4'b1000; B=4'b0001; Bin=1; #10;

        $finish;
    end
endmodule
