module featuremap_conv2d_0_filter0
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b00111011110110111110111011001001,
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
        .k0(32'b00111101111010010111101101011111
),
        .k1(32'b00111110010000000011110110001011
),
        .k2(32'b10111110011100110010010111100111
),
        .k3(32'b10111101000101111111011011110101
),
        .k4(32'b00111100000001010111011111001100
),
        .k5(32'b10111110000001000111111010000111
),
        .k6(32'b00111110010010111101101111111000
),
        .k7(32'b10111101101000001111101000111000
),
        .k8(32'b10111101001110111010100111011111)
)conv2D_inst_R(
        .data_in(data_fifo_out[DATA_WIDTH-1:0]),
        .clk(clk), .rst(rst), .valid_in(~data_fifo_empty),
        .valid_out(valid_in_adder_R), .data_fifo_rden(data_fifo_rden),
        .data_out(data_out_conv_R)
);

conv2D #(
        .DATA_WIDTH(DATA_WIDTH),
        .WIDTH(WIDTH+2),
        .k0(32'b10111101110110110111011001111111
),
        .k1(32'b00111100101010011010001000101000
),
        .k2(32'b10111101010101010100000111010010
),
        .k3(32'b10111101100111100101001101110011
),
        .k4(32'b10111110010010100111111101100101
),
        .k5(32'b00111101101000111111011010100101
),
        .k6(32'b00111101100001001110000101111011
),
        .k7(32'b00111101110101110101000111010011
),
        .k8(32'b10111101111110010111001011100111)
)conv2D_inst_G(
        .data_in(data_fifo_out[DATA_WIDTH*2-1:DATA_WIDTH]),
        .clk(clk), .rst(rst), .valid_in(~data_fifo_empty),
        .valid_out(valid_in_adder_G), .data_fifo_rden(data_fifo_rden),
        .data_out(data_out_conv_G)
);

conv2D #(
        .DATA_WIDTH(DATA_WIDTH),
        .WIDTH(WIDTH+2),
        .k0(32'b00111101110110011111100110000101
),
        .k1(32'b00111101110000000100100001001111
),
        .k2(32'b00111110001100110000111000011100
),
        .k3(32'b00111110000011111011101001111010
),
        .k4(32'b10111110000111001001111111101100
),
        .k5(32'b00111110000011011111010010101101
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
)add_bias_inst(
    .data_out_conv_R(data_out_conv_R), .data_out_conv_G(data_out_conv_G), .data_out_conv_B(data_out_conv_B),
    .valid_in_adder(valid_in_adder), .clk(clk), .rst(rst),
    .data_out(data_out),
    .valid_out(valid_out)
);

endmodule
