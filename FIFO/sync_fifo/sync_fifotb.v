module sync_fifo_tb;
    reg clk;
    reg rst;
    reg wr_en;
    reg rd_en;
    reg [7:0] data_in;
    wire [7:0] data_out;
    wire full;
    wire empty;
    sync_fifo uut (
        .clk(clk),
        .rst(rst),
        .wr_en(wr_en),
        .rd_en(rd_en),
        .data_in(data_in),
        .data_out(data_out),
        .full(full),
        .empty(empty)
    );
  initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, sync_fifo_tb);
  end
    always #5 clk = ~clk;

    initial
    begin
        clk = 0;
        rst = 1;
        wr_en = 0;
        rd_en = 0;
        data_in = 0;
        #10;
        rst = 0;
        #10;
        wr_en = 1;
        data_in = 8'hA1;
        #10;
        data_in = 8'hB2;
        #10;
        data_in = 8'hC3;
        #10;
        wr_en = 0;
        #10;
        rd_en = 1;
        #30;
        rd_en = 0;
        #20;
        $finish;
    end
endmodule
