//MULTIPLEXER_2:1

module MUX_2_1(y,a,b,s);
output y; reg y;       // output
input a,b,s;           // input

// Logic
always @(a or b or s)
begin
        if (s==1)
                y=b;
        else
                y=a;
end
endmodule
