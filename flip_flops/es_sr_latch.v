module es_sr_latch(
    input clk,
    input reset,
    input s,
    input r,
    output reg q
);

initial q = 0;

always @(posedge clk or posedge reset) begin
    if (reset)
        q <= 0;
    else begin
        case({s,r})
            2'b00: q <= q;
            2'b01: q <= 0;
            2'b10: q <= 1;
            2'b11: q <= q;
        endcase
    end
end

endmodule
