module ripple_borrow_sub #(parameter N = 4)(
    input  [N-1:0] A,
    input  [N-1:0] B,
    input  Bin,
    output [N-1:0] Diff,
    output Bout
);

wire [N:0] br;   // borrow chain
assign br[0] = Bin;

genvar i;
generate
    for(i = 0; i < N; i = i + 1) begin : RBS
        full_sub fs (
            .a(A[i]),
            .b(B[i]),
            .c(br[i]),
            .diff(Diff[i]),
            .borrow(br[i+1])
        );
    end
endgenerate

assign Bout = br[N];

endmodule

