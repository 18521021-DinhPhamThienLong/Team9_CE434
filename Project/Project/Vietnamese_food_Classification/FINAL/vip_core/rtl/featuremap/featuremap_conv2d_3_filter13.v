module featuremap_conv2d_3_filter13
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b10111010101111110001101111010001
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
        .k0(32'b10111011000000110011011101101101
),
        .k1(32'b10111101100010111111100111111110
),
        .k2(32'b10111100101000011010111011010101
),
        .k3(32'b10111101010111110110001100101101
),
        .k4(32'b00111100110101100011101101010111
),
        .k5(32'b10111101010000100100001101100111
),
        .k6(32'b10111101101001011110100110011111
),
        .k7(32'b10111011000100001010110100010101
),
        .k8(32'b10111101101000000001011111100100
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
        .k0(32'b10111101100010011100011011111100
),
        .k1(32'b10111101010000010010011010101011
),
        .k2(32'b10111110000010010111010100110111
),
        .k3(32'b00111101111100111000111010010100
),
        .k4(32'b00111101000001000011100001100100
),
        .k5(32'b00111101000110101111111101001101
),
        .k6(32'b10111101000110011101010111000001
),
        .k7(32'b00111011101011111101110001011011
),
        .k8(32'b00111101001001010010001010001100
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
        .k0(32'b00111110000100111000001111001010
),
        .k1(32'b00111101100111111000100101010110
),
        .k2(32'b00111100001010110011111101101011
),
        .k3(32'b00111101010110011111111000101010
),
        .k4(32'b10111101101111100100010101110011
),
        .k5(32'b10111100000010111101100101000101
),
        .k6(32'b00111100010111111010110101111110
),
        .k7(32'b10111101101100110000011111101111
),
        .k8(32'b00111101100011100111101111111010
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
        .k0(32'b10111101011011000000111111010010
),
        .k1(32'b00111110000110111110101000011111
),
        .k2(32'b00111100111100011011110000001010
),
        .k3(32'b00111101100110000001100100110100
),
        .k4(32'b10111100110010100111101000000001
),
        .k5(32'b00111100110011000100010001111010
),
        .k6(32'b00111101111110011111110100101100
),
        .k7(32'b00111110000100010111000110001100
),
        .k8(32'b00111100110110101010001100110001
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
        .k0(32'b00111101100100011001000010000011
),
        .k1(32'b00111101111111001110011101001111
),
        .k2(32'b00111101010111011101010001010110
),
        .k3(32'b00111101101100100110010010001110
),
        .k4(32'b10111110000100100000100111011101
),
        .k5(32'b00111101101110001001101000101110
),
        .k6(32'b00111101011110001101000111100100
),
        .k7(32'b00111110000100100010010001111000
),
        .k8(32'b10111101111000101101111001000010
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
        .k0(32'b00111101110011011011111001010011
),
        .k1(32'b00111101111110001010110110010101
),
        .k2(32'b00111100101000011001110000100000
),
        .k3(32'b00111100111100111110111111011001
),
        .k4(32'b00111101101001000010110110111001
),
        .k5(32'b00111011000001110110101001010101
),
        .k6(32'b00111101110111111111101100000000
),
        .k7(32'b00111110000100111100110010101100
),
        .k8(32'b00111101011010111010111011100011
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
        .k0(32'b10111101010001011100001010001010
),
        .k1(32'b00111101100001011110000000000100
),
        .k2(32'b00111100101101100001001000100000
),
        .k3(32'b10111101111100000111101001101101
),
        .k4(32'b00111011100001010010100110111100
),
        .k5(32'b00111100101000111001111011100111
),
        .k6(32'b10111101100110101001001011011100
),
        .k7(32'b00111101111010000100101110001100
),
        .k8(32'b00111101100010110001101000010110
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
        .k0(32'b00111101111011001011011010010110
),
        .k1(32'b10111101111110011100111000110010
),
        .k2(32'b00111100100100110010100111000010
),
        .k3(32'b10111100101010011011001100101001
),
        .k4(32'b10111101110000100111000010001100
),
        .k5(32'b10111011111010111001000011000011
),
        .k6(32'b00111110000101011001011010001011
),
        .k7(32'b00111100111010011101001100011111
),
        .k8(32'b10111101100010101001000000000010
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
        .k0(32'b10111110000010010000010100101111
),
        .k1(32'b00111100000001110101010010111101
),
        .k2(32'b00111100010010110001111100101000
),
        .k3(32'b10111100111010000000111010110110
),
        .k4(32'b00111110000001100010000001010100
),
        .k5(32'b00111101000011011110010100110101
),
        .k6(32'b00111100101010101110111111011011
),
        .k7(32'b00111101110101001000011111010000
),
        .k8(32'b10111101111011101111101001011010
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
        .k0(32'b00111101000110000110101001100101
),
        .k1(32'b00111101010000101011001101110010
),
        .k2(32'b00111101001011010011000001011001
),
        .k3(32'b10111110000001010010011001001001
),
        .k4(32'b00111100110110100110011100100111
),
        .k5(32'b00111100111010101111111000111110
),
        .k6(32'b00111110000011101000111010111001
),
        .k7(32'b10111101100111011100011001001011
),
        .k8(32'b00111101101011010010101010110011
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
        .k0(32'b00111101101010010101101100011010
),
        .k1(32'b00111101011110010100110001000100
),
        .k2(32'b00111101101000100011111000110000
),
        .k3(32'b10111100100001111100101011101111
),
        .k4(32'b10111100000110110101111101010010
),
        .k5(32'b10111101101011010000101000111110
),
        .k6(32'b10111101011110011111001010100110
),
        .k7(32'b10111100101100000000000101011000
),
        .k8(32'b10111101000001011010010111011010
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
        .k0(32'b00111101001101100111101101111011
),
        .k1(32'b00111101000000010000100110100001
),
        .k2(32'b10111101110101011111100110001110
),
        .k3(32'b10111101011110000000100100011100
),
        .k4(32'b10111101100000010110100001100100
),
        .k5(32'b00111101000110011001000011100110
),
        .k6(32'b00111101100011101010000111100101
),
        .k7(32'b10111011110100100111001001100111
),
        .k8(32'b10111101110111001100110010101100
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
        .k0(32'b00111110000011101000111111000111
),
        .k1(32'b00111110000001011100100000110100
),
        .k2(32'b10111100001100111101111010111011
),
        .k3(32'b10111100101001010011000111110111
),
        .k4(32'b00111110000111001100111100011011
),
        .k5(32'b10111101000111001111101010010100
),
        .k6(32'b00111101110101000101100010101101
),
        .k7(32'b00111101000000010010110000011001
),
        .k8(32'b10111101100001101010001110110011
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
        .k0(32'b10111101100001100010000011101100
),
        .k1(32'b10111101100010100101110011111000
),
        .k2(32'b00111101110000000101111010011101
),
        .k3(32'b10111100111100001001001110111101
),
        .k4(32'b00111101111011111010110001001110
),
        .k5(32'b10111101111000111010011010011000
),
        .k6(32'b00111100111011101111011011111010
),
        .k7(32'b00111101010100101011011000001101
),
        .k8(32'b00111101011001000010011011010101
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
        .k0(32'b00111110000110111111011001100101
),
        .k1(32'b10111101111000101101110101011101
),
        .k2(32'b10111101011110101110111010101100
),
        .k3(32'b00111110001000101010001110101110
),
        .k4(32'b00111110000110011010101010110101
),
        .k5(32'b00111100100110001100111110011001
),
        .k6(32'b10111101100101111001110011100101
),
        .k7(32'b00111110000111110000101101010010
),
        .k8(32'b00111100110110110010011101101010
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
        .k0(32'b00111101100101110010000111100111
),
        .k1(32'b00111101101010110110110110111000
),
        .k2(32'b10111101110000101110111101011001
),
        .k3(32'b00111100001001111011101101011010
),
        .k4(32'b00111011111111011000010001011010
),
        .k5(32'b00111101001001010001100101001100
),
        .k6(32'b10111110001000001000111100110011
),
        .k7(32'b00111101110000101110111111010110
),
        .k8(32'b00111101111000011001010110110111
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