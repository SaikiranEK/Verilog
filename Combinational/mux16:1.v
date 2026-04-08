module mux16to1(input [15:0] x,
                input [3:0] s,
                output reg y);
  assign y=x[s];
endmodule
