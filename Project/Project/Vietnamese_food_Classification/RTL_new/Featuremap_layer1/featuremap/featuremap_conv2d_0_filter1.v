module featuremap_conv2d_0_filter1
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b00111011111110110000001010100010,
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
        .k0(32'b00111101100110111101111000000001
),
        .k1(32'b00111100111000111101001101001110
),
        .k2(32'b10111110011001001011110011110011
),
        .k3(32'b00111101100010110100101011100011
),
        .k4(32'b00111101101100101101001010011010
),
        .k5(32'b00111101000111010110111111011100
),
        .k6(32'b00111101010001011010011110110010
),
        .k7(32'b10111110000100011010111011111010
),
        .k8(32'b10111110001001111010010011101001)
)conv2D_inst_R(
        .data_in(data_fifo_out[DATA_WIDTH-1:0]),
        .clk(clk), .rst(rst), .valid_in(~data_fifo_empty),
        .valid_out(valid_in_adder_R), .data_fifo_rden(data_fifo_rden),
        .data_out(data_out_conv_R)
);

conv2D #(
        .DATA_WIDTH(DATA_WIDTH),
        .WIDTH(WIDTH+2),
        .k0(32'b10111101111000111010110100000111
),
        .k1(32'b00111101111100111101111101000010
),
        .k2(32'b00111110010001110001101110000110
),
        .k3(32'b00111100100110100100110010010001
),
        .k4(32'b00111101110110110110101000100110
),
        .k5(32'b00111110000010001110010110000011
),
        .k6(32'b10111101110101010001101001110011
),
        .k7(32'b00111110011110010001010000010001
),
        .k8(32'b00111101111111001111101110110110)
)conv2D_inst_G(
        .data_in(data_fifo_out[DATA_WIDTH*2-1:DATA_WIDTH]),
        .clk(clk), .rst(rst), .valid_in(~data_fifo_empty),
        .valid_out(valid_in_adder_G), .data_fifo_rden(data_fifo_rden),
        .data_out(data_out_conv_G)
);

conv2D #(
        .DATA_WIDTH(DATA_WIDTH),
        .WIDTH(WIDTH+2),
        .k0(32'b10111101110110011111100110000101
),
        .k1(32'b10111101110000000100100001001111
),
        .k2(32'b10111110001100110000111000011100
),
        .k3(32'b10111110000011111011101001111010
),
        .k4(32'b10111110000111001001111111101100
),
        .k5(32'b10111110000011011111010010101101
),
        .k6(32'b00111110000010100011100100000010
),
        .k7(32'b00111110000001011001000000111000
),
        .k8(32'b00111101011010000010011000100100)
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
