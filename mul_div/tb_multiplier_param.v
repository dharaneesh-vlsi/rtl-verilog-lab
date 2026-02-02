module tb_multiplier_param;

parameter N = 8;

reg  [N-1:0] A, B;
wire [2*N-1:0] P;

multiplier_param #(N) dut(.A(A), .B(B), .P(P));

initial begin
    $dumpfile("mul_param.vcd");
    $dumpvars(0, tb_multiplier_param);

    A=8'd12; B=8'd10; #10;
    A=8'd25; B=8'd4;  #10;
    A=8'd100;B=8'd3;  #10;

    $finish;
end

endmodule
