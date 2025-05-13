//Testbench for Full subtractor using Half subtractor

module full_sub_using_hs();
wire diff,borrow;
reg a,b,c;

//Instantiation of full_subtractor module
full_subtractor my_fullsub(.diff(diff),.borrow(borrow),.a(a),.b(b),.c(c));initial
begin
        $monitor("At time=%0t: a=%b b=%b c=%b, difference=%b  borrow=%b",$time,a,b,c,diff,borrow);
        #1 a=0; b=0; c=0;
        #1 a=0; b=0; c=1;
        #1 a=0; b=1; c=0;
        #1 a=0; b=1; c=1;
        #1 a=1; b=0; c=0;
        #1 a=1; b=0; c=1;
        #1 a=1; b=1; c=0;
        #1 a=1; b=1; c=1;
end

// For waveform
initial begin
        $fsdbDumpfile("dump.fsdb");
        $fsdbDumpvars(0,full_sub_using_hs);
end
endmodule
