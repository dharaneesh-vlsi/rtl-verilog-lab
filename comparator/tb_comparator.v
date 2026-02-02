module tb_comparator;

parameter N = 4;

reg  [N-1:0] A, B;
wire A_gt_B, A_lt_B, A_eq_B;

comparator #(N) dut (
    .A(A),
    .B(B),
    .A_gt_B(A_gt_B),
    .A_lt_B(A_lt_B),
    .A_eq_B(A_eq_B)
);

initial begin
    $dumpfile("comp.vcd");
    $dumpvars(0, tb_comparator);

    A = 4'b0011; B = 4'b0100; #10;
    A = 4'b1001; B = 4'b0110; #10;
    A = 4'b0101; B = 4'b0101; #10;

    $finish;
end

endmodule
