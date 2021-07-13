module featuremap_conv2d_4_filter6
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b10111011011101000000110010000001
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
        .k0(32'b00111101101111000010000001010110
),
        .k1(32'b00111010101001100110010001100011
),
        .k2(32'b10111101100101010100110101001011
),
        .k3(32'b00111101110110100100111110001001
),
        .k4(32'b10111101111010010001101001011001
),
        .k5(32'b10111100111110011011001001101011
),
        .k6(32'b00111100101101011000010000111111
),
        .k7(32'b00111101001111100110000110001001
),
        .k8(32'b00111010010101000111001101100010
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
        .k0(32'b10111110000110010001011101101111
),
        .k1(32'b10111101100000010011100111110010
),
        .k2(32'b10111101110001111011100110011010
),
        .k3(32'b00111101100101000000111011110001
),
        .k4(32'b10111101100111001110111010101011
),
        .k5(32'b10111100001110101001010010000110
),
        .k6(32'b00111101101010111001101001010100
),
        .k7(32'b00111101001011000000100000100011
),
        .k8(32'b10111101110110100100100001011110
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
        .k0(32'b10111101101100011101000010110110
),
        .k1(32'b10111100100000001010101111111001
),
        .k2(32'b10111100001011001111110100100011
),
        .k3(32'b00111101101011111001011111011011
),
        .k4(32'b10111101100001100001011111110101
),
        .k5(32'b10111100001001000101000000111011
),
        .k6(32'b00111110000000010010101101000111
),
        .k7(32'b00111101101101100010001100001111
),
        .k8(32'b00111110000000001011100000000000
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
        .k0(32'b00111011101101010101111101000000
),
        .k1(32'b10111101100011100011011010010001
),
        .k2(32'b00111100111001011001111111101000
),
        .k3(32'b10111110000111000101100011110111
),
        .k4(32'b10111101100101001110000110111000
),
        .k5(32'b10111110000111010000110010001010
),
        .k6(32'b10111110000110000010111111100101
),
        .k7(32'b00111101000101011101010101100011
),
        .k8(32'b00111100101101000101000001011111
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
        .k0(32'b00111101100101010101010010010000
),
        .k1(32'b00111101101100001100011111010000
),
        .k2(32'b00111110000100110101001101100001
),
        .k3(32'b00111101111001000010100111111101
),
        .k4(32'b00111110000000010101000010010001
),
        .k5(32'b10111101001010010101110111001000
),
        .k6(32'b10111101111100001000100110011110
),
        .k7(32'b10111110000010111101101110101011
),
        .k8(32'b10111101100000011100011110011100
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
        .k0(32'b10111101110001001111010010101101
),
        .k1(32'b10111101110101011111101001010110
),
        .k2(32'b10111101101011111011111100000111
),
        .k3(32'b10111101101010111011101001110110
),
        .k4(32'b10111010100100101010011101101111
),
        .k5(32'b00111101111100011101001001100010
),
        .k6(32'b00111100100101110001101000001100
),
        .k7(32'b00111101111111010010101010011010
),
        .k8(32'b00111101101100111000000001100100
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
        .k0(32'b10111101011100100010100011000010
),
        .k1(32'b10111101101010101010011010011011
),
        .k2(32'b10111110000001100001101111011101
),
        .k3(32'b10111100100010101010001001100110
),
        .k4(32'b00111100110100101100101001101001
),
        .k5(32'b10111100110100011110111000110010
),
        .k6(32'b00111101010011111110110011001110
),
        .k7(32'b10111101111100110100110000100011
),
        .k8(32'b10111101000011011100101011000010
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
        .k0(32'b00111110000100100011101011001011
),
        .k1(32'b00111110000010001011000000111111
),
        .k2(32'b10111110000001111011111111110000
),
        .k3(32'b00111110000000111011001100101011
),
        .k4(32'b00111110000010111000100111111010
),
        .k5(32'b10111110000010101010100001010101
),
        .k6(32'b00111100001000011100110101000000
),
        .k7(32'b00111101101110011101011001011101
),
        .k8(32'b10111101000010101011000001001101
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
        .k0(32'b00111101101101111010011100000010
),
        .k1(32'b00111100111110110000101000011101
),
        .k2(32'b10111101010011110110110110011000
),
        .k3(32'b00111101100100111101110110100100
),
        .k4(32'b00111101100001011101010111010010
),
        .k5(32'b10111101011010010001001111100011
),
        .k6(32'b00111101010001111100100011110101
),
        .k7(32'b10111101101011011001010001110110
),
        .k8(32'b10111101100011011010010100011011
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
        .k0(32'b10111101101010001011111000011000
),
        .k1(32'b10111101011111011100000111000001
),
        .k2(32'b00111110000110101111101000011011
),
        .k3(32'b10111101101110111110111000110011
),
        .k4(32'b10111101110100110010011100110111
),
        .k5(32'b00111101001101111001001000101110
),
        .k6(32'b00111100111010001110001000101110
),
        .k7(32'b10111101100111000000011001110010
),
        .k8(32'b00111100111001010011101001010100
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
        .k0(32'b10111011100011000100000010111100
),
        .k1(32'b10111101100111000111011100000101
),
        .k2(32'b00111110000111110111101111111000
),
        .k3(32'b00111101110101001111101110101100
),
        .k4(32'b10111101111001111101011010011000
),
        .k5(32'b00111011100000010110100110101000
),
        .k6(32'b00111100111101100000110010101110
),
        .k7(32'b00111101111010010001110011110001
),
        .k8(32'b10111101111010100111000101110111
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
        .k0(32'b00111101100101100101010011011001
),
        .k1(32'b10111100100110010011011001001000
),
        .k2(32'b00111101111011000111101001010001
),
        .k3(32'b00111100010110000110111010111000
),
        .k4(32'b00111101111111001010101110010011
),
        .k5(32'b00111101011100110110011001011100
),
        .k6(32'b00111100001100001110110010110000
),
        .k7(32'b10111100001111001011011101011001
),
        .k8(32'b10111101100111000000110011011100
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
        .k0(32'b00111101100111110101100101010011
),
        .k1(32'b00111101110000001001100111001001
),
        .k2(32'b00111101000101100011001010100101
),
        .k3(32'b10111101100101100101101100111010
),
        .k4(32'b00111101011011000111100000010001
),
        .k5(32'b00111101110100011010100011001110
),
        .k6(32'b00111011001010000110000011001111
),
        .k7(32'b00111101010000110100100001001110
),
        .k8(32'b10111101101110011110011100000010
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
        .k0(32'b00111101001111111010111000101111
),
        .k1(32'b10111101100101011100000101110100
),
        .k2(32'b00111101111000100001010110011011
),
        .k3(32'b10111100001011001100111100010000
),
        .k4(32'b10111110000010001000010101001010
),
        .k5(32'b10111110000010010110000110100011
),
        .k6(32'b00111101111101000000010000111001
),
        .k7(32'b00111101001110100101100010001010
),
        .k8(32'b00111101001010101101101110100001
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
        .k0(32'b10111101111100111001110000100000
),
        .k1(32'b00111100111110011111011101011010
),
        .k2(32'b10111100010110111101010011111111
),
        .k3(32'b00111101111101101100001101111011
),
        .k4(32'b10111100011010001111101100111011
),
        .k5(32'b10111101100111111101111011001010
),
        .k6(32'b10111110000001110111101010000100
),
        .k7(32'b10111101111111010100111000001011
),
        .k8(32'b10111101100001100101011000010110
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
        .k0(32'b10111101111110000001010101101111
),
        .k1(32'b10111110000000110000101000011101
),
        .k2(32'b10111100101011011000111100111001
),
        .k3(32'b00111011010100101101011000001010
),
        .k4(32'b10111101010010000000000101000101
),
        .k5(32'b10111011111101011110001010110111
),
        .k6(32'b00111101001011001001101001100111
),
        .k7(32'b10111101110101110000001110101101
),
        .k8(32'b10111101111010111010010011101110
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