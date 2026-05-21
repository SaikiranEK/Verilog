module sync_fifo#(parameter WIDTH=8,
                  parameter DEPTH=8)
  (input clk,
   input rst,
   input wr_en,
   input rd_en,
   input reg [WIDTH-1:0]data_in,
   output reg[WIDTH-1:0]data_out,
   output full,
   output empty);
  localparam ADDR_WIDTH=3;
  reg [WIDTH-1:0] mem[0:DEPTH-1];
  reg [ADDR_WIDTH-1:0] wptr;
  reg [ADDR_WIDTH-1:0] rptr;
  reg[ADDR_WIDTH:0] count;
  
  assign full=(count==DEPTH);
  assign empty=(count==0);
  
  always @(posedge clk or posedge rst)
begin

    if(rst)
    begin
        wptr <= 0;
        rptr <= 0;
        count <= 0;
        data_out <= 0;
    end

    else begin
        case ({wr_en, rd_en})
        2'b10:begin
            if(!full)
            begin
                mem[wptr] <= data_in;
                wptr <= wptr + 1;
                count <= count + 1;
            end
        end
          
        2'b01:begin
            if(!empty)
            begin
                data_out <= mem[rptr];
                rptr <= rptr + 1;
                count <= count - 1;
            end
        end
          
        2'b11:begin
            if(!full && !empty)
            begin
                mem[wptr] <= data_in;
                data_out <= mem[rptr];
                wptr <= wptr + 1;
                rptr <= rptr + 1;
            end
        end
        endcase
    end
end
endmodule
