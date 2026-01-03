
module tb_not_gate;
reg a;
wire y;
not_gate uut(
.a(a),
.y(y)
);
initial begin
a=0;
#10 a=1;
#10 $finish;
end
initial begin
$dumpfile("not_gate.vcd");
$dumpvars(0,tb_not_gate);
end
endmodule
