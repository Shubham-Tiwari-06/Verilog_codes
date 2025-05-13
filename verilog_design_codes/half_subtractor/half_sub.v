// Half Subtractor using Behavioral model

module half_sub(diff,borrow,a,b);
input wire a,b;
output reg diff,borrow;

always@(a or b)
begin
        {borrow,diff} = a - b;
end
endmodule
