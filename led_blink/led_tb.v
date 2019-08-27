/*************************************************************
Design Name 	: Blink Led
File Name   	: led_tb.v
Function    	: Implementation of blinking LED using Max 10 FPGA
Programer     	: Mohammad Abdul Moin Oninda
Last Modified	: 28-07-2019
*************************************************************/
module led_tb();

reg in;
wire out;

led dut(.in(in), .out(out));

initial
	begin
		$monitor($time, "in = %b, out = %b", in, out);
	end
	
initial 
	begin
		in = 1'b0;
		#20;
		in = 1'b1;
		#20;
		in = 1'b0;
		#20;
		in = 1'b0;
		#20;
		in = 1'b1;
		#20;
		in = 1'b1;
		#20;
		in = 1'b0;
		#40;
		$finish;
	end

endmodule 