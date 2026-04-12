module fsm_101(input clk,
               input rst,
               input x,
               output y);
  reg [1:0] state,next;
  parameter s0=2'b00,
  			s1=2'b01,
  			s2=2'b10;
  always @(posedge clk or posedge rst) begin
    if(rst)
      state<=s0;
    else
      state<=next;
  end
  always @ (*) begin
    case(state)
      s0: next=(x)?s1:s0;
      s1: next=(x)?s1:s2;
      s2: next=(x)?s1:s0;
      default: next=s0;
    endcase
  end
  assign y =(state == s2 && x == 1);
endmodule
