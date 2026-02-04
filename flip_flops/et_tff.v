module et_tff(
    input clk,
    input reset,
    input t,
    output reg q
);

reg master;

initial master = 0;
initial q = 0;

// Master latch (level-sensitive)
always @(clk or reset) begin
    if (reset)
        master <= 0;
    else if (clk)
        master <= t ? ~q : q;  // toggle logic
end

// Slave latch (negative edge)
always @(negedge clk or posedge reset) begin
    if (reset)
        q <= 0;
    else
        q <= master;
end

endmodule
