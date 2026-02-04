module tb_reg_enable;
reg clk, reset, en;
reg [3:0] d;
wire [3:0] q;

reg_enable uut(clk, reset, en, d, q);
always #5 clk=~clk;

initial begin
 $dumpfile("dump.vcd");
 $dumpvars(0);
 clk=0; reset=1; en=0; d=4'b0000;
 #10 reset=0; en=1; d=4'b1010;
 #10 en=0;
 #20 $finish;
end
endmodule
