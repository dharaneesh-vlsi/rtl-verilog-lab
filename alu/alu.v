module alu(
    input  [3:0] A, B,
    input  [2:0] sel,
    output reg [7:0] Y
);

always @(*) begin
    case(sel)
        3'b000: Y = A + B;   // Add
        3'b001: Y = A - B;   // Sub
        3'b010: Y = A & B;   // AND
        3'b011: Y = A | B;   // OR
        3'b100: Y = A ^ B;   // XOR
        3'b101: Y = ~A;      // NOT
        3'b110: Y = A * B;   // Multiply
        3'b111: Y = (A > B); // Compare
        default: Y = 0;
    endcase
end

endmodule
