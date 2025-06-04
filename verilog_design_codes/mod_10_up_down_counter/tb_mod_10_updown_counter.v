//Testbench
module tb_mod10_counter();
wire [3:0] out;
reg clk,rst,up_down;

//Instantiation
mod_10_updown_counter my_counter(.out(out),.clk(clk),.rst(rst),.up_down(up_down));
always begin
        #5 clk = ~clk;
end

initial begin
        $monitor("Time=%0t | clk=%b | rst=%b | up_down=%b | out=%d",$time,clk,rst,up_down,out);
        clk = 0;
        rst = 1; up_down = 1;

        #10 rst = 0;  //Release reset,after 10 time units

        //Up count
        up_down = 1;
        #100;

        //Down count
        up_down = 0;
        #100;

        $finish;
end

//Waveform 
initial begin
        $fsdbDumpfile("dump.fsdb");
        $fsdbDumpvars(0,tb_mod10_counter);
end
endmodule
