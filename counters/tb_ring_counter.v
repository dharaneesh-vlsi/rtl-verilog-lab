module tb_ring_counter;

reg clk;
reg reset;
wire [3:0] count;

ring_counter uut (
    .clk(clk),
    .rst(reset),
    .count(count)
);

always #5 clk = ~clk;

initial begin
    $dumpfile("ring_counter.vcd");
    $dumpvars(0, tb_ring_counter);
    clk = 0;
    reset = 1;
    #10 reset = 0;
    #100 $finish;
end

endmodule
