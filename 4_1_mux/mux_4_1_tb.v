/*************************************************************
Design Name 	: 4x1 MUX Test Bench
File Name   	: mux_4_1_tb.v
Function    	: Test bench for 4x1 MUX
Programer     	: Mohammad Abdul Moin Oninda
Last Modified	: 26-07-2019
*************************************************************/
module mux_4_1_tb();

reg s0;
reg s1;
reg i0;
reg i1;
reg i2;
reg i3;

wire out;

mux_4_1 dut(out, s0, s1, i0, i1, i2, i3);

initial 
	begin
		$monitor($time, "S0 = %b, S1 = %b, i0 = %b, i1 = %b, i2 = %b, i3 = %b, out = %b", s0, s1, i0, i1, i2, i3, out);
	end

	
initial 
	begin 
		i0 = 1'b0; i1 = 1'b1; i2 = 1'b0; i3 = 1'b1;
		s0 = 1'b0; s1 = 1'b0;
		#40;
		s0 = 1'b0; s1 = 1'b1;
		#40;
		s0 = 1'b1; s1 = 1'b0;
		#40;
		s0 = 1'b1; s1 = 1'b1;
		#40;
		i0 = 1'b1; i1 = 1'b0; i2 = 1'b1; i3 = 1'b0;
		s0 = 1'b0; s1 = 1'b0;
		#40;
		s0 = 1'b0; s1 = 1'b1;
		#40;
		s0 = 1'b1; s1 = 1'b0;
		#40;
		s0 = 1'b1; s1 = 1'b1;
		#40;
		i0 = 1'b1; i1 = 1'b1; i2 = 1'b1; i3 = 1'b1;
		s0 = 1'b0; s1 = 1'b0;
		#40;
		s0 = 1'b0; s1 = 1'b1;
		#40;
		s0 = 1'b1; s1 = 1'b0;
		#40;
		s0 = 1'b1; s1 = 1'b1;
		#40;
		i0 = 1'b0; i1 = 1'b0; i2 = 1'b0; i3 = 1'b0;
		s0 = 1'b0; s1 = 1'b0;
		#40;
		s0 = 1'b0; s1 = 1'b1;
		#40;
		s0 = 1'b1; s1 = 1'b0;
		#40;
		s0 = 1'b1; s1 = 1'b1;
		#60;
		$finish;
	end

endmodule 