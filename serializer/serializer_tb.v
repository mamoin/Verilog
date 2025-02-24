/*************************************************************
Design Name 	: Serializer Test Bench
File Name   	: serializer_tb.v
Function    	: Test bench for the implementation of 32:1 Serializer
Programer     	: Mohammad Abdul Moin Oninda
Last Modified	: 28-07-2019
*************************************************************/
module serializer_tb();

reg clk;
reg [31:0] datain;
reg validIn;

wire dataout;
wire validOut;

serializer dut(.clk(clk), .datain(datain), .validIn(validIn), .dataout(dataout), .validOut(validOut));

initial
	begin
		clk = 1'b0;
		forever #5 clk = ~clk;
	end
	
initial
	begin
		datain = 32'h56AB8312;
		validIn = 1'b1;
		#20;
		validIn = 1'b0;
		#350;
		datain = 32'hA6B2C9D3;
		validIn = 1'b1;
		#20;
		validIn = 1'b0;
		#350;
		$finish;
	end
endmodule 