module featuremap_conv2d_4_filter3
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b00111011100101010010010001110000
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
    input [DATA_WIDTH-1:0] data_in_channel8,
    input [DATA_WIDTH-1:0] data_in_channel9,
    input [DATA_WIDTH-1:0] data_in_channel10,
    input [DATA_WIDTH-1:0] data_in_channel11,
    input [DATA_WIDTH-1:0] data_in_channel12,
    input [DATA_WIDTH-1:0] data_in_channel13,
    input [DATA_WIDTH-1:0] data_in_channel14,
    input [DATA_WIDTH-1:0] data_in_channel15,
    
    input  data_fifo_empty0,
    input  data_fifo_empty1,
    input  data_fifo_empty2,
    input  data_fifo_empty3,
    input  data_fifo_empty4,
    input  data_fifo_empty5,
    input  data_fifo_empty6,
    input  data_fifo_empty7,
    input  data_fifo_empty8,
    input  data_fifo_empty9,
    input  data_fifo_empty10,
    input  data_fifo_empty11,
    input  data_fifo_empty12,
    input  data_fifo_empty13,
    input  data_fifo_empty14,
    input  data_fifo_empty15,

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
    wire [DATA_WIDTH-1:0] data_out_conv2d_channel8;
    wire [DATA_WIDTH-1:0] data_out_conv2d_channel9;
    wire [DATA_WIDTH-1:0] data_out_conv2d_channel10;
    wire [DATA_WIDTH-1:0] data_out_conv2d_channel11;
    wire [DATA_WIDTH-1:0] data_out_conv2d_channel12;
    wire [DATA_WIDTH-1:0] data_out_conv2d_channel13;
    wire [DATA_WIDTH-1:0] data_out_conv2d_channel14;
    wire [DATA_WIDTH-1:0] data_out_conv2d_channel15;

    wire valid_in_adder;

conv2D #(
        .DATA_WIDTH(DATA_WIDTH),
        .WIDTH(WIDTH+2),
        .k0(32'b10111101100001101010010100001111
),
        .k1(32'b10111011100010110110101011010010
),
        .k2(32'b00111101000110100100111000000001
),
        .k3(32'b10111100100111010100010111100101
),
        .k4(32'b00111110000001000010101000111001
),
        .k5(32'b10111101000110111010100100111101
),
        .k6(32'b10111101111110010110011000000110
),
        .k7(32'b10111101101110000000011101010001
),
        .k8(32'b10111011001101000010011111100000
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
        .k0(32'b10111110000011110101111000100110
),
        .k1(32'b10111100100110000111110101011011
),
        .k2(32'b10111101111101110010011000010110
),
        .k3(32'b00111101111010000000101011101101
),
        .k4(32'b00111101011111010010011011110000
),
        .k5(32'b10111101100001101000010110100010
),
        .k6(32'b10111100001101100001001100000011
),
        .k7(32'b00111101100010100100100111001011
),
        .k8(32'b00111011111111111111000111110000
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
        .k0(32'b10111100100000100011110101011010
),
        .k1(32'b00111110000111000011011000000111
),
        .k2(32'b00111101110010111101011000010000
),
        .k3(32'b10111101000001100000101001010111
),
        .k4(32'b00111101110110101100111011110111
),
        .k5(32'b00111110000000001001101000011001
),
        .k6(32'b10111101001101100001000010010111
),
        .k7(32'b10111101101101101101011010100110
),
        .k8(32'b10111101101100001000001011100010
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
        .k0(32'b10111100011011101010010000100000
),
        .k1(32'b10111101111100101010100101001111
),
        .k2(32'b10111101001110000010110000110011
),
        .k3(32'b00111100110000111110110101100100
),
        .k4(32'b10111101101100111001100100110000
),
        .k5(32'b00111101101100100011000100101100
),
        .k6(32'b00111101010101011010000011101010
),
        .k7(32'b00111101000110011100011100011111
),
        .k8(32'b10111100111110111001001110111010
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
        .k0(32'b10111100110110011001110000011111
),
        .k1(32'b10111100011100110111110001100011
),
        .k2(32'b00111101100011101101001010000100
),
        .k3(32'b10111101100111111100111001000101
),
        .k4(32'b00111101101011000011000100001010
),
        .k5(32'b10111101101110111000100110100001
),
        .k6(32'b10111101111110111111011100100100
),
        .k7(32'b00111110000111100110001000101111
),
        .k8(32'b00111110000100000111101100100011
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
        .k0(32'b10111101100010101101101011101011
),
        .k1(32'b00111101111100111110110111001010
),
        .k2(32'b00111101100011100010111111011111
),
        .k3(32'b00111100000000100100011111111111
),
        .k4(32'b00111010000101110011010101010001
),
        .k5(32'b10111110000101111100101110010110
),
        .k6(32'b00111101100111001010100110010101
),
        .k7(32'b00111100001111101000100001111101
),
        .k8(32'b00111100111111101101010100111000
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
        .k0(32'b10111110000110110100001110000011
),
        .k1(32'b10111101111000101100101011111101
),
        .k2(32'b00111100110010001001001001100001
),
        .k3(32'b10111100110111101111000111110110
),
        .k4(32'b10111110000011011011111001100101
),
        .k5(32'b10111101101001111111101111110110
),
        .k6(32'b10111101001110001000101111001010
),
        .k7(32'b10111101111101001100110101101001
),
        .k8(32'b00111101001011101001111000100010
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
        .k0(32'b10111011010011111111111101111101
),
        .k1(32'b10111101100011101101110011010001
),
        .k2(32'b00111101001111010000110101010010
),
        .k3(32'b00111110000000111111000011000001
),
        .k4(32'b00111100011011011111001000010011
),
        .k5(32'b10111101001101001001010101000110
),
        .k6(32'b10111110000001110110100011110101
),
        .k7(32'b00111101110101011111101000110010
),
        .k8(32'b10111101101011000101111100111100
)  
)conv2D_inst_7(
        .data_in(data_in_channel7),
        .clk(clk), .rst(rst), .valid_in(~data_fifo_empty7),
        .valid_out(valid_in_adder), .rdreq(rdreq),
        .data_out(data_out_conv2d_channel7)
);

conv2D #(
        .DATA_WIDTH(DATA_WIDTH),
        .WIDTH(WIDTH+2),
        .k0(32'b00111101011000011000111101011101
),
        .k1(32'b00111110000001100111100000100001
),
        .k2(32'b10111101011100111000101111001100
),
        .k3(32'b00111110000101101110110000000000
),
        .k4(32'b10111100110011011000110011000001
),
        .k5(32'b10111101001101100010100110101110
),
        .k6(32'b00111101111101000010010111111101
),
        .k7(32'b00111101011100011001100110110010
),
        .k8(32'b00111110000110001001010001101001
)    
)conv2D_inst_8(
        .data_in(data_in_channel8),
        .clk(clk), .rst(rst), .valid_in(~data_fifo_empty8),
        .valid_out(), .rdreq(rdreq),
        .data_out(data_out_conv2d_channel8)
);

conv2D #(
        .DATA_WIDTH(DATA_WIDTH),
        .WIDTH(WIDTH+2),
        .k0(32'b10111101101110100001111100001010
),
        .k1(32'b00111100011110011111001001010111
),
        .k2(32'b00111101011010100111100001001110
),
        .k3(32'b10111101110011101000110010000101
),
        .k4(32'b10111101101001101110011111011010
),
        .k5(32'b10111101010010100101001110110011
),
        .k6(32'b10111110000001011001110010000010
),
        .k7(32'b10111101101010101100011001101100
),
        .k8(32'b00111110000110000011000001000101
)  
)conv2D_inst_9(
        .data_in(data_in_channel9),
        .clk(clk), .rst(rst), .valid_in(~data_fifo_empty9),
        .valid_out(), .rdreq(rdreq),
        .data_out(data_out_conv2d_channel9)
);

conv2D #(
        .DATA_WIDTH(DATA_WIDTH),
        .WIDTH(WIDTH+2),
        .k0(32'b10111101010000000110101101101101
),
        .k1(32'b00111010010011110011000111010110
),
        .k2(32'b10111101010011001011000110011101
),
        .k3(32'b00111101101001101100011010110000
),
        .k4(32'b00111100010010101110111100001000
),
        .k5(32'b00111101000101001100111111101100
),
        .k6(32'b00111101011001110101101010011001
),
        .k7(32'b00111100101001001011011110100011
),
        .k8(32'b10111110000010000011111110101101
)  
)conv2D_inst_10(
        .data_in(data_in_channel10),
        .clk(clk), .rst(rst), .valid_in(~data_fifo_empty10),
        .valid_out(valid_in_adder), .rdreq(rdreq),
        .data_out(data_out_conv2d_channel10)
);

conv2D #(
        .DATA_WIDTH(DATA_WIDTH),
        .WIDTH(WIDTH+2),
        .k0(32'b10111101100001000110111010011010
),
        .k1(32'b10111101110100100100010110000111
),
        .k2(32'b10111100101011111001100101101000
),
        .k3(32'b00111110000000110000000101100001
),
        .k4(32'b10111101100010101001110010101110
),
        .k5(32'b00111101111110011101011111110001
),
        .k6(32'b10111011110111100000101111000111
),
        .k7(32'b10111101100000100101001100011001
),
        .k8(32'b10111101101000101010000011011111
)  
)conv2D_inst_11(
        .data_in(data_in_channel11),
        .clk(clk), .rst(rst), .valid_in(~data_fifo_empty11),
        .valid_out(valid_in_adder), .rdreq(rdreq),
        .data_out(data_out_conv2d_channel11)
);

conv2D #(
        .DATA_WIDTH(DATA_WIDTH),
        .WIDTH(WIDTH+2),
        .k0(32'b00111101001101001000001111010111
),
        .k1(32'b00111110000001000001000001011111
),
        .k2(32'b10111100110100101111111000101000
),
        .k3(32'b10111101000111111101110100111101
),
        .k4(32'b10111110000001101111011011101110
),
        .k5(32'b10111101111001010000100011000001
),
        .k6(32'b10111100110010001011001010101100
),
        .k7(32'b10111101101000001000010001101011
),
        .k8(32'b10111101101110100110101110111100
)  
)conv2D_inst_12(
        .data_in(data_in_channel12),
        .clk(clk), .rst(rst), .valid_in(~data_fifo_empty12),
        .valid_out(valid_in_adder), .rdreq(rdreq),
        .data_out(data_out_conv2d_channel12)
);

conv2D #(
        .DATA_WIDTH(DATA_WIDTH),
        .WIDTH(WIDTH+2),
        .k0(32'b00111011001100001110110011111000
),
        .k1(32'b10111101110001101100110000111110
),
        .k2(32'b00111110000010000001000010000110
),
        .k3(32'b00111101101001011110010110010001
),
        .k4(32'b10111101110001111011101111010101
),
        .k5(32'b10111101000101101100101011111001
),
        .k6(32'b00111110000010101011101111101101
),
        .k7(32'b10111100111101000001111100010010
),
        .k8(32'b10111101100101000010001010111110
)  
)conv2D_inst_13(
        .data_in(data_in_channel13),
        .clk(clk), .rst(rst), .valid_in(~data_fifo_empty13),
        .valid_out(valid_in_adder), .rdreq(rdreq),
        .data_out(data_out_conv2d_channel13)
);

conv2D #(
        .DATA_WIDTH(DATA_WIDTH),
        .WIDTH(WIDTH+2),
        .k0(32'b10111101101010101110001110101000
),
        .k1(32'b10111101100000011111001100001101
),
        .k2(32'b00111101011011101001101001001101
),
        .k3(32'b00111101000010100010001010010111
),
        .k4(32'b10111101100101001001101100000010
),
        .k5(32'b00111101001100001110111001000011
),
        .k6(32'b10111101001000100111011000101010
),
        .k7(32'b00111100100001011001110100111100
),
        .k8(32'b00111110000100101110111010111111
)  
)conv2D_inst_14(
        .data_in(data_in_channel14),
        .clk(clk), .rst(rst), .valid_in(~data_fifo_empty14),
        .valid_out(valid_in_adder), .rdreq(rdreq),
        .data_out(data_out_conv2d_channel14)
);

conv2D #(
        .DATA_WIDTH(DATA_WIDTH),
        .WIDTH(WIDTH+2),
        .k0(32'b00111110000101101001110101101010
),
        .k1(32'b00111110000011010001111100000010
),
        .k2(32'b10111101000001110010010101001010
),
        .k3(32'b10111101111001101010010100011001
),
        .k4(32'b00111101111011010100101001000101
),
        .k5(32'b00111101001100100101110010011100
),
        .k6(32'b10111100000000010110101000111110
),
        .k7(32'b10111100111110100001100000100110
),
        .k8(32'b10111101101000111001100111010111
)  
)conv2D_inst_15(
        .data_in(data_in_channel15),
        .clk(clk), .rst(rst), .valid_in(~data_fifo_empty15),
        .valid_out(valid_in_adder), .rdreq(rdreq),
        .data_out(data_out_conv2d_channel15)
);

add_bias_16_channel #(
        .DATA_WIDTH(DATA_WIDTH),
        .bias(bias)
)add_bias_16_channel_inst(
        .data_out_conv2d_channel0(data_out_conv2d_channel0),
        .data_out_conv2d_channel1(data_out_conv2d_channel1),
        .data_out_conv2d_channel2(data_out_conv2d_channel2),
        .data_out_conv2d_channel3(data_out_conv2d_channel3),
        .data_out_conv2d_channel4(data_out_conv2d_channel4),
        .data_out_conv2d_channel5(data_out_conv2d_channel5),
        .data_out_conv2d_channel6(data_out_conv2d_channel6),
        .data_out_conv2d_channel7(data_out_conv2d_channel7),
        .data_out_conv2d_channel8(data_out_conv2d_channel8),
        .data_out_conv2d_channel9(data_out_conv2d_channel9),
        .data_out_conv2d_channel10(data_out_conv2d_channel10),
        .data_out_conv2d_channel11(data_out_conv2d_channel11),
        .data_out_conv2d_channel12(data_out_conv2d_channel12),
        .data_out_conv2d_channel13(data_out_conv2d_channel13),
        .data_out_conv2d_channel14(data_out_conv2d_channel14),
        .data_out_conv2d_channel15(data_out_conv2d_channel15),
        .valid_in_adder(valid_in_adder), .clk(clk), .rst(rst),
        .data_out(data_out),
        .valid_out(valid_out)
);

endmodule