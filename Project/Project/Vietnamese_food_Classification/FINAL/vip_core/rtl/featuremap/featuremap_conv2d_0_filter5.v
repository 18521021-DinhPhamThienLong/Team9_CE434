`include "add_bias.v"
`include "conv2D.v"
module featuremap_conv2d_0_filter5
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b00111101000010001010001011000101,   
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
        .k0(32'b10111101101011010010011001110010

),
        .k1(32'b00111101110001000111101001011100

),
        .k2(32'b10111101101100000011011000000100

),
        .k3(32'b10111110010101010010100111110011

),
        .k4(32'b00111110100000101001100110111000

),
        .k5(32'b10111110001110110110100001010100

),
        .k6(32'b00111101101011001011110101111110

),
        .k7(32'b10111100110101100001001110001011

),
        .k8(32'b00111110000100110011100011101011

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
        .k0(32'b10111101100001100100010011000110

),
        .k1(32'b00111110010011101101000000011010

),
        .k2(32'b00111100111111011100111000010011

),
        .k3(32'b10111110000101100010110001000111

),
        .k4(32'b10111110010010000010001000010001

),
        .k5(32'b00111101100010001110101101101011

),
        .k6(32'b00111100100111010111010100100101

),
        .k7(32'b10111101110011101000010001100100

),
        .k8(32'b00111110000011111010010010010011

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
        .k0(32'b10111110001010011011100010000111

),
        .k1(32'b00111101111110010111100000101111

),
        .k2(32'b10111101011100001000001101100110

),
        .k3(32'b00111101100110000000111001001011

),
        .k4(32'b00111100101011111001011110010100

),
        .k5(32'b10111110001011110000111010000110

),
        .k6(32'b10111101110100110000001001011001

),
        .k7(32'b00111101010100000101000100011110

),
        .k8(32'b00111101001011001011111001110110

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