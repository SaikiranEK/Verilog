module tb;
  reg clk;
  reg rst;
  reg up;
  wire [2:0]count;
  integer i;
  updowncount_3 uut(.clk(clk),.rst(rst),.up(up),.count(count));
  always #5 clk = ~clk;
  initial begin
    clk=0;
    rst=1;
    up=1;
    $dumpfile("dump.vcd");
    $dumpvars(0,tb);
    $display("clk rst | count");
    $monitor("%b %b |  %b",clk,rst,count);
    #10 rst = 0;
     up=1;
    for(i=0;i<8;i=i+1)begin
      #10;
    end
      up=0;
      for(i=0;i<8;i=i+1) begin
        #10;
      end
    #80 up=1;
    #100;
    rst = 1;
    #10 rst = 0;
    #80 $finish;
  end

endmodule
