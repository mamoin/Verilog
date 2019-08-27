/*************************************************************
Design Name 	: Decoder 4x16 Test Bench
File Name   	: decoder_4_16_tb.v
Function    	: Test Bench for the implementation of Decoder
Programer     	: Mohammad Abdul Moin Oninda
Last Modified	: 29-07-2019
*************************************************************/
module decoder_4_16_tb();

reg [3:0] In4;
reg Enable;

wire [15:0] Out16;

decoder_4_16 dut(.out16(Out16), .enable(Enable), .in4(In4));


initial
	begin
		$monitor($time, " Enable = %b, Input = %b, Output = %b\n", Enable, In4, Out16);
	end
	
initial
	begin
		Enable = 1'b1;
		In4 = 4'b1111;
		#40;
		In4 = 4'b1110;
		#40;
		In4 = 4'b1101;
		#40;
		In4 = 4'b1100;
		#40;
		Enable = 1'b0;
		In4 = 4'b1011;
		#40;
		Enable = 1'b1;
		In4 = 4'b1010;
		#40;
		In4 = 4'b1001;
		#40;
		In4 = 4'b1000;
		#40;
		In4 = 4'b0111;
		#40;
		In4 = 4'b0110;
		#40;
		In4 = 4'b0101;
		#40;
		In4 = 4'b0100;
		#40;
		Enable = 1'b0;
		In4 = 4'b0011;
		#40;
		Enable = 1'b1;
		In4 = 4'b0010;
		#40;
		In4 = 4'b0001;
		#40;
		$finish;
	end

endmodule 