//SR flip-flop using gate-level modelling

module SR_FF(q,q_bar,clk,s,r);
output q,q_bar;
input clk,s,r;

wire w1,w2;    //intermediate wires
//wire w_out,w_out_bar;

nand nand1(w1,s,clk);
nand nand2(w2,r,clk);
nand nand3(q,w1,q_bar);  // output q
nand nand4(q_bar,w2,q);  // output q_bar

//assign q = w_out;
//assign q_bar = w_out_bar;

endmodule
