module siso(
    input clk,
    input rst,
    input d,
    output reg q
);

reg [3:0] temp;  

always @(posedge clk or posedge rst) begin
    if (rst)
        temp <= 4'b0000;
    else
        temp <= {d, temp[3:1]};
end

assign q = temp[0];   
endmodule
