module tb_sipo;
reg clk, reset, sin;
wire [3:0] q;

sipo uut(clk, reset, sin, q);
always #5 clk=~clk;

initial begin
 $dumpfile("dump.vcd");
 $dumpvars(0);
 clk=0; reset=1; sin=0;
 #10 reset=0;
 #10 sin=1; #10 sin=0; #10 sin=1;
 #30 $finish;
end
endmodule
