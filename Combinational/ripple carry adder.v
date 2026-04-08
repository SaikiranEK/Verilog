module full_adder(input a,b,c, output x,y);
assign x=a^b^c;
assign y=(a&b)|(b&c)|(a&c);
endmodule

module rca(input [3:0] a,b,
	   input c,
	   output [3:0]x,y);
  
full_adder f1(a[0],b[0],c,x[0],y[0]);
full_adder f2(a[1],b[1],y[0],x[1],y[1]);
full_adder f3(a[2],b[2],y[1],x[2],y[2]);
full_adder f4(a[3],b[3],y[2],x[3],y[3]);
endmodule
