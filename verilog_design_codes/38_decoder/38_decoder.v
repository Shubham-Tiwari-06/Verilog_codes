// 3-8 Decoder

module decoder_3_8(y,i);
output reg [7:0] y;
input [2:0] i;

always@(i)
begin
        y = 0;
        //case statement
        case(i)
                3'b000:
                        y[0] = 1;
                3'b001:
                        y[1] = 1;
                3'b010:
                        y[2] = 1;
                3'b011:
                        y[3] = 1;
                3'b100:
                        y[4] = 1;
                3'b101:
                        y[5] = 1;
                3'b110:
                        y[6] = 1;
                3'b111:
                        y[7] = 1;
                default:
                        y = 0;
        endcase
end
endmodule
