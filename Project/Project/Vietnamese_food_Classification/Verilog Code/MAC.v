`timescale 1ns / 1ps
module MAC #(parameter I_W=32)(
    input clk,
    input rst,
    input clr,
    input en_MAC,
    input [I_W-1:0] A,
    input [I_W-1:0] B,
    input en_MAC_out,
    output reg [I_W-1:0] Y
    );
    reg [I_W-1:0] temp1,temp2;
    wire [I_W-1:0] Sum,Out;
    
    Floating_Point_Adder inst_adder(Sum, temp2, Out);
    Floating_Point_Multiplier inst_multi(Out, A, B);
    
    always@(posedge clk)
    begin
    if(rst==0) begin temp1<=0; temp2<=0; Y<=0; end
    
    else if(clr==1) begin temp1<=0; temp2<=0; Y<=0; end
    
    else if(rst==1 & clr==0) begin
    case({en_MAC,en_MAC_out})
    2'b00: begin temp1<=0; temp2<=Sum; Y<=0; end
    2'b01: begin temp1<=0; temp2<=Sum; Y<=temp2; end
    2'b10: begin temp1<=Out;  temp2<=Sum; Y<=0; end
    2'b11: begin temp1<=Out;  temp2<=Sum; Y<=temp2; end
    endcase
    end
    end
endmodule
