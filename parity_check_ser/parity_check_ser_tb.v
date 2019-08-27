module parity_check_ser_tb();

reg Data;
reg Clk;

wire Check;

parity_check_ser dut(.check(Check), .clk(Clk), .data(Data));

initial
	begin
		Clk = 0;
		forever #5 Clk = ~Clk;
	end 
	
initial
	begin
		#2 Data = 1'b0;
		#10 Data = 1'b0;
		#10 Data = 1'b1;
		#10 Data = 1'b0;
		#10 Data = 1'b1;
		#10 Data = 1'b1;
		#10 Data = 1'b1;
		#10 Data = 1'b0;
		#10 Data = 1'b0;
		#10 Data = 1'b1;
		#10 Data = 1'b1;
		#10 Data = 1'b0;
		#10 Data = 1'b1;
		#10 Data = 1'b0;
		#10 Data = 1'b1;
		#60;
		$finish;
	end 
endmodule 