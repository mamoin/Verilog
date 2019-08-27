/*************************************************************
Design Name 	: 1x4 Demux Test bench
File Name   	: demu_1_4_tb.v
Function    	: Test bench for the implementation of Demultiplexer
Programer     	: Mohammad Abdul Moin Oninda
Last Modified	: 28-07-2019
*************************************************************/
module demux_1_4_tb();

reg s0;
reg s1;
reg i0;

wire out0;
wire out1;
wire out2;
wire out3;

demux_1_4 dut(out0, out1, out2, out3, s0, s1, i0);

initial 
	begin
		$monitor($time, "S0 = %b, S1 = %b, i0 = %b, out0 = %b, out1 = %b, out2 = %b, out3 = %b", s0, s1, i0, out0, out1, out2, out3);
	end 
	
initial 
	begin
		i0 = 1'b1;
		s0 = 1'b0; s1 = 1'b0;
		#40;
		s0 = 1'b0; s1 = 1'b1;
		#40;
		s0 = 1'b1; s1 = 1'b0;
		#40;
		s0 = 1'b1; s1 = 1'b1;
		#40;
		i0 = 1'b0;
		s0 = 1'b0; s1 = 1'b0;
		#40;
		s0 = 1'b0; s1 = 1'b1;
		#40;
		s0 = 1'b1; s1 = 1'b0;
		#40;
		s0 = 1'b1; s1 = 1'b1;
		#40;
		$finish;
	end
	
endmodule 