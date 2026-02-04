module tb_siso;
reg clk, reset, sin;
wire sout;

siso uut(clk, reset, sin, sout);
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
