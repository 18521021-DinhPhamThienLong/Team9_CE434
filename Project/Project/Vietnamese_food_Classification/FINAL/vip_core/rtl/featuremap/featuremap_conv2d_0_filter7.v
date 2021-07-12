`include "add_bias.v"
`include "conv2D.v"
module featuremap_conv2d_0_filter7
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b10111011001010010010100111001011,   
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
        .k0(32'b10111100011001011010111101101000

),
        .k1(32'b00111101110011110110101100000101

),
        .k2(32'b10111110011000001000011101111110

),
        .k3(32'b00111110011100100010101100100000

),
        .k4(32'b00111110001001100111011111000011

),
        .k5(32'b00111100111101101101001111100101

),
        .k6(32'b00111110001111100100011000110110

),
        .k7(32'b10111110010110110000110100011001

),
        .k8(32'b00111110000101110110000100100111

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
        .k0(32'b00111101001111111111111010101100

),
        .k1(32'b10111110011000011001111101011011

),
        .k2(32'b10111101111101001010000001111010

),
        .k3(32'b00111101100001001000110101011101

),
        .k4(32'b00111110001100110110000011010001

),
        .k5(32'b00111100111111010100010101101110

),
        .k6(32'b00111101100110010110101011110101

),
        .k7(32'b10111100101110001100111100110100

),
        .k8(32'b10111101110111111101011001111110

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
        .k0(32'b00111101101110100100010101110111

),
        .k1(32'b00111100111000110101001110111101

),
        .k2(32'b00111101011011000111101111111100

),
        .k3(32'b00111100000010010000110011111101

),
        .k4(32'b10111101011000011000110001010011

),
        .k5(32'b10111100101011111101001010101111

),
        .k6(32'b00111101101011011110110101000010

),
        .k7(32'b10111101110010010111010101101011

),
        .k8(32'b10111101101100010100000010000100

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