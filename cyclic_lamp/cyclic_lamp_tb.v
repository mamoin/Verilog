/*************************************************************
Design Name 	: Cyclic Lamp/Light Test Bench
File Name   	: cyclic_lamp_tb.v
Function    	: Test bench for the implementation of cyclic lamp using FSM
Programer     	: Mohammad Abdul Moin Oninda
Last Modified	: 30-07-2019
*************************************************************/
module cyclic_lamp_tb();

reg Clk;

wire [2:0] Light;

cyclic_lamp dut(.light(Light), .clk(Clk));

initial
	begin
		Clk = 0;
		forever #5 Clk = ~Clk;
	end 
	
initial
	begin
		$monitor($time, "\tLight = %b\n", Light);
		#1000;
		$finish;
	end 

endmodule 