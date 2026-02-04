// T Flip-Flop with synchronous reset
module tff(
    input clk,       // Clock input
    input reset,     // Synchronous reset
    input t,         // Toggle input
    output reg q     // Output
);

initial q = 0;      // Initialize output to 0

always @(posedge clk) begin
    if (reset)
        q <= 0;      // Reset output to 0
    else if (t)
        q <= ~q;     // Toggle output
end

endmodule
