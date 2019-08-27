module parity_check_ser(check, clk, data);


parameter EVEN = 0;
parameter ODD = 1;

output reg check;

input clk;
input data;

reg even_odd;


always @(posedge clk)
	begin
		case(even_odd)
			EVEN:
				begin
					even_odd <= data ? ODD:EVEN;
				end
			ODD:
				begin
					even_odd <= data ? EVEN:ODD; 
				end
			default:
				begin
					even_odd <= EVEN;
				end	
		endcase
	end
	
always @(even_odd)
	begin
		case(even_odd)
			EVEN: 
				begin
					check = data ? 1:0;
				end
			ODD: 
				begin
					check = data ? 0:1;
				end
		endcase
	end
endmodule 