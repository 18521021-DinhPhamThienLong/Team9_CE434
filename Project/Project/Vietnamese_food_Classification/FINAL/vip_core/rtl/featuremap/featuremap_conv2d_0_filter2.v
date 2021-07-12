`include "add_bias.v"
`include "conv2D.v"
module featuremap_conv2d_0_filter2
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b10111011000001101101100000011011,   
    parameter WIDTH = 112
)(
    input clk,
    input rst, 

    input [DATA_WIDTH*3-1:0] data_in,
    input  data_fifo_empty,

    output valid_out, rdreq,
    output [DATA_WIDTH-1:0] data_out
    
);
    wire [DATA_WIDTH-1:0] data_out_conv_R, data_out_conv_G, data_out_conv_B;
    wire valid_in_adder;

conv2D #(
        .DATA_WIDTH(DATA_WIDTH),
        .WIDTH(WIDTH+2),
        .k0(32'b00111101000100011001101100001110

),
        .k1(32'b10111101000000100000101000111001

),
        .k2(32'b00111100100011111000110111000001

),
        .k3(32'b10111110000101010010110111010100

),
        .k4(32'b00111110010000001100000000101101

),
        .k5(32'b10111110001110100100001001110010

),
        .k6(32'b00111100101011010000000010001011

),
        .k7(32'b10111101101001001101001110110000

),
        .k8(32'b10111100101110100011011101111001

)    
)conv2D_inst_0(
        .data_in(data_in[DATA_WIDTH*3-1:DATA_WIDTH*2]),
        .clk(clk), .rst(rst), .valid_in(~data_fifo_empty),
        .valid_out(), .rdreq(rdreq),
        .data_out(data_out_conv_B)
);

conv2D #(
        .DATA_WIDTH(DATA_WIDTH),
        .WIDTH(WIDTH+2),
        .k0(32'b00111100100011001111101000001100

),
        .k1(32'b10111110010001011011110110011110

),
        .k2(32'b10111100011010011111001000010010

),
        .k3(32'b10111110001000101111001110111111

),
        .k4(32'b10111110001001000100010000001110

),
        .k5(32'b10111110010111111111011101000000

),
        .k6(32'b10111110011100011010011010000110

),
        .k7(32'b00111110010000100011100111100010

),
        .k8(32'b10111110000101110011101100000010

)  
)conv2D_inst_1(
        .data_in(data_in[DATA_WIDTH*2-1:DATA_WIDTH]),
        .clk(clk), .rst(rst), .valid_in(~data_fifo_empty),
        .valid_out(), .rdreq(rdreq),
        .data_out(data_out_conv_G)
);

conv2D #(
        .DATA_WIDTH(DATA_WIDTH),
        .WIDTH(WIDTH+2),
        .k0(32'b00111110000100000011110100101001

),
        .k1(32'b00111101110101001001001001000110

),
        .k2(32'b10111110000101000010100111011001

),
        .k3(32'b00111100011100010001000101000111

),
        .k4(32'b10111100000110101111000101000100

),
        .k5(32'b10111110001100011010101111110111

),
        .k6(32'b10111110000101111110000011010101

),
        .k7(32'b10111100010000100100110000100100

),
        .k8(32'b00111101100110001000101011101110

)  
)conv2D_inst_2(
        .data_in(data_in[DATA_WIDTH-1:0]),
        .clk(clk), .rst(rst), .valid_in(~data_fifo_empty),
        .valid_out(valid_in_adder), .rdreq(rdreq),
        .data_out(data_out_conv_R)
);

add_bias #(
    .DATA_WIDTH(DATA_WIDTH),
    .bias(bias)
)add_bias_inst(
    .data_out_conv_R(data_out_conv_R), .data_out_conv_G(data_out_conv_G), .data_out_conv_B(data_out_conv_B),
    .valid_in_adder(valid_in_adder), .clk(clk), .rst(rst),
    .data_out(data_out),
    .valid_out(valid_out)
);

endmodule