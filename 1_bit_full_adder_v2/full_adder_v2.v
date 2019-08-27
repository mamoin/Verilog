/*************************************************************
Design Name 	: 1 - Bit Full adder
File Name   	: full_adder_tb.v
Function    	: Add two 1-Bit number
Programer     	: Mohammad Abdul Moin Oninda
Last Modified	: 26-07-2019
*************************************************************/
module full_adder_v2(	sum,
							cout,
							a,
							b,
							cin);
						
//Port declaration

//Output
output reg sum;
output reg cout;

//Input
input a;
input b;
input cin;


//Instantiation

always @(a, b, cin)
	begin
		{cout, sum} = a + b + cin;
	end
	
endmodule 