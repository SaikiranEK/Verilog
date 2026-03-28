module has(input a,b,output c,d);
  assign c = a ^ b;
  assign d = ~a & b;
endmodule
