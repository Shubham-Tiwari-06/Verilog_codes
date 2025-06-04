//Mod-10 Up/Down counter
module mod_10_updown_counter(out,clk,rst,up_down);
input clk,rst,up_down;
output reg [3:0] out;

always@(posedge clk or posedge rst)
begin
        if (rst)
                out <= 4'd0;
        else
        begin
                if (up_down == 1)
                //counting 0 to 9
                begin
                        if (out == 4'd9)
                                out <= 4'd0;
                        else
                                out <= out + 1;
                end

                else
                //Counting 9 to 0
                begin
                        if (out == 4'd0)
                                out <= 4'd9;
                        else
                                out <= out - 1;
                end
        end
end
endmodule
