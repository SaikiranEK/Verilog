module dfftb;
reg d,clk;
wire y;
integer i;
  dff uut(.d(d),.clk(clk),.y(y));
	  initial begin
	   $dumpfile("dump.vcd");
	   $dumpvars(0,dfftb);
	   $display("d clk | y ");
	   $monitor("%b %b | %b",d,clk,y);
	   d=1;
         for(i=0;i<4;i=i+1) begin
	         clk=i;
	         #10;
	     end 
	  $finish;
	end
endmodule

	
