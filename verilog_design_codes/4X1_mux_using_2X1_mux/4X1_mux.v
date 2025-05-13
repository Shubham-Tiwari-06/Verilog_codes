//4X1 Mux using 2X1 Mux

//MULTIPLEXER_2:1
module MUX_2_1(y,a,b,s);
output y; reg y;
input a,b,s;

always @(a or b or s)
begin
        if (s==1)
                y=b;
        else
                y=a;
end
endmodule

//4X1 Mux
module MUX_4_1(y,a,b,c,d,s1,s0);
output reg y;
input a,b,c,d,s1,s0;
wire w1,w2;
MUX_2_1 mux_a(.y(w1),.a(a),.b(b),.s(s0));
MUX_2_1 mux_b(.y(w2),.a(c),.b(d),.s(s0));
MUX_2_1 mux_c(.y(y),.a(w1),.b(w2),.s(s1));
endmodule
