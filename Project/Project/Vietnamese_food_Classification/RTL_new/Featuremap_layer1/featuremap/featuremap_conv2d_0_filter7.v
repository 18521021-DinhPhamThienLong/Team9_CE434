module featuremap_conv2d_0_filter7
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b10111011101001100011001110100111,
    parameter DEPTH = 4096,
    parameter WIDTH = 32
)(
    input clk,
    input rst, 

    input [DATA_WIDTH*3-1:0] data_in,
    input data_fifo_wren,

    output [DATA_WIDTH-1:0] data_out,
    output valid_out
);
    wire [DATA_WIDTH*3-1:0] data_fifo_out;
    wire [DATA_WIDTH-1:0] data_out_conv_R, data_out_conv_G, data_out_conv_B;
    wire data_fifo_empty, valid_in_adder, valid_in_adder_R, valid_in_adder_G, valid_in_adder_B, valid_in_adder_tmp;

    and a1(valid_in_adder_tmp, valid_in_adder_R, valid_in_adder_G);
    and a2(valid_in_adder, valid_in_adder_tmp, valid_in_adder_B);

FIFO_new #(
        .DATA_WIDTH(DATA_WIDTH), .DEPTH(DEPTH)
)fifo_inst(
        .data_out(data_fifo_out),
        .full(), .empty(data_fifo_empty),
        .data_in(data_in),
        .clk(clk), .rst(rst), .wr_req(data_fifo_wren), .rd_req(data_fifo_rden)
);

conv2D #(
        .DATA_WIDTH(DATA_WIDTH),
        .WIDTH(WIDTH+2),
        .k0(32'b10111011101011001010101000000110
),
        .k1(32'b00111110000110111100000001010111
),
        .k2(32'b00111101110101001010110101011001
),
        .k3(32'b00111110010110110100000100111010
),
        .k4(32'b10111100100101111010010100101010
),
        .k5(32'b00111110010000011111001010110110
),
        .k6(32'b10111110010001011010000110000100
),
        .k7(32'b00111110001011000010010000101000
),
        .k8(32'b00111101000110111000011001000001)
)conv2D_inst_R(
        .data_in(data_fifo_out[DATA_WIDTH-1:0]),
        .clk(clk), .rst(rst), .valid_in(~data_fifo_empty),
        .valid_out(valid_in_adder_R), .data_fifo_rden(data_fifo_rden),
        .data_out(data_out_conv_R)
);

conv2D #(
        .DATA_WIDTH(DATA_WIDTH),
        .WIDTH(WIDTH+2),
        .k0(32'b00111101101000001001001011100000
),
        .k1(32'b00111110001100000111101101110010
),
        .k2(32'b10111110010110101110001100100011
),
        .k3(32'b00111110010110111010001111110001
),
        .k4(32'b10111110010011111010100000010100
),
        .k5(32'b10111101011000100010111010111110
),
        .k6(32'b10111100111100010100111011000100
),
        .k7(32'b00111110010101010010111001010010
),
        .k8(32'b00111101100000100101010100100111)
)conv2D_inst_G(
        .data_in(data_fifo_out[DATA_WIDTH*2-1:DATA_WIDTH]),
        .clk(clk), .rst(rst), .valid_in(~data_fifo_empty),
        .valid_out(valid_in_adder_G), .data_fifo_rden(data_fifo_rden),
        .data_out(data_out_conv_G)
);

conv2D #(
        .DATA_WIDTH(DATA_WIDTH),
        .WIDTH(WIDTH+2),
        .k0(32'b10111101011001110111000010010010
),
        .k1(32'b10111110011101010110100000110100
),
        .k2(32'b00111100111111101111110010100110
),
        .k3(32'b10111101111110110111001010001101
),
        .k4(32'b00111110011010110000010011111111
),
        .k5(32'b10111100100001101001110001010011
),
        .k6(32'b00111101110000101001001111110010
),
        .k7(32'b00111101111011011010111011101110
),
        .k8(32'b10111110010111110101000110010111)
)conv2D_inst_B(
        .data_in(data_fifo_out[DATA_WIDTH*3-1:DATA_WIDTH*2]),
        .clk(clk), .rst(rst), .valid_in(~data_fifo_empty),
        .valid_out(valid_in_adder_B), .data_fifo_rden(data_fifo_rden),
        .data_out(data_out_conv_B)
);

add_bias #(
    .DATA_WIDTH(DATA_WIDTH),
    .bias(bias)
)(
    .data_out_conv_R(data_out_conv_R), .data_out_conv_G(data_out_conv_G), .data_out_conv_B(data_out_conv_B),
    .valid_in_adder(valid_in_adder), .clk(clk), .rst(rst),
    .data_out(data_out),
    .valid_out(valid_out)
);

endmodule
