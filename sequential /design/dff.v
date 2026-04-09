
module dff(input clk,d,output reg y);
	always @ (posedge clk)
		y <=d;
endmodule
