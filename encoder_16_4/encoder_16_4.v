/*************************************************************
Design Name 	: Encoder 16x4
File Name   	: encoder_16_4.v
Function    	: Implementation of Encoder
Programer     	: Mohammad Abdul Moin Oninda
Last Modified	: 28-07-2019
*************************************************************/

module encoder_16_4(out4, enable, in16);

//Port declaration

//Output
output reg [3:0] out4;

//Input 
input [15:0] in16;
input enable;

always @(in16 or enable)
	begin
		out4 = 4'b0000;
		
		if(enable)
			begin
				case(in16)
					16'h0002: 
						begin
							out4 = 1;
						end
					16'h0004: 
						begin
							out4 = 2;
						end
					16'h0008: 
						begin
							out4 = 3;
						end
					16'h0010: 
						begin
							out4 = 4;
						end
					16'h0020: 
						begin
							out4 = 5;
						end
					16'h0040: 
						begin
							out4 = 6;
						end
					16'h0080: 
						begin
							out4 = 7;
						end
					16'h0100: 
						begin
							out4 = 8;
						end
					16'h0200: 
						begin
							out4 = 9;
						end
					16'h0400: 
						begin
							out4 = 10;
						end
					16'h0800: 
						begin
							out4 = 11;
						end
					16'h1000: 
						begin
							out4 = 12;
						end
					16'h2000: 
						begin
							out4 = 13;
						end
					16'h4000: 
						begin
							out4 = 14;
						end
					16'h8000: 
						begin
							out4 = 15;
						end
					default:
						begin
							$display("Error!!!\n");
						end
				endcase
			end
	end
	
endmodule 