module tb;
  reg a,b,c;
  wire d,e;
  subb uut(
    .a(a),
    .b(b),
    .c(c),
    .d(d),
    .e(e)
  );
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb);
    $display("a b c | d e");
    $monitor("%b %b %b | %b %b ",a,b,c,d,e);
    a=0; b=0; c=0; #10;
    a=0; b=0; c=1; #10;
    a=0; b=1; c=0; #10;
    a=0; b=1; c=1; #10;
    a=1; b=0; c=0; #10;
    a=1; b=0; c=1; #10;
    a=1; b=1; c=0; #10;
    a=1; b=1; c=1; #10;
    $finish;
  end
endmodule
