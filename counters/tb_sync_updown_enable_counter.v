module tb_sync_updown_enable_counter;

reg clk;
reg reset;
reg enable;
reg mode;
wire [3:0] count;

sync_updown_enable_counter uut (
    .clk(clk),
    .rst(reset),
    .en(enable),
    .mode(mode),
    .count(count)
);

always #5 clk = ~clk;

initial begin
    $dumpfile("sync_updown_enable_counter.vcd");
    $dumpvars(0, tb_sync_updown_enable_counter);

    clk = 0;
    reset = 1;
    enable = 0;
    mode = 1;
    #10 reset = 0;
    #10 enable = 1;
    #40 mode = 0;
    #60 $finish;
end

endmodule
