module featuremap_conv2d_0_filter2
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b10111001001001111001110001111010,
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
        .k0(32'b00111100010101110111110001111111
),
        .k1(32'b10111101000011111111110110100011
),
        .k2(32'b10111110001100110000111111100010
),
        .k3(32'b00111101100000100010001111010010
),
        .k4(32'b10111110000111100110100111011010
),
        .k5(32'b10111010111010000111111100000000
),
        .k6(32'b00111110011111101010000100110000
),
        .k7(32'b00111110010011101001110111010110
),
        .k8(32'b10111110001110010101011000101100)
)conv2D_inst_R(
        .data_in(data_fifo_out[DATA_WIDTH-1:0]),
        .clk(clk), .rst(rst), .valid_in(~data_fifo_empty),
        .valid_out(valid_in_adder_R), .data_fifo_rden(data_fifo_rden),
        .data_out(data_out_conv_R)
);

conv2D #(
        .DATA_WIDTH(DATA_WIDTH),
        .WIDTH(WIDTH+2),
        .k0(32'b00111101110011101001111101010011
),
        .k1(32'b10111110010110100011000101111000
),
        .k2(32'b00111101101111011000100110010101
),
        .k3(32'b00111100010000111010111000011111
),
        .k4(32'b10111110010110101101111001101000
),
        .k5(32'b10111110011001000100101111001111
),
        .k6(32'b00111100001010000100101101010110
),
        .k7(32'b00111101111001110010001011111000
),
        .k8(32'b10111110001101100110100011101110)
)conv2D_inst_G(
        .data_in(data_fifo_out[DATA_WIDTH*2-1:DATA_WIDTH]),
        .clk(clk), .rst(rst), .valid_in(~data_fifo_empty),
        .valid_out(valid_in_adder_G), .data_fifo_rden(data_fifo_rden),
        .data_out(data_out_conv_G)
);

conv2D #(
        .DATA_WIDTH(DATA_WIDTH),
        .WIDTH(WIDTH+2),
        .k0(32'b10111110010111001110110000110100
),
        .k1(32'b10111110000100011111010001010110
),
        .k2(32'b00111110000100001110101001100101
),
        .k3(32'b10111110010110001111011010100100
),
        .k4(32'b10111110011000101101100001101101
),
        .k5(32'b00111101100111100000101100000000
),
        .k6(32'b00111011101110000011001000100010
),
        .k7(32'b10111110000110010011110110011111
),
        .k8(32'b10111101001111000010111000100100)
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
