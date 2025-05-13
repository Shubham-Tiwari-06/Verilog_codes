//Full adder using gate level modelling

module full_adder(sum, carry, a, b, cin);
  output sum; reg sum;      // outputs
  output carry; reg carry;
  input a, b, cin;          // inputs
  wire w1, w2, w3, w4;     // intermediate wires
  
  //Design Logic
  xor xor1(w1, a, b);
  xor xor2(sum, w1, cin);
  and and1(w2, a, b);
  and and2(w3, cin, w1);
  or or1(carry, w2, w3);
endmodule