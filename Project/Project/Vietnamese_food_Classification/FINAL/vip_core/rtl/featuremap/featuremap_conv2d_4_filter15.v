module featuremap_conv2d_4_filter15
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b10111011101111001101010000000110
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
        .k0(32'b00111101000001001111110000100010
),
        .k1(32'b00111101100000010110100011011000
),
        .k2(32'b00111101001001101111101110111001
),
        .k3(32'b10111100110001100010110100100010
),
        .k4(32'b00111101110110000111100101001000
),
        .k5(32'b10111101001101000001101000001011
),
        .k6(32'b10111101110100010111111000110111
),
        .k7(32'b00111101011100100111001110000111
),
        .k8(32'b00111101011100100000111011000001
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
        .k0(32'b10111110000011101000101101110000
),
        .k1(32'b10111101101010000000001101100110
),
        .k2(32'b00111100110100110111000011111101
),
        .k3(32'b10111101110100100001111110011010
),
        .k4(32'b00111101011100010100100110010101
),
        .k5(32'b00111101001110110111000110000001
),
        .k6(32'b10111101101100000101011010111011
),
        .k7(32'b00111101110110101001100110011111
),
        .k8(32'b10111100100001101111101000000101
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
        .k0(32'b10111101110110001110101111111111
),
        .k1(32'b10111101100000101001010110110010
),
        .k2(32'b00111101000000100111110011010110
),
        .k3(32'b10111101001111100100101110110011
),
        .k4(32'b00111101010100011001101011100100
),
        .k5(32'b00111101100001101100100010110110
),
        .k6(32'b10111110000011011111100110111000
),
        .k7(32'b00111110000000110100000001100101
),
        .k8(32'b00111100111100101110010001101111
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
        .k0(32'b10111110000010110101100101011010
),
        .k1(32'b10111101010000111100110111010011
),
        .k2(32'b10111100111100000101110100110010
),
        .k3(32'b10111101101100110000100111011011
),
        .k4(32'b00111101000110000010011010000011
),
        .k5(32'b10111101100000100101101100101011
),
        .k6(32'b10111101010001001011101101001001
),
        .k7(32'b10111101110010111100011101110110
),
        .k8(32'b10111101101110101011110100010010
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
        .k0(32'b00111101100101111111000011110001
),
        .k1(32'b10111101101011110111100101100101
),
        .k2(32'b00111100101101111001110110111011
),
        .k3(32'b00111101110100110011100101101101
),
        .k4(32'b00111101001000110011001111100110
),
        .k5(32'b10111101011100100001001010000010
),
        .k6(32'b00111101101101110101010101001001
),
        .k7(32'b10111101110101001001100111111101
),
        .k8(32'b00111101010001011011110010101010
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
        .k0(32'b00111101010000100101000001001100
),
        .k1(32'b10111100001011010001000111101011
),
        .k2(32'b00111101110111101011001110000010
),
        .k3(32'b00111101010111110110101100000101
),
        .k4(32'b00111101000111111000110101010000
),
        .k5(32'b00111011010001001110101011000011
),
        .k6(32'b10111101111010110110011011000101
),
        .k7(32'b10111010011100010110000011001111
),
        .k8(32'b10111010111101100001100111010100
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
        .k0(32'b10111100100101000101001101111000
),
        .k1(32'b10111110000101100000100100011100
),
        .k2(32'b00111101001100001111101111001100
),
        .k3(32'b10111101100111001110100011001101
),
        .k4(32'b00111101111110100011100110101011
),
        .k5(32'b10111110000111000001110000010010
),
        .k6(32'b00111100010010010101001101110010
),
        .k7(32'b10111100101000100010011111000100
),
        .k8(32'b10111100111011000010101001011101
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
        .k0(32'b10111100001101100011001110110000
),
        .k1(32'b00111101111001011110011110001100
),
        .k2(32'b10111101000100101111101000111000
),
        .k3(32'b10111101011001000110110110101111
),
        .k4(32'b10111100110001101001100100100111
),
        .k5(32'b10111110000001000101111101101000
),
        .k6(32'b10111101000110110110000001001111
),
        .k7(32'b10111110000011100101001101011100
),
        .k8(32'b00111101111011110001011000110101
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
        .k0(32'b00111100110001101000011100010000
),
        .k1(32'b10111101101000011100110111111100
),
        .k2(32'b10111101111001011010100111000100
),
        .k3(32'b00111101000010010111100111101000
),
        .k4(32'b10111110000001011010001000101000
),
        .k5(32'b00111110000000100100101111100101
),
        .k6(32'b10111110000100111101110010111100
),
        .k7(32'b00111100100111101101101011100011
),
        .k8(32'b10111101011110111010000110011010
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
        .k0(32'b00111101111000000010001111100101
),
        .k1(32'b00111110000011011100110011110001
),
        .k2(32'b00111100111011111001000100110010
),
        .k3(32'b00111101110111010100011000101111
),
        .k4(32'b00111010111110110010011011011111
),
        .k5(32'b00111101101000101010110000101101
),
        .k6(32'b00111100101010011000011001111110
),
        .k7(32'b00111101101110011010101011100100
),
        .k8(32'b00111101100001111000101101101011
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
        .k0(32'b10111101110101111011011111001000
),
        .k1(32'b00111101000100111110010100111100
),
        .k2(32'b00111101101010010101110111011001
),
        .k3(32'b00111100111010010011000100010100
),
        .k4(32'b10111101100101110100111111110110
),
        .k5(32'b10111101011011001010100110011101
),
        .k6(32'b10111100110010001001100000101000
),
        .k7(32'b10111100100001001001100001011000
),
        .k8(32'b00111101111010100010101000110111
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
        .k0(32'b00111011000010110100011011111010
),
        .k1(32'b10111101101010110011010110101010
),
        .k2(32'b00111101010101000011010000110111
),
        .k3(32'b10111110000100010011001001100010
),
        .k4(32'b10111100101111001001101010111001
),
        .k5(32'b10111100111111110100001100110100
),
        .k6(32'b10111110000010101001010111010011
),
        .k7(32'b10111100101010100011100000101011
),
        .k8(32'b10111100010010001110001110000000
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
        .k0(32'b00111110000011111101111010111100
),
        .k1(32'b00111101110100010101101100011100
),
        .k2(32'b00111110000100000101001110100111
),
        .k3(32'b00111110000010000111001000111110
),
        .k4(32'b00111101110010011101000110010011
),
        .k5(32'b10111100001100011001011100111111
),
        .k6(32'b00111100111000000110110111100111
),
        .k7(32'b10111101101000011011111101100000
),
        .k8(32'b00111101101111001010110100101010
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
        .k0(32'b00111101001101010010001111010000
),
        .k1(32'b00111101111110001011010000000101
),
        .k2(32'b00111101001011001011110001011000
),
        .k3(32'b00111101110010100100101000010100
),
        .k4(32'b00111101000111000101000001010110
),
        .k5(32'b00111101111000011001100110110010
),
        .k6(32'b00111100001110110111101111100000
),
        .k7(32'b00111101101000001011100110110001
),
        .k8(32'b00111101100011010000010000011101
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
        .k0(32'b10111101111110110010001100110100
),
        .k1(32'b10111101110000010001000011010000
),
        .k2(32'b00111101000010011011001111110000
),
        .k3(32'b00111110000101010000100010000000
),
        .k4(32'b10111100101110011001110011101100
),
        .k5(32'b10111100011110110001100101111101
),
        .k6(32'b00111110000000111001010010000010
),
        .k7(32'b10111101011010100111011001011101
),
        .k8(32'b00111100010011111100111100110000
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
        .k0(32'b00111110000011110100101000101111
),
        .k1(32'b10111100100110101101011110000111
),
        .k2(32'b00111101110100000010101111111010
),
        .k3(32'b00111100010001101101111000101010
),
        .k4(32'b10111101110010100101111000111010
),
        .k5(32'b00111110000101001001010101011100
),
        .k6(32'b10111101010111010011110011100010
),
        .k7(32'b00111011110101110100111000111011
),
        .k8(32'b00111101111010110010111101101010
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