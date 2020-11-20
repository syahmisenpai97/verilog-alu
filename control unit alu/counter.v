module counter (input clk, input rst, output reg[2:0] out); //

always @ (posedge clk)
begin

	if(!rst)
	out <= 0;
	else
	out <= out +1;
	
	end
endmodule