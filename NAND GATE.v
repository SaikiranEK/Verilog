module NAND(input a,b, output c);
  assign c = ~(a & b);
endmodule
