module tb_pipo;
reg clk, reset;
reg [3:0] d;
wire [3:0] q;

pipo uut(clk, reset, d, q);

always #5 clk = ~clk;

initial begin
 $dumpfile("dump.vcd");
 $dumpvars(0);
 clk=0; reset=1; d=4'b0000;
 #10 reset=0; d=4'b1010;
 #10 d=4'b1100;
 #20 $finish;
end
endmodule
