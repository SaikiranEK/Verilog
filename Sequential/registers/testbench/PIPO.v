module tb;
  reg [3:0] d;
  reg clk,rst;
  wire [3:0]q;
integer i;
  pipo uut(.d(d),.clk(clk),.rst(rst), .q(q));
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

    d = 4'b0001; #10;
    d = 4'b1010; #10;
    d = 4'b1111; #10;
    d = 4'b0101; #10;

    #20 $finish;
end

endmodule
