module mul16(i0,i1,prod);
input [15:0] i0,i1;
output [31:0] prod;

assign prod = i0 * i1;

endmodule