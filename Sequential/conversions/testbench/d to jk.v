
module dtojktb;
reg d,clk;
wire q;
integer i;
dtojk uut(.d(d),.clk(clk),.q(q));
always #5 clk = ~clk;
initial begin
clk=0;
d=0;
$dumpfile("dump.vcd");
$dumpvars(0,dtojktb);
$display("d clk | q");
$monitor("%b %b | %b",d,clk,q);
 for(i=0;i<2;i=i+1) begin
 d=i;
 #10;
 end
#20 $finish;
end 
endmodule
