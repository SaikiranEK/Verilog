module srff(input s,r,
            input clk,
            input reset,
            output reg q);
  always @ (posedge clk or posedge reset) begin
    if(reset)
    q<=0;
    else begin
    case({s,r})
      2'b00: ;
      2'b01: q<=0;
      2'b10: q<=1;
      2'b11: q<=1'bx;
    endcase
  end
  end
endmodule
