//Half Adder Module using GATE LEVEL MODEL
module half_adder(sum,carry,a,b);
output sum;
output carry;
input a,b;

//Sum
xor my_xor(sum,a,b);
//Carry
and my_and(carry,a,b);

endmodule
