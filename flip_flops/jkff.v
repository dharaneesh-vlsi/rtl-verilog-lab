// JK Flip-Flop with synchronous reset
module jkff(
    input clk,       // Clock input
    input reset,     // Synchronous reset
    input j,         // J input
    input k,         // K input
    output reg q     // Output
);

initial q = 0;      // Initialize Q to 0

always @(posedge clk) begin
    if (reset)
        q <= 0;      // Reset output
    else begin
        case ({j, k})
            2'b00: q <= q;      // No change
            2'b01: q <= 0;      // Reset
            2'b10: q <= 1;      // Set
            2'b11: q <= ~q;     // Toggle
        endcase
    end
end

endmodule
