module subb(input a,b,c,output d,e);
  wire x,y,z,v,w;
  xor (x,a,b);
  xor (d,x,c);
  not (y,a);
  not (z,x);
  and (v,y,b);
  and (w,z,c);
  or (e,w,v);
endmodule
