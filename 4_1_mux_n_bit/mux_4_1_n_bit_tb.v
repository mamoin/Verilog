/*************************************************************
Design Name 	: 4x1 MUX N Bit Test Bench
File Name   	: mux_4_1_n_bit_tb.v
Function    	: Test Bench for 4x1 MUX
Programer     	: Mohammad Abdul Moin Oninda
Last Modified	: 26-07-2019
*************************************************************/
module mux_4_1_n_bit_tb();

parameter N = 4;

reg s0;
reg s1;
reg [N - 1 : 0] i0;
reg [N - 1 : 0] i1;
reg [N - 1 : 0] i2;
reg [N - 1 : 0] i3;

wire [N - 1 : 0] out;

mux_4_1_n_bit dut(.out(out), .s0(s0), .s1(s1), .i0(i0), .i1(i1), .i2(i2), .i3(i3));

initial 
	begin
		$monitor($time, "S0 = %b, S1 = %b, i0 = %b, i1 = %b, i2 = %b, i3 = %b, out = %b", s0, s1, i0, i1, i2, i3, out);
	end

	
initial 
	begin 
		i0 = 4'b0010; i1 = 4'b0110; i2 = 4'b1111; i3 = 4'b1000;
		s0 = 1'b0; s1 = 1'b0;
		#60;
		s0 = 1'b0; s1 = 1'b1;
		#60;
		s0 = 1'b1; s1 = 1'b0;
		#60;
		s0 = 1'b1; s1 = 1'b1;
		#60;
		$finish;
	end

endmodule 