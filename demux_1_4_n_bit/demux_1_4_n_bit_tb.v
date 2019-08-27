/*************************************************************
Design Name 	: 1x4 Demux Test Bench
File Name   	: demu_1_4_n_bit_tb.v
Function    	: Implementation of Demultiplexer
Programer     	: Mohammad Abdul Moin Oninda
Last Modified	: 28-07-2019
*************************************************************/
module demux_1_4_n_bit_tb();

parameter N = 4;

reg s0;
reg s1;
reg [N - 1 : 0] i0;

wire [N - 1 : 0] out0;
wire [N - 1 : 0] out1;
wire [N - 1 : 0] out2;
wire [N - 1 : 0] out3;

demux_1_4_n_bit dut(.out0(out0), .out1(out1), .out2(out2), .out3(out3), .s0(s0), .s1(s1), .i0(i0));

initial 
	begin
		$monitor($time, "S0 = %b, S1 = %b, i0 = %b, out0 = %b, out1 = %b, out2 = %b, out3 = %b", s0, s1, i0, out0, out1, out2, out3);
	end 
	
initial 
	begin
		i0 = 4'b1100;
		s0 = 1'b0; s1 = 1'b0;
		#40;
		s0 = 1'b0; s1 = 1'b1;
		#40;
		s0 = 1'b1; s1 = 1'b0;
		#40;
		s0 = 1'b1; s1 = 1'b1;
		#40;
		i0 = 4'b0110;
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
