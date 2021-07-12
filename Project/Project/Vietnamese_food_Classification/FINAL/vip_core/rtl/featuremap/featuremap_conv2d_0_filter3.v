`include "add_bias.v"
`include "conv2D.v"
module featuremap_conv2d_0_filter3
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b00111100000101000001010001010111,   
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
        .k0(32'b10111110001010110011100010101111

),
        .k1(32'b10111110010101001100100010000010

),
        .k2(32'b10111110001100011111101010111110

),
        .k3(32'b10111101011110001001111011110100

),
        .k4(32'b10111110000001000111100111101010

),
        .k5(32'b00111110011011001011000010111111

),
        .k6(32'b10111101111110000110011010001000

),
        .k7(32'b00111101110011110110101011001000

),
        .k8(32'b00111110010101001010010111110011

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
        .k0(32'b10111101110110010001110001010110

),
        .k1(32'b00111110010110101000001000010010

),
        .k2(32'b00111101001001111110010011101011

),
        .k3(32'b00111110010010001111010011001000

),
        .k4(32'b00111110001110001010010101111011

),
        .k5(32'b00111101110101101101110101101111

),
        .k6(32'b00111100110011111110011100010010

),
        .k7(32'b00111101000110011100010001111010

),
        .k8(32'b00111101000111111010111100111000

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
        .k0(32'b10111011011101010100001000101000

),
        .k1(32'b10111100001010000100110011101101

),
        .k2(32'b00111110001001111000110110011000

),
        .k3(32'b00111110000011010000110000010110

),
        .k4(32'b10111110000111110101110111111100

),
        .k5(32'b10111001110101110000001101110000

),
        .k6(32'b10111110000101010101100001101010

),
        .k7(32'b10111100110011110000010001000100

),
        .k8(32'b10111110000110010100101010100111

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