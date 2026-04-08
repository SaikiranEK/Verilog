module mux8to1(input [7:0] x,
               input [2:0] s,
               output  y);
  assign y=x[s];
endmodule
