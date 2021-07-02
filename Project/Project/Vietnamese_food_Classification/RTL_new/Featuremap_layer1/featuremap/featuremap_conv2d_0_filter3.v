module featuremap_conv2d_0_filter3
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b10111011101100111000100011000100,
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
        .k0(32'b10111110011011001000011100111111
),
        .k1(32'b10111110011010110100000010000010
),
        .k2(32'b00111100010011010101001001011101
),
        .k3(32'b00111100010010010001011101000010
),
        .k4(32'b10111110010001100000111000110110
),
        .k5(32'b10111101101101010011010011010101
),
        .k6(32'b00111101111101100010001100101100
),
        .k7(32'b10111110000100000000101111110010
),
        .k8(32'b10111110001100111101101110010010)
)conv2D_inst_R(
        .data_in(data_fifo_out[DATA_WIDTH-1:0]),
        .clk(clk), .rst(rst), .valid_in(~data_fifo_empty),
        .valid_out(valid_in_adder_R), .data_fifo_rden(data_fifo_rden),
        .data_out(data_out_conv_R)
);

conv2D #(
        .DATA_WIDTH(DATA_WIDTH),
        .WIDTH(WIDTH+2),
        .k0(32'b00111100110011000100100100001001
),
        .k1(32'b00111101100001010110000111101010
),
        .k2(32'b00111101100000100010101101100100
),
        .k3(32'b00111110001011011010101101101000
),
        .k4(32'b10111110011001010001101110010100
),
        .k5(32'b10111110001001110000110100001110
),
        .k6(32'b10111011101100001010011011111010
),
        .k7(32'b00111110010011100100110110100010
),
        .k8(32'b00111110001111011010110101010011)
)conv2D_inst_G(
        .data_in(data_fifo_out[DATA_WIDTH*2-1:DATA_WIDTH]),
        .clk(clk), .rst(rst), .valid_in(~data_fifo_empty),
        .valid_out(valid_in_adder_G), .data_fifo_rden(data_fifo_rden),
        .data_out(data_out_conv_G)
);

conv2D #(
        .DATA_WIDTH(DATA_WIDTH),
        .WIDTH(WIDTH+2),
        .k0(32'b10111110010001100010111011110000
),
        .k1(32'b10111101111011000010100011001101
),
        .k2(32'b10111110011011110011000101001010
),
        .k3(32'b10111100101100011000111110110101
),
        .k4(32'b00111101101001001111110001101100
),
        .k5(32'b00111110010010111100011000111001
),
        .k6(32'b00111100100010100000000000110000
),
        .k7(32'b10111101101011110110101101100010
),
        .k8(32'b00111110011010011011000011111110)
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
