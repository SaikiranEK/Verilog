module tb;
  reg x;
  reg[1:0] s;
  wire [3:0] y;
  integer i;
  demux1to4 uut(.x(x),.s(s),.y(y));
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,tb);
    $display(" x s | y ");
    $monitor("%b %b | %b ",x,s,y);
    x=1;
    for(i=0;i<4;i=i+1) begin
      s=i;
      #10;
    end
  $finish;
  end
endmodule
