/*************************************************************
Design Name 	: Gray Counter Test Bench
File Name   	: half_adder.v
Function    	: Counts upto 6 
Programer     	: Mohammad Abdul Moin Oninda
Last Modified	: 28-08-2019
*************************************************************/
module gray_counter_tb();

reg Clk;
reg Enable;
reg Rst;

wire [2:0] Out;

gray_counter dut(.clk(Clk), .rst(Rst), .enable(Enable), .out(Out));

initial 
	begin
		Clk = 1'b0;
		forever #5 Clk = ~Clk;
	end
	
initial
	begin
		$monitor($time,"Output = %b\n", Out);
		Rst = 1'b1;
		Enable = 1'b0;
		#20;
		Rst = 1'b0;
		Enable = 1'b0;
		#20;
		Enable = 1'b1;
		#500;
		$finish;
	end

endmodule 