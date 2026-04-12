module upcount_3(input clk,
        		 input rst,
                 output reg [2:0] count);
  always@(posedge clk or posedge rst) begin
    if(rst)
      count<=0;
    else
      count<=count+1;
  end
endmodule
