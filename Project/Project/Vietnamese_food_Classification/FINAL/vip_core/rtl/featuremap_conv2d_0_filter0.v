module featuremap_conv2d_0_filter0
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b00111100000010001000111111010110,   
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
        .k0(32'b10111110000110011111101111110001

),
        .k1(32'b10111110001010011110001110000110

),
        .k2(32'b00111101001100110100000001110100

),
        .k3(32'b00111100000111000001010110010100

),
        .k4(32'b10111101100101010011111110100000

),
        .k5(32'b00111110010001110000001111011011

),
        .k6(32'b10111110010111000000111011101110

),
        .k7(32'b00111110000001110000100100110010

),
        .k8(32'b10111110000010001110001111100110

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
        .k0(32'b00111010111000011011100001101101

),
        .k1(32'b00111101110101100010101111110111

),
        .k2(32'b10111101100100011110110011100110

),
        .k3(32'b00111101111100011001110001001111

),
        .k4(32'b10111110000000000001101010100010

),
        .k5(32'b00111101100110010010000111011010

),
        .k6(32'b00111101110000011111110010100000

),
        .k7(32'b00111101001100110110000010011110

),
        .k8(32'b00111101111111100110111000001100

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
        .k0(32'b00111101110001111001101010011100

),
        .k1(32'b10111110010010100001011101001010

),
        .k2(32'b00111110011111101011100001110101

),
        .k3(32'b10111101000000010100010100001011

),
        .k4(32'b10111101001110111011000101010111

),
        .k5(32'b00111100101011000101000111110010

),
        .k6(32'b10111010001101011110001101001110

),
        .k7(32'b00111110010110101001111000000100

),
        .k8(32'b10111110001111101111101000000100

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