module srff(
    input clk,
    input reset,
    input s,
    input r,
    output reg q
);

initial q = 0;

always @(posedge clk) begin
    if (reset)
        q <= 0;
    else begin
        case ({s, r})
            2'b00: q <= q;      // No change
            2'b01: q <= 0;      // Reset
            2'b10: q <= 1;      // Set
            2'b11: q <= q;      // Avoid invalid, hold previous value
        endcase
    end
end

endmodule
