module mux32three(i0,i1,i2,i3,i4,sel,out);
input [31:0] i0,i1,i2,i3,i4;
input [2:0] sel;
output [31:0] out;
reg [31:0] out;

always @ (i0 or i1 or i2 or i3 or i4 or sel)

begin
	case(sel)
	3'b000: out = i0;//tambah
	//tambah1
	3'b001: out = i1;//tolak
	//tolak1
	3'b010: out = i2;//darab
	3'b011: out = i3;//shift kanan
	3'b100: out = i4;//shift kiri
	default: out = 32'bx;
	endcase
end
endmodule