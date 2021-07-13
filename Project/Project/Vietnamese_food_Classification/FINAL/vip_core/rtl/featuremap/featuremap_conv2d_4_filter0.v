module featuremap_conv2d_4_filter0
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b00111011110000000001110101000000
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
        .k0(32'b10111110000100110001011110000000
),
        .k1(32'b00111110000001010100010110010111
),
        .k2(32'b10111101100110000011100000111110
),
        .k3(32'b00111101101010101000100001011101
),
        .k4(32'b00111101111111110001100001000111
),
        .k5(32'b10111101100010000010011110011101
),
        .k6(32'b10111101000100110001011111101001
),
        .k7(32'b00111101001100110111110001111100
),
        .k8(32'b00111101011111101011010101100011
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
        .k0(32'b10111101101101100010100101001011
),
        .k1(32'b10111101101001000000111100100010
),
        .k2(32'b10111101100111010110101011000101
),
        .k3(32'b10111101001001100000111010110011
),
        .k4(32'b10111100101011011110001001010101
),
        .k5(32'b10111101001110000100100011001001
),
        .k6(32'b10111101100101010111011111101111
),
        .k7(32'b10111101011011101101111010001100
),
        .k8(32'b00111100111010011001101010011100
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
        .k0(32'b00111101001110100101111100010011
),
        .k1(32'b10111101110111010001001010100110
),
        .k2(32'b10111101100111110000000010011011
),
        .k3(32'b10111101111000000011001101001111
),
        .k4(32'b10111101010000111100001000110011
),
        .k5(32'b00111110000011111001010010011001
),
        .k6(32'b10111101101010101100011110110101
),
        .k7(32'b10111100100100001111010011100001
),
        .k8(32'b10111100110101000101100111110000
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
        .k0(32'b00111101100011010000011000101000
),
        .k1(32'b00111101010110110010110010101101
),
        .k2(32'b10111101110010000011010111110110
),
        .k3(32'b10111101100111101010100010101011
),
        .k4(32'b10111101101110010001111001111001
),
        .k5(32'b10111100000111101010111110100000
),
        .k6(32'b10111101001000000110111011110000
),
        .k7(32'b00111101010100000010001010001101
),
        .k8(32'b00111101011101101100101110110011
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
        .k0(32'b00111110000000001110011000110010
),
        .k1(32'b00111101000001011010101111100000
),
        .k2(32'b10111101101011101011100101100111
),
        .k3(32'b00111101111101011010011110101101
),
        .k4(32'b00111101111011011111111100010101
),
        .k5(32'b10111100111011100101110110000010
),
        .k6(32'b10111101110010000100011110011101
),
        .k7(32'b10111101011111110010001110101011
),
        .k8(32'b10111101101110011101111110101011
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
        .k0(32'b00111101100101010001111001001110
),
        .k1(32'b00111101000110010000000010100001
),
        .k2(32'b10111110000001110000011101100000
),
        .k3(32'b00111110000100000101101111010110
),
        .k4(32'b00111101100001001110101110010100
),
        .k5(32'b00111110000011111011011011100110
),
        .k6(32'b10111101001011010101110110001000
),
        .k7(32'b10111101100000010000011111010001
),
        .k8(32'b10111110000001100111111010000011
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
        .k0(32'b10111101100101111010010110111110
),
        .k1(32'b10111101011001100000010101011101
),
        .k2(32'b00111101001011110010111100000111
),
        .k3(32'b00111101100110011101000101111101
),
        .k4(32'b00111100100001101011000101101111
),
        .k5(32'b00111110000110100000010001010100
),
        .k6(32'b10111100011010100111111100101011
),
        .k7(32'b00111110000000010001100011001111
),
        .k8(32'b10111100110000100111100111111110
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
        .k0(32'b00111110000100100001010011100000
),
        .k1(32'b10111110000000111000001110111101
),
        .k2(32'b10111101110101100101111110110110
),
        .k3(32'b00111101000111101000010110010011
),
        .k4(32'b10111101011101001101101011111010
),
        .k5(32'b00111110000011010101001001001010
),
        .k6(32'b10111101010111101110111101010010
),
        .k7(32'b00111101111110101001001111111101
),
        .k8(32'b10111101101111001000000111010001
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
        .k0(32'b10111101001101111010011100001011
),
        .k1(32'b00111110000000010011001100111011
),
        .k2(32'b10111101100111101100001001000111
),
        .k3(32'b00111101010101000110111001110001
),
        .k4(32'b10111101100010011101010111111001
),
        .k5(32'b10111101001111101110100010110011
),
        .k6(32'b00111100010111000101001110001111
),
        .k7(32'b10111101101001000111101101101001
),
        .k8(32'b10111101010101010101010000010010
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
        .k0(32'b10111100100111111011101100100101
),
        .k1(32'b10111101100011010001111000011100
),
        .k2(32'b00111101110010100000111100001010
),
        .k3(32'b00111101111000111000011101111100
),
        .k4(32'b00111101100000110111110100000011
),
        .k5(32'b10111101111000000000010111010110
),
        .k6(32'b00111101111000001001010011101001
),
        .k7(32'b00111110000010011110100010011010
),
        .k8(32'b10111101101011100011101110111110
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
        .k0(32'b10111101100111101111101010110111
),
        .k1(32'b00111101100001000011011110001100
),
        .k2(32'b00111101101111001011111111100010
),
        .k3(32'b00111101101101000111011001111010
),
        .k4(32'b10111100110101111011001111000100
),
        .k5(32'b00111101011001001101001010100000
),
        .k6(32'b10111101110011110101111010100101
),
        .k7(32'b00111100010101001011001010011101
),
        .k8(32'b10111101000011001011111110100000
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
        .k0(32'b10111101000011111110000101111111
),
        .k1(32'b10111101000101001001011101000001
),
        .k2(32'b10111100001011000010011100101000
),
        .k3(32'b10111101101110111011100100111010
),
        .k4(32'b00111110000011010010100100101110
),
        .k5(32'b10111101110000010101010101100011
),
        .k6(32'b00111101111110101110000110010101
),
        .k7(32'b10111101010000001000111011110100
),
        .k8(32'b00111101100010010111001100010110
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
        .k0(32'b10111101100111100010000111100100
),
        .k1(32'b00111110000110111110101100001100
),
        .k2(32'b00111101011101000010011111110111
),
        .k3(32'b00111101110111010110011110001001
),
        .k4(32'b00111101101101011011111001011010
),
        .k5(32'b10111101110011001010000010000110
),
        .k6(32'b10111100100111011001010100011010
),
        .k7(32'b00111110000101011011110111011011
),
        .k8(32'b10111110000001010110111010011011
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
        .k0(32'b10111100110001010101101001001110
),
        .k1(32'b10111101011011111011100100011101
),
        .k2(32'b10111100111000101100011101010001
),
        .k3(32'b00111101100101001110110010000011
),
        .k4(32'b00111101001000010001111011100010
),
        .k5(32'b10111101001011110110000010011100
),
        .k6(32'b00111101000010100111001110011100
),
        .k7(32'b00111100100000110100001111101001
),
        .k8(32'b10111101101100010111110111111001
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
        .k0(32'b00111101101101110001000111100100
),
        .k1(32'b10111101110101111110011010010011
),
        .k2(32'b00111110000100100111110100010011
),
        .k3(32'b00111100100100010110101100110101
),
        .k4(32'b00111110000010000111101111100100
),
        .k5(32'b10111100000111010010110011100100
),
        .k6(32'b10111101000101111100010101001000
),
        .k7(32'b00111101111110110001001101010010
),
        .k8(32'b10111100110110111101111000000001
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
        .k0(32'b10111100110111101001000011000011
),
        .k1(32'b10111101011101100001001001000110
),
        .k2(32'b10111110000001000110100111001010
),
        .k3(32'b10111101101010100110011001100111
),
        .k4(32'b00111101011101100100011001110001
),
        .k5(32'b10111101000111101101000101111110
),
        .k6(32'b00111101010110100010101110000000
),
        .k7(32'b10111101001000111001101110011111
),
        .k8(32'b00111101000100010101011100001010
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