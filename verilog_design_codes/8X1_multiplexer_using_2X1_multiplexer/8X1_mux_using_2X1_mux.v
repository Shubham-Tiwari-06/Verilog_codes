//Multiplexer_2X1
module MUX_2_1(y,a,b,s);
output reg y;
input a,b,s;
always@(*)
begin
        if (s == 0)
                y = a;
        else
                y = b;
end
endmodule

//Multiplexer_8X1
module MUX_8_1(y,a,s);
output y;
input [7:0] a;
input [2:0] s;
wire w1,w2,w3,w4,w5,w6;

MUX_2_1 mux_1(w1,a[0],a[1],s[0]);
MUX_2_1 mux_2(w2,a[2],a[3],s[0]);
MUX_2_1 mux_3(w3,a[4],a[5],s[0]);
MUX_2_1 mux_4(w4,a[6],a[7],s[0]);
MUX_2_1 mux_5(w5,w1,w2,s[1]);
MUX_2_1 mux_6(w6,w3,w4,s[1]);
MUX_2_1 mux_7(y,w5,w6,s[2]);
endmodule
