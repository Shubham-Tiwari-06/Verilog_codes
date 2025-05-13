// Testbench for full adder
module full_adder_tb();
  //Testbench signals
  reg a;
  reg b;
  reg cin;
  wire sum;
  wire carry;
  
  //Instantiation of full_adder module
  full_adder fa_1(.a(a), .b(b), .cin(cin), .sum(sum), .carry(carry));
  initial
    begin
      $monitor("a = %d, b = %d and cin = %d gives sum = %d and carry = %d",a, b, cin, sum, carry);
      #10 a = 1'b0; b = 1'b0; cin = 1'b0;
      #10 a = 1'b0; b = 1'b0; cin = 1'b1;
      #10 a = 1'b0; b = 1'b1; cin = 1'b0;
      #10 a = 1'b0; b = 1'b1; cin = 1'b1;
      #10 a = 1'b1; b = 1'b0; cin = 1'b0;
      #10 a = 1'b1; b = 1'b0; cin = 1'b1;
      #10 a = 1'b1; b = 1'b1; cin = 1'b0;
      #10 a = 1'b1; b = 1'b1; cin = 1'b1;
      #20
      $finish();
    end
endmodule
