module tb_up_counter;

reg clk;
reg reset;
wire [3:0] count;

up_counter uut (
    .clk(clk),
    .rst(reset),
    .count(count)
);

always #5 clk = ~clk;

initial begin
    $dumpfile("up_counter.vcd");
    $dumpvars(0, tb_up_counter);
    clk = 0;
    reset = 1;
    #10 reset = 0;
    #100 $finish;
end

endmodule
