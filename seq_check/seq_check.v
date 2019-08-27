/*************************************************************
Design Name 	: Sequence Checker
File Name   	: seq_check.v
Function    	: Implementation of Sequence Checker
Programer     	: Mohammad Abdul Moin Oninda
Last Modified	: 28-07-2019
*************************************************************/
module seq_check(ind, clk, rst, data);

output reg ind;

input clk;
input rst;
input data;

reg [1:0] state;
reg [1:0] next_state;

parameter S0 = 0;
parameter S1 = 1;
parameter S2 = 2;
parameter S3 = 3;

always @(posedge clk or posedge rst)
	begin
		if(rst)
			begin
				state = S0;
			end
		else
			begin
				state = next_state;
			end
	end

always @(state or data)
	begin
		case(state)
			S0:
				begin
					ind = data ? 0 : 0;
					next_state = data ? S0 : S1;
				end
			S1:
				begin
					ind = data ? 0 : 0;
					next_state = data ? S2 : S1;
				end
			S2:
				begin
					ind = data ? 0 : 0;
					next_state = data ? S3 : S1;
				end
			S3:
				begin
					ind = data ? 0 : 1;
					next_state = data ? S0 : S1;
				end
		endcase
	end
endmodule 