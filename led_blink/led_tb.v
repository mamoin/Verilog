module led_tb();

reg in;
wire out;

led dut(.in(in), .out(out));

initial
	begin
		$monitor($time, "in = %b, out = %b", in, out);
	end
	
initial 
	begin
		in = 1'b0;
		#20;
		in = 1'b1;
		#20;
		in = 1'b0;
		#20;
		in = 1'b0;
		#20;
		in = 1'b1;
		#20;
		in = 1'b1;
		#20;
		in = 1'b0;
		#40;
		$finish;
	end

endmodule 