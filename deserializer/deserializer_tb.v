/*************************************************************
Design Name 	: Deserializer Test Bench
File Name   	: deserializer_tb.v
Function    	: Test bench for the implementation of 1:32 Deserializer
Programer     	: Mohammad Abdul Moin Oninda
Last Modified	: 28-07-2019
*************************************************************/
module deserializer_tb();

reg clk;
reg datain;
reg validIn;

wire [31:0] dataout;
wire validOut;


deserializer dut(.clk(clk), .datain(datain), .validIn(validIn), .dataout(dataout), .validOut(validOut));

initial
	begin
		clk = 1'b0;
		forever #5 clk = ~clk;
	end

	
initial
	begin
		#10;
		validIn = 1'b1;
		datain = 1'b1;
		#10;
		datain = 1'b0;
		#10;
		datain = 1'b0;
		#10;
		datain = 1'b1;
		#10;
		
		datain = 1'b1;
		#10;
		datain = 1'b0;
		#10;
		datain = 1'b1;
		#10;
		datain = 1'b1;
		#10;
		
		datain = 1'b0;
		#10;
		datain = 1'b1;
		#10;
		datain = 1'b1;
		#10;
		datain = 1'b0;
		#10;
		
		datain = 1'b0;
		#10;
		datain = 1'b0;
		#10;
		datain = 1'b1;
		#10;
		datain = 1'b1;
		#10;
		
		datain = 1'b0;
		#10;
		datain = 1'b1;
		#10;
		datain = 1'b0;
		#10;
		datain = 1'b1;
		#10;
		
		datain = 1'b1;
		#10;
		datain = 1'b1;
		#10;
		datain = 1'b0;
		#10;
		datain = 1'b1;
		#10;
		
		datain = 1'b0;
		#10;
		datain = 1'b1;
		#10;
		datain = 1'b0;
		#10;
		datain = 1'b0;
		#10;
		
		datain = 1'b0;
		#10;
		datain = 1'b1;
		#10;
		datain = 1'b0;
		#10;
		datain = 1'b1;
		#10;
		
		validIn <= 1'b0;
		#500;
		$finish;
	end
	
endmodule 