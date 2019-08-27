/*************************************************************
Design Name 	: Up Counter Test Bench
File Name   	: counter_tb.v
Function    	: Test Bench for Up-Counter
Programer     	: Mohammad Abdul Moin Oninda
Last Modified	: 29-07-2019
*************************************************************/
module counter_tb();

parameter N = 4;

reg Clk;
reg Enable;
reg Rst;

wire [N - 1 : 0] Out;

counter dut(.out(Out), .clk(Clk), .rst(Rst), .enable(Enable));

initial 
	begin
		Clk = 1'b0;
		forever #5 Clk = ~Clk;
	end
	
	
initial
	begin
		Rst = 1'b1;
		#40
		Rst = 1'b0;
		Enable = 1'b1;
		#200;
		Enable = 1'b0;
		#100;
		Enable = 1'b1;
		#600;
		$finish;
		
	end 
endmodule 