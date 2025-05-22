//Design for D-flip flop

module d_ff(q, d, clk,rst);
output reg q;
input d, clk, rst;
always@(posedge clk or posedge rst)
begin
        if (rst)
                q<= 0;
        else
                q<= d;
end
endmodule
