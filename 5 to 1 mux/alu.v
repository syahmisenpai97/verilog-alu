module alu(a, b, f, r);
input [31:0] a,b;
input [3:0] f;
output [31:0] r;




wire [31:0] addmux_out, submux_out;
wire [31:0] add_out, sub_out, mul_out, shiftr_out,shiftl_out;

mux32two adder_mux(b, 32'd1, f[0], addmux_out);
mux32two sub_mux(b, 32'd1, f[0], submux_out);




add32 our_adder(a,addmux_out,add_out);
sub32 our_subtracter(a,submux_out,sub_out);
mul16 our_multiplier(a[15:0], b[15:0], mul_out);


shiftr our_shiftr(a,b,shiftr_out);
shiftl our_shiftl(a,b,shiftl_out);


mux32three output_mux(add_out,sub_out,mul_out,shiftr_out,shiftl_out,f[3:1],r);

endmodule