module full_adder_4_bit_tb();

reg [3:0] a;
reg [3:0] b;
reg cin;

wire [3:0] sum;
wire cout;

full_adder_4_bit dut(.Sum(sum), .Cout(cout), .A(a), .B(b), .Cin(cin));

initial
	begin
		$monitor($time, "A = %b, B = %b, Cin = %b, Sum = %b, Cout = %b", a,b,cin,sum,cout);
	end 
	
initial 
	begin
		
		a = 4'b0000; b = 4'b0000; cin = 0;
		#20;
		a = 4'b0001; b = 4'b0001; cin = 0;
		#20;
		a = 4'b0110; b = 4'b0001; cin = 0;
		#20;
		a = 4'b1000; b = 4'b1000; cin = 0;
		#20;
		a = 4'b0010; b = 4'b0010; cin = 0;
		#60;
		$finish;
		
	end 
	
endmodule 