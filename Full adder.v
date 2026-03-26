module addd(input a,b,c,output w,d,e,x,y);
  xor (w,a,b);
  xor (d,w,c);
  and (x,w,c);
  and (y,a,b);
  or (e,x,y);
endmodule
