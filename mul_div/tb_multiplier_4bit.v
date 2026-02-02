module tb_multiplier_4bit;

reg  [3:0] A, B;
wire [7:0] P;

multiplier_4bit dut(.A(A), .B(B), .P(P));

initial begin
    $dumpfile("mul4.vcd");
    $dumpvars(0, tb_multiplier_4bit);

    A=4'd3;  B=4'd2;  #10;
    A=4'd7;  B=4'd5;  #10;
    A=4'd15; B=4'd15; #10;

    $finish;
end

endmodule
