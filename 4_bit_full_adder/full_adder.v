//Module declaration for full adder
module full_adder(	sum,
							cout,
							a,
							b,
							cin);

//Port declaration

//Output 
output sum;
output cout;

//Input
input a;
input b;
input cin;

//Reg/Wire declaration
reg sum;
reg cout;

//Instantiation

always @(a, b, cin)
	begin
		sum <= a ^ b ^ cin;
		cout <= (a ^ b) & cin | (a & b);
	end
endmodule 