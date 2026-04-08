module demux1to4(input x,
                 input [1:0] s,
                 output reg[3:0] y);
  always@(*)begin
    y=4'b0000;
    case(s)
      2'b00: y[0]=x;
      2'b01: y[1]=x;
      2'b10: y[2]=x;
      2'b11: y[3]=x;
      endcase
  end
endmodule
