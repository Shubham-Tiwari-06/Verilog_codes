// Testbench for 4X1 Mux

module mux_4X1_tb();
wire y;
reg a,b,c,d,s1,s0;

//Instantiation
MUX_4_1 my_mux(.y(y),.a(a),.b(b),.c(c),.d(d),.s0(s0),.s1(s1));
initial
begin

       repeat(10)
begin
        #3 s0 = $urandom_range(0,1);

        s1 = $urandom_range(0,1);

        a = $urandom_range(0,1);

        b = $urandom_range(0,1);

        c = $urandom_range(0,1);

        d = $urandom_range(0,1);


        #3 $display("For s0=%0d s1 =%0d a=%0d b=%0d c=%0d d=%0d then y=%0d",s0,s1,a,b,c,d,y);

end
end

// To check waveform
initial begin
        $fsdbDumpfile("dumpfile");
        $fsdbDumpvars(0,mux_4X1_tb);
end
endmodule
