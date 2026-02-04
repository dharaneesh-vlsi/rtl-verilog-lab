module sync_updown_enable_counter (
    input clk,
    input rst,
    input en,
    input mode,
    output reg [3:0] count
);

always @(posedge clk or posedge rst) begin
    if (rst)
        count <= 4'b0000;
    else if (en) begin
        if (mode)
            count <= count + 1;
        else
            count <= count - 1;
    end
end

endmodule
