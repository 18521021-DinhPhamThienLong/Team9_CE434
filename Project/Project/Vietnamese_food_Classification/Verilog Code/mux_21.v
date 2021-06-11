`timescale 1ns / 1ps

module mux_2X1 #(parameter In_d_W=32)(
    input [In_d_W-1:0] I0,
    input [In_d_W-1:0] I1,
    input Sel,
    output [In_d_W-1:0] Y
    );
    
    assign Y=(Sel==0)?I0:I1;
endmodule