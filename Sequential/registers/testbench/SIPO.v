module tb;
reg d,clk,rst;
  wire [3:0]q;
integer i;
  sipo uut(.d(d),.clk(clk),.rst(rst), .q(q));
always #5 clk = ~clk;
initial begin
    clk = 0;  
	rst =1;
  $dumpfile("dump.vcd");  
    $dumpvars(0,tb);

  $display("d  clk rst | q");
  $monitor("%b %b %b | %b", d,clk,rst, q);

   #10;
    rst = 0;   

    d = 1; #10;
    d = 0; #10;
    d = 1; #10;
    d = 1; #10;
    d = 0; #10;

    #20 $finish;
end

endmodule
