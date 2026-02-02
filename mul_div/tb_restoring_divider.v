module tb_restoring_divider;

reg clk=0, rst, start;
reg [3:0] dividend, divisor;
wire [3:0] quotient, remainder;
wire done;

restoring_divider dut(clk, rst, start,
                      dividend, divisor,
                      quotient, remainder, done);

always #5 clk = ~clk;

initial begin
    $dumpfile("div.vcd");
    $dumpvars(0, tb_restoring_divider);

    rst=1; start=0; dividend=0; divisor=0;
    #10 rst=0;

    dividend=4'd13; divisor=4'd3;
    start=1; #10 start=0;

    #200 $finish;
end

endmodule
