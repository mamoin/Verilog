/*************************************************************
Design Name 	: Binary to Seven Segment Display Test Bench
File Name   	: bin_segment7_tb.v
Function    	: Test bench for displaying binary input in seven segment display
Programer     	: Mohammad Abdul Moin Oninda
Last Modified	: 28-08-2019
*************************************************************/
module bin_segment7_tb();

reg [3:0] bin;

wire [6:0] out;

bin_segment7 dut(.bin(bin), .out(out));


initial
	begin
		bin = 4'b0000;
		#20;
		bin = 4'b0001;
		#20;
		bin = 4'b0010;
		#20;
		bin = 4'b0011;
		#20;
		bin = 4'b0100;
		#20;
		bin = 4'b0101;
		#20;
		bin = 4'b0110;
		#20;
		bin = 4'b0111;
		#20;
		bin = 4'b1000;
		#20;
		bin = 4'b1001;
		#20;
		bin = 4'b1010;
		#20;
		bin = 4'b1011;
		#20;
		bin = 4'b1100;
		#20;
		bin = 4'b1101;
		#20;
		bin = 4'b1110;
		#20;
		bin = 4'b1111;
		#20;
		bin = 4'b0001;
		#20;
		bin = 4'b0000;
		#20;
		$finish;	
	end
endmodule 