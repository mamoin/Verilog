/*************************************************************
Design Name 	: Aritmbetic Logic Unit using FSM
File Name   	: alu.v
Function    	: ALU capable of taking two 4-bit numbers and
					  perform +,-,*,/, AND, OR, Left Shift, Right Shift,
					  Increment and Decrement Operations
Programer     	: Mohammad Abdul Moin Oninda
Last Modified	: 13-09-2019
*************************************************************/
module alu(
					in_A,			//Input A
					in_B,			//Input B
					oper,			//Operation Code
					enter,		//Enter 
					rst,			//Reset
					result);		//Result - Output


//Declaring Input					
input [3:0] in_A;
input [3:0] in_B;
input [3:0] oper;
input enter;
input rst;

//Declaring Output
output reg [7:0] result;

//Declaring state parameters
parameter S0 = 0;
parameter S1 = 1;
parameter S2 = 2;
parameter S3 = 3;
parameter S4 = 4;

//States
reg [2:0] state;
reg [2:0] next_state;
reg [2:0] curr_state;

//Declaring internal registers
reg [3:0] op1;
reg [3:0] op2;
reg [3:0] op3;
reg [7:0] result_temp;

//Always Block 1 
always@(enter, rst)
	begin
		if(rst == 1'b1)
			begin
				state = S0;
			end
		else
			if(enter == 1'b0)
				begin
					state = curr_state;
				end
			else
				begin
					state = next_state;
				end
	end

//Always Block 2 State Transitions
always@(state)
	begin
		case(state)
			S0:
				begin
					curr_state = S0;
					next_state = S1;
				end
			S1:
				begin
					op1 = in_A;
					curr_state = S1;
					next_state = S2;
				end
			S2:
				begin
					op2 = in_B;
					curr_state = S2;
					next_state = S3;
				end
			S3:
				begin
					op3 = oper;
					curr_state = S3;
					next_state = S4;
				end
			S4:
				begin
					result = result_temp;
					curr_state = S4;
					next_state = S0;
				end
			default:
				begin
					next_state = S0;
					curr_state = S0;
				end
		endcase
	end
	
//Operations/Calculations
always@(op3)
	begin
		case(op3)
			4'b0001:
				begin
					result_temp = op1 + op2;	//Addition
				end
			4'b0010:
				begin
					result_temp = op1 - op2;	//Subtraction
				end
			4'b0011:
				begin
					result_temp = op1 * op2;	//Multiplication
				end
			4'b0100:
				begin
					result_temp = op1 / op2;	//Division
				end
			4'b0101:
				begin
					result_temp = op1 & op2;	//AND operation
				end
			4'b0110:
				begin
					result_temp = op1 | op2;	//OR operation
				end
			4'b0111:
				begin
					result_temp = op1 << 3;		//Left Shift Operand A by 3 bit
				end
			4'b1000:
				begin
					result_temp = op1 >> 3;		//Right Shift Operand A by 3 bit
				end
			4'b1001:
				begin
					result_temp = op2 << 3;		//Left Shift Operand B by 3 bit
				end
			4'b1010:
				begin
					result_temp = op2 >> 3;		//Right Shift Operand B by 3 bit
				end
			4'b1011:
				begin
					result_temp = op1 + 1'b1;  //Increment Operand A 
				end
			4'b1100:
				begin
					result_temp = op1 - 1'b1;  //Decrement Operand A
				end
			4'b1101:
				begin
					result_temp = op2 + 1'b1;  //Increment Operand B
				end
			4'b1110:
				begin
					result_temp = op2 - 1'b1;  //Decrement Operand B
				end
			default:
				begin
					result_temp = 8'b00000000; //Default
				end
		endcase
	end

endmodule 