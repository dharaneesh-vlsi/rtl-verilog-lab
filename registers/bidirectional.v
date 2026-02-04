module bidirectional(input clk, reset, dir,
                     input sin,
                     output reg [3:0] q);
always @(posedge clk or posedge reset) begin
 if(reset) q <= 0;
 else if(dir) q <= {q[2:0], sin};   // left
 else q <= {sin, q[3:1]};           // right
end
endmodule
