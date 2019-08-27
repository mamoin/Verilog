
//Test bench module declaration
module half_adder_tb();

//Reg/Wire declaration

reg a;
reg b;

wire sum;
wire cout;

//Design under test
half_adder dut(sum, cout, a, b);


initial
	begin
		$monitor($time, "A = %b, B = %b, Sum = %b, Cout = %b\n", a, b, sum, cout);
		a = 1'b0; b = 1'b0;
		#20;
		a = 1'b0; b = 1'b1;
		#20;
		a = 1'b1; b = 1'b0;
		#20
		a = 1'b1; b = 1'b1;
		#40
		$finish;
	end

endmodule
