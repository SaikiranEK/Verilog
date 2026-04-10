module sipo(input d,clk,rst,
            output reg [3:0] q);
  always@(posedge clk or posedge rst) begin
    if(rst)
      q<=4'b0000;
    else
      q<={d,q[3:1]};
  end
endmodule
