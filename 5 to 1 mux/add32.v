module add32(i0,i1,sum);
input [31:0] i0,i1;
output [31:0] sum;


assign sum = i0 + i1;

endmodule