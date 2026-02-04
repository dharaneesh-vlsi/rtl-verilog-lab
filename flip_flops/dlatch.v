module dlatch(
    input clk,    // Enable signal
    input reset,
    input d,
    output reg q
);

initial q = 0;

always @(clk or reset) begin
    if (reset)
        q <= 0;
    else if (clk)      // level-sensitive
        q <= d;
end

endmodule
