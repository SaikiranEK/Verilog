module tb;
  reg a,b;
  wire c,d;
  	has uut(
      .a(a),
      .b(b),
      .c(c),
      .d(d)
  );
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,tb);
    $display("a b | c d");
    $monitor("%b %b | %b %b",a,b,c,d);
    a=0;b=0; #10
    a=0;b=1; #10
    a=1;b=0; #10
    a=1;b=1; #10
    $finish;
  end
endmodule
