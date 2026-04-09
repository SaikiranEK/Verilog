module tfftb;
reg t,clk;
wire q;
integer i;
	tff uut(.t(t),.clk(clk),.q(q));
	  initial begin
	   $dumpfile("dump.vcd");
	   $dumpvars(0,tfftb);
	   $display("clk t | q ");
	   $monitor("%b %b | %b",clk,t,q);
	   t=1;
         for(i=0;i<4;i=i+1) begin
	         clk=i;
	         #10;
	     end
	  $finish;
	end
endmodule
