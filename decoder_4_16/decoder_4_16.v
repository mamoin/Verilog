/*************************************************************
Design Name 	: Decoder 4x16
File Name   	: decoder_4_16.v
Function    	: Implementation of Decoder
Programer     	: Mohammad Abdul Moin Oninda
Last Modified	: 29-07-2019
*************************************************************/
module decoder_4_16(out16, enable, in4);

//Port Declaration

//Output
output reg [15:0] out16;

//Input
input enable;
input [3:0] in4;

always @(in4 or enable)
	begin
		out16 = 16'h0000;
		if(enable)
			begin
				case(in4)
					4'b0001:
						begin
							out16 = 16'h0002;
						end
					4'b0010:
						begin
							out16 = 16'h0004;
						end
					4'b0011:
						begin
							out16 = 16'h0008;
						end
					4'b0100:
						begin
							out16 = 16'h0010;
						end
					4'b0101:
						begin
							out16 = 16'h0020;
						end
					4'b0110:
						begin
							out16 = 16'h0040;
						end
					4'b0111:
						begin
							out16 = 16'h0080;
						end
					4'b1000:
						begin
							out16 = 16'h0100;
						end
					4'b1001:
						begin
							out16 = 16'h0200;
						end
					4'b1010:
						begin
							out16 = 16'h0400;
						end
					4'b1011:
						begin
							out16 = 16'h0800;
						end
					4'b1100:
						begin
							out16 = 16'h1000;
						end
					4'b1101:
						begin
							out16 = 16'h2000;
						end
					4'b1110:
						begin
							out16 = 16'h4000;
						end
					4'b1111:
						begin
							out16 = 16'h8000;
						end
					default:
						begin
							$display("\t\t\tError!!\n");
						end
				endcase
			end
	end
endmodule 