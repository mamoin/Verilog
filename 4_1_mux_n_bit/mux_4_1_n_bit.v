/*************************************************************
Design Name 	: 4x1 MUX N Bit
File Name   	: mux_4_1_n_bit.v
Function    	: 4x1 MUX
Programer     	: Mohammad Abdul Moin Oninda
Last Modified	: 26-07-2019
*************************************************************/
module mux_4_1_n_bit(out, s0, s1, i0, i1, i2, i3);

parameter N = 4;

//Port Declaration
//Output
output reg [N-1 : 0] out;

//Input
input s0;
input s1;
input [N-1 : 0] i0;
input [N-1 : 0] i1;
input [N-1 : 0] i2;
input [N-1 : 0] i3;

always @(*)
	begin
		case({s0, s1})
			2'b00:
				begin
					out <= i0;
				end
			2'b01:
				begin
					out <= i1;
				end
			2'b10:
				begin
					out <= i2;
				end
			2'b11:
				begin
					out <= i3;
				end
			default:
				begin
					 $display("Error in select bit"); 
				end
		endcase 
	end 
endmodule 