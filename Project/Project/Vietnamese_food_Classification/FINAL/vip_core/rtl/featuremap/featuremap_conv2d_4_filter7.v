module featuremap_conv2d_4_filter7
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b00111100100010101100111011100101
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
        .k0(32'b10111101011010010100000111010001
),
        .k1(32'b00111100110010101001001111011000
),
        .k2(32'b10111100110110001101001000010000
),
        .k3(32'b00111110000010001001111011101111
),
        .k4(32'b10111011011100010111001010011100
),
        .k5(32'b10111100100011000100111100010010
),
        .k6(32'b00111101101000111101111010101011
),
        .k7(32'b00111100110101011101110110001110
),
        .k8(32'b00111101100001100101111111001010
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
        .k0(32'b00111110000101100110010010001111
),
        .k1(32'b00111101010011011110001011001100
),
        .k2(32'b00111101100100010001000001101100
),
        .k3(32'b10111101110000000100011010111111
),
        .k4(32'b10111101000101110110111111100111
),
        .k5(32'b00111100100000011100101111011101
),
        .k6(32'b10111101010010101101100001111011
),
        .k7(32'b00111101010101100100110101001100
),
        .k8(32'b10111101111001000101011110010110
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
        .k0(32'b00111101100100001100110011100000
),
        .k1(32'b10111101111110000101001001001110
),
        .k2(32'b10111101100010110001111100001100
),
        .k3(32'b10111101100001111100110001010010
),
        .k4(32'b10111101110100111110000011111010
),
        .k5(32'b00111101111111100001100110101000
),
        .k6(32'b10111101111011100100100101001001
),
        .k7(32'b10111010101111010001000110010010
),
        .k8(32'b10111101111000011000100011111100
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
        .k0(32'b00111110000111010000011010101001
),
        .k1(32'b10111101000101010011111010111001
),
        .k2(32'b00111100100000011010100010001101
),
        .k3(32'b00111100010111100101011010011000
),
        .k4(32'b00111110000010010011000101101010
),
        .k5(32'b10111101100001110110101100000000
),
        .k6(32'b00111100100101100011011100101110
),
        .k7(32'b10111100101001001010001110111010
),
        .k8(32'b10111011110111011000101110011100
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
        .k0(32'b00111100000111100101011110101010
),
        .k1(32'b10111101011011100100111010010010
),
        .k2(32'b00111101010001010100011000011011
),
        .k3(32'b00111110000111000110110101010010
),
        .k4(32'b10111101101000110000001101111000
),
        .k5(32'b00111010111101100100011011101111
),
        .k6(32'b10111101001001100100100011100100
),
        .k7(32'b00111110000001001000110010110111
),
        .k8(32'b10111101101101101101100010001010
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
        .k0(32'b00111100000111011001010111100001
),
        .k1(32'b10111101101010010101100110010001
),
        .k2(32'b00111110000000001001100010011011
),
        .k3(32'b10111110000000100010010110100101
),
        .k4(32'b10111100101010000111101110001110
),
        .k5(32'b00111100110110101100111101110110
),
        .k6(32'b00111100100111011110110110101011
),
        .k7(32'b10111101110101011011101100110010
),
        .k8(32'b00111110000011110010010100001010
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
        .k0(32'b10111101101100110001011010000011
),
        .k1(32'b10111101010000101100000000001110
),
        .k2(32'b10111101100011110101001101000010
),
        .k3(32'b10111100101110100000010101000100
),
        .k4(32'b10111110000000100010111011111011
),
        .k5(32'b00111101000010010100010000100010
),
        .k6(32'b00111101110100100111110100001101
),
        .k7(32'b10111101111101110000001101001011
),
        .k8(32'b10111100100011111011000100000011
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
        .k0(32'b10111101101110000101111101000000
),
        .k1(32'b10111100100010001011011111111000
),
        .k2(32'b10111101101111101111000000001110
),
        .k3(32'b10111101110111000000010110100011
),
        .k4(32'b10111101100011101010110100111000
),
        .k5(32'b00111100101100001101111010010000
),
        .k6(32'b00111101000001011011101011001110
),
        .k7(32'b10111010110101010000001011010001
),
        .k8(32'b10111101000011111011001001000110
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
        .k0(32'b00111101110001110100100000011000
),
        .k1(32'b00111101010110111111111010010111
),
        .k2(32'b10111101101100111001010100011011
),
        .k3(32'b00111101010110000011111111110100
),
        .k4(32'b10111101110000111110101001100011
),
        .k5(32'b00111101100000001011110011101111
),
        .k6(32'b10111101001100001010010010110010
),
        .k7(32'b10111100100001110000110000101101
),
        .k8(32'b00111011001001110001111100010010
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
        .k0(32'b00111101101011101101101010111110
),
        .k1(32'b10111101110010010111001000100100
),
        .k2(32'b00111101110110010000011101101111
),
        .k3(32'b00111101001011000100100001110001
),
        .k4(32'b00111101111110011111100001001100
),
        .k5(32'b10111101010001101111011101100110
),
        .k6(32'b00111110000010101001100001111100
),
        .k7(32'b10111101010010100001001111101110
),
        .k8(32'b00111100010001011101011011011111
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
        .k0(32'b00111101110110110001111100000001
),
        .k1(32'b10111101010010000100011100110010
),
        .k2(32'b00111101100000000100110110111000
),
        .k3(32'b00111101100010110111010001100111
),
        .k4(32'b10111101100111100010111110011110
),
        .k5(32'b00111101111101100110100000001111
),
        .k6(32'b10111101111101101101110101011010
),
        .k7(32'b00111110000110010110111111101001
),
        .k8(32'b10111101110010011111000110101110
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
        .k0(32'b10111101000110000010111100100110
),
        .k1(32'b10111101101001101110100101110101
),
        .k2(32'b10111101111101010100111010111001
),
        .k3(32'b00111100101110001111010011110100
),
        .k4(32'b10111101110110110111101100000101
),
        .k5(32'b10111101111000110101100101001111
),
        .k6(32'b10111100001001110111101100101111
),
        .k7(32'b00111110000101100011111000000101
),
        .k8(32'b10111101111101010101000001010010
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
        .k0(32'b10111101001100111000001111010110
),
        .k1(32'b10111011100011101101001001000110
),
        .k2(32'b00111100100100110111110010111000
),
        .k3(32'b10111101101101011001000101000111
),
        .k4(32'b00111011101010001110011000001011
),
        .k5(32'b00111101101110010001111010111111
),
        .k6(32'b10111101100100101010110100100000
),
        .k7(32'b10111100101100010110001011001100
),
        .k8(32'b00111100111010001100010110100111
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
        .k0(32'b10111101100111101100100101100001
),
        .k1(32'b10111100000111100111010111001000
),
        .k2(32'b10111101000100110001001000110000
),
        .k3(32'b00111110001000100001000101010100
),
        .k4(32'b00111101011000010110011100011100
),
        .k5(32'b10111101001100111100101100010001
),
        .k6(32'b00111110000001110011101101010011
),
        .k7(32'b00111101000010001000011001000101
),
        .k8(32'b10111101110011100010000000010110
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
        .k0(32'b10111101110110001111001110100110
),
        .k1(32'b10111101111001000001011001100000
),
        .k2(32'b10111101110001110000101101001111
),
        .k3(32'b10111101101110100111101100010011
),
        .k4(32'b10111101010000111111010111000111
),
        .k5(32'b00111100011111011000001011000011
),
        .k6(32'b10111110000010001101111011000001
),
        .k7(32'b10111101000111100000110111011010
),
        .k8(32'b10111101000100101111001010101000
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
        .k0(32'b10111101110100111111010100110010
),
        .k1(32'b00111100101101111110011100011100
),
        .k2(32'b00111110000010101000000111100100
),
        .k3(32'b00111110000011000111101000111101
),
        .k4(32'b00111101110011011000110111110101
),
        .k5(32'b00111101001001000001101011110011
),
        .k6(32'b10111101110000000110101111011101
),
        .k7(32'b00111101011010010110110001010000
),
        .k8(32'b00111101100100111011011000001001
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