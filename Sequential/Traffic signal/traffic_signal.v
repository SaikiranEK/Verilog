module traffic_signal(input clk,
                      input rst,
                      output reg [1:0]y);
  reg [1:0] signal,next;
  parameter red=2'b00,
  			green=2'b01,
  			yellow=2'b10;
  always@(posedge clk or posedge rst) begin
    if(rst)
      signal<=red;
    else
      signal<=next;
  end
  always@(*) begin
    case(signal)
      red: next=green;
      green: next=yellow;
      yellow: next=red;
      default: next=red;
    endcase
  end
  always@(*)begin
      y=signal;
  end
endmodule
