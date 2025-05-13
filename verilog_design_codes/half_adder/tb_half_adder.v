module tb_half_adder;

    // Declare testbench signals
    reg a, b;
    wire sum, carry;

    // Instantiate the half adder module
    half_adder my_ha (
        .a(a),
        .b(b),
        .sum(sum),
        .carry(carry)
    );

    initial begin
        
        $display("A B | Sum Carry");
        $monitor("%b %b |  %b     %b", a, b, sum, carry);

        // Apply test cases
        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;

        $finish;
    end
endmodule

