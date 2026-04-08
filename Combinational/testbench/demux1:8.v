module tb;
reg x;
  reg [2:0] s;
wire [7:0] y;
integer i;
demux1to8 uut (.x(x), .s(s), .y(y));
initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb);
    $monitor("s=%b x=%b y=%b", s, x, y);

    x = 1;
  for(i=0; i<8; i=i+1) begin
        s=i;  
        #10;
    end
    $finish;
end
endmodule
