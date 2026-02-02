module shift_add_multiplier(
    input clk, rst, start,
    input  [3:0] A, B,
    output reg [7:0] P,
    output reg done
);

reg [3:0] multiplicand, multiplier;
reg [2:0] count;

always @(posedge clk or posedge rst) begin
    if (rst) begin
        multiplicand <= 0;
        multiplier   <= 0;
        P <= 0;
        count <= 0;
        done <= 0;
    end
    else if (start) begin
        multiplicand <= A;
        multiplier   <= B;
        P <= 0;
        count <= 0;
        done <= 0;
    end
    else if (count < 4) begin
        if (multiplier[0] == 1)
            P <= P + (multiplicand << count);

        multiplier <= multiplier >> 1;
        count <= count + 1;
    end
    else begin
        done <= 1;
    end
end

endmodule
