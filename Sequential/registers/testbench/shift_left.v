module tb;

  reg clk;
  reg rst;
  reg shift;
  wire [3:0]q;
  left_shift uut(.clk(clk),.rst(rst),.shift(shift), .q(q));
always #5 clk = ~clk;
initial begin
    clk = 0;  
	rst =1;
  $dumpfile("dump.vcd");  
    $dumpvars(0,tb);

  $display("clk rst shift | q");
  $monitor("%b %b %b | %b",clk,rst,shift, q);

   #10;
    rst = 0;   

    shift = 0; #10;
    shift = 1; #10;
    shift = 0; #10;
    shift = 1; #10;
    shift = 0; #10;

    #20 $finish;
end

endmodule
