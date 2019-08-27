/*************************************************************
Design Name 	: Binary to Seven Segment Display
File Name   	: bin_segment7.v
Function    	: Display binary input in seven segment display
Programer     	: Mohammad Abdul Moin Oninda
Last Modified	: 28-08-2019
*************************************************************/
module bin_segment7(bin, out);

input [3:0] bin;

output reg [6:0] out;

always @(*)
	begin
		case(bin)
			4'b0001:
				begin
					out <= 7'b1111001; //1
				end
			4'b0010:
				begin
					out <= 7'b0100100; //2
				end
			4'b0011:
				begin
					out <= 7'b0110000; //3
				end
			4'b0100:
				begin
					out <= 7'b0011001; //4
				end
			4'b0101:
				begin
					out <= 7'b0010010; //5
				end
			4'b0110:
				begin
					out <= 7'b0100000; //6
				end
			4'b0111:
				begin
					out <= 7'b1111000; //7
				end
			4'b1000:
				begin
					out <= 7'b0000000; //8
				end
			4'b1001:
				begin
					out <= 7'b0011000; //9
				end
			4'b1010:
				begin
					out <= 7'b0001000; //A
				end
			4'b1011:
				begin
					out <= 7'b0000011; //b
				end
			4'b1100:
				begin
					out <= 7'b0110011; //c
				end
			4'b1101:
				begin
					out <= 7'b0100001; //d
				end
			4'b1110:
				begin
					out <= 7'b0000110; //E
				end
			4'b1111:
				begin
					out <= 7'b0001110; //F
				end
			default:
				begin
					out <= 7'b1111111;
				end
		endcase
	end
endmodule 