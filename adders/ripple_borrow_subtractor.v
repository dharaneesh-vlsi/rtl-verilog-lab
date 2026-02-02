module ripple_borrow_subtractor (
    input  [3:0] A, B,
    input        Bin,
    output [3:0] Diff,
    output       Bout
);

    wire b1, b2, b3;

    full_sub fs0 (A[0], B[0], Bin,  Diff[0], b1);
    full_sub fs1 (A[1], B[1], b1,   Diff[1], b2);
    full_sub fs2 (A[2], B[2], b2,   Diff[2], b3);
    full_sub fs3 (A[3], B[3], b3,   Diff[3], Bout);

endmodule
module full_sub(
    input  a, b, bin,
    output diff, bout
);
    assign diff = a ^ b ^ bin;
    assign bout = (~a & b) | ((~a | b) & bin);
endmodule
