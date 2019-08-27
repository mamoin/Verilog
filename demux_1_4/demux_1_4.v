/*************************************************************
Design Name 	: 1x4 Demux
File Name   	: demu_1_4.v
Function    	: Implementation of Demultiplexer
Programer     	: Mohammad Abdul Moin Oninda
Last Modified	: 28-07-2019
*************************************************************/
module demux_1_4(out0, out1, out2, out3, s0, s1, i0);

//Port Declaration

//Output
output reg out0;
output reg out1;
output reg out2;
output reg out3;

input s0;
input s1;
input i0;

always @(*)
	begin	
		case({s0, s1})
				2'b00:
					begin 
						out0 <= i0;
						out1 <= 1'b0;
						out2 <= 1'b0;
						out3 <= 1'b0;
					end
				2'b01:
					begin 
						out0 <= 1'b0;
						out1 <= i0;
						out2 <= 1'b0;
						out3 <= 1'b0;
					end
				2'b10:
					begin 
						out0 <= 1'b0;
						out1 <= 1'b0;
						out2 <= i0;
						out3 <= 1'b0;
					end
				2'b11:
					begin 
						out0 <= 1'b0;
						out1 <= 1'b0;
						out2 <= 1'b0;
						out3 <= i0;
					end
				default: 
					begin
						$display("Error in select bit"); 
					end
		endcase
	end
	
endmodule

