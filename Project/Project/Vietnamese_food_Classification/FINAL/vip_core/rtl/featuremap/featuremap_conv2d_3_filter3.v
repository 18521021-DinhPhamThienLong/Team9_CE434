module featuremap_conv2d_3_filter3
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b00111100001110011010001001001111
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
        .k0(32'b00111101100111011001001110110001
),
        .k1(32'b00111101000010000100011001101010
),
        .k2(32'b10111101111011011000110100100000
),
        .k3(32'b10111101010111110100111110011100
),
        .k4(32'b00111110000110010111001010111000
),
        .k5(32'b00111101001001010010010100110101
),
        .k6(32'b00111101111101000110010000001111
),
        .k7(32'b00111101111011101111011110010000
),
        .k8(32'b00111101011010001011011100010110
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
        .k0(32'b00111110001100111011111010001111
),
        .k1(32'b10111101101101100001110011111111
),
        .k2(32'b00111100011110000111111000011001
),
        .k3(32'b00111101100010001000101001000010
),
        .k4(32'b10111101011010001101000111001100
),
        .k5(32'b00111110001001000000110111001110
),
        .k6(32'b00111101111001001100101011101101
),
        .k7(32'b00111100011011011000011101110111
),
        .k8(32'b00111100001011001101010101010000
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
        .k0(32'b00111101110001001011000001010011
),
        .k1(32'b00111101011111100001001100011001
),
        .k2(32'b00111101011111100010110000101010
),
        .k3(32'b10111011110101000111001011100011
),
        .k4(32'b00111101010101000011111010100000
),
        .k5(32'b10111110000001111110001111100110
),
        .k6(32'b10111101011111110100110011001000
),
        .k7(32'b10111110000011101111111110000111
),
        .k8(32'b00111101111001111011001101111100
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
        .k0(32'b10111101110110100111110100101001
),
        .k1(32'b10111101001000001010101001100000
),
        .k2(32'b00111101100001110000110101001111
),
        .k3(32'b10111110000100000001010000010000
),
        .k4(32'b10111100110100000000110010000101
),
        .k5(32'b10111101000110011011101101101000
),
        .k6(32'b00111100111011111011001110000110
),
        .k7(32'b00111101001110110100011100001010
),
        .k8(32'b10111101010011010110111100010000
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
        .k0(32'b00111100111110111101110101100100
),
        .k1(32'b10111101100100001000110100111001
),
        .k2(32'b10111101100111110110111100100111
),
        .k3(32'b10111101011110100000011101001101
),
        .k4(32'b10111011111011110100111011101010
),
        .k5(32'b00111101010001000101101010111010
),
        .k6(32'b00111100111011011101010101101010
),
        .k7(32'b00111110001001100010010100110101
),
        .k8(32'b00111101010010100100111001100111
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
        .k0(32'b10111101000010110010000100011000
),
        .k1(32'b00111110000011001100001000101001
),
        .k2(32'b10111101101101010100000111011101
),
        .k3(32'b00111110000110100011110101011000
),
        .k4(32'b00111101110111000101101111000001
),
        .k5(32'b10111101011101000010111100101100
),
        .k6(32'b10111110000001001001110001010111
),
        .k7(32'b10111101100000011001101111000101
),
        .k8(32'b00111110000100110100001110100000
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
        .k0(32'b10111101000110101101001101110110
),
        .k1(32'b00111101101110100101100111101101
),
        .k2(32'b00111101111000101101011101010111
),
        .k3(32'b10111101100101000001011100110111
),
        .k4(32'b10111101010010001000100111010000
),
        .k5(32'b10111101001100101100110011111000
),
        .k6(32'b00111101011000100000101011011101
),
        .k7(32'b10111101001110111101111111001101
),
        .k8(32'b00111100110100111100010111101000
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
        .k0(32'b00111101101110110011000011101100
),
        .k1(32'b10111101000010101000111000000010
),
        .k2(32'b10111101100000110100111101010011
),
        .k3(32'b00111011100011010001010101010001
),
        .k4(32'b10111110000101000011001110101011
),
        .k5(32'b10111101111001000101001011110011
),
        .k6(32'b10111101100110100011110100111111
),
        .k7(32'b00111101100100110001111101111000
),
        .k8(32'b10111101101000111110001101101110
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
        .k0(32'b10111101100010100111001111001000
),
        .k1(32'b10111100101101010100010001011010
),
        .k2(32'b10111101110010001110001010000011
),
        .k3(32'b10111101001011001001110100010000
),
        .k4(32'b00111101101111100100010011000010
),
        .k5(32'b00111101100100111101101011100000
),
        .k6(32'b10111010010111100101000110101110
),
        .k7(32'b00111101011101000111011111000111
),
        .k8(32'b00111101111110001001011111100101
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
        .k0(32'b00111101010111011001011000111100
),
        .k1(32'b10111101010100011110101011110011
),
        .k2(32'b00111101110010011111010010010011
),
        .k3(32'b00111101010111000010110000001011
),
        .k4(32'b00111101101000010000110001010000
),
        .k5(32'b10111110000000010100001111111011
),
        .k6(32'b10111101111111000010000101101010
),
        .k7(32'b10111101100100011001110111101010
),
        .k8(32'b00111110000011100011010100001101
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
        .k0(32'b00111101100010000101110000110010
),
        .k1(32'b00111101000000100110101100000110
),
        .k2(32'b10111101010100000000000010010010
),
        .k3(32'b00111110001010110110110110001010
),
        .k4(32'b10111101010100111110001110000011
),
        .k5(32'b00111101011110010010001100101100
),
        .k6(32'b00111101100011000000101111111011
),
        .k7(32'b00111110000111101001010001100111
),
        .k8(32'b10111011101011000111101100111001
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
        .k0(32'b00111101001111011001110010111100
),
        .k1(32'b10111101111100001011000110001110
),
        .k2(32'b00111101101101110110110101000000
),
        .k3(32'b00111101100101011100100010111110
),
        .k4(32'b10111100100111001110011000100100
),
        .k5(32'b00111100000111111100001101000111
),
        .k6(32'b10111101010111011100101101000000
),
        .k7(32'b10111101010001000001010000100101
),
        .k8(32'b10111101010111100010101010001110
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
        .k0(32'b10111101100010000000111001101011
),
        .k1(32'b00111110000001101101110100111010
),
        .k2(32'b10111101000111111000011010000010
),
        .k3(32'b10111100010000001010011100010101
),
        .k4(32'b10111011000001100010101001000100
),
        .k5(32'b10111100101011011001101001011111
),
        .k6(32'b00111101100001001101011011011000
),
        .k7(32'b10111101011100111110001010011111
),
        .k8(32'b10111011001001000011001101000111
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
        .k0(32'b10111101001011100101010001001000
),
        .k1(32'b10111100000011101010101110111101
),
        .k2(32'b00111101101000111111110111101001
),
        .k3(32'b00111101101000010110110010110100
),
        .k4(32'b10111101101000011010000100111111
),
        .k5(32'b00111101101011110110111110010000
),
        .k6(32'b10111101001110101110000010011110
),
        .k7(32'b00111101001110010000000110101001
),
        .k8(32'b10111011110001001111001010001100
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
        .k0(32'b10111101001111001000110001001001
),
        .k1(32'b00111101111010000110100101101100
),
        .k2(32'b10111101100101101111001100011110
),
        .k3(32'b00111101011101100011000010110000
),
        .k4(32'b00111110000110001100001111011110
),
        .k5(32'b10111101011011000011111010011000
),
        .k6(32'b10111100110110001111111011001001
),
        .k7(32'b00111101110110101000011011101100
),
        .k8(32'b00111101100110111100000100100011
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
        .k0(32'b10111100100010110000000010100101
),
        .k1(32'b00111011010110010110000101011000
),
        .k2(32'b00111110001010000101001011010110
),
        .k3(32'b00111101100111011011100000111111
),
        .k4(32'b00111110000100100110011110000011
),
        .k5(32'b00111100110101010100101101111001
),
        .k6(32'b10111101110010111011001010000101
),
        .k7(32'b10111101101011101100111010000001
),
        .k8(32'b00111101110101101100100010100011
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