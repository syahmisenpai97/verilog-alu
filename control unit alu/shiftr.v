module shiftr(i0,i1,shiftr);
input [31:0] i0,i1;
output [31:0] shiftr;


assign shiftr = i0>>1;

endmodule