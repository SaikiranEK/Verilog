module tb;
  reg clk;
  reg rst;
  wire [2:0]count;
  upcount_3 uut(.clk(clk),.rst(rst),.count(count));
  always #5 clk = ~clk;
  initial begin
    clk=0;
    rst=1;
    $dumpfile("dump.vcd");
    $dumpvars(0,tb);
    $display("clk rst | count");
    $monitor("%b %b |  %b",clk,rst,count);
    #10 rst = 0;
    #100;
    rst = 1;
    #10 rst = 0;
    #80 $finish;
  end

endmodule
