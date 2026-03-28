module mux2to1 (input i0,i1,s, output y);
  assign y= (s==1'b0)?i0:i1;
endmodule
