module ksa_param #(
    parameter N = 16
)(
    input  [N-1:0] a,
    input  [N-1:0] b,
    input          cin,
    output [N-1:0] sum,
    output         cout
);

    wire [N-1:0] p, g;
    wire [N:0]   c;

    assign c[0] = cin;

    // Propagate and Generate
    assign p = a ^ b;
    assign g = a & b;

    genvar i;
    generate
        for (i = 0; i < N; i = i + 1) begin : carry_gen
            assign c[i+1] = g[i] | (p[i] & c[i]);
            assign sum[i] = p[i] ^ c[i];
        end
    endgenerate

    assign cout = c[N];

endmodule
