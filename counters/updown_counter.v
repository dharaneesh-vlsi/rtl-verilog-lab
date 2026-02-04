module updown_counter (
    input clk,
    input rst,
    input mode,
    output reg [3:0] count
);

always @(posedge clk or posedge rst) begin
    if (rst)
        count <= 4'b0000;
    else if (mode)
        count <= count + 1;
    else
        count <= count - 1;
end

endmodule
