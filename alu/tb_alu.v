module tb_alu;

reg [3:0] A, B;
reg [2:0] sel;
wire [7:0] Y;

alu dut(A, B, sel, Y);

initial begin
    $dumpfile("alu.vcd");
    $dumpvars(0, tb_alu);

    A=4'd6; B=4'd3;

    sel=3'b000; #10; // add
    sel=3'b001; #10; // sub
    sel=3'b010; #10; // and
    sel=3'b011; #10; // or
    sel=3'b100; #10; // xor
    sel=3'b101; #10; // not
    sel=3'b110; #10; // mul
    sel=3'b111; #10; // compare

    $finish;
end

endmodule
