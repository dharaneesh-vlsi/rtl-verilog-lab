module add_sub #(parameter N = 4)(
    input  [N-1:0] A,
    input  [N-1:0] B,
    input  M,                 // 0 = Add, 1 = Subtract
    output [N-1:0] Result,
    output CarryOut
);

wire [N:0] C;
wire [N-1:0] B_mod;

assign C[0]  = M;          // +1 for subtraction
assign B_mod = B ^ {N{M}}; // invert B if M=1

genvar i;
generate
for(i = 0; i < N; i = i + 1) begin : FA_BLOCK
    full_adder fa (
        .a(A[i]),
        .b(B_mod[i]),
        .cin(C[i]),
        .sum(Result[i]),
        .carry(C[i+1])   // matches full_adder
    );
end
endgenerate

assign CarryOut = C[N];

endmodule
