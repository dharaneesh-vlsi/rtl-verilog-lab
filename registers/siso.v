module siso(input clk, reset, sin, output reg sout);
reg [3:0] temp;
always @(posedge clk or posedge reset) begin
 if(reset) temp <= 0;
 else temp <= {temp[2:0], sin};
end
always @(*) sout = temp[3];
endmodule
