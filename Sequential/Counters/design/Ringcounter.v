module ring(input clk,
            input rst,
            output reg [4:0] count);
  reg [3:0] next;
  always@(posedge clk or posedge rst) begin
    if(rst)
      count<=0;
    else
      count<=next;
  end
  always@(*)begin
    case(count)
      4'b0001: next=4'b0010;
      4'b0010: next=4'b0100;
      4'b0100: next=4'b1000;
      4'b1000: next=4'b0001;
      default: next=4'b0001;
    endcase
  end
endmodule
      
