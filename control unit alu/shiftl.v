module shiftl(i0,i1,shiftl);
input [31:0] i0,i1;
output [31:0] shiftl;


assign shiftl = i0<<1;

endmodule