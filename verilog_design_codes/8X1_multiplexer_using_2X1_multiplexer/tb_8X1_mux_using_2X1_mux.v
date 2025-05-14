//Testbench
module tb_MUX_8x1_using_2x1();
    reg [7:0] a;
    reg [2:0] s;
    wire y;

    // Instantiation
    MUX_8_1 my_mux(.y(y),.a(a),.s(s));

    initial begin
        $monitor("s=%b  a=%b\t y=%b",s, a, y);

        //Set input(Example)
        a = 8'b00011001;

       #2 s = 3'b000;
       #2 s = 3'b001;
       #2 s = 3'b010;
       #2 s = 3'b011;
       #2 s = 3'b100;
       #2 s = 3'b101;
       #2 s = 3'b110;
       #2 s = 3'b111;

        $finish;
    end
    
    // to view waveform
    initial begin
            $fsdbDumpfile("dump.fsdb");
            $fsdbDumpvars(0,tb_MUX_8x1_using_2x1);
    end
endmodule