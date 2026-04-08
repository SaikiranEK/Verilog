module rcatb;
  reg [3:0] a, b;
  reg c;
  wire [3:0] x,y;
  rca uut (
    .a(a),
    .b(b),
    .c(c),
    .x(x),
    .y(y)
  );
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, rcatb);

    a = 4'b0000; b = 4'b0000; c = 0; #10;
    a = 4'b0011; b = 4'b0101; c = 0; #10;
    a = 4'b1111; b = 4'b0001; c = 0; #10;
    a = 4'b1010; b = 4'b0101; c = 1; #10;
    a = 4'b1111; b = 4'b1111; c = 1; #10;
    $finish;
  end
endmodule
