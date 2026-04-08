module tb;
  reg [1:0] i;
  wire [3:0]x;
  integer j;
  decoder uut(
    .i(i),
    .x(x)
  );
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,tb);
    $display("i | x");
    $monitor("%b | %b",i,x);
    
   //looping concept
    for(j=0;j<4;j=j+1)begin
        {i} = j;
        #10;
      end
    $finish;
  end
endmodule
