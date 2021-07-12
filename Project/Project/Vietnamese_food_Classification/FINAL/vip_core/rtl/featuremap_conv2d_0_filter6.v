module featuremap_conv2d_0_filter6
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b10111000100000001000100000111110,   
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
        .k0(32'b00111101101011111101010011001011

),
        .k1(32'b10111101110010110111101111001111

),
        .k2(32'b10111110000001010011110001001011

),
        .k3(32'b00111110000110111110000010111100

),
        .k4(32'b00111101111110000110011000111001

),
        .k5(32'b10111110001011101110000110101100

),
        .k6(32'b00111110000011010110011000010011

),
        .k7(32'b10111110001110000100010011101101

),
        .k8(32'b00111110000001000011001011000111

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
        .k0(32'b00111110001001001101100110100010

),
        .k1(32'b00111110001100000110100111010101

),
        .k2(32'b10111110010110110010101001000110

),
        .k3(32'b00111110001111010110111100110001

),
        .k4(32'b10111110000011001011101000010110

),
        .k5(32'b00111110001011010111001010110011

),
        .k6(32'b00111110001011101000010000011100

),
        .k7(32'b00111100110001111111011001011101

),
        .k8(32'b10111101011000001011011101101011

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
        .k0(32'b10111101110100010000000001101110

),
        .k1(32'b00111110001101010101011110110001

),
        .k2(32'b10111110010111110101110010001111

),
        .k3(32'b00111110000110001000101101000001

),
        .k4(32'b10111110000100110010111000001110

),
        .k5(32'b10111101011110011110000011010010

),
        .k6(32'b00111101101000111100000010010111

),
        .k7(32'b10111101110000010100110001100101

),
        .k8(32'b10111101010110100100001001110110

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