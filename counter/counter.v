/*************************************************************
Design Name 	: Up Counter
File Name   	: counter.v
Function    	: Up-Counter
Programer     	: Mohammad Abdul Moin Oninda
Last Modified	: 29-07-2019
*************************************************************/
module counter(out, clk, rst, enable);

parameter N = 4;

//Port declaration
//Output
output reg [N - 1 : 0] out;

//Input
input clk;
input rst;
input enable;

always @(posedge clk)
	begin
		if(rst == 1'b1)
			begin
				out <= 4'b0000;
			end
		else
			begin 
				if(out == 4'b1111)
					begin
						out <= 4'b0000;
					end
				else if(enable == 1'b1)
					begin
						out <= out + 1'b1;
					end
				else
					begin
						out <= out;
					end
			end
	end
endmodule 