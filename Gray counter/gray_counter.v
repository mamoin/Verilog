/*************************************************************
Design Name 	: Gray Counter 
File Name   	: half_adder.v
Function    	: Counts upto 6 
Programer     	: Mohammad Abdul Moin Oninda
Last Modified	: 28-08-2019
*************************************************************/
module gray_counter(clk, rst, enable, out);
input clk;
input rst;
input enable;
output wire [2:0] out;
reg [2:0] count;
//wire [2:0] out;
always@(posedge clk)
	begin
		if(rst == 1'b1)
			begin
				count <= 1'b0;
			end
		else
			begin
				if(enable == 1'b1)
					begin
						if(count == 3'b110)
							begin
								count <= 1'b0;
							end
						else
							begin
								count <= count + 1'b1;
							end
						end
				else
					begin
						count <= 1'b0;
					end
			end
end

assign out = {count[2], count[2]^count[1], count[1]^count[0]};

endmodule
