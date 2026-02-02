module tb_multiplier_2bit;

reg  [1:0] A, B;
wire [3:0] P;

multiplier_2bit dut(.A(A), .B(B), .P(P));

initial begin
    $dumpfile("mul2.vcd");
    $dumpvars(0, tb_multiplier_2bit);

    A=2'b00; B=2'b11; #10;
    A=2'b01; B=2'b10; #10;
    A=2'b11; B=2'b11; #10;

    $finish;
end

endmodule

