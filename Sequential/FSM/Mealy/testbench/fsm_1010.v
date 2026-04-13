module tb;
  reg clk;
  reg rst;
  reg x;
  wire y;
  integer i;
  mealy_1010 uut (.clk(clk),.rst(rst),.x(x),.y(y));
  always #5 clk=~clk;
    reg[15:0] seq=16'b1010110101010101;
  initial begin
    clk=0;
    rst=1;
    x=0;
    $dumpfile("dump.vcd");
    $dumpvars(0,tb);
    $display("clk rst x | y");
    $monitor("%b %b %b | %b",clk,rst,x,y);
    #10 rst=0;
    for(i=0;i<16;i=i+1) begin
      x=seq[i];
      #10;
    end
  #20$finish;
  end
endmodule
    
