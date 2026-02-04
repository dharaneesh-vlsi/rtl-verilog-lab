module ms_jkff(
    input clk,
    input reset,
    input j,
    input k,
    output reg q
);

reg master;

initial master = 0;
initial q = 0;

// Master latch (level-sensitive)
always @(posedge clk or posedge reset) begin
    if (reset)
        master <= 0;
    else begin
        case ({j,k})
            2'b00: master <= master;
            2'b01: master <= 0;
            2'b10: master <= 1;
            2'b11: master <= ~master;
        endcase
    end
end

// Slave latch (negative edge)
always @(negedge clk or posedge reset) begin
    if (reset)
        q <= 0;
    else
        q <= master;
end

endmodule
