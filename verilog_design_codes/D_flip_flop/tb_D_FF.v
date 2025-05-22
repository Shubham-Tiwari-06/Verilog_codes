// Testbench for D Flip Flop

module d_ff_tb();
reg clk;
reg rst;
reg d;
wire q;

//Instantiate the D_flip flop module
d_ff my_dff(.q(q), .clk(clk), .d(d), .rst(rst));
initial
begin
        clk = 0;
        d=0;
        rst=0;
end

Clock generation
always
        #5 clk = ~clk;
initial
begin
        #2 rst=1;
        #5 rst=0;
        repeat(10)
begin
        d=$urandom_range(0,1);

        #3 $display("time - %0d reset - %0d  For clock = %0d value of d- %0d value of q - %0d",$time,rst,clk,d,q);
end
#500 $finish;
end

// Waveform viewing
initial begin
        $fsdbDumpfile("dump.fsdb");
        $fsdbDumpvars(0, d_ff_tb);
end
endmodule