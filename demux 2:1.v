module demux(input a,sel, output x,y);
  assign x=(sel == 0) ? a : 0;
  assign y=(sel == 1) ? a : 0;
endmodule
