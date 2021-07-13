module featuremap_conv2d_4_filter14
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b00111011100100001100111011110111
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
        .k0(32'b00111101001101010001010111110001
),
        .k1(32'b10111100011111111011000001101011
),
        .k2(32'b10111101100001001000111001011110
),
        .k3(32'b00111101010010010000101000110011
),
        .k4(32'b10111101000010110110101011011100
),
        .k5(32'b10111101110111001110011001111000
),
        .k6(32'b10111101110001001000010101011001
),
        .k7(32'b10111110000101000110100000010111
),
        .k8(32'b10111110000100010000011101010110
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
        .k0(32'b00111101111011011110001101001001
),
        .k1(32'b10111100010011010010010010010011
),
        .k2(32'b10111100101100101001101100101110
),
        .k3(32'b00111101101111001110101011000111
),
        .k4(32'b10111101110100100100001010010011
),
        .k5(32'b00111110000111111010000011001101
),
        .k6(32'b00111101000111110010010100111101
),
        .k7(32'b10111100111010101010111000011100
),
        .k8(32'b00111101110000000001111110110011
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
        .k0(32'b00111110000010000101100000111100
),
        .k1(32'b00111101011001111101010110010101
),
        .k2(32'b00111110000100000010001110100010
),
        .k3(32'b10111110000101011000001010100101
),
        .k4(32'b10111010110010001111001111101011
),
        .k5(32'b10111101110010100010001010101000
),
        .k6(32'b10111101100100101010000011101011
),
        .k7(32'b00111100101100000100111010101001
),
        .k8(32'b10111100111001111010010011100011
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
        .k0(32'b00111101011011000101110110011101
),
        .k1(32'b00111101111000000001110110111010
),
        .k2(32'b10111101111001000111101101111011
),
        .k3(32'b10111100110111010101110011101111
),
        .k4(32'b10111101000000011110000101011110
),
        .k5(32'b00111010100000100110010111000001
),
        .k6(32'b10111101001100011001110100110101
),
        .k7(32'b00111110000100100000011010011111
),
        .k8(32'b00111101011000101100101011100110
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
        .k0(32'b00111101001101111110111101111001
),
        .k1(32'b00111110000010100010000100000000
),
        .k2(32'b00111101101000011000001010010001
),
        .k3(32'b00111101010011001101001101010101
),
        .k4(32'b10111101011001101101101001001101
),
        .k5(32'b10111101110000100000010001000001
),
        .k6(32'b00111101111010010110001011011000
),
        .k7(32'b10111101110111100110111000011011
),
        .k8(32'b10111101100001000101100011101001
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
        .k0(32'b00111101001010001110100010101100
),
        .k1(32'b00111110000011110010001000011010
),
        .k2(32'b10111101110010110000001111111000
),
        .k3(32'b10111100110101100100010100010000
),
        .k4(32'b00111101101010111101101100001010
),
        .k5(32'b00111110000011010110101011110110
),
        .k6(32'b00111101001001000000101011000110
),
        .k7(32'b00111110000101001110110000010100
),
        .k8(32'b00111101001101001000101110001000
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
        .k0(32'b00111101110110100101010100101111
),
        .k1(32'b00111101111110000010010111011111
),
        .k2(32'b10111101100101111011000111111000
),
        .k3(32'b10111010100101000000000110110001
),
        .k4(32'b00111110000011010111001010000111
),
        .k5(32'b00111101001101011010000111110011
),
        .k6(32'b00111101011111011110101101110010
),
        .k7(32'b10111101111101000111000011010000
),
        .k8(32'b00111101011010001001010001111111
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
        .k0(32'b00111011111101101001110011100111
),
        .k1(32'b00111101100010101111111111010100
),
        .k2(32'b00111011000111101110111001001000
),
        .k3(32'b00111100010001000100111000010000
),
        .k4(32'b00111101100100100011100101101001
),
        .k5(32'b10111011010001000110011001000100
),
        .k6(32'b10111101100110011011101101000111
),
        .k7(32'b00111101101011001010011101001100
),
        .k8(32'b00111101011101010000111001110110
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
        .k0(32'b00111101100100011100111010100010
),
        .k1(32'b10111101111100110001101010100010
),
        .k2(32'b00111101000011111001001000010010
),
        .k3(32'b00111101001011100101101101010110
),
        .k4(32'b00111101101000010100111000000001
),
        .k5(32'b10111101110001101101110100000101
),
        .k6(32'b10111101111110110100001011100100
),
        .k7(32'b00111110000101001110110101000001
),
        .k8(32'b00111101111000011010110101001010
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
        .k0(32'b10111100010011011100110110010000
),
        .k1(32'b10111101111011101101000000111101
),
        .k2(32'b00111100011110001101111111110111
),
        .k3(32'b10111110000101001010001010100000
),
        .k4(32'b10111100100100110001101000111000
),
        .k5(32'b00111101110001111101000000101010
),
        .k6(32'b00111101100101101101110110011010
),
        .k7(32'b00111101010011000101110110100110
),
        .k8(32'b00111101000111111111010011010100
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
        .k0(32'b00111101110111110110100000011010
),
        .k1(32'b10111101100101110110110001101110
),
        .k2(32'b10111100100101010110101010101111
),
        .k3(32'b10111101101001011110101110101011
),
        .k4(32'b10111101011100110110011001001110
),
        .k5(32'b00111010110001101011100110001011
),
        .k6(32'b10111101111010000000101100111000
),
        .k7(32'b10111011110101100110001011101001
),
        .k8(32'b10111101110111011110001100100110
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
        .k0(32'b00111101101111001000110000110001
),
        .k1(32'b00111101111011000100100001010111
),
        .k2(32'b00111101101111000010011110111010
),
        .k3(32'b00111100011010011100111101110111
),
        .k4(32'b10111101011110100110101010000001
),
        .k5(32'b00111101001111000100111101100010
),
        .k6(32'b10111101010010100010100110101010
),
        .k7(32'b10111011101001010111010110000110
),
        .k8(32'b00111110000101001111001001001000
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
        .k0(32'b00111100110100111010100011100111
),
        .k1(32'b10111100001000101000101110111100
),
        .k2(32'b00111101101111010000010010010111
),
        .k3(32'b10111110000001101000110100001110
),
        .k4(32'b00111010111111110101001100100001
),
        .k5(32'b10111100100111001100101000001110
),
        .k6(32'b10111101110111100101001010101011
),
        .k7(32'b10111101111101100000111000011001
),
        .k8(32'b00111101100001011111001000001011
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
        .k0(32'b00111101100001111111000111100110
),
        .k1(32'b00111101011101001001010001100001
),
        .k2(32'b10111101111111111100111101000011
),
        .k3(32'b10111101001100100011101000101101
),
        .k4(32'b10111101000111001110010010000000
),
        .k5(32'b00111101110000011100110101011101
),
        .k6(32'b10111101111110011011011010100110
),
        .k7(32'b10111100111101001001001101100010
),
        .k8(32'b00111011111111011001011100011001
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
        .k0(32'b10111101011100001001000010100100
),
        .k1(32'b10111011111000110101100011101111
),
        .k2(32'b10111101000111001101011001111100
),
        .k3(32'b10111101111110101101101111000100
),
        .k4(32'b00111101110100101001110111100101
),
        .k5(32'b00111101001100001100101000011011
),
        .k6(32'b10111110000010011111011111000010
),
        .k7(32'b10111101101001010100011010001111
),
        .k8(32'b10111100110011001101011110111011
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
        .k0(32'b10111110001000001001100000101111
),
        .k1(32'b10111101100100010100100101101100
),
        .k2(32'b10111101101001100010100100100000
),
        .k3(32'b10111100111010010001110100111100
),
        .k4(32'b00111110000001111010110001000110
),
        .k5(32'b00111100101001010101110101111001
),
        .k6(32'b10111101010001011010101110101101
),
        .k7(32'b10111110000011010000010000111101
),
        .k8(32'b00111101100010100100010101110000
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