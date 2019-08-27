module led(out, in);

input in;
output reg out;

always @(*)
begin
	out <= in;
end


endmodule 