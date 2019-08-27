//Module declaration 4 Bit Full Adder

module full_adder_4_bit(	Sum,
									Cout,
									A,
									B,
									Cin);
									
//Port declaration

//Output
output [3:0] Sum;
output Cout;

//Input
input [3:0] A;
input [3:0] B;
input Cin;

//wire declaration
wire c1;
wire c2;
wire c3;

//Instantiation
full_adder fa0(Sum[0], c1, A[0], B[0], Cin);
full_adder fa1(Sum[1], c2, A[1], B[1], c1);
full_adder fa2(Sum[2], c3, A[2], B[2], c2);
full_adder fa3(Sum[3], Cout, A[3], B[3], c3);
		
endmodule 