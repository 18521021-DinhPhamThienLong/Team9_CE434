`timescale 1ns / 1ps


module mux_g #(parameter In_d_W=16*32, S_W=4)(
input [In_d_W-1:0] A, 
input [S_W-1:0] S,
output [(In_d_W/(2**S_W))-1:0] Y 
);
parameter Out_d_W=In_d_W/(2**S_W);
wire [Out_d_W-1:0] W [0:(2**S_W)-1];
generate
genvar i;
for(i=0; i<(2**S_W); i=i+1)
begin:gen10
    assign W[i]=A[ (i*Out_d_W)+Out_d_W-1 : i*Out_d_W ];
end
endgenerate

assign Y=W[S];

endmodule
