/*************************************************************
Design Name 	: D Flip-Flop
File Name   	: d_flip_flop.v
Function    	: Implementation of D FLip FLop
Programer     	: Mohammad Abdul Moin Oninda
Last Modified	: 29-07-2019
*************************************************************/
module d_flip_flop(q, q_bar, clk, enable, data);

//Port declaration

//Output
output reg [3:0] q;
output reg [3:0] q_bar;

//Input
input clk;
input [3:0] data;
input enable;

always @(posedge clk)
	begin
		if(enable == 1'b1)
			begin
				q <= data;
				q_bar <= ~q;
			end
		else
			begin
				q <= q;
				q_bar <= ~q;
			end
	end
endmodule 