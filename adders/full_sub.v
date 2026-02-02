module full_sub(input a,b,c,output diff,borrow);
assign diff= a^b^c;
assign borrow= ((~a)&b)|(~(a^b)&c);
endmodule
