module featuremap_conv2d_0_filter1
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b00111100011101011001010110100000,   
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
        .k0(32'b00111101001011100110100111010111

),
        .k1(32'b10111101101111101100011000000111

),
        .k2(32'b10111101111110100100101101110100

),
        .k3(32'b00111110011110101100100110000111

),
        .k4(32'b10111110000110100000000110101110

),
        .k5(32'b10111110000110110110100010000110

),
        .k6(32'b00111011111110001101111010111110

),
        .k7(32'b10111101100001000010111010110000

),
        .k8(32'b10111101111101000100111010011010

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
        .k0(32'b00111101101110001111101101001111

),
        .k1(32'b00111101110100110001110111010100

),
        .k2(32'b00111110011011111000101111001111

),
        .k3(32'b10111110000010011000111100100010

),
        .k4(32'b00111110001000111100111101000000

),
        .k5(32'b10111101010110001011111101001101

),
        .k6(32'b10111110001010111100011111110001

),
        .k7(32'b00111110011001010101110011010100

),
        .k8(32'b00111110000000111100110011001011

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
        .k0(32'b00111110010000111010000101011111

),
        .k1(32'b00111101001110001010000111011011

),
        .k2(32'b10111100110011001001011110110001

),
        .k3(32'b00111101100101101010101110111110

),
        .k4(32'b10111100010010100110110111010111

),
        .k5(32'b10111110010100001100001000100110

),
        .k6(32'b10111101111100000011111001100001

),
        .k7(32'b10111101101100011100100100110010

),
        .k8(32'b10111101100110011111100101100000

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