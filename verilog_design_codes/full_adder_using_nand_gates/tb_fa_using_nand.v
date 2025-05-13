//Testbench

module full_adder_tb();
  reg a,b,c;
  wire sum,carry;


  //Instantiation

  fa_using_nand my_fa(.sum(sum), .carry(carry), .a(a), .b(b), .c(c));
    initial
    begin
      $monitor("a = %d, b = %d and c = %d gives sum = %d and carry = %d",a, b, c, sum, carry);
      #10 a = 1'b0; b = 1'b0; c = 1'b0;
      #10 a = 1'b0; b = 1'b0; c = 1'b1;
      #10 a = 1'b0; b = 1'b1; c = 1'b0;
      #10 a = 1'b0; b = 1'b1; c = 1'b1;
      #10 a = 1'b1; b = 1'b0; c = 1'b0;
      #10 a = 1'b1; b = 1'b0; c = 1'b1;
      #10 a = 1'b1; b = 1'b1; c = 1'b0;
      #10 a = 1'b1; b = 1'b1; c = 1'b1;
      #20
      $finish();
    end

    // To observe waveform
    initial begin
            $fsdbDumpfile("dump.fsdb");
            $fsdbDumpvars(0,full_adder_tb);
    end
endmodule