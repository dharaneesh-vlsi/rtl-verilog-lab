module sipo(input clk, reset, sin, output reg [3:0] q);
always @(posedge clk or posedge reset) begin
 if(reset) q <= 0;
 else q <= {q[2:0], sin};
end
endmodule
