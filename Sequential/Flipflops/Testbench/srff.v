module tb;

reg s,r;
reg clk;
reg reset;
wire q;
integer i, x;
  srff uut(.s(s), .r(r), .clk(clk),.reset(reset), .q(q));
always #5 clk = ~clk;
initial begin
    clk = 0;  

  $dumpfile("dump.vcd");  
    $dumpvars(0, tb);

  $display("s r clk | q");
  $monitor("%b %b %b | %b", s, r, clk, q);

    for(i = 0; i < 2; i = i + 1) begin
        s = i;
        for(x = 0; x < 2; x = x + 1) begin
            r = x;
            #10;
        end
    end
    #20 $finish;
end
endmodule
