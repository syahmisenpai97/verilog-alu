module alu(a, b, r, clk, rst, alu_control); //
input [31:0] a,b;
output [31:0] r;
input clk,rst; //
output[3:0] alu_control; //

wire [2:0] wire1; //

wire [31:0] addmux_out, submux_out;
wire [31:0] add_out, sub_out, mul_out, shiftr_out,shiftl_out;

mux32two adder_mux(b, 32'd1, alu_control[0], addmux_out); //
mux32two sub_mux(b, 32'd1, alu_control[0], submux_out); //

control control1 (wire1,alu_control); //
counter clock1 (clk,rst,wire1); //


add32 our_adder(a,addmux_out,add_out);
sub32 our_subtracter(a,submux_out,sub_out);
mul16 our_multiplier(a[15:0], b[15:0], mul_out);


shiftr our_shiftr(a,b,shiftr_out);
shiftl our_shiftl(a,b,shiftl_out);


mux32three output_mux(add_out,sub_out,mul_out,shiftr_out,shiftl_out,alu_control[3:1],r);

endmodule