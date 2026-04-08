module tb;
  reg [15:0] x;
  reg [3:0] s;
  wire y;
  integer i,j;
  mux16to1 uut (.x(x),.s(s),.y(y));
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,tb);
    $display("s x | y");
    $monitor("%b %b | %b",s,x,y);
    for(i=0;i<32;i=i+1)begin
    x=i;
      for(j=0;j<16;j=j+1)begin
    s=j;
    #10;
      end
    end
    $finish;
  end
endmodule
