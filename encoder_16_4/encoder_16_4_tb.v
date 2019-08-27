module encoder_16_4_tb();

reg [15:0] In16;
reg Enable;

wire [3:0] Out4;

encoder_16_4 dut(.out4(Out4), .enable(Enable), .in16(In16));

initial 
	begin
		$monitor($time," Enable  = %b, Input = %b, Output = %b", Enable, In16, Out4);
	end

initial 
	begin
		Enable = 1'b1;
		In16 = 16'h8000;
		#40;
		In16 = 16'h4000;
		#40;
		In16 = 16'h2000;
		#40;
		In16 = 16'h1000;
		#40;
		Enable = 1'b0;
		In16 = 16'h4000;
		#40;
		Enable = 1'b1;
		In16 = 16'h0800;
		#40;
		In16 = 16'h0400;
		#40;
		In16 = 16'h0100;
		#40;
		In16 = 16'h0080;
		#40;
		In16 = 16'h0040;
		#40;
		In16 = 16'h0020;
		#40;
		In16 = 16'h0010;
		#40;
		In16 = 16'h0004;
		#40;
		In16 = 16'h0004;
		#40;
		In16 = 16'h4002;
		#40;
		In16 = 16'h4005;
		#60;
		$finish;
	end 
	
endmodule 