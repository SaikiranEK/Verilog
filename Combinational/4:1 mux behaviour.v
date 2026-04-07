module mux_4to1(input i0,i1,i2,i3,s0,s1, output reg y);
  always @ (i0 or i1 or i2 or i3 or s0 or s1)
    begin
      if (s0==0 && s1==0)
        y = i0;
      else if (s0==0 && s1==1)
        y = i1;
      else if (s0==1 && s1==0)
        y = i2;
      else 
        y = i3;
    end
endmodule
