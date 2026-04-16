module tb;
  reg clk;
  reg rst;
  wire [1:0]y;
  traffic_signal uut(.clk(clk),.rst(rst),.y(y));
  always #5 clk = ~clk;
  initial begin
    clk=0;
    rst=1;
    $dumpfile("dump.vcd");
    $dumpvars(0,tb);
    $display("clk rst | y");
    $monitor("%b %b |  %b",clk,rst,y);
    #10 rst = 0;
    #100;
    rst = 1;
    #10 rst = 0;
    #80 $finish;
  end
endmodule
