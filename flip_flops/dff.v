// D Flip-Flop with synchronous reset
module dff(
    input clk,       // Clock input
    input reset,     // Synchronous reset
    input d,         // Data input
    output reg q     // Output
);

initial q = 0;      // Initialize output to 0 to avoid X

// On rising edge of clock
always @(posedge clk) begin
    if (reset)
        q <= 0;      // Reset output to 0
    else
        q <= d;      // Capture data
end

endmodule
