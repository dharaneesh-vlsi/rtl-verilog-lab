
module tb_half_sub;
reg a,b;
wire borrow,diff;
half_sub dut(.a(a),.b(b),.diff(diff),.borrow(borrow));
 initial begin
        $dumpfile("h_s.vcd");
        $dumpvars(0, tb_half_sub);
end
initial begin
 
a=0;b=0;
#10  a=0;b=1;
#10  a=1;b=0;
#10  a=1;b=1;

#10  $finish;
end
endmodule
