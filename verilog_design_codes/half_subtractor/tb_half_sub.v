//Testbench for half subtractor

module tb_half_sub();
wire diff,borrow;
reg a,b;

//Instantiation for half_sub module
half_sub my_ha(.diff(diff),.borrow(borrow),.a(a),.b(b));
initial
begin
        $monitor("For a=%b  b=%b ---> difference=%b  borrow=%b",a,b,diff,borrow);
        #2 a=1'b0; b=1'b0;
        #2 a=1'b0; b=1'b1;
        #2 a=1'b1; b=1'b0;
        #2 a=1'b1; b=1'b1;
        #30 $finish;
end

//Waveform viewing
initial begin
        $fsdbDumpfile("dump.fsdb");
        $fsdbDumpvars(0,tb_half_sub);
end

endmodule
