/*************************************************************
Design Name 	: Deserializer
File Name   	: deserializer.v
Function    	: Implementation of 1:32 Deserializer
Programer     	: Mohammad Abdul Moin Oninda
Last Modified	: 28-07-2019
*************************************************************/

module deserializer(clk, datain, validIn, dataout, validOut);

input clk;
input datain;
input validIn;

output reg [31:0] dataout;
output reg validOut;

reg [31:0] temp;


always @(posedge clk)
	begin
		if(validIn == 1'b1)
			begin
				validOut <= 1'b0;
				temp[30:0] <= temp[31:1];
				temp[31] <= datain;
			end
		else
			begin
				validOut <= 1'b1;
			end
	end
	
always @(posedge clk)
	begin
		if(validOut == 1'b0)
			begin
				dataout <= 32'b0;
			end
		else
			begin
				dataout <= temp;
			end
	end
endmodule 