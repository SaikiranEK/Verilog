module tb;
  reg [3:0] i;
  wire [1:0]x;
  integer j;
  priorityencoder uut(
    .i(i),
    .x(x)
  );
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,tb);
    $display("i | x");
    $monitor("%b | %b",i,x);
      for(j=0;j<16;j=j+1)begin
        {i} = j;
        #10;
      end
    $finish;
  end
endmodule
