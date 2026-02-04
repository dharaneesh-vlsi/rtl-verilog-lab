module tb_updown_counter;

reg clk;
reg reset;
reg mode;
wire [3:0] count;

updown_counter uut (
    .clk(clk),
    .rst(reset),
    .mode(mode),
    .count(count)
);

always #5 clk = ~clk;

initial begin
    $dumpfile("updown_counter.vcd");
    $dumpvars(0, tb_updown_counter);
    clk = 0;
    reset = 1;
    mode = 1;
    #10 reset = 0;
    #40 mode = 0;
    #60 $finish;
end

endmodule
