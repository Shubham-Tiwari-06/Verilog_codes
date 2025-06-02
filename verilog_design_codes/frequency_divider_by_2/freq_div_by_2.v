//Frequency divider by 2
module freq_divider_by_2(out,clk,rst);
output reg out;
input clk,rst;

always@(posedge clk or posedge rst)
begin
        if (rst) begin
                out <= 0;
        end
        else begin
                out <= ~out; //Toggle output on each clock edge
        end
end
endmodule
