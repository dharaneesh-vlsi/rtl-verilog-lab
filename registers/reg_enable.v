module reg_enable(input clk, reset, en,
                  input [3:0] d,
                  output reg [3:0] q);
always @(posedge clk or posedge reset) begin
 if(reset) q <= 0;
 else if(en) q <= d;
end
endmodule
