//Testbench
module tb_sr_ff();
wire q,q_bar;
reg clk,s,r;

//Instantiation of SR_FF module
SR_FF my_ff(.q(q),.q_bar(q_bar),.clk(clk),.s(s),.r(r));

//Clock generation
initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

initial begin
        $monitor("For clk=%0d s=%0b r=%0b , q=%0b  q_bar=%0b",clk,s,r,q,q_bar);


        #10 s=0;r=0;
        #10 s=0;r=1;
        #10 s=1;r=0;
        #10 s=1;r=1;

        #20 $finish;
end

//waveform viewing
initial begin
        $fsdbDumpfile("dump.fsdb");
        $fsdbDumpvars(0, tb_sr_ff);
end
endmodule
