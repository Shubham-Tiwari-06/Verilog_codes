//Testbench
module tb_freq_by_2();
reg clk,rst;
wire out;

//Instantiation
freq_divider_by_2 my_dut(.clk(clk),.rst(rst),.out(out));
always begin
        #5 clk = ~clk;  //Generate clock pulse(10 time period)
end

initial begin
        $monitor("Time = %0t | clk = %b | rst = %b | out = %b", $time, clk, rst, out);
        clk = 0;
        rst = 1;

        #10 rst = 0;

        #100 $finish;
end

//Waveform generation
initial begin
        $fsdbDumpfile("dump.fsdb");
        $fsdbDumpvars(0,tb_freq_by_2);
end
endmodule
