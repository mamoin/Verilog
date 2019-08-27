/*************************************************************
Design Name 	: Half Adder
File Name   	: half_adder.v
Function    	: Implementation of Half Adder
Programer     	: Mohammad Abdul Moin Oninda
Last Modified	: 28-07-2019
*************************************************************/
module half_adder(sum, cout, a, b);

//Port Declaration
//Output port
output sum;
output cout;
//Input port
input a;
input b;
//Register declaration
reg sum;
reg cout;

//Instantiation
always @(a, b)				
	begin						//Always block start
		sum <= a ^ b;
		cout <= a & b;
	end						//Always block end
//End Module
endmodule 
