module jkfftb;

reg j, k;
reg clk;
wire q;
integer i, x;
jkff uut(.j(j), .k(k), .clk(clk), .q(q));
always #5 clk = ~clk;
initial begin
    clk = 0;  

    $dumpfile("jk.vcd");  
    $dumpvars(0, jkfftb);

    $display("j k clk | q");
    $monitor("%b %b %b | %b", j, k, clk, q);

    for(i = 0; i < 2; i = i + 1) begin
        j = i;
        for(x = 0; x < 2; x = x + 1) begin
            k = x;
            #10;
        end
    end
    #20 $finish;
end
endmodule
