
module dtosr(input d,clk, output reg q);
reg s,r;
always @(posedge clk) begin
    s = d;
    r = ~d;
 case ({s,r})
 	2'b01 :q<=0;
	2'b10 :q<=1;
endcase 
end 
endmodule
