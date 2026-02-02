module tb_full_sub;
reg a,b,c;
wire diff,borrow;
full_sub dut (
    .a(a),
    .b(b),
    .c(c),
    .diff(diff),
    .borrow(borrow)
);

/* Test stimulus */
initial begin
    $dumpfile("f_s.vcd");
    $dumpvars(0, tb_full_sub);
end
initial begin
a = 0; b = 0; c = 0;
    #10 a = 0; b = 0; c = 1;
    #10 a = 0; b = 1; c = 0;
    #10 a = 0; b = 1; c = 1;
    #10 a = 1; b = 0; c = 0;
    #10 a = 1; b = 0; c = 1;
    #10 a = 1; b = 1; c = 0;
    #10 a = 1; b = 1; c = 1;

    #10 $finish;
end
endmodule

