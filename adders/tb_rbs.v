module tb_rbs;

reg  [3:0] A, B;
reg Bin;
wire [3:0] Diff;
wire Bout;

ripple_borrow_sub #(4) dut (
    .A(A),
    .B(B),
    .Bin(Bin),
    .Diff(Diff),
    .Bout(Bout)
);

initial begin
    $dumpfile("rbs.vcd");
    $dumpvars(0, tb_rbs);

    A=4'b0101; B=4'b0011; Bin=0; #10;
    A=4'b1000; B=4'b0001; Bin=0; #10;
    A=4'b0010; B=4'b0100; Bin=0; #10;

    $finish;
end

endmodule
