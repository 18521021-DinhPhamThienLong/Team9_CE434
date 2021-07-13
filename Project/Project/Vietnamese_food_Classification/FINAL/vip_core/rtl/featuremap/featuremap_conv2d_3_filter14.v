module featuremap_conv2d_3_filter14
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b10111010000000011011010011010111
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
        .k0(32'b10111101010101101100110000100000
),
        .k1(32'b10111101110011101011000011111111
),
        .k2(32'b00111101101000001110111101011001
),
        .k3(32'b10111101011110001111010100011101
),
        .k4(32'b00111101100111011111101011000000
),
        .k5(32'b00111101011100101011010110100110
),
        .k6(32'b00111101101111101110110111101101
),
        .k7(32'b00111101110010111011011100010110
),
        .k8(32'b00111100001110010100111001010011
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
        .k0(32'b10111110000010101001000110011100
),
        .k1(32'b00111101110101100011101101000001
),
        .k2(32'b10111100000000100110111001011111
),
        .k3(32'b10111101111001011010111000101101
),
        .k4(32'b10111101101000010101010110000101
),
        .k5(32'b00111101111000001011011010110101
),
        .k6(32'b10111101110011001011100111010000
),
        .k7(32'b00111101011000010100010110111010
),
        .k8(32'b00111101011110000100111100011111
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
        .k0(32'b10111100111101000010000011000100
),
        .k1(32'b10111101010101000111010111100101
),
        .k2(32'b00111100010000110010011001010110
),
        .k3(32'b00111011111110111010001011111000
),
        .k4(32'b10111101001110101110101001110101
),
        .k5(32'b10111101100011110011000010100101
),
        .k6(32'b10111110000001101101011000101001
),
        .k7(32'b00111101010000000111100100000001
),
        .k8(32'b00111101101110010000011100010110
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
        .k0(32'b00111110000001010110101110011010
),
        .k1(32'b00111101000101101001010010100101
),
        .k2(32'b00111101011011000110001110101000
),
        .k3(32'b10111110000011011110001010101110
),
        .k4(32'b10111100111111111001010110100101
),
        .k5(32'b10111101100011110010001110110101
),
        .k6(32'b10111101100001000101110110010101
),
        .k7(32'b10111101010000110101011101001110
),
        .k8(32'b10111101100111111110010011100101
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
        .k0(32'b10111100011011000111001001000001
),
        .k1(32'b00111011101110101001000010101100
),
        .k2(32'b10111101011100010000111000000101
),
        .k3(32'b00111101101010011100110100110000
),
        .k4(32'b00111101110100011110001110000010
),
        .k5(32'b10111101010100111100100001100010
),
        .k6(32'b10111101101100010101000000001001
),
        .k7(32'b00111101000001011101110110000110
),
        .k8(32'b00111101100101111100010011011100
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
        .k0(32'b10111101010100100011100100101111
),
        .k1(32'b00111101110110100110001010111111
),
        .k2(32'b10111100011100010101001101010110
),
        .k3(32'b10111101111111010000111010111000
),
        .k4(32'b10111101101011111011010110111100
),
        .k5(32'b10111101100011100110001100110110
),
        .k6(32'b10111110000010001100011011101001
),
        .k7(32'b00111110000100011000101001100011
),
        .k8(32'b10111110000010110001001010011011
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
        .k0(32'b00111100111011010011101111001001
),
        .k1(32'b00111101100000110011010111100100
),
        .k2(32'b10111101000000110001111100101110
),
        .k3(32'b10111100101100101011001111110001
),
        .k4(32'b10111101100010111110001111111010
),
        .k5(32'b10111101100001001111110001100000
),
        .k6(32'b10111110000010010101010001000111
),
        .k7(32'b10111101110001000010110100111110
),
        .k8(32'b10111100110101011010101100011110
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
        .k0(32'b00111101110101110101000001010100
),
        .k1(32'b00111110000000100000101101111110
),
        .k2(32'b00111110000000001000100100100000
),
        .k3(32'b10111110000001101110001111011010
),
        .k4(32'b00111101101111011011111111110111
),
        .k5(32'b00111101000000011100100101100011
),
        .k6(32'b00111110000010001001100101110010
),
        .k7(32'b00111101101100110010011111010111
),
        .k8(32'b10111100010101011001010000111100
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
        .k0(32'b00111101101110011010010111110111
),
        .k1(32'b00111101110000011010000000001001
),
        .k2(32'b10111101100110100110001010110010
),
        .k3(32'b00111101111100001111010010011011
),
        .k4(32'b10111101101010101010110011000101
),
        .k5(32'b00111100110110000001010111000001
),
        .k6(32'b10111110000101001000010000011110
),
        .k7(32'b10111101111010001110010011111100
),
        .k8(32'b00111110000000011110110110111000
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
        .k0(32'b10111110000100100110110100111111
),
        .k1(32'b00111101110000000111101101010101
),
        .k2(32'b10111101100011010010111101001100
),
        .k3(32'b10111101101011000010001110001011
),
        .k4(32'b00111101001001000010110100111011
),
        .k5(32'b10111110000001001001011001000111
),
        .k6(32'b00111101010110111110100011000010
),
        .k7(32'b00111101100110111111000001011001
),
        .k8(32'b00111101101100110001010101001010
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
        .k0(32'b00111101101111001100010000001101
),
        .k1(32'b00111101111111000001001111000000
),
        .k2(32'b10111101100101111101111011010010
),
        .k3(32'b00111101010100101000111111010001
),
        .k4(32'b10111101110100101011111111100001
),
        .k5(32'b10111101010101110001010010010100
),
        .k6(32'b10111100100001010010110011110000
),
        .k7(32'b00111101010111111110011010000111
),
        .k8(32'b10111101000110011100001000001111
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
        .k0(32'b10111101010101010100101011101001
),
        .k1(32'b10111101000001011110010100101100
),
        .k2(32'b10111011000101010101001100110000
),
        .k3(32'b00111100011100100000101110010001
),
        .k4(32'b10111100110100100101011000100010
),
        .k5(32'b00111110000100110111100011011111
),
        .k6(32'b00111101010001101100111011101110
),
        .k7(32'b00111100011000111001011001011100
),
        .k8(32'b10111110000001111001000110000111
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
        .k0(32'b10111011110111111110110010100000
),
        .k1(32'b10111100000111001000011110010000
),
        .k2(32'b00111011100101011000000101100111
),
        .k3(32'b00111110000011110001111000010111
),
        .k4(32'b00111101000001001000000000101111
),
        .k5(32'b00111110000010001111001011000101
),
        .k6(32'b10111101100011110001011110100101
),
        .k7(32'b10111101101100110011011011101010
),
        .k8(32'b10111101101100110011011000010111
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
        .k0(32'b00111101011111010010001110101111
),
        .k1(32'b10111110000010000100101101111010
),
        .k2(32'b10111110000011100000011011100101
),
        .k3(32'b10111101101111000011111100101000
),
        .k4(32'b00111101100000010100010010101011
),
        .k5(32'b10111101100011000010000111110011
),
        .k6(32'b00111101001110011111000001111010
),
        .k7(32'b00111100101000101010000111111100
),
        .k8(32'b00111100110000111101101011101101
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
        .k0(32'b00111101000011111001101000001101
),
        .k1(32'b00111101100101010111000001100011
),
        .k2(32'b00111101110011001001001011000001
),
        .k3(32'b00111110000001000010100000101000
),
        .k4(32'b10111101001001000000111100110100
),
        .k5(32'b10111101011010110100101101101011
),
        .k6(32'b10111100111100101001010110101101
),
        .k7(32'b10111101101000011111011011000010
),
        .k8(32'b10111101101011000011101100111010
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
        .k0(32'b00111110000011000111101111010010
),
        .k1(32'b10111101110010010111111100001100
),
        .k2(32'b10111110000100000000111100000011
),
        .k3(32'b00111101101100011111110101010011
),
        .k4(32'b10111101110110000110100011110110
),
        .k5(32'b00111101001101011110111010100101
),
        .k6(32'b10111100111100100011010110101010
),
        .k7(32'b10111101100101001001111100010111
),
        .k8(32'b10111101011000110101001010111100
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