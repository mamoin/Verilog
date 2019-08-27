/*************************************************************
Design Name 	: 1 - Bit Full adder Test Bench
File Name   	: full_adder_tb.v
Function    	: Test bench for 1-bit full adder
Programer     	: Mohammad Abdul Moin Oninda
Last Modified	: 26-07-2019
*************************************************************/
module full_adder_tb();

reg A;
reg B;
reg Cin;

wire Sum;
wire Cout;

full_adder_v2 dut(Sum, Cout, A, B, Cin);

initial
	begin
		$monitor($time, "A = %b, B = %b, Cin = %b, Sum = %b, Cout = %b\n", A, B, Cin, Sum, Cout);
	end
	
initial 
	begin
		A = 1'b0; B = 1'b0; Cin = 1'b0;
		#20;
		A = 1'b0; B = 1'b0; Cin = 1'b1;
		#20;
		A = 1'b0; B = 1'b1; Cin = 1'b0;
		#20;
		A = 1'b0; B = 1'b1; Cin = 1'b1;
		#20;
		A = 1'b1; B = 1'b0; Cin = 1'b0;
		#20;
		A = 1'b1; B = 1'b0; Cin = 1'b1;
		#20;
		A = 1'b1; B = 1'b1; Cin = 1'b0;
		#20;
		A = 1'b1; B = 1'b1; Cin = 1'b1;
		#40;
		$finish;
	end
endmodule 