
module tb;
  reg a,b,c;
  wire w,d,e,x,y;
  addd uut(      
    .a(a),
    .b(b),
    .c(c),
    .w(w),
    .d(d),
    .e(e),
    .x(x),
    .y(y)
  );
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb);
    $display("a b c | w d e x y");
    $monitor("%b %b %b | %b %b %b %b %b",a,b,c,w,d,e,x,y);
    a=0;b=0;c=0; #10;
    a=0;b=0;c=1; #10;
    a=0;b=1;c=0; #10;
    a=0;b=1;c=1; #10;
    a=1;b=0;c=0; #10;
    a=1;b=0;c=1; #10;
    a=1;b=1;c=0; #10;
    a=1;b=1;c=1; #10;
    $finish;
  end
endmodule
