/*************************************************************
Design Name 	: 1x4 Demux
File Name   	: demu_1_4_n_bit.v
Function    	: Implementation of Demultiplexer
Programer     	: Mohammad Abdul Moin Oninda
Last Modified	: 28-07-2019
*************************************************************/
module demux_1_4_n_bit(out0, out1, out2, out3, s0, s1, i0);

parameter N = 4;

//Port Declaration

//Output
output reg [N - 1 : 0] out0;
output reg [N - 1 : 0] out1;
output reg [N - 1 : 0] out2;
output reg [N - 1 : 0] out3;

input s0;
input s1;
input [N - 1 : 0] i0;

always @(*)
	begin	
		case({s0, s1})
				2'b00:
					begin 
						out0 <= i0;
						out1 <= 4'b0000;
						out2 <= 4'b0000;
						out3 <= 4'b0000;
					end
				2'b01:
					begin 
						out0 <= 4'b0000;
						out1 <= i0;
						out2 <= 4'b0000;
						out3 <= 4'b0000;
					end
				2'b10:
					begin 
						out0 <= 4'b0000;
						out1 <= 4'b0000;
						out2 <= i0;
						out3 <= 4'b0000;
					end
				2'b11:
					begin 
						out0 <= 4'b0000;
						out1 <= 4'b0000;
						out2 <= 4'b0000;
						out3 <= i0;
					end
				default: 
					begin
						$display("Error in select bit"); 
					end
		endcase
	end
	
endmodule

