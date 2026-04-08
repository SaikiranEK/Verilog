module tb;
  reg [7:0] x;
  reg [2:0] s;
  wire y;
  integer i,j;
  mux8to1 uut (.x(x),.s(s),.y(y));
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,tb);
    $display("s x | y");
    $monitor("%b %b | %b",s,x,y);
    for(i=0;i<16;i=i+1)begin
    x=i;
      for(j=0;j<7;j=j+1)begin
    s=j;
    #10;
      end
    end
    $finish;
  end
endmodule
