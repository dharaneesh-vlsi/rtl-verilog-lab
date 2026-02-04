module tb_mod10_counter;

reg clk;
reg reset;
wire [3:0] count;

mod10_counter uut (
    .clk(clk),
    .rst(reset),
    .count(count)
);

always #5 clk = ~clk;

initial begin
    $dumpfile("mod10_counter.vcd");
    $dumpvars(0, tb_mod10_counter);
    clk = 0;
    reset = 1;
    #10 reset = 0;
    #150 $finish;
end

endmodule
