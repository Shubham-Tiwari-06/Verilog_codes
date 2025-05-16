// Testbench

module decoder_tb();
reg [2:0] i;
wire [7:0] y;

// Instantiate 3:8_decoder module
decoder_3_8 my_decoder(.i(i),.y(y));
initial
begin
        $monitor("i=%b --> y=%b",i,y);
        #2 i=3'b000;
        #2 i=3'b001;
        #2 i=3'b010;
        #2 i=3'b011;
        #2 i=3'b100;
        #2 i=3'b101;
        #2 i=3'b110;
        #2 i=3'b111;
        #50 $finish();
end

// To view waveform
initial begin
        $fsdbDumpfile("dump.fsdb");
        $fsdbDumpvars(0, decoder_tb);
end
endmodule