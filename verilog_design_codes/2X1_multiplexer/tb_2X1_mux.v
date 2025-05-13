//Testbench
module MUX_2_1_tb();
reg a,b,s;
wire y;

// Instantiation
MUX_2_1 my_mux2_1(.y(y), .a(a), .b(b), .s(s));
initial
begin
$monitor("For s=%d, a=%d, b=%d, we get y=%d",s,a,b,y);
#5 s=0;a=0;b=0;
#5 s=0;a=0;b=1;
#5 s=0;a=1;b=0;
#5 s=0;a=1;b=1;
#5 s=1;a=0;b=0;
#5 s=1;a=0;b=1;
#5 s=1;a=1;b=0;
#5 s=1;a=1;b=1;
end
endmodule
