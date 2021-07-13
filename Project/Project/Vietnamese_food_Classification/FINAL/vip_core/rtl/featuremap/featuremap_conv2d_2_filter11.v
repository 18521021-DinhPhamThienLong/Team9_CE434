module featuremap_conv2d_2_filter11
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b00111100001001111000001001100100
,   
    parameter WIDTH = 56
)(
    input clk,
    input rst, 

    input [DATA_WIDTH-1:0] data_in_channel0,
    input [DATA_WIDTH-1:0] data_in_channel1,
    input [DATA_WIDTH-1:0] data_in_channel2,
    input [DATA_WIDTH-1:0] data_in_channel3,
    input [DATA_WIDTH-1:0] data_in_channel4,
    input [DATA_WIDTH-1:0] data_in_channel5,
    input [DATA_WIDTH-1:0] data_in_channel6,
    input [DATA_WIDTH-1:0] data_in_channel7,
    
    input  data_fifo_empty0,
    input  data_fifo_empty1,
    input  data_fifo_empty2,
    input  data_fifo_empty3,
    input  data_fifo_empty4,
    input  data_fifo_empty5,
    input  data_fifo_empty6,
    input  data_fifo_empty7,

    output valid_out, rdreq,
    output [DATA_WIDTH-1:0] data_out
    
);
    wire [DATA_WIDTH-1:0] data_out_conv2d_channel0;
    wire [DATA_WIDTH-1:0] data_out_conv2d_channel1;
    wire [DATA_WIDTH-1:0] data_out_conv2d_channel2;
    wire [DATA_WIDTH-1:0] data_out_conv2d_channel3;
    wire [DATA_WIDTH-1:0] data_out_conv2d_channel4;
    wire [DATA_WIDTH-1:0] data_out_conv2d_channel5;
    wire [DATA_WIDTH-1:0] data_out_conv2d_channel6;
    wire [DATA_WIDTH-1:0] data_out_conv2d_channel7;

    wire valid_in_adder;

conv2D #(
        .DATA_WIDTH(DATA_WIDTH),
        .WIDTH(WIDTH+2),
        .k0(32'b10111101101001011101111000110000
),
        .k1(32'b00111101001011111110011010110100
),
        .k2(32'b00111101101101010010011011010001
),
        .k3(32'b00111101000001101000101001101010
),
        .k4(32'b10111110000000010001110011000110
),
        .k5(32'b10111110000100011110111101010111
),
        .k6(32'b00111101100001000000001111000011
),
        .k7(32'b00111101101000010111101111001111
),
        .k8(32'b00111101100010100101000011010111
)    
)conv2D_inst_0(
        .data_in(data_in_channel0),
        .clk(clk), .rst(rst), .valid_in(~data_fifo_empty0),
        .valid_out(), .rdreq(rdreq),
        .data_out(data_out_conv2d_channel0)
);

conv2D #(
        .DATA_WIDTH(DATA_WIDTH),
        .WIDTH(WIDTH+2),
        .k0(32'b00111101101000010010110001101000
),
        .k1(32'b00111011000001111110001111011110
),
        .k2(32'b00111101001101100010001101010000
),
        .k3(32'b00111101100111001000110000011100
),
        .k4(32'b10111101010111110000100111110000
),
        .k5(32'b10111101010101110110011001100110
),
        .k6(32'b00111101110010111000010110011111
),
        .k7(32'b00111100111101000000001001000000
),
        .k8(32'b00111011111111001010100000000100
)  
)conv2D_inst_1(
        .data_in(data_in_channel1),
        .clk(clk), .rst(rst), .valid_in(~data_fifo_empty1),
        .valid_out(), .rdreq(rdreq),
        .data_out(data_out_conv2d_channel1)
);

conv2D #(
        .DATA_WIDTH(DATA_WIDTH),
        .WIDTH(WIDTH+2),
        .k0(32'b00111101100011111011111100001111
),
        .k1(32'b00111101111110001100111110000101
),
        .k2(32'b00111110000110111110000100111100
),
        .k3(32'b00111101110111101100111100101001
),
        .k4(32'b10111101000011000011001001011001
),
        .k5(32'b10111101110111001001011101011000
),
        .k6(32'b10111110000000111011000001001101
),
        .k7(32'b10111110000000000100110110110101
),
        .k8(32'b00111101111111010001101110110100
)  
)conv2D_inst_2(
        .data_in(data_in_channel2),
        .clk(clk), .rst(rst), .valid_in(~data_fifo_empty2),
        .valid_out(valid_in_adder), .rdreq(rdreq),
        .data_out(data_out_conv2d_channel2)
);

conv2D #(
        .DATA_WIDTH(DATA_WIDTH),
        .WIDTH(WIDTH+2),
        .k0(32'b00111110000001011101010010001000
),
        .k1(32'b00111101100101101010100100010101
),
        .k2(32'b10111101111001000010111101111011
),
        .k3(32'b10111101111100111001111110000000
),
        .k4(32'b10111101100111111000010101111111
),
        .k5(32'b10111101101000110001001010100101
),
        .k6(32'b10111101111111000111111001001100
),
        .k7(32'b10111110000001101000011010100001
),
        .k8(32'b00111011101101111101001100110110
)  
)conv2D_inst_3(
        .data_in(data_in_channel3),
        .clk(clk), .rst(rst), .valid_in(~data_fifo_empty3),
        .valid_out(valid_in_adder), .rdreq(rdreq),
        .data_out(data_out_conv2d_channel3)
);

conv2D #(
        .DATA_WIDTH(DATA_WIDTH),
        .WIDTH(WIDTH+2),
        .k0(32'b10111100011110100010010110010111
),
        .k1(32'b00111110000010100010001110000101
),
        .k2(32'b10111101011010110101000100111111
),
        .k3(32'b00111101110000111001101000100101
),
        .k4(32'b10111101011111010000001110110010
),
        .k5(32'b10111101110111010011001001110010
),
        .k6(32'b00111101010010110010101010111110
),
        .k7(32'b00111101100000001100111100001000
),
        .k8(32'b10111101001110011110110101111110
)  
)conv2D_inst_4(
        .data_in(data_in_channel4),
        .clk(clk), .rst(rst), .valid_in(~data_fifo_empty4),
        .valid_out(valid_in_adder), .rdreq(rdreq),
        .data_out(data_out_conv2d_channel4)
);

conv2D #(
        .DATA_WIDTH(DATA_WIDTH),
        .WIDTH(WIDTH+2),
        .k0(32'b00111101100011001011010100001001
),
        .k1(32'b00111110000111011000101110111010
),
        .k2(32'b00111101101001001001111000001010
),
        .k3(32'b10111101010110101001001111100101
),
        .k4(32'b10111110001001110111100001011110
),
        .k5(32'b10111101001110111000101011011000
),
        .k6(32'b00111110000110101111111110000101
),
        .k7(32'b10111101101110000011111001110001
),
        .k8(32'b00111101100100011111110101110110
)  
)conv2D_inst_5(
        .data_in(data_in_channel5),
        .clk(clk), .rst(rst), .valid_in(~data_fifo_empty5),
        .valid_out(valid_in_adder), .rdreq(rdreq),
        .data_out(data_out_conv2d_channel5)
);

conv2D #(
        .DATA_WIDTH(DATA_WIDTH),
        .WIDTH(WIDTH+2),
        .k0(32'b00111101011000000111001011110110
),
        .k1(32'b10111101111101110000011111101110
),
        .k2(32'b10111011110001110000100001101101
),
        .k3(32'b10111101011100001110000011100001
),
        .k4(32'b00111101000100011111000111010100
),
        .k5(32'b10111101011011001111000010010111
),
        .k6(32'b10111101101011110101000010110011
),
        .k7(32'b00111110000000000111110011001011
),
        .k8(32'b10111110000001000111101011001111
)  
)conv2D_inst_6(
        .data_in(data_in_channel6),
        .clk(clk), .rst(rst), .valid_in(~data_fifo_empty6),
        .valid_out(valid_in_adder), .rdreq(rdreq),
        .data_out(data_out_conv2d_channel6)
);

conv2D #(
        .DATA_WIDTH(DATA_WIDTH),
        .WIDTH(WIDTH+2),
        .k0(32'b10111100010000100011011001000110
),
        .k1(32'b10111110000010101111000100101011
),
        .k2(32'b10111101011010110100100010100111
),
        .k3(32'b00111101010000011010000000001111
),
        .k4(32'b00111101111011011101101100110111
),
        .k5(32'b10111101111001110000000101101000
),
        .k6(32'b00111101000000001010101001000110
),
        .k7(32'b10111100000110011101000100001110
),
        .k8(32'b10111001111101111101011100010111
)  
)conv2D_inst_7(
        .data_in(data_in_channel7),
        .clk(clk), .rst(rst), .valid_in(~data_fifo_empty7),
        .valid_out(valid_in_adder), .rdreq(rdreq),
        .data_out(data_out_conv2d_channel7)
);

add_bias_8_channel #(
        .DATA_WIDTH(DATA_WIDTH),
        .bias(bias)
)add_bias_8_channel_inst(
        .data_out_conv2d_channel0(data_out_conv2d_channel0),
        .data_out_conv2d_channel1(data_out_conv2d_channel1),
        .data_out_conv2d_channel2(data_out_conv2d_channel2),
        .data_out_conv2d_channel3(data_out_conv2d_channel3),
        .data_out_conv2d_channel4(data_out_conv2d_channel4),
        .data_out_conv2d_channel5(data_out_conv2d_channel5),
        .data_out_conv2d_channel6(data_out_conv2d_channel6),
        .data_out_conv2d_channel7(data_out_conv2d_channel7),
        .valid_in_adder(valid_in_adder), .clk(clk), rst(rst),
        .data_out(data_out),
        .valid_out(valid_out)
);

endmodule