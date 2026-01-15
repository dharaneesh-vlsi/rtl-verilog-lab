module csa (
    input  [3:0] a,
    input  [3:0] b,
    input  [3:0] c,
    output [3:0] sum,
    output [3:0] carry
);

    assign sum   = a ^ b ^ c;
    assign carry = (a & b) | (b & c) | (a & c);

endmodule
