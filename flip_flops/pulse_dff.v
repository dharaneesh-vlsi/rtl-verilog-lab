module pulse_dff(
    input clk,
    input reset,
    input d,
    output reg q
);

initial q = 0;

always @(posedge clk or posedge reset) begin
    if (reset)
        q <= 0;
    else
        q <= d;  // captures D on narrow pulse
end

endmodule
