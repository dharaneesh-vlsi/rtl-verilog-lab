module tlatch(
    input clk,    // Enable signal
    input reset,
    input t,
    output reg q
);

initial q = 0;

always @(clk or reset) begin
    if (reset)
        q <= 0;
    else if (clk && t)
        q <= ~q;   // Toggle
end

endmodule

