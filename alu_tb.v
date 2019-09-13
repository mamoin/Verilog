/*************************************************************
Design Name 	: Aritmbetic Logic Unit using FSM Test Bench
File Name   	: alu_tb.v
Function    	: Verification of ALU, capable of taking two 4-bit numbers and
					  perform +,-,*,/, AND, OR, Left Shift, Right Shift,
					  Increment and Decrement Operations
Programer     	: Mohammad Abdul Moin Oninda
Last Modified	: 13-09-2019
*************************************************************/
module alu_tb();

reg [3:0] In_A;
reg [3:0] In_B;
reg [3:0] Oper;
reg Enter;
reg Rst;

wire [7:0] Result;

alu dut(.in_A(In_A), .in_B(In_B), .oper(Oper), .enter(Enter), .rst(Rst), .result(Result));

initial 
	begin
		In_A = 4'b1000;
		In_B = 4'b0010;
		Oper = 4'b0001;
		
		Rst = 1'b1;
		Enter = 1'b0;
		#20;
		Rst = 1'b0;
		#20;
		
		//Addition
		//Input A
		Enter = 1'b1;
		#5;
		Enter = 1'b0;
		#5;
		//Input B
		Enter = 1'b1;
		#5;
		Enter = 1'b0;
		#5;
		//Input Oper
		Enter = 1'b1;
		#5;
		Enter = 1'b0;
		#5;
		//Result
		Enter = 1'b1;
		#5;
		Enter = 1'b0;
		#5;
		Rst = 1'b1;
		#20;
		Rst = 1'b0;
		#20;
		
		In_A = 4'b1111;
		In_B = 4'b1000;
		//Subtract
		Oper = 4'b0010;
		//Input A
		Enter = 1'b1;
		#5;
		Enter = 1'b0;
		#5;
		//Input B
		Enter = 1'b1;
		#5;
		Enter = 1'b0;
		#5;
		//Input Oper
		Enter = 1'b1;
		#5;
		Enter = 1'b0;
		#5;
		//Result
		Enter = 1'b1;
		#5;
		Enter = 1'b0;
		
		Rst = 1'b1;
		#20;
		Rst = 1'b0;
		#20;
		
	   In_A = 4'b1001;
		In_B = 4'b1001;
		//Multiply
		Oper = 4'b0011;
		//Input A
		Enter = 1'b1;
		#5;
		Enter = 1'b0;
		#5;
		//Input B
		Enter = 1'b1;
		#5;
		Enter = 1'b0;
		#5;
		//Input Oper
		Enter = 1'b1;
		#5;
		Enter = 1'b0;
		#5;
		//Result
		Enter = 1'b1;
		#5;
		Enter = 1'b0;
		Rst = 1'b1;
		#20;
		Rst = 1'b0;
		#20;
		
		In_A = 4'b1000;
		In_B = 4'b0010;
		//Divide
		Oper = 4'b0100;
		//Input A
		Enter = 1'b1;
		#5;
		Enter = 1'b0;
		#5;
		//Input B
		Enter = 1'b1;
		#5;
		Enter = 1'b0;
		#5;
		//Input Oper
		Enter = 1'b1;
		#5;
		Enter = 1'b0;
		#5;
		//Result
		Enter = 1'b1;
		#5;
		Enter = 1'b0;
		Rst = 1'b1;
		#20;
		Rst = 1'b0;
		#20;
		
		//AND
		In_A = 4'b1101;
		In_B = 4'b0111;		
		Oper = 4'b0101;
		//Input A
		Enter = 1'b1;
		#5;
		Enter = 1'b0;
		#5;
		//Input B
		Enter = 1'b1;
		#5;
		Enter = 1'b0;
		#5;
		//Input Oper
		Enter = 1'b1;
		#5;
		Enter = 1'b0;
		#5;
		//Result
		Enter = 1'b1;
		#5;
		Enter = 1'b0;
		Rst = 1'b1;
		#20;
		Rst = 1'b0;
		#20;
		
		//OR
		In_A = 4'b1101;
		In_B = 4'b0111;
		Oper = 4'b0110;
		//Input A
		Enter = 1'b1;
		#5;
		Enter = 1'b0;
		#5;
		//Input B
		Enter = 1'b1;
		#5;
		Enter = 1'b0;
		#5;
		//Input Oper
		Enter = 1'b1;
		#5;
		Enter = 1'b0;
		#5;
		//Result
		Enter = 1'b1;
		#5;
		Enter = 1'b0;
		Rst = 1'b1;
		#20;
		Rst = 1'b0;
		#20;
		
		//Left Shift OP1
		In_A = 4'b1000;
		In_B = 4'b1110;
		Oper = 4'b0111;
		//Input A
		Enter = 1'b1;
		#5;
		Enter = 1'b0;
		#5;
		//Input B
		Enter = 1'b1;
		#5;
		Enter = 1'b0;
		#5;
		//Input Oper
		Enter = 1'b1;
		#5;
		Enter = 1'b0;
		#5;
		//Result
		Enter = 1'b1;
		#5;
		Enter = 1'b0;
		Rst = 1'b1;
		#20;
		Rst = 1'b0;
		#20;
		
		//Right Shift OP1
		In_A = 4'b1000;
		In_B = 4'b1110;
		Oper = 4'b1000;
		//Input A
		Enter = 1'b1;
		#5;
		Enter = 1'b0;
		#5;
		//Input B
		Enter = 1'b1;
		#5;
		Enter = 1'b0;
		#5;
		//Input Oper
		Enter = 1'b1;
		#5;
		Enter = 1'b0;
		#5;
		//Result
		Enter = 1'b1;
		#5;
		Enter = 1'b0;
		Rst = 1'b1;
		#20;
		Rst = 1'b0;
		#20;
		
		//Left Shift OP2
		In_A = 4'b1000;
		In_B = 4'b1110;
		Oper = 4'b1001;
		//Input A
		Enter = 1'b1;
		#5;
		Enter = 1'b0;
		#5;
		//Input B
		Enter = 1'b1;
		#5;
		Enter = 1'b0;
		#5;
		//Input Oper
		Enter = 1'b1;
		#5;
		Enter = 1'b0;
		#5;
		//Result
		Enter = 1'b1;
		#5;
		Enter = 1'b0;
		Rst = 1'b1;
		#20;
		Rst = 1'b0;
		#20;
		
		//Right Shift OP2
		In_A = 4'b1000;
		In_B = 4'b1110;
		Oper = 4'b1010;
		//Input A
		Enter = 1'b1;
		#5;
		Enter = 1'b0;
		#5;
		//Input B
		Enter = 1'b1;
		#5;
		Enter = 1'b0;
		#5;
		//Input Oper
		Enter = 1'b1;
		#5;
		Enter = 1'b0;
		#5;
		//Result
		Enter = 1'b1;
		#5;
		Enter = 1'b0;
		Rst = 1'b1;
		#20;
		Rst = 1'b0;
		#20;
		
		//Increment OP1
		In_A = 4'b1000;
		In_B = 4'b1110;
		Oper = 4'b1011;
		//Input A
		Enter = 1'b1;
		#5;
		Enter = 1'b0;
		#5;
		//Input B
		Enter = 1'b1;
		#5;
		Enter = 1'b0;
		#5;
		//Input Oper
		Enter = 1'b1;
		#5;
		Enter = 1'b0;
		#5;
		//Result
		Enter = 1'b1;
		#5;
		Enter = 1'b0;
		Rst = 1'b1;
		#20;
		Rst = 1'b0;
		#20;
		
		//Decrement OP1
		In_A = 4'b1000;
		In_B = 4'b1110;
		Oper = 4'b1100;
		//Input A
		Enter = 1'b1;
		#5;
		Enter = 1'b0;
		#5;
		//Input B
		Enter = 1'b1;
		#5;
		Enter = 1'b0;
		#5;
		//Input Oper
		Enter = 1'b1;
		#5;
		Enter = 1'b0;
		#5;
		//Result
		Enter = 1'b1;
		#5;
		Enter = 1'b0;
		Rst = 1'b1;
		#20;
		Rst = 1'b0;
		#20;
		
		//Increment OP2
		In_A = 4'b1000;
		In_B = 4'b1110;
		Oper = 4'b1101;
		//Input A
		Enter = 1'b1;
		#5;
		Enter = 1'b0;
		#5;
		//Input B
		Enter = 1'b1;
		#5;
		Enter = 1'b0;
		#5;
		//Input Oper
		Enter = 1'b1;
		#5;
		Enter = 1'b0;
		#5;
		//Result
		Enter = 1'b1;
		#5;
		Enter = 1'b0;
		Rst = 1'b1;
		#20;
		Rst = 1'b0;
		#20;
		
		//Decrement OP2
		In_A = 4'b1000;
		In_B = 4'b1110;
		Oper = 4'b1110;
		//Input A
		Enter = 1'b1;
		#5;
		Enter = 1'b0;
		#5;
		//Input B
		Enter = 1'b1;
		#5;
		Enter = 1'b0;
		#5;
		//Input Oper
		Enter = 1'b1;
		#5;
		Enter = 1'b0;
		#5;
		//Result
		Enter = 1'b1;
		#5;
		Enter = 1'b0;
		Rst = 1'b1;
		#20;
		Rst = 1'b0;
		#20;
		
		
		$finish;
		
	end


endmodule 