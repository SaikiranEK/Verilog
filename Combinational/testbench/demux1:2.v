module tb;
  reg a,sel;
  wire x,y;
  2:1 demux uut(
    .a(a),
    .sel(sel),
    .x(x),
    .y(y)
  );
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,tb);
    $display("a  sel | x y");
    $monitor("%b %b | %b %b",a,sel,x,y);
    
    a=0;sel=0; #10;
    a=0;sel=1; #10;
    a=1;sel=0; #10;
    a=1;sel=1; #10;
    $finish;
  end
endmodule
