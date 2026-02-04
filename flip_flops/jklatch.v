module jklatch(
    input clk,    // Enable signal
    input reset,
    input j,
    input k,
    output reg q
);

initial q = 0;

always @(clk or reset) begin
    if (reset)
        q <= 0;
    else if (clk) begin
        case ({j,k})
            2'b00: q <= q;      // No change
            2'b01: q <= 0;      // Reset
            2'b10: q <= 1;      // Set
            2'b11: q <= ~q;     // Toggle
        endcase
    end
end

endmodule

