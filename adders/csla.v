module csla_4bit (
    input  [3:0] a,
    input  [3:0] b,
    input        cin,
    output [3:0] sum,
    output       cout
);

    wire [3:0] sum0, sum1;
    wire c0, c1;

    // RCA with Cin = 0
    assign {c0, sum0} = a + b + 1'b0;

    // RCA with Cin = 1
    assign {c1, sum1} = a + b + 1'b1;

    // Select based on actual Cin
    assign sum  = cin ? sum1 : sum0;
    assign cout = cin ? c1   : c0;

endmodule
