module updowncount_3(input clk,
        		 input rst,
                   input up,
                 output reg [2:0] count);
  always@(posedge clk or posedge rst) begin
    if(rst)
      count<=0;
    else if(up)
      count<=count+1;
    else
      count<=count-1;
  end
endmodule
