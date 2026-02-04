module piso(input clk, reset, load,
            input [3:0] d,
            output reg sout);
reg [3:0] temp;
always @(posedge clk or posedge reset) begin
 if(reset) temp <= 0;
 else if(load) temp <= d;
 else temp <= {temp[2:0],1'b0};
end
always @(*) sout = temp[3];
endmodule
