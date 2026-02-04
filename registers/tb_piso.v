module tb_piso;
reg clk, reset, load;
reg [3:0] d;
wire sout;

piso uut(clk, reset, load, d, sout);
always #5 clk=~clk;

initial begin
 $dumpfile("dump.vcd");
 $dumpvars(0);
 clk=0; reset=1; load=0; d=4'b1011;
 #10 reset=0; load=1;
 #10 load=0;
 #40 $finish;
end
endmodule
