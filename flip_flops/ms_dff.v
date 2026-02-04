module ms_dff(
    input clk,
    input reset,
    input d,
    output reg q
);

reg master;

initial master = 0;
initial q = 0;

always @(posedge clk) begin
    if (reset)
        master <= 0;
    else
        master <= d;
end

always @(negedge clk) begin
    if (reset)
        q <= 0;
    else
        q <= master;
end

endmodule
