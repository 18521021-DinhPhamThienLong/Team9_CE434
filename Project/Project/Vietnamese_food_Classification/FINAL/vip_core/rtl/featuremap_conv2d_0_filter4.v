module featuremap_conv2d_0_filter4
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b10111001101111001110110110000111,   
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
        .k0(32'b00111100100001001000001110001100

),
        .k1(32'b10111101011011100110100010100000

),
        .k2(32'b00111110001111100011110001100011

),
        .k3(32'b10111110010011000001100010000100

),
        .k4(32'b00111101110010101110100000001110

),
        .k5(32'b00111101101110010111000110000111

),
        .k6(32'b10111101010001001110110010100111

),
        .k7(32'b00111110010100110110011001001010

),
        .k8(32'b00111110011111100010111111000010

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
        .k0(32'b10111101010010011101001101100111

),
        .k1(32'b10111110011101011100001011000111

),
        .k2(32'b10111100101011100001010010010110

),
        .k3(32'b00111110010100110100100011000110

),
        .k4(32'b10111110001001101101010110100111

),
        .k5(32'b10111110000010001101000111110001

),
        .k6(32'b00111110011101001010000101010111

),
        .k7(32'b10111100110010011010011001100000

),
        .k8(32'b00111110010001011000101111011101

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
        .k0(32'b00111110010000101100110011011101

),
        .k1(32'b10111010111111000110011010110001

),
        .k2(32'b10111110011110101010001000110010

),
        .k3(32'b10111101100100111010010100101011

),
        .k4(32'b10111110010000111001000000100101

),
        .k5(32'b10111101010110001000111100111110

),
        .k6(32'b10111110000100000011000101110100

),
        .k7(32'b00111101100000001010011011011011

),
        .k8(32'b10111101001001001100011001011100

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