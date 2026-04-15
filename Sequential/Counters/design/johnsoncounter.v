module johnson(input clk,
               input rst,
               output reg [3:0]count);
  reg [3:0]next;
  always @(posedge clk or posedge rst) begin
    if(rst)
      count<=0;
    else
      count<=next;
  end
  always@(*)begin
    case(count)
      4'b0000: next=4'b1000;
      4'b1000: next=4'b1100;
      4'b1100: next=4'b1110;
      4'b1110: next=4'b1111;
      4'b1111: next=4'b0111;
      4'b0111: next=4'b0011;
      4'b0011: next=4'b0001;
      4'b0001: next=4'b0000;
      default: next=4'b0000;
    endcase
  end
endmodule
