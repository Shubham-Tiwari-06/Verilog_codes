// Half Subtractor
module half_sub(diff,borrow,a,b);
input a,b;
output diff,borrow;
wire na;

not not1(na, a);
xor x1(diff, a, b);
and and1(borrow,na,b);
endmodule

//Full Subtractor using Half Subtractor
module full_subtractor(diff,borrow,a,b,c);
output diff,borrow;
input a,b,c;
wire w1,w2,w3;

half_sub HS1(w1,w2,a,b);
half_sub HS2(diff,w3,w1,c);

or or1(borrow,w2,w3);   //borrow

endmodule
