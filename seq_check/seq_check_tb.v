/*************************************************************
Design Name 	: Sequence Checker Test Bench
File Name   	: seq_check_tb.v
Function    	: Test Bench for the implementation of Sequence Checker
Programer     	: Mohammad Abdul Moin Oninda
Last Modified	: 28-07-2019
*************************************************************/
module seq_check_tb();

reg Clk;
reg Rst;
reg Data;

wire Ind;

seq_check dut(.ind(Ind), .clk(Clk), .rst(Rst), .data(Data));

initial 
	begin
		Clk = 1'b0;
		Rst = 1'b1;
		#15;
		Rst = 1'b0;
		forever #5 Clk = ~Clk;
	end
	
initial 
	begin
		#12;
		Data = 1'b0;
		#10;
		Data = 1'b0;
		#10;
		Data = 1'b1;
		#10;
		Data = 1'b1;
		#10;
		Data = 1'b0;
		#10;
		Data = 1'b1;
		#10;
		Data = 1'b1;
		#10;
		Data = 1'b0;
		#10;
		Data = 1'b1;
		#10;
		Data = 1'b1;
		#10;
		Data = 1'b1;
		#10;
		Data = 1'b1;
		#10;
		Data = 1'b0;
		#10;
		Data = 1'b1;
		#10;
		Data = 1'b1;
		#10;
		Data = 1'b0;
		#40;
		$finish;
	end
endmodule 