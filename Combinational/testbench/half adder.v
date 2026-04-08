module tb;
  reg a,b;
  wire sum,carry;
  haa uut(
    .a(a),
    .b(b),
    .sum(sum),
    .carry(carry)
  );
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,tb);
    $display("a b | sum carry");
    $monitor("%b %b | %b %b", a,b,sum,carry);
    a=0;b=0; #10;
    a=0;b=1; #10;
    a=1;b=0; #10;
    a=1;b=1; #10;
    $finish;
  end
endmodule
    
