module tb_bidirectional;
reg clk, reset, dir, sin;
wire [3:0] q;

bidirectional uut(clk, reset, dir, sin, q);
always #5 clk=~clk;

initial begin
 $dumpfile("dump.vcd");
 $dumpvars(0);
 clk=0; reset=1; dir=1; sin=1;
 #10 reset=0;
 #20 dir=0; sin=0;
 #30 $finish;
end
endmodule
