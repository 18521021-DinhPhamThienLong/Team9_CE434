module featuremap_conv2d_0_filter4
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b10111100010000001101100001000111,
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
        .k0(32'b10111101010110101011110111111011
),
        .k1(32'b10111110011101111011110100000100
),
        .k2(32'b10111110100001001101101011111110
),
        .k3(32'b10111110001001011010110111101001
),
        .k4(32'b10111100110000001000000010110100
),
        .k5(32'b00111110001101100000100011001110
),
        .k6(32'b10111101100011101001011100100110
),
        .k7(32'b10111100011111011101101111111111
),
        .k8(32'b10111101111000110010000001001000)
)conv2D_inst_R(
        .data_in(data_fifo_out[DATA_WIDTH-1:0]),
        .clk(clk), .rst(rst), .valid_in(~data_fifo_empty),
        .valid_out(valid_in_adder_R), .data_fifo_rden(data_fifo_rden),
        .data_out(data_out_conv_R)
);

conv2D #(
        .DATA_WIDTH(DATA_WIDTH),
        .WIDTH(WIDTH+2),
        .k0(32'b10111110000000011101011101100000
),
        .k1(32'b10111101001110010011110101111000
),
        .k2(32'b10111101010001001011001100110011
),
        .k3(32'b10111110011000011001000101001111
),
        .k4(32'b10111100110000010110100011010100
),
        .k5(32'b10111100010000000001100011000101
),
        .k6(32'b00111110000011011001110011001100
),
        .k7(32'b10111101110100110001000100110010
),
        .k8(32'b10111110011101011101011000111111)
)conv2D_inst_G(
        .data_in(data_fifo_out[DATA_WIDTH*2-1:DATA_WIDTH]),
        .clk(clk), .rst(rst), .valid_in(~data_fifo_empty),
        .valid_out(valid_in_adder_G), .data_fifo_rden(data_fifo_rden),
        .data_out(data_out_conv_G)
);

conv2D #(
        .DATA_WIDTH(DATA_WIDTH),
        .WIDTH(WIDTH+2),
        .k0(32'b10111110000011110111101001001101
),
        .k1(32'b00111100100100100011001011111000
),
        .k2(32'b10111101101011001001001101101111
),
        .k3(32'b10111101111111010111011101011001
),
        .k4(32'b00111101111111000110110111110111
),
        .k5(32'b00111110001011011000110001111000
),
        .k6(32'b10111101110011111101110100101010
),
        .k7(32'b10111100011100100011000101101010
),
        .k8(32'b00111110000001001110010111110111)
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
