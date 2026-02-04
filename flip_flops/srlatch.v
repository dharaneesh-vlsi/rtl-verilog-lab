module srlatch(
    input s,
    input r,
    input en,     // Enable signal
    output reg q
);

initial q = 0;

always @(s or r or en) begin
    if (en) begin
        case ({s,r})
            2'b00: q <= q;      // No change
            2'b01: q <= 0;      // Reset
            2'b10: q <= 1;      // Set
            2'b11: q <= q;      // Avoid invalid, hold previous value
        endcase
    end
end

endmodule
