// Full adder using NAND gates

module fa_using_nand(sum,carry,a,b,c);
output sum;
output carry;
input a,b,c;

wire w1,w2,w3,w4,w5,w6,w8,w9,w10,w11,w12;   //Intermediate wires

//Gate Logic
nand nand_1(w1,b,b);
nand nand_2(w2,a,a);
nand nand_3(w3,a,w1);
nand nand_4(w4,w2,b);
nand nand_5(w5,w3,w4);
nand nand_6(w6,c,c);
nand nand_7(w11,w5,w6);
nand nand_8(w8,w5,w5);
nand nand_9(w9,c,w8);
nand nand_10(sum,w11,w9);
nand nand_11(w10,a,b);
nand nand_12(w12,w5,c);
nand nand_13(carry,w12,w10);
endmodule
