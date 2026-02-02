module tb_add_sub;

reg  [3:0] A, B;
reg  M;
wire [3:0] Result;
wire CarryOut;

add_sub #(4) dut(A, B, M, Result, CarryOut);

initial begin
    $dumpfile("add_sub.vcd");
    $dumpvars(0, tb_add_sub);

    // ADD
    A = 4'b0101; B = 4'b0011; M = 0; #10;

    // SUB
    A = 4'b0101; B = 4'b0011; M = 1; #10;

    $finish;
end

endmodule
