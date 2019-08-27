/*************************************************************
Design Name 	: D Flip Flop Test Bench
File Name   	: d_flip_flop_tb.v
Function    	: Implementation of D Flip FLop
Programer     	: Mohammad Abdul Moin Oninda
Last Modified	: 29-07-2019
*************************************************************/
module d_flip_flop_tb();

reg [3:0] Data;
reg Clk;
reg Enable;

wire [3:0] Q;
wire [3:0] Q_bar;

d_flip_flop dut(.q(Q), .q_bar(Q_bar), .clk(Clk), .enable(Enable), .data(Data));

initial 
	begin
		Clk = 1'b0;
		forever #5 Clk = ~Clk;
	end 
	
initial 
	begin
		Data = 4'b1010;
		Enable = 1'b0;
		#10;
		Enable = 1'b1;
		#40;
		Data = 4'b0101;
		#40;
		Data = 4'b0011;
		Enable = 1'b0;
		#40;
		Data = 4'b1100;
		Enable = 1'b1;
		#60;
		$finish;
	end
endmodule 