/*************************************************************
Design Name 	: Cyclic Lamp/Light
File Name   	: cyclic_lamp.v
Function    	: Implementation of cyclic lamp using FSM
Programer     	: Mohammad Abdul Moin Oninda
Last Modified	: 30-07-2019
*************************************************************/
module cyclic_lamp(light, clk);

parameter RED = 3'b100;
parameter YELLOW = 3'b010;
parameter GREEN = 3'b001;

parameter S0 = 0;
parameter S1 = 1;
parameter S2 = 2;

output reg [2:0] light;

input clk;

reg [1:0] state;


always @(posedge clk)
	begin
		case(state)
			S0: 
				begin
					state <= S1;
				end
			S1: 
				begin
					state <= S2;
				end
			S2: 
				begin
					state <= S0;
				end
			default:
				begin
					state <= S0;
				end
		endcase
	end
	
always @(state)
	begin
		case(state)
			S0:
				begin
					light = RED;
				end
			S1:
				begin
					light = YELLOW;
				end
			S2:
				begin
					light = GREEN;
				end
			default:
				begin
					light = RED;
				end
		endcase
	end
endmodule 