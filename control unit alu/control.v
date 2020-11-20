module control (sel,y);
input [2:0] sel; //
output [3:0] y; //

reg [3:0] y;

always @ (sel)
begin
case (sel)
	3'b000 : y = 4'b0000;
	3'b001 : y = 4'b0001;
	3'b010 : y = 4'b0010;
	3'b011 : y = 4'b0011;
	3'b100 : y = 4'b0100; //multip
	3'b101 : y = 4'b0110; //right
	3'b110 : y = 4'b1000; //left
endcase
end
endmodule