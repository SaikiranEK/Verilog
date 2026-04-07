module priorityencoder(input [3:0] i, output reg [1:0] x);
  always@(*) begin
    if (i[3])			x=2'b10;
    else if (i[2])		x=2'b11;
    else if (i[1])		x=2'b01;
    else if (i[0])		x=2'b00;
  end
endmodule
