module tb_shift_add_multiplier;

reg clk=0, rst, start;
reg [3:0] A, B;
wire [7:0] P;
wire done;

shift_add_multiplier dut(clk, rst, start, A, B, P, done);

always #5 clk = ~clk;

initial begin
    $dumpfile("shift_mul.vcd");
    $dumpvars(0, tb_shift_add_multiplier);

    rst = 1; start = 0; A = 0; B = 0;
    #10 rst = 0;

    A = 4'd6; B = 4'd3;
    start = 1; #10 start = 0;

    #100 $finish;
end

endmodule
