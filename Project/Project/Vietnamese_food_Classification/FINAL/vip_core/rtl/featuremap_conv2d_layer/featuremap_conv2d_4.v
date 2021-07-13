////////////////////////////////////////// FILTER 0 //////////////////////////////////////////
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
////////////////////////////////////////// FILTER 1 //////////////////////////////////////////
module featuremap_conv2d_4_filter1
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b00111100000111100011010010011100
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
        .k0(32'b00111101000110001011101100001101
),
        .k1(32'b10111101101101111010011111001100
),
        .k2(32'b00111100001011100001110100010100
),
        .k3(32'b00111010001000010010000100000000
),
        .k4(32'b10111110000011010101110111001000
),
        .k5(32'b00111110000011110011110111001010
),
        .k6(32'b10111101101100000010000011111001
),
        .k7(32'b10111100011000111110011010100111
),
        .k8(32'b00111101000011010101001101001110
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
        .k0(32'b00111100101001100001001100011000
),
        .k1(32'b00111110000111000101110011010111
),
        .k2(32'b10111101000000010011010001100000
),
        .k3(32'b00111101111101000010111011010011
),
        .k4(32'b10111101100010111101011000001001
),
        .k5(32'b00111100000101111011001100000001
),
        .k6(32'b00111101100011010111010100010010
),
        .k7(32'b10111101000001101110000001101100
),
        .k8(32'b00111110000011000110101111110101
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
        .k0(32'b10111101110011101011010100011000
),
        .k1(32'b10111101100011001010110110011111
),
        .k2(32'b10111100100000110001100011001011
),
        .k3(32'b00111110000000000101110001010100
),
        .k4(32'b00111110000011110001000111111000
),
        .k5(32'b00111110000101110110111110101011
),
        .k6(32'b00111101100001011000111000101110
),
        .k7(32'b00111101101101111001001101101110
),
        .k8(32'b00111011001101111011100001001010
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
        .k0(32'b10111101111011110011110111010111
),
        .k1(32'b10111010111001001010101100001100
),
        .k2(32'b00111101000000010101001011001111
),
        .k3(32'b00111101100101100111110000101110
),
        .k4(32'b10111101011010010000000100001111
),
        .k5(32'b10111100111010110100001100101000
),
        .k6(32'b10111100111011010111010001010101
),
        .k7(32'b00111100101101110100010001110110
),
        .k8(32'b00111110000001111100100110001111
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
        .k0(32'b00111100000110111001010000111011
),
        .k1(32'b10111101101111111000001100110011
),
        .k2(32'b10111101100101001000110101111101
),
        .k3(32'b10111101001100000000001001101001
),
        .k4(32'b00111101001001110010010000100110
),
        .k5(32'b10111110000001101010111111110001
),
        .k6(32'b10111101111100110100010100000111
),
        .k7(32'b10111101000110110110110010000000
),
        .k8(32'b00111101111100001011101010100110
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
        .k0(32'b10111101101001010101110100010000
),
        .k1(32'b10111101100001000100010111011101
),
        .k2(32'b10111101100110101010110000001011
),
        .k3(32'b10111100110011110101011001101001
),
        .k4(32'b00111101011110000010011111101111
),
        .k5(32'b00111110000001000100100001000101
),
        .k6(32'b10111011010001001101111110110100
),
        .k7(32'b00111100101001110100010101101001
),
        .k8(32'b00111101011010011000001101101011
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
        .k0(32'b00111100110110000000110100001000
),
        .k1(32'b10111010100010011010111010111110
),
        .k2(32'b10111100010011101111010011000100
),
        .k3(32'b10111101101100111110110001110011
),
        .k4(32'b00111101111100100110101011110100
),
        .k5(32'b10111100100011000011001100100000
),
        .k6(32'b10111101101011100010011110001010
),
        .k7(32'b10111100101111101001111101011010
),
        .k8(32'b10111101001010101001010111011000
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
        .k0(32'b10111101110100011000110111010001
),
        .k1(32'b00111101010110000110011000100001
),
        .k2(32'b10111101010000111100111111101111
),
        .k3(32'b10111101111011001100101010010101
),
        .k4(32'b00111101000100010111001101100100
),
        .k5(32'b10111101010110101011001101101111
),
        .k6(32'b00111101110111101000011000101110
),
        .k7(32'b10111100010101111011011001001000
),
        .k8(32'b10111101100101101111010001011010
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
        .k0(32'b00111101100111011101111110110010
),
        .k1(32'b10111101110000101111000101100100
),
        .k2(32'b10111100111000011111111010011111
),
        .k3(32'b10111101100010100001010001110101
),
        .k4(32'b10111110000000000110011100101000
),
        .k5(32'b10111101101111000001000000011101
),
        .k6(32'b00111100100000110000010101111010
),
        .k7(32'b10111101011011001100010101111000
),
        .k8(32'b00111101101101011100001110011100
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
        .k0(32'b00111101111000111001110011011110
),
        .k1(32'b00111101001000000000011010000101
),
        .k2(32'b00111101101111010000111011110000
),
        .k3(32'b00111101001111110001011100001001
),
        .k4(32'b00111100110111111000110010101010
),
        .k5(32'b10111101100011100110111110110100
),
        .k6(32'b10111101101101000101000001000010
),
        .k7(32'b10111101101110000011000110000010
),
        .k8(32'b00111101011110001011101110001100
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
        .k0(32'b10111101101100100100011110111010
),
        .k1(32'b10111011110011101111000011000001
),
        .k2(32'b10111011101000110010000110110100
),
        .k3(32'b10111101110010000001110110010000
),
        .k4(32'b00111101110011000101110101010101
),
        .k5(32'b00111101110001000001011100011110
),
        .k6(32'b00111100001101000001011001010101
),
        .k7(32'b10111101101110100000000111100000
),
        .k8(32'b00111101001000001101111111101100
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
        .k0(32'b10111101100011000101110010011101
),
        .k1(32'b00111101110110100110011000111011
),
        .k2(32'b10111101100110101011010000011010
),
        .k3(32'b10111110000001101001101001011001
),
        .k4(32'b10111101111001100111111010100000
),
        .k5(32'b10111011001101010100100101000110
),
        .k6(32'b10111101010001001100100000111101
),
        .k7(32'b10111101101101001010101001011000
),
        .k8(32'b00111100111101010000000010101111
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
        .k0(32'b00111101000011111101010101101010
),
        .k1(32'b10111110000001001001000011111111
),
        .k2(32'b10111011111000100101001010011100
),
        .k3(32'b00111100001110111000110010100100
),
        .k4(32'b00111101111100011110000111100110
),
        .k5(32'b10111100101101001100000100101010
),
        .k6(32'b10111110000000110101011101110001
),
        .k7(32'b10111101001101011111111011011100
),
        .k8(32'b10111100100111101101111100011110
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
        .k0(32'b10111101100111110000000011110000
),
        .k1(32'b00111110000001111011001110010101
),
        .k2(32'b10111101111011001001011111010101
),
        .k3(32'b00111101100101110000101010111100
),
        .k4(32'b00111101000001000101010011011100
),
        .k5(32'b00111101110101010110100001001101
),
        .k6(32'b00111101010110011101010010000101
),
        .k7(32'b00111101111011001100111001101111
),
        .k8(32'b00111101000010011110000110100111
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
        .k0(32'b10111110000011111100101110010011
),
        .k1(32'b00111100101001111101111110110100
),
        .k2(32'b10111110001001010101000010101101
),
        .k3(32'b00111101001001010110011001011000
),
        .k4(32'b10111101101011010010001110001000
),
        .k5(32'b10111011101110111001110011011111
),
        .k6(32'b00111101100101011101001101010001
),
        .k7(32'b00111101001000110010001101010010
),
        .k8(32'b00111101100110011101010011001111
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
        .k0(32'b10111101111110011100100001100100
),
        .k1(32'b00111101110100111111101110101111
),
        .k2(32'b10111101110110110101000110100100
),
        .k3(32'b00111101110001011101000010010011
),
        .k4(32'b00111101000001101111110011000011
),
        .k5(32'b10111110000100000010000101100010
),
        .k6(32'b00111011100001100100011010001001
),
        .k7(32'b00111101100000100011010111001000
),
        .k8(32'b10111100101010100001100011000011
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
////////////////////////////////////////// FILTER 2 //////////////////////////////////////////
module featuremap_conv2d_4_filter2
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b10111011000001001111011111011101
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
        .k0(32'b10111110000000001101011010101011
),
        .k1(32'b00111101000111111011011000000001
),
        .k2(32'b00111100100111100010110110111010
),
        .k3(32'b10111110000001100110001100110001
),
        .k4(32'b00111101111011101100001110110101
),
        .k5(32'b00111101110100011101111101110110
),
        .k6(32'b10111101111011110001000110011000
),
        .k7(32'b10111101110010100011111000011000
),
        .k8(32'b00111101101100011110010100010110
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
        .k0(32'b00111101111011010110011111110000
),
        .k1(32'b00111101110001100000000001000010
),
        .k2(32'b00111101101000111100101110010001
),
        .k3(32'b00111110000001100010011011111001
),
        .k4(32'b00111101111010001001101110110010
),
        .k5(32'b00111011000100000001110110000000
),
        .k6(32'b10111100010011100000001111011101
),
        .k7(32'b10111101000000111110011000000111
),
        .k8(32'b10111101100101110110000000100011
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
        .k0(32'b10111101110100111111000011111110
),
        .k1(32'b10111101111010100010100011001000
),
        .k2(32'b00111011110100011001000100011010
),
        .k3(32'b10111101111111100000010011110110
),
        .k4(32'b00111101111110000011110000010001
),
        .k5(32'b10111101110000111100110010011010
),
        .k6(32'b10111101100101110010100010000010
),
        .k7(32'b10111101010100111101101110001010
),
        .k8(32'b00111101011111010000011111100100
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
        .k0(32'b10111011000100000110100011100111
),
        .k1(32'b00111101111000100001011100000010
),
        .k2(32'b00111100100111100110111010101010
),
        .k3(32'b10111101101011111101011010000011
),
        .k4(32'b00111110000010101000111101110001
),
        .k5(32'b00111101011000010010110010111011
),
        .k6(32'b10111101110111000001101110001001
),
        .k7(32'b00111101010111100011101101011001
),
        .k8(32'b00111101101000011111001011001000
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
        .k0(32'b00111100010010110110101001111100
),
        .k1(32'b00111101111100000100001101110111
),
        .k2(32'b00111100110111100011101111101111
),
        .k3(32'b00111101111111100110110100110000
),
        .k4(32'b10111101110010000011011000000101
),
        .k5(32'b00111101010101100011010101010110
),
        .k6(32'b10111101111011111101000101010101
),
        .k7(32'b10111100110110111011010001101000
),
        .k8(32'b00111101111101010111001110001111
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
        .k0(32'b00111101111000000110000011101001
),
        .k1(32'b10111101101100111011011110111010
),
        .k2(32'b10111100101011000111011010110011
),
        .k3(32'b10111101111001000101100010010010
),
        .k4(32'b10111100110101110001010011101001
),
        .k5(32'b00111101101100111011101100011110
),
        .k6(32'b10111101010111011111001001011100
),
        .k7(32'b10111101101011010101000110100100
),
        .k8(32'b00111101100000011111000011001010
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
        .k0(32'b10111101001101100001010011011011
),
        .k1(32'b00111101110011010001000100011100
),
        .k2(32'b10111100110110000101001110010111
),
        .k3(32'b00111101111101101111111010101101
),
        .k4(32'b00111101101111001101101111000000
),
        .k5(32'b10111101100111011001000011001001
),
        .k6(32'b10111110000001110010000111011010
),
        .k7(32'b00111101000100101110011111110000
),
        .k8(32'b00111110000010100000011011100001
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
        .k0(32'b10111100110011111001010001110111
),
        .k1(32'b00111101010100011000011100100111
),
        .k2(32'b00111101000001000011000001111001
),
        .k3(32'b10111101000001110010101111000101
),
        .k4(32'b10111101000101000110110111101100
),
        .k5(32'b00111101111111111010000101101100
),
        .k6(32'b00111101110101101110111010100000
),
        .k7(32'b00111101110111111011110011100011
),
        .k8(32'b00111110000101100010000101100111
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
        .k0(32'b00111101011001101010000000100011
),
        .k1(32'b10111101101100100111111001111110
),
        .k2(32'b10111101000100000010110110010011
),
        .k3(32'b00111101011111000101011000110111
),
        .k4(32'b00111101101000101111001010101011
),
        .k5(32'b00111101100010000111101000001001
),
        .k6(32'b00111101100010001000101101100100
),
        .k7(32'b10111101101010110111110101101100
),
        .k8(32'b10111101001011110110111000100110
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
        .k0(32'b10111101110010000110100011010111
),
        .k1(32'b00111110000000110101001000001101
),
        .k2(32'b10111101101111110101110111010100
),
        .k3(32'b10111100111010001101110100101111
),
        .k4(32'b10111100110101100001011001101001
),
        .k5(32'b00111100000100101010101001111101
),
        .k6(32'b10111110001000001001001110011010
),
        .k7(32'b00111101101011011001010101010111
),
        .k8(32'b10111011001100110011000011111110
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
        .k0(32'b10111101010011000011011111001101
),
        .k1(32'b00111101111110011011111000000110
),
        .k2(32'b10111011100011110000101000000110
),
        .k3(32'b00111110000001000110110100101101
),
        .k4(32'b10111101100000100110001011101101
),
        .k5(32'b10111101000101100100011100011011
),
        .k6(32'b00111011001110010010110100110101
),
        .k7(32'b00111100111010111001011010100100
),
        .k8(32'b10111101110001000100010011110010
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
        .k0(32'b10111100100100011010001001110111
),
        .k1(32'b10111101101111110111011100100001
),
        .k2(32'b00111100110000110110001111010100
),
        .k3(32'b00111110000101000110011100011100
),
        .k4(32'b10111110000001101001100110111101
),
        .k5(32'b00111101110110100000110100011101
),
        .k6(32'b00111101001010101100101110000101
),
        .k7(32'b10111101110111010110011111001010
),
        .k8(32'b00111101100101101000001011111001
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
        .k0(32'b00111101011000101100111011100001
),
        .k1(32'b10111011101111100000011111111000
),
        .k2(32'b00111101100111001110001101110111
),
        .k3(32'b10111011101100000011100101001000
),
        .k4(32'b10111100101000111000111010100001
),
        .k5(32'b10111100010111000011111000000111
),
        .k6(32'b00111101110000011000100101100000
),
        .k7(32'b10111101010100100111101100110101
),
        .k8(32'b00111101011100110000000110111101
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
        .k0(32'b00111101011010100010110000110011
),
        .k1(32'b00111101110110000101100100110100
),
        .k2(32'b00111101110011101011000000101101
),
        .k3(32'b00111101101010111000110101100000
),
        .k4(32'b10111110000001001011000011000000
),
        .k5(32'b10111100110000010110011101101101
),
        .k6(32'b10111101111100010101111011010010
),
        .k7(32'b00111110000000011111000111100100
),
        .k8(32'b00111100011000111010011100101100
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
        .k0(32'b00111010101110011000011011111001
),
        .k1(32'b10111101010111110011000111100111
),
        .k2(32'b00111100101001101110101010010000
),
        .k3(32'b10111101011101000010100100101011
),
        .k4(32'b00111110000001111010011110011110
),
        .k5(32'b00111101110110001011111101001110
),
        .k6(32'b10111100110111111011001011100110
),
        .k7(32'b10111100111100010100011001111101
),
        .k8(32'b10111101000000100011011011011000
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
        .k0(32'b00111101111100110100111011100111
),
        .k1(32'b10111110000000111011101011010010
),
        .k2(32'b00111100110101010010111100100000
),
        .k3(32'b10111101001010000100001100001101
),
        .k4(32'b00111100100100110111100110110101
),
        .k5(32'b00111110000000010111000011111011
),
        .k6(32'b10111101100111011101111010111111
),
        .k7(32'b10111101010011110011101000011001
),
        .k8(32'b10111011101100000111111100011000
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
////////////////////////////////////////// FILTER 3 //////////////////////////////////////////
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
////////////////////////////////////////// FILTER 4 //////////////////////////////////////////
module featuremap_conv2d_4_filter4
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b10111011001001010011111000000010
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
        .k0(32'b00111101010011100100001101001110
),
        .k1(32'b10111110000001000110100011111110
),
        .k2(32'b10111101100000110111011010010001
),
        .k3(32'b00111110000001110111111011101111
),
        .k4(32'b10111101001100001110100000111000
),
        .k5(32'b10111110000010111001110110001110
),
        .k6(32'b10111100011101010011011011010110
),
        .k7(32'b10111100110110110000001110010101
),
        .k8(32'b00111010100111100011000011111110
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
        .k0(32'b00111101101111100010001100111001
),
        .k1(32'b10111011010001010000101101000111
),
        .k2(32'b10111101111110010111011001011010
),
        .k3(32'b00111100110111000101100000000011
),
        .k4(32'b10111101001001000001001110000010
),
        .k5(32'b10111101011010001010111010001010
),
        .k6(32'b10111100010001100001110000111110
),
        .k7(32'b10111101101100010110001111111100
),
        .k8(32'b10111110000011111011000000100010
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
        .k0(32'b00111101100100011111010000110011
),
        .k1(32'b10111100111100010111011110110101
),
        .k2(32'b10111101101111110100101110010101
),
        .k3(32'b10111101111110101001000011010101
),
        .k4(32'b00111101111000100001011110011010
),
        .k5(32'b00111101110010110010100011011010
),
        .k6(32'b10111101111001111001001001111111
),
        .k7(32'b00111101111000111110101110001000
),
        .k8(32'b00111101011101100101111011110000
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
        .k0(32'b00111101111000000100010001110101
),
        .k1(32'b10111101001000111111000010111011
),
        .k2(32'b10111010010010011110111011010001
),
        .k3(32'b00111110000001100000010111010011
),
        .k4(32'b00111101011011000010100001010000
),
        .k5(32'b00111101010010011011101010110010
),
        .k6(32'b10111100000010011100011001111101
),
        .k7(32'b00111101111000100010000110000111
),
        .k8(32'b00111101111000001001000001110110
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
        .k0(32'b00111101110110011110000011110100
),
        .k1(32'b00111101010010011010111110010011
),
        .k2(32'b10111100111000110101011010110011
),
        .k3(32'b10111110000001110101100000011100
),
        .k4(32'b10111101010111111011100111101111
),
        .k5(32'b10111101010010100100001001001111
),
        .k6(32'b00111101101111100011011101100011
),
        .k7(32'b10111101001100111010101110000001
),
        .k8(32'b10111101100011001101011001000100
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
        .k0(32'b10111101101001100010000100100111
),
        .k1(32'b10111101010111100001010001110110
),
        .k2(32'b10111101101110010010100100000010
),
        .k3(32'b00111110000001010000111011000011
),
        .k4(32'b10111101111101000000010001011101
),
        .k5(32'b10111101010111101101111010100110
),
        .k6(32'b00111100011101010110011100001010
),
        .k7(32'b10111101100001111010001001100001
),
        .k8(32'b10111110000111011111100011000100
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
        .k0(32'b10111101010110110100110010011010
),
        .k1(32'b00111110000100001110010101011010
),
        .k2(32'b10111101111100110100111000101001
),
        .k3(32'b10111101100100110111011011101011
),
        .k4(32'b00111110000010000101101010101101
),
        .k5(32'b10111011000011011100011010101011
),
        .k6(32'b10111101011001000010011011101111
),
        .k7(32'b00111101110000011000110011110111
),
        .k8(32'b00111101001000110101100001101000
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
        .k0(32'b10111110000001001001001111001010
),
        .k1(32'b10111100001001111001101111001101
),
        .k2(32'b00111101010111001111000110111001
),
        .k3(32'b00111101001101101100000101011110
),
        .k4(32'b00111101101101110011001011110100
),
        .k5(32'b00111110000000010000011000111011
),
        .k6(32'b10111101100001001001011000100011
),
        .k7(32'b10111101101111100110000001011001
),
        .k8(32'b10111101111111111111011010101001
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
        .k0(32'b00111101101101111101010111010010
),
        .k1(32'b10111101110111001001011011010010
),
        .k2(32'b10111110000000101100101001000001
),
        .k3(32'b00111100110100111010000101101110
),
        .k4(32'b10111101011100101010101111110000
),
        .k5(32'b00111101100111001101010111011010
),
        .k6(32'b10111101100100000001100111011001
),
        .k7(32'b10111101100100010000100100011001
),
        .k8(32'b10111100001110111110011011011101
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
        .k0(32'b10111100110001110110011111001011
),
        .k1(32'b10111101110011011001111000110010
),
        .k2(32'b10111101010110100101111100100000
),
        .k3(32'b00111101101000100110111100011100
),
        .k4(32'b00111101100000101000110000110101
),
        .k5(32'b00111100100101001011100010001001
),
        .k6(32'b00111110001001000100011110000001
),
        .k7(32'b00111101111111100011111111001010
),
        .k8(32'b00111101001110001010010100010001
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
        .k0(32'b10111101100111011110100111111101
),
        .k1(32'b00111110000011110100110111010011
),
        .k2(32'b00111101100100010010011001001100
),
        .k3(32'b00111100011011111100111000110010
),
        .k4(32'b10111110000000110001011001001100
),
        .k5(32'b10111010110101101001110100100111
),
        .k6(32'b10111101100001000101001000100101
),
        .k7(32'b00111101010010011010010110010101
),
        .k8(32'b00111101110110111010101111100110
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
        .k0(32'b00111101100010000111000110110101
),
        .k1(32'b00111101111001000101001011101001
),
        .k2(32'b10111101101111101111000101110100
),
        .k3(32'b00111101001101101010001001001110
),
        .k4(32'b00111100101111000101001011001110
),
        .k5(32'b10111101101010001101101100000011
),
        .k6(32'b10111101000011001111001011100111
),
        .k7(32'b00111101101000001101000101110111
),
        .k8(32'b10111101110011000001010110111110
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
        .k0(32'b00111101001100111101100110000111
),
        .k1(32'b00111110000000101100101110011001
),
        .k2(32'b00111101011011101101001001010000
),
        .k3(32'b00111100011101000001011010111000
),
        .k4(32'b00111100110000101000001001011000
),
        .k5(32'b10111101101000000111000001110011
),
        .k6(32'b10111101110010001110011000101100
),
        .k7(32'b00111110000010100010011010011111
),
        .k8(32'b00111101101111010111010001100100
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
        .k0(32'b10111100110010000101110010111110
),
        .k1(32'b00111101111010011100110100110011
),
        .k2(32'b00111101110101001011101101101101
),
        .k3(32'b10111101001001010010110001100111
),
        .k4(32'b00111101001111001101110001101100
),
        .k5(32'b00111101011001110010110011010011
),
        .k6(32'b10111101100100010100001101010110
),
        .k7(32'b00111100100010010101101000001010
),
        .k8(32'b10111100010001101110011010001100
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
        .k0(32'b10111101100000110100000001100010
),
        .k1(32'b00111110000101011110001110111111
),
        .k2(32'b10111101011110101011001010111100
),
        .k3(32'b10111101101111000101111010001111
),
        .k4(32'b00111101111111101000111101111000
),
        .k5(32'b00111100000001011100100100101111
),
        .k6(32'b00111101111110010001001011101001
),
        .k7(32'b10111101010111101110001000010010
),
        .k8(32'b10111011100011010101000000100101
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
        .k0(32'b00111101010001101110000010110010
),
        .k1(32'b10111101001011000000010101100010
),
        .k2(32'b00111101111111000110011011110110
),
        .k3(32'b10111100101011100100111100010011
),
        .k4(32'b10111010111011100000011111101101
),
        .k5(32'b00111101001101111001111101011100
),
        .k6(32'b00111110000010001100101010000010
),
        .k7(32'b00111101100101110000001000000101
),
        .k8(32'b10111101100101111010111001010010
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
////////////////////////////////////////// FILTER 5 //////////////////////////////////////////
module featuremap_conv2d_4_filter5
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b00111100000010001011101111111100
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
        .k0(32'b00111101011111000101010110111111
),
        .k1(32'b10111110000000000010001111101101
),
        .k2(32'b00111110000010000111101011110110
),
        .k3(32'b00111100111100010011010001011110
),
        .k4(32'b00111101001100011111001110101111
),
        .k5(32'b00111100011110100101100110101010
),
        .k6(32'b00111110000110111001001101110000
),
        .k7(32'b10111101100001011001010011000110
),
        .k8(32'b00111101101000101101011000010101
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
        .k0(32'b10111101000000011000011010101101
),
        .k1(32'b00111101011110110011001010011000
),
        .k2(32'b00111101110100010010011001111111
),
        .k3(32'b00111101110101000101101010011000
),
        .k4(32'b00111101110110101000110100001011
),
        .k5(32'b00111110000111101011011011001101
),
        .k6(32'b10111101100000010011101010010001
),
        .k7(32'b10111110000001000100010100001100
),
        .k8(32'b10111101001111100100111111101110
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
        .k0(32'b10111101011001010000101110111110
),
        .k1(32'b00111101011101001000010010110010
),
        .k2(32'b00111100100111000010000000101110
),
        .k3(32'b00111100111100111111100101010100
),
        .k4(32'b00111110000101000110010100100001
),
        .k5(32'b10111101101010011011101010100101
),
        .k6(32'b10111100000110100100011000110101
),
        .k7(32'b00111101100001001100111011001100
),
        .k8(32'b00111101000001001101010010101111
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
        .k0(32'b00111101101101010010001101111110
),
        .k1(32'b00110110100111100000010100010101
),
        .k2(32'b00111100101011101101100001001100
),
        .k3(32'b10111100000101001101010010000111
),
        .k4(32'b00111011010111100101011010100110
),
        .k5(32'b00111101000011001001111011111010
),
        .k6(32'b00111101100111011111001100101110
),
        .k7(32'b00111101111101000011100100011011
),
        .k8(32'b10111100111001010001110010001101
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
        .k0(32'b00111101101010100011010010100001
),
        .k1(32'b00111101100111011000000000010100
),
        .k2(32'b00111110000010001011111000000010
),
        .k3(32'b10111101101000111000100000011111
),
        .k4(32'b00111101010100010010011011101010
),
        .k5(32'b10111101011010010011001110010011
),
        .k6(32'b00111101111000000101001010111100
),
        .k7(32'b10111100110000011001101101010101
),
        .k8(32'b00111100110111011001110011101111
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
        .k0(32'b10111101100011100110110011110110
),
        .k1(32'b10111101100000010110100011001101
),
        .k2(32'b00111011100110001101100101100001
),
        .k3(32'b10111011111110100000111000100101
),
        .k4(32'b00111101110100010000100100010000
),
        .k5(32'b00111101011100110000111011110001
),
        .k6(32'b00111101101110110000010101101000
),
        .k7(32'b00111100000010101101010101110010
),
        .k8(32'b10111101000001011101010011100010
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
        .k0(32'b10111101101111111011110011000000
),
        .k1(32'b00111101000001111000110110110011
),
        .k2(32'b10111101001100010111111110001010
),
        .k3(32'b00111101100101011011001011010010
),
        .k4(32'b10111101110001001110000100000110
),
        .k5(32'b10111101001111111110101000000101
),
        .k6(32'b00111101010110000101010011100011
),
        .k7(32'b00111101101011100000010010011001
),
        .k8(32'b10111101100101110000011101011001
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
        .k0(32'b00111101110011011101011000110010
),
        .k1(32'b10111110000001111100101101001110
),
        .k2(32'b00111100000010000011110101010101
),
        .k3(32'b10111101111010101010110001010000
),
        .k4(32'b00111110000001010001000000000010
),
        .k5(32'b10111101000011111110111000011110
),
        .k6(32'b00111011111110111010010001001000
),
        .k7(32'b10111110000010101101001110111101
),
        .k8(32'b00111110000101101000010000111001
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
        .k0(32'b10111101110010010111011010100110
),
        .k1(32'b00111100001001100100111001001111
),
        .k2(32'b10111100101000101011111101110001
),
        .k3(32'b10111101100001000011000000000001
),
        .k4(32'b10111010001110111101101100100000
),
        .k5(32'b10111101000010001111011010001110
),
        .k6(32'b00111100111000001010000110111111
),
        .k7(32'b10111101101100000011000111001011
),
        .k8(32'b10111110000010110010001011100101
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
        .k0(32'b00111101100011110000001101010110
),
        .k1(32'b10111101100111011001010100111110
),
        .k2(32'b10111100111000110111001110010100
),
        .k3(32'b00111101010111111100110011001111
),
        .k4(32'b00111101110001110110100010001110
),
        .k5(32'b00111101101101010001110100101101
),
        .k6(32'b10111101000000110000110011101110
),
        .k7(32'b00111101101111111000111110000001
),
        .k8(32'b00111101000110000011100111111101
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
        .k0(32'b10111101100011110010010011011001
),
        .k1(32'b00111100101000010011011001010111
),
        .k2(32'b00111101110111001011010010000010
),
        .k3(32'b00111101000010100010111100111111
),
        .k4(32'b10111010110001001010011101110000
),
        .k5(32'b10111110001000010010111110010001
),
        .k6(32'b00111101101100001110110101100010
),
        .k7(32'b10111110000011100100111111001100
),
        .k8(32'b10111101111111110101001010010011
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
        .k0(32'b00111100101011100101001011110001
),
        .k1(32'b00111101101000111000000110010111
),
        .k2(32'b00111100110111001010101010010100
),
        .k3(32'b00111101111001000001111111011111
),
        .k4(32'b10111100001110010110010101010100
),
        .k5(32'b00111101101011110011111101011111
),
        .k6(32'b10111100011101111101101111010001
),
        .k7(32'b00111101110110111110001010010100
),
        .k8(32'b10111110000100100110011110111001
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
        .k0(32'b10111100001100111110101001000001
),
        .k1(32'b10111100110010101111110110110100
),
        .k2(32'b10111101110100111111110001000000
),
        .k3(32'b00111100100111111001001110000000
),
        .k4(32'b10111101011000011100100001111111
),
        .k5(32'b10111101000110011101101010111101
),
        .k6(32'b10111110000011011100001011001101
),
        .k7(32'b10111101100110110001110100000010
),
        .k8(32'b00111100101010000101101001100000
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
        .k0(32'b10111100001110010101101000101101
),
        .k1(32'b10111101110110100100010000110111
),
        .k2(32'b10111100100110001010110001001100
),
        .k3(32'b00111101000010100111001100111010
),
        .k4(32'b00111101101000010000010001011110
),
        .k5(32'b00111101101000101100010100111001
),
        .k6(32'b00111101001101011001011010111111
),
        .k7(32'b00111101100110011100011110111101
),
        .k8(32'b10111101110001101011100001110011
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
        .k0(32'b10111101111101110100111000110001
),
        .k1(32'b10111100101001101001011110110011
),
        .k2(32'b10111110000110000110001110111000
),
        .k3(32'b00111101000010000011010111000000
),
        .k4(32'b10111010100111011111010111100011
),
        .k5(32'b00111101001000111001000100100101
),
        .k6(32'b10111101100101101000011010110100
),
        .k7(32'b10111101010000001010001011110110
),
        .k8(32'b10111101011100010010010101101010
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
        .k0(32'b00111101101101000101110111010111
),
        .k1(32'b10111110000011001100101100110100
),
        .k2(32'b00111101101111001100110111011110
),
        .k3(32'b00111110000100011010000000100011
),
        .k4(32'b00111101100101111001111110010011
),
        .k5(32'b10111101110000010111010000110111
),
        .k6(32'b00111101000011101001000011111001
),
        .k7(32'b10111100110011100101000111110000
),
        .k8(32'b10111101111100100110001011101001
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
////////////////////////////////////////// FILTER 6 //////////////////////////////////////////
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
////////////////////////////////////////// FILTER 7 //////////////////////////////////////////
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
////////////////////////////////////////// FILTER 8 //////////////////////////////////////////
module featuremap_conv2d_4_filter8
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b10111001110010000001100101010011
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
        .k0(32'b00111101110011110010100000100010
),
        .k1(32'b10111101110110001101111011001111
),
        .k2(32'b10111110000001010100011100001011
),
        .k3(32'b10111100011101111011000000001001
),
        .k4(32'b10111101110101011100110001010000
),
        .k5(32'b10111010111101010010011101110010
),
        .k6(32'b10111101101001101001110100011100
),
        .k7(32'b10111101110011000010101110010111
),
        .k8(32'b00111101111111001110000100111111
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
        .k0(32'b10111100011101101001001000110111
),
        .k1(32'b10111101110000101111110111110010
),
        .k2(32'b10111110000001110010010010110111
),
        .k3(32'b00111101110000111001111111010011
),
        .k4(32'b00111101111000101000001000110001
),
        .k5(32'b10111101110100001101000011010000
),
        .k6(32'b00111101111001001101100101100111
),
        .k7(32'b10111101100001110111011010001110
),
        .k8(32'b10111101101100011000001010010010
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
        .k0(32'b00111101101000001001111010010011
),
        .k1(32'b00111110000100010111100010111111
),
        .k2(32'b10111101100111011000000111101100
),
        .k3(32'b10111101011100010010010100110011
),
        .k4(32'b00111101101010100011001000101010
),
        .k5(32'b10111101011100000101001001110011
),
        .k6(32'b10111101100100101110110101001100
),
        .k7(32'b00111101101010000011110100111010
),
        .k8(32'b10111101110000010110100001010001
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
        .k0(32'b10111101100010000010100111000000
),
        .k1(32'b00111101110100100001000111100000
),
        .k2(32'b00111101110010001001010000101101
),
        .k3(32'b10111011110111001100111010010011
),
        .k4(32'b00111101110011011000001111101011
),
        .k5(32'b10111100110001010010010111110100
),
        .k6(32'b00111101101011000001010111111000
),
        .k7(32'b10111100111010011111001110100010
),
        .k8(32'b00111110000001110011010110011111
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
        .k0(32'b00111100100100000100100000100100
),
        .k1(32'b00111110000000110110010001000101
),
        .k2(32'b10111100101010100001010110011101
),
        .k3(32'b10111101001100000110001000001100
),
        .k4(32'b10111100001110100100111010011110
),
        .k5(32'b00111101111101100000011010101101
),
        .k6(32'b10111101111010110111110110101100
),
        .k7(32'b00111101111000000000000001001100
),
        .k8(32'b10111101111111100010001010001010
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
        .k0(32'b10111101001111001100110100000110
),
        .k1(32'b00111100111001010010110010101000
),
        .k2(32'b00111011110101101100111001110100
),
        .k3(32'b10111110000001110000001010101101
),
        .k4(32'b10111101101111110001000001001101
),
        .k5(32'b00111100101010001111110011110010
),
        .k6(32'b10111101111000101011111100101010
),
        .k7(32'b10111101011001100011010010011000
),
        .k8(32'b10111101011011111010000010001010
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
        .k0(32'b10111101111101111100000100101111
),
        .k1(32'b00111101001001110101101010011110
),
        .k2(32'b10111101110010010111001100000001
),
        .k3(32'b00111101100010010011000000111101
),
        .k4(32'b10111100111011011111011001101011
),
        .k5(32'b10111101011111000100111100011101
),
        .k6(32'b10111101110110110110010001011100
),
        .k7(32'b10111101111010101011011001011000
),
        .k8(32'b10111101000000011011111100011000
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
        .k0(32'b00111011110111111011000100110001
),
        .k1(32'b10111100100011000100011101100110
),
        .k2(32'b10111100010100011100111000100100
),
        .k3(32'b00111101110110110001110000110000
),
        .k4(32'b10111100101100000010011101110000
),
        .k5(32'b10111101000101000111000010111110
),
        .k6(32'b00111010011110110110000000011000
),
        .k7(32'b10111101110101001010010000011111
),
        .k8(32'b10111101110001001010100101110001
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
        .k0(32'b00111101101001000010010110001101
),
        .k1(32'b00111110000100101111010100011111
),
        .k2(32'b00111110000001011001101100101101
),
        .k3(32'b00111110000000001000100001111001
),
        .k4(32'b00111100101011110100111010110100
),
        .k5(32'b10111101100110100110001000110111
),
        .k6(32'b10111101110101010010110101001001
),
        .k7(32'b00111011110011000100001101111000
),
        .k8(32'b00111101110001100100111001111100
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
        .k0(32'b00111101001001111010010010010110
),
        .k1(32'b10111100110100101110011010011011
),
        .k2(32'b00111101111111001010000010011111
),
        .k3(32'b00111101101000110000011010111001
),
        .k4(32'b10111101010100111011000001001001
),
        .k5(32'b00111110000001101010000010000111
),
        .k6(32'b00111101110101111101001110011101
),
        .k7(32'b00111101011100011010100100110011
),
        .k8(32'b00111101110011111000111011110001
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
        .k0(32'b00111101110101101100100101010000
),
        .k1(32'b00111101101011100101010011011111
),
        .k2(32'b00111110000001001000101111100101
),
        .k3(32'b00111101100111110001101010100000
),
        .k4(32'b10111101111101100110011010101010
),
        .k5(32'b00111110000011000110010001011101
),
        .k6(32'b00111110000100010111000111011000
),
        .k7(32'b00111110000100101101011101101010
),
        .k8(32'b10111101011001110010010110001000
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
        .k0(32'b00111101111000101011001101000111
),
        .k1(32'b00111101000001011100000100010011
),
        .k2(32'b00111100111101010100010111001010
),
        .k3(32'b10111101001101100101011001001100
),
        .k4(32'b10110111111100101100101110010101
),
        .k5(32'b00111101110000101111100011010111
),
        .k6(32'b00111110000101100000111111100101
),
        .k7(32'b10111101000100001110101010110000
),
        .k8(32'b00111101111001011111110110101001
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
        .k0(32'b10111101010000010101000000010000
),
        .k1(32'b00111101000110010011101010001000
),
        .k2(32'b00111101001111110111010111100000
),
        .k3(32'b10111101011100011000100111110011
),
        .k4(32'b10111100101000011101010100011010
),
        .k5(32'b10111101101110100101111010110011
),
        .k6(32'b10111101110001001101000000000010
),
        .k7(32'b00111110000111100110110101110110
),
        .k8(32'b10111101000011101110101011000111
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
        .k0(32'b10111101010010011010001101111011
),
        .k1(32'b10111100101010110000110010100100
),
        .k2(32'b10111100100001100010110000010011
),
        .k3(32'b10111101011100001111100110000111
),
        .k4(32'b10111100010000101100110001111010
),
        .k5(32'b00111101100111100001001011001000
),
        .k6(32'b00111101100001000110110101100010
),
        .k7(32'b10111100101110000011010100001001
),
        .k8(32'b10111100011010011001001101100110
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
        .k0(32'b10111101100110011001001100110000
),
        .k1(32'b00111101110101111011000100010101
),
        .k2(32'b00111101101101111110001001000110
),
        .k3(32'b00111101100111011011011010000101
),
        .k4(32'b00111110000001010010010011010100
),
        .k5(32'b10111101101111110001101010111010
),
        .k6(32'b10111101100101101111100000000101
),
        .k7(32'b10111100101100011110010101110000
),
        .k8(32'b10111101111011001001000101010000
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
        .k0(32'b00111101101000110000011101101101
),
        .k1(32'b00111010100011010001101110011000
),
        .k2(32'b00111101100100111011101011101001
),
        .k3(32'b00111100011000101110110111100010
),
        .k4(32'b10111101000000011010101011100000
),
        .k5(32'b00111110000001011011010000111101
),
        .k6(32'b00111101010110101111100000100100
),
        .k7(32'b10111101100000010011100010011010
),
        .k8(32'b10111101110010110011101110111110
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
////////////////////////////////////////// FILTER 9 //////////////////////////////////////////
module featuremap_conv2d_4_filter9
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b10111010101100010111100110000010
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
        .k0(32'b00111100111011111110111100111111
),
        .k1(32'b00111101001001010011100001101110
),
        .k2(32'b10111101111000001100001001100110
),
        .k3(32'b00111011100100100000100101010111
),
        .k4(32'b00111101010000110110110011101010
),
        .k5(32'b10111110000100011000010110011100
),
        .k6(32'b00111101101011101010101100011000
),
        .k7(32'b10111101111000110011100110010101
),
        .k8(32'b10111101101111000001010001010001
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
        .k0(32'b10111101110011101010111101011101
),
        .k1(32'b00111101100111001111101010101010
),
        .k2(32'b00111101001011101000001101011100
),
        .k3(32'b00111110000010101011100100100010
),
        .k4(32'b00111110000010111111001100010010
),
        .k5(32'b10111010010101010011110101001110
),
        .k6(32'b10111101101111011010110100111100
),
        .k7(32'b00111011101100101100100110001111
),
        .k8(32'b00111100110110110001001100010101
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
        .k0(32'b00111101011100001101000110010001
),
        .k1(32'b00111001110010101000111001101111
),
        .k2(32'b10111011001010100101111101010000
),
        .k3(32'b00111101101011101000111000110111
),
        .k4(32'b00111101110110010111011111101100
),
        .k5(32'b00111110000110110001101110010110
),
        .k6(32'b10111101100000100011011100001111
),
        .k7(32'b10111101001101110100011111100011
),
        .k8(32'b10111100000100010101100101110000
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
        .k0(32'b00111101101000101101001101111000
),
        .k1(32'b10111101100110001101001011100110
),
        .k2(32'b10111110000010001100100010001010
),
        .k3(32'b10111101100010011111001110011111
),
        .k4(32'b00111101001111000010111111101101
),
        .k5(32'b10111110000001110010011111111101
),
        .k6(32'b00111101110000100101110110001110
),
        .k7(32'b10111101101100011111010101010101
),
        .k8(32'b00111101100011101100100110101101
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
        .k0(32'b10111100110100111000101100011100
),
        .k1(32'b00111101100000011010111001110101
),
        .k2(32'b10111101110001110001001100000100
),
        .k3(32'b10111101111110100000000011110000
),
        .k4(32'b10111101110010010000110111110000
),
        .k5(32'b00111110000011110001110111100011
),
        .k6(32'b00111101100101010110110001010110
),
        .k7(32'b00111100101001100111100111000111
),
        .k8(32'b00111101001101111101010100110010
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
        .k0(32'b10111101101100011010111010110000
),
        .k1(32'b00111100000011101111101001010110
),
        .k2(32'b00111101111110001000000101011110
),
        .k3(32'b00111101101000100010110001000100
),
        .k4(32'b00111101101001110110000011001100
),
        .k5(32'b00111101100011000101000011010110
),
        .k6(32'b00111101100100010111001101101101
),
        .k7(32'b00111101101011101100111000110101
),
        .k8(32'b00111101111110010011110111111001
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
        .k0(32'b10111101010100101110011010001100
),
        .k1(32'b10111101110011000000110010101011
),
        .k2(32'b10111101100011010001100001100101
),
        .k3(32'b10111101110100111100010100000011
),
        .k4(32'b10111110000110011101001100101110
),
        .k5(32'b00111101110111001110010100011000
),
        .k6(32'b10111110000010000110101000000111
),
        .k7(32'b00111101010001011101110001101111
),
        .k8(32'b10111101111001011000011100000101
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
        .k0(32'b10111110000000001000111100010011
),
        .k1(32'b10111101100001101101011010011110
),
        .k2(32'b10111100101001011110000011110110
),
        .k3(32'b10111101110111101100011010111101
),
        .k4(32'b00111101111101000111111010111000
),
        .k5(32'b00111101110011000110111011011000
),
        .k6(32'b00111110000100001110111110111100
),
        .k7(32'b00111101010111010001111001110101
),
        .k8(32'b10111101110011011011111110010111
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
        .k0(32'b10111101110010100101000010111111
),
        .k1(32'b10111101100001111100010111100010
),
        .k2(32'b00111101100100000000110110000100
),
        .k3(32'b00111110000001100000101010000101
),
        .k4(32'b10111101011000011011110101001011
),
        .k5(32'b10111101100101111101100100011011
),
        .k6(32'b10111110000001010000001010101100
),
        .k7(32'b10111101011001001111101100111110
),
        .k8(32'b10111101111110000100001111001001
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
        .k0(32'b00111011100111000100011001001000
),
        .k1(32'b00111011100101001111111000001011
),
        .k2(32'b10111100111010001101110011110100
),
        .k3(32'b00111101000001101000110011000000
),
        .k4(32'b00111101010100101011001111110101
),
        .k5(32'b00111011110000100101110111110001
),
        .k6(32'b10111100100110111101101011001101
),
        .k7(32'b00111110000101000100000001011110
),
        .k8(32'b00111100110010000101101010100100
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
        .k0(32'b00111101110111100010111011110110
),
        .k1(32'b10111101111101111010010101100100
),
        .k2(32'b10111100101101101010010101001100
),
        .k3(32'b10111100010011000110010100000010
),
        .k4(32'b00111101011000010011101110000010
),
        .k5(32'b10111101010110111011010001110100
),
        .k6(32'b10111101101100001110000011000001
),
        .k7(32'b00111110000100100010101011100011
),
        .k8(32'b00111110000010011111101101011111
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
        .k0(32'b00111110000001010011110011110000
),
        .k1(32'b10111101101110111101000010110011
),
        .k2(32'b10111100000001000100110110100011
),
        .k3(32'b10111101010101100011001010001100
),
        .k4(32'b10111101111001101011111111100001
),
        .k5(32'b10111101001101100111011110011101
),
        .k6(32'b00111101000000010001101111100010
),
        .k7(32'b00111011000001010101010101000001
),
        .k8(32'b10111101000000001100011010001101
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
        .k0(32'b00111101110010011000011001001100
),
        .k1(32'b10111101101100101001101100110101
),
        .k2(32'b00111110000100100101110100001110
),
        .k3(32'b00111101111010110010010100110011
),
        .k4(32'b10111101110100110010010000110110
),
        .k5(32'b00111101001110001110100110001101
),
        .k6(32'b10111101011100001000110011011011
),
        .k7(32'b00111110000010111001111010001110
),
        .k8(32'b00111110000100001100100000000100
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
        .k0(32'b00111101111010111000011101111001
),
        .k1(32'b00111010000111011111010100111111
),
        .k2(32'b00111100000010001001101000001101
),
        .k3(32'b10111101101011011100110010111100
),
        .k4(32'b00111100100010001010010001110001
),
        .k5(32'b00111101000111001000100110001101
),
        .k6(32'b10111100011111010111110111000101
),
        .k7(32'b10111101001111111101111110110110
),
        .k8(32'b00111101111010011101100011100010
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
        .k0(32'b00111101101000010111010011111000
),
        .k1(32'b00111101101110011000100001100110
),
        .k2(32'b00111110000010110001110011110010
),
        .k3(32'b00111101111010101110001001101100
),
        .k4(32'b10111101110100001111101001110001
),
        .k5(32'b10111101001100011010110111100110
),
        .k6(32'b00111100101100011001111010010110
),
        .k7(32'b00111101100110010100111101110000
),
        .k8(32'b10111100111001110100011111100010
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
        .k0(32'b00111101100101111010001010110110
),
        .k1(32'b10111101010101100000110001010000
),
        .k2(32'b00111101000000100000101101100101
),
        .k3(32'b10111101010010000111010001001000
),
        .k4(32'b10111011001101011111011100010111
),
        .k5(32'b00111101000111101101011011000110
),
        .k6(32'b10111101011101000010100001000110
),
        .k7(32'b10111101001011110000100100010110
),
        .k8(32'b10111101110101011010010000101001
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
////////////////////////////////////////// FILTER 10 //////////////////////////////////////////
module featuremap_conv2d_4_filter10
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b00111011100010000110110111101101
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
        .k0(32'b00111101001000011001110001100000
),
        .k1(32'b10111101110010111110100100001001
),
        .k2(32'b10111110000000111101100010001010
),
        .k3(32'b10111101100100111000010001110101
),
        .k4(32'b10111101011101010000000110001110
),
        .k5(32'b10111101010010000111101110010101
),
        .k6(32'b10111101001110011011000010000110
),
        .k7(32'b00111101100000110111110000111000
),
        .k8(32'b10111101011101000100000001001011
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
        .k0(32'b00111101110110111111011110001101
),
        .k1(32'b00111101010110010111010010110111
),
        .k2(32'b10111101000111110101110111110011
),
        .k3(32'b00111101000110100101111011111010
),
        .k4(32'b10111101101100011111001011100001
),
        .k5(32'b00111100000100000000111110010100
),
        .k6(32'b00111100101011110000111100101110
),
        .k7(32'b00111101110111001000111100110010
),
        .k8(32'b00111110000110000100101100011100
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
        .k0(32'b10111101101011010111010001001010
),
        .k1(32'b10111100100001101100011101100011
),
        .k2(32'b10111101110100111011000110001001
),
        .k3(32'b10111101100010001111110000010110
),
        .k4(32'b00111100100110110101011110001111
),
        .k5(32'b00111101101000011110110111011100
),
        .k6(32'b10111101100100000101010110011100
),
        .k7(32'b10111101111111100010100010001000
),
        .k8(32'b10111101101010010011110010110111
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
        .k0(32'b00111110001000101001010111110011
),
        .k1(32'b00111101111011110111011100010011
),
        .k2(32'b10111101100100011010000111001101
),
        .k3(32'b00111101101111111111110010011101
),
        .k4(32'b00111101111110000010000000110100
),
        .k5(32'b00111101110111111110001111111011
),
        .k6(32'b10111101100111010001001100100011
),
        .k7(32'b10111101001100001101111100100101
),
        .k8(32'b00111110000110010101100011100001
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
        .k0(32'b10111101110011101000011010001101
),
        .k1(32'b00111101101100111111100011001100
),
        .k2(32'b00111101110001111110111111011001
),
        .k3(32'b10111110000010111010110011101010
),
        .k4(32'b00111101111010111111011010111001
),
        .k5(32'b10111101010010100010010000110100
),
        .k6(32'b10111110000011010101110001110000
),
        .k7(32'b00111101010010110100100000110000
),
        .k8(32'b10111101011001011001001111101110
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
        .k0(32'b00111101000010010011010101000101
),
        .k1(32'b00111101001101110111101000111001
),
        .k2(32'b10111101011100111110001101100000
),
        .k3(32'b00111101110101111000100000000111
),
        .k4(32'b10111101010101010000111111101111
),
        .k5(32'b00111101011111010111010010101110
),
        .k6(32'b00111101101001101101100100001001
),
        .k7(32'b10111101001000101111111001010101
),
        .k8(32'b10111101110011111111100001101010
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
        .k0(32'b00111101101001110010111001110010
),
        .k1(32'b10111101101111010010010110111111
),
        .k2(32'b10111101110111011000101111000100
),
        .k3(32'b10111101000001000010111011010110
),
        .k4(32'b10111101010100100001000100010001
),
        .k5(32'b00111101101011001100101010100001
),
        .k6(32'b10111101011001010010111111101110
),
        .k7(32'b00111101110000011000000000000111
),
        .k8(32'b00111101101101001100001101111001
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
        .k0(32'b10111101001000001110001001010000
),
        .k1(32'b00111101110000110110101111010111
),
        .k2(32'b00111101010110100100110100000001
),
        .k3(32'b00111100100011110011000001010111
),
        .k4(32'b10111101101001010101011111111000
),
        .k5(32'b10111101011101111110011011010101
),
        .k6(32'b00111101111110011000011100110000
),
        .k7(32'b10111101100111111100000000001011
),
        .k8(32'b10111100001110101100010101110010
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
        .k0(32'b00111100011000110010000111011001
),
        .k1(32'b00111101110011000101110101001010
),
        .k2(32'b00111110000100110010001100100110
),
        .k3(32'b00111101001000010100001011111111
),
        .k4(32'b10111100000110001010001010001001
),
        .k5(32'b10111101101010101000110100001111
),
        .k6(32'b10111011111110000101100110110100
),
        .k7(32'b00111100101111000000000001010000
),
        .k8(32'b00111110000100111000000100001110
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
        .k0(32'b00111101001100101010010101010010
),
        .k1(32'b10111100110000101010110001110000
),
        .k2(32'b10111101100110110001011110001111
),
        .k3(32'b10111101000100000111001010011011
),
        .k4(32'b10111110001001100010011101101000
),
        .k5(32'b10111101111010111011101111000100
),
        .k6(32'b10111101111001110010100001000100
),
        .k7(32'b10111101100010000000011001000010
),
        .k8(32'b00111011111111101011101100010010
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
        .k0(32'b10111110001001100001110010011110
),
        .k1(32'b00111101110110101011110000000100
),
        .k2(32'b10111101000001100010101010001001
),
        .k3(32'b10111101000100101111111101000110
),
        .k4(32'b10111101011111100100100111010110
),
        .k5(32'b10111101010101110011001110010110
),
        .k6(32'b10111100000110011000111100001110
),
        .k7(32'b00111101011000010001001101010001
),
        .k8(32'b00111001011011101101111001001101
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
        .k0(32'b00111101100111100110011010110001
),
        .k1(32'b00111100011011110010010001001101
),
        .k2(32'b10111101000110111111000010010110
),
        .k3(32'b10111101100100110111011101101100
),
        .k4(32'b00111101100010011100100000101011
),
        .k5(32'b00111101111100001010100001111100
),
        .k6(32'b10111110000000001011001110100001
),
        .k7(32'b00111101110111001111110101001110
),
        .k8(32'b10111101110111011111111001001101
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
        .k0(32'b10111101010001110111001001000100
),
        .k1(32'b10111101011110111111001111010101
),
        .k2(32'b10111101110011101101111111010001
),
        .k3(32'b00111101111111111100100010010100
),
        .k4(32'b10111101000100000111010111101111
),
        .k5(32'b10111100011110010011111100011010
),
        .k6(32'b00111101000010000010001000110001
),
        .k7(32'b00111101011001001000110000011011
),
        .k8(32'b00111101110110000010011000010000
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
        .k0(32'b00111101110011110100111100101100
),
        .k1(32'b00111101110001010101101011110101
),
        .k2(32'b00111100001100101100110001111001
),
        .k3(32'b00111101101000111101100101011111
),
        .k4(32'b00111110000000100011010110111101
),
        .k5(32'b00111101011111101000010110001001
),
        .k6(32'b10111101100000000101110110101010
),
        .k7(32'b10111101100000100110010100100000
),
        .k8(32'b10111101111101001010011101100000
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
        .k0(32'b10111101110110001110110000010100
),
        .k1(32'b00111101010101101000000110000001
),
        .k2(32'b10111101101110001001110000100110
),
        .k3(32'b00111100110100000101100010010101
),
        .k4(32'b10111101011000110010001111100011
),
        .k5(32'b10111101101000000011001010001011
),
        .k6(32'b00111101011100010110000000101011
),
        .k7(32'b10111101110100110010101110111110
),
        .k8(32'b00111101001101110011000010011111
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
        .k0(32'b10111101111000101011010100011101
),
        .k1(32'b10111110000111101010000101001001
),
        .k2(32'b10111110000000111000000100110101
),
        .k3(32'b10111101011010100001011111100111
),
        .k4(32'b00111101000110010010111011101010
),
        .k5(32'b00111101000010111110111000111001
),
        .k6(32'b10111101000001100100101111010010
),
        .k7(32'b10111110001000101000110100001001
),
        .k8(32'b00111100010001111100100100011100
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
////////////////////////////////////////// FILTER 11 //////////////////////////////////////////
module featuremap_conv2d_4_filter11
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b00111011100001101001111110011000
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
        .k0(32'b10111101110001100101111011101101
),
        .k1(32'b00111011100110010000111100101000
),
        .k2(32'b00111101111110001101100011110011
),
        .k3(32'b10111100000110110100000001010101
),
        .k4(32'b00111101100000110000011101101011
),
        .k5(32'b00111100010100100010000010000101
),
        .k6(32'b00111101101001011000101001001110
),
        .k7(32'b10111101100100110001111010110101
),
        .k8(32'b10111101100100100001111110110100
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
        .k0(32'b00111101110101111011101100110001
),
        .k1(32'b00111101111011101001001010010001
),
        .k2(32'b00111100110011111000001111110011
),
        .k3(32'b10111101010111010110101110000001
),
        .k4(32'b10111101100011101111110010011010
),
        .k5(32'b00111101100011000000111101010111
),
        .k6(32'b10111100011101110111000001000110
),
        .k7(32'b00111101101110000000010100001111
),
        .k8(32'b10111100111010111100110010110000
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
        .k0(32'b00111110000011100100001011110010
),
        .k1(32'b00111101110100011010101101010110
),
        .k2(32'b00111101111110101000000010001001
),
        .k3(32'b00111101010100100010111101010001
),
        .k4(32'b10111101111001010001010111101000
),
        .k5(32'b10111101110000110111011000011001
),
        .k6(32'b10111110000100101010100010011101
),
        .k7(32'b00111011100100101011101001000101
),
        .k8(32'b10111110000100001000101001011100
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
        .k0(32'b10111101101010010100000001011011
),
        .k1(32'b10111101000001001001010011100111
),
        .k2(32'b00111101100000101011001110010001
),
        .k3(32'b00111100111111101111110100011101
),
        .k4(32'b00111101110001110110110000001100
),
        .k5(32'b00111100011111100000011000100000
),
        .k6(32'b10111101010011101101100001100000
),
        .k7(32'b00111101001000000101011111010101
),
        .k8(32'b00111101101011101000100100100101
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
        .k0(32'b00111100111011111110001100011001
),
        .k1(32'b10111110000001111000111000011010
),
        .k2(32'b10111101101001010001100111001010
),
        .k3(32'b10111100000010000111001011001011
),
        .k4(32'b00111100010100000011111000100111
),
        .k5(32'b00111100110011110001111100100100
),
        .k6(32'b10111100101010001101011010110001
),
        .k7(32'b10111110000111000000100100111100
),
        .k8(32'b00111101100110110100011101011000
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
        .k0(32'b00111101101000000000001000110010
),
        .k1(32'b00111100111000100010011111001101
),
        .k2(32'b10111100101111100100011011111111
),
        .k3(32'b00111110000100010101010001010000
),
        .k4(32'b10111010100011100000111011001111
),
        .k5(32'b10111101101010011101000000001000
),
        .k6(32'b00111101011101010010010010000110
),
        .k7(32'b10111101000010000110001000100000
),
        .k8(32'b00111100111101100000101011111110
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
        .k0(32'b00111101101110010101000110111110
),
        .k1(32'b00111110000011100111111110100001
),
        .k2(32'b00111101110010100101001010000011
),
        .k3(32'b00111101111011101001011101010001
),
        .k4(32'b00111110000101110001001110111011
),
        .k5(32'b10111101000011010010001111001101
),
        .k6(32'b10111011110110000111001111000011
),
        .k7(32'b10111011101111010010110001100101
),
        .k8(32'b10111100111111000001111011101100
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
        .k0(32'b10111101100011111011011101100101
),
        .k1(32'b00111101101100010011001001100000
),
        .k2(32'b00111101101101111110010111101110
),
        .k3(32'b00111011001101001110011000010001
),
        .k4(32'b10111101011111110111100100000100
),
        .k5(32'b00111101110111100011100101010111
),
        .k6(32'b10111101111101110011000000010110
),
        .k7(32'b00111100110011010100010000100001
),
        .k8(32'b10111101010110011101100011101101
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
        .k0(32'b00111101001100011100110100010101
),
        .k1(32'b00111100101111010101000001100000
),
        .k2(32'b10111101001011011111111100010110
),
        .k3(32'b00111110000011101101011110101100
),
        .k4(32'b10111101110111100110100101000010
),
        .k5(32'b00111101101101011111101101001101
),
        .k6(32'b00111110000011010001011011011100
),
        .k7(32'b00111101000100111101001011101010
),
        .k8(32'b10111101001100000100100000010011
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
        .k0(32'b10111110000111101111010010010000
),
        .k1(32'b10111100101100011110101110011101
),
        .k2(32'b00111101110010000010111010000001
),
        .k3(32'b10111011101011111011110101010110
),
        .k4(32'b00111101101010000001110011110111
),
        .k5(32'b10111110001010010101010001000010
),
        .k6(32'b10111110000010110001111010000110
),
        .k7(32'b10111101111010010111010101011111
),
        .k8(32'b00111100101111110100000100100000
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
        .k0(32'b00111101100011110111101110000010
),
        .k1(32'b00111100001110100100001111011111
),
        .k2(32'b00111101101001101011100010110101
),
        .k3(32'b00111101111101010111110110010100
),
        .k4(32'b10111101100101010010110110000010
),
        .k5(32'b00111011111001011111010000011000
),
        .k6(32'b00111101110111000000000000100011
),
        .k7(32'b10111100110110000110010110101101
),
        .k8(32'b00111100001000010100000010110001
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
        .k0(32'b00111101001010110011000011011111
),
        .k1(32'b10111101010001001101101011100001
),
        .k2(32'b00111101101101101111101111111111
),
        .k3(32'b10111101110101010101111011110010
),
        .k4(32'b00111101110111101100100101010100
),
        .k5(32'b00111100111000000110000101111111
),
        .k6(32'b00111101011000010010101111110001
),
        .k7(32'b10111100101110001010011110100011
),
        .k8(32'b00111101101110110110111000001111
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
        .k0(32'b00111110000010110010000100011100
),
        .k1(32'b10111101101110101101001000011010
),
        .k2(32'b00111101011110000000011000001111
),
        .k3(32'b00111101011000100111110000000101
),
        .k4(32'b10111100101110011100000011100000
),
        .k5(32'b10111101110000010010100001000000
),
        .k6(32'b00111100011101010100111100011010
),
        .k7(32'b10111101100111111101001110101011
),
        .k8(32'b00111101010100001110101010001110
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
        .k0(32'b00111100100101000001100101110001
),
        .k1(32'b00111110000010100011000001000110
),
        .k2(32'b10111101010001000101100110110011
),
        .k3(32'b00111101001111000111110100111011
),
        .k4(32'b00111110000011101100111000010001
),
        .k5(32'b00111101111010110001111111110101
),
        .k6(32'b00111101001101110100110110100010
),
        .k7(32'b00111100101010110101110111111100
),
        .k8(32'b10111101111101100101001111111011
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
        .k0(32'b00111101101111010111110001010111
),
        .k1(32'b00111101101111110010000100001010
),
        .k2(32'b10111100110101010001110111101100
),
        .k3(32'b00111101010100011000101101011101
),
        .k4(32'b10111100011010101010101010100000
),
        .k5(32'b00111101111100011100011110111111
),
        .k6(32'b10111101111101111011001010100111
),
        .k7(32'b10111110000000011111111111100101
),
        .k8(32'b10111110000000001000111010110100
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
        .k0(32'b10111101110001010111001010010000
),
        .k1(32'b10111101111000000100011000110011
),
        .k2(32'b00111101001100101110101111011111
),
        .k3(32'b10111100110111010111010001000011
),
        .k4(32'b10111110000001010101111010000000
),
        .k5(32'b10111100100010011110000101110100
),
        .k6(32'b10111101111100110010100011110000
),
        .k7(32'b10111100111101101101110011101111
),
        .k8(32'b00111011000111000110011011111011
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
////////////////////////////////////////// FILTER 12 //////////////////////////////////////////
module featuremap_conv2d_4_filter12
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b10111010011010111000111001000100
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
        .k0(32'b10111101100001010011001001110000
),
        .k1(32'b10111101010101110110111001100011
),
        .k2(32'b10111110000010010001010011100011
),
        .k3(32'b00111101010001100101100100111010
),
        .k4(32'b10111101110110010101111100100011
),
        .k5(32'b00111100001111100001011001001101
),
        .k6(32'b10111110000001001111001101000110
),
        .k7(32'b10111100101011010100000111000001
),
        .k8(32'b10111100111011100100001001000101
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
        .k0(32'b10111101101111010010101010100111
),
        .k1(32'b00111101101111001101111110010111
),
        .k2(32'b10111100001011000101010101000010
),
        .k3(32'b10111101110111110100001001101010
),
        .k4(32'b10111100111000111000010111000000
),
        .k5(32'b00111101100111000100010111010100
),
        .k6(32'b10111101011111001010101000100100
),
        .k7(32'b00111011001011101001011011000101
),
        .k8(32'b00111101001100100011100010011100
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
        .k0(32'b10111101101000110111010010010100
),
        .k1(32'b00111110000001111110100001111101
),
        .k2(32'b10111100001010000111001010110011
),
        .k3(32'b00111011111111111001001000100001
),
        .k4(32'b00111101100110111101111010011101
),
        .k5(32'b00111110000110011111110010001110
),
        .k6(32'b10111101011000101110010001011000
),
        .k7(32'b10111110000000001010010100111011
),
        .k8(32'b10111100000001111001000111000101
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
        .k0(32'b00111101101111010111110100101010
),
        .k1(32'b00111101110011100011010001111010
),
        .k2(32'b10111101110101100111111111000000
),
        .k3(32'b00111101100010001110010110100101
),
        .k4(32'b10111101101100001001001010001100
),
        .k5(32'b00111101001111100101011110110001
),
        .k6(32'b10111101110011101111100111100100
),
        .k7(32'b10111011101100111001001010011110
),
        .k8(32'b10111101101110010011111100001000
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
        .k0(32'b00111101001010101010110101001100
),
        .k1(32'b00111100100110011101011100011110
),
        .k2(32'b10111100110011101111000111011010
),
        .k3(32'b10111101000010100110111010110100
),
        .k4(32'b00111100111111001000111111011101
),
        .k5(32'b00111101110100001101011100100001
),
        .k6(32'b10111101111011100100010101010000
),
        .k7(32'b10111100110000100111010001010010
),
        .k8(32'b10111100001000010001001000100110
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
        .k0(32'b10111110000010001101101110001100
),
        .k1(32'b10111110000000111001010100110001
),
        .k2(32'b10111101011011100001001111111110
),
        .k3(32'b10111001001010110011001001101110
),
        .k4(32'b10111110000001100010010010110111
),
        .k5(32'b10111101010001010011100010011100
),
        .k6(32'b10111110000000111000111101000110
),
        .k7(32'b00111101110000001101100000010101
),
        .k8(32'b00111100101000110110111010001011
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
        .k0(32'b10111101110000111101001010100001
),
        .k1(32'b00111101100010110011001111101011
),
        .k2(32'b10111101100000011100011100110110
),
        .k3(32'b10111100111111011000001101011010
),
        .k4(32'b10111101111110010001101110101101
),
        .k5(32'b10111101100010110010011100011101
),
        .k6(32'b10111110000000101000011100110101
),
        .k7(32'b00111101101101111111111001011111
),
        .k8(32'b00111101001000001011001010000011
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
        .k0(32'b00111101100111101111110100101111
),
        .k1(32'b10111101100100100011110001010011
),
        .k2(32'b10111101000000110000000110101100
),
        .k3(32'b00111101110010001010010101011111
),
        .k4(32'b00111101001011110101111011100110
),
        .k5(32'b00111101100000000001100000100101
),
        .k6(32'b10111101101000100110001110110110
),
        .k7(32'b00111101000000100100101001001101
),
        .k8(32'b00111100111000100101000000100110
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
        .k0(32'b10111101001111011000101000110011
),
        .k1(32'b00111100101001000010100111101110
),
        .k2(32'b10111101001100001111011011101011
),
        .k3(32'b10111101010010000100001111110110
),
        .k4(32'b10111110000010010100000001111000
),
        .k5(32'b00111101110111101101101010001010
),
        .k6(32'b10111101111101101001001110001110
),
        .k7(32'b00111101110100110111110110101011
),
        .k8(32'b10111100100101011110110011011011
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
        .k0(32'b10111101110010101000001011111001
),
        .k1(32'b00111110001000011000001110110100
),
        .k2(32'b10111101110010111101110101001110
),
        .k3(32'b10111101001001011100101011111001
),
        .k4(32'b00111101110000110111100110000001
),
        .k5(32'b00111101100110000001111111010010
),
        .k6(32'b00111101101011110001011000011111
),
        .k7(32'b00111101111010000110011111111000
),
        .k8(32'b00111101110011000100010011001000
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
        .k0(32'b10111101000001111010001111011000
),
        .k1(32'b00111101100100001000000110000010
),
        .k2(32'b10111100110001101111011101000011
),
        .k3(32'b10111101111010111010011101101111
),
        .k4(32'b10111101011000110101011001011101
),
        .k5(32'b00111101010001000001011000111010
),
        .k6(32'b00111101101000100101001011001001
),
        .k7(32'b00111101011111010010101110101101
),
        .k8(32'b00111101001010001011001110111100
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
        .k0(32'b10111100001111001111000101111101
),
        .k1(32'b00111101110010000110100011000110
),
        .k2(32'b00111101100011101011011010001110
),
        .k3(32'b10111101101100010010011010100010
),
        .k4(32'b10111101101110010001100010111111
),
        .k5(32'b10111100111101011000011101011000
),
        .k6(32'b10111100111101100101001100100001
),
        .k7(32'b00111101111001000001000010100000
),
        .k8(32'b10111100110001101111101110111000
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
        .k0(32'b00111110000100100010110100110010
),
        .k1(32'b00111110000000010010100000011101
),
        .k2(32'b10111101001101110010000100011110
),
        .k3(32'b10111101110011001111111011000010
),
        .k4(32'b00111100100011001101100011010111
),
        .k5(32'b00111101110111111001000101010010
),
        .k6(32'b10111110000000100111111111110000
),
        .k7(32'b00111101110011000010011110111111
),
        .k8(32'b00111101111100101110000110101111
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
        .k0(32'b00111101100110101011111011100010
),
        .k1(32'b10111101111011010000111010001010
),
        .k2(32'b00111100111101110010001000001011
),
        .k3(32'b10111100010111101100011100000001
),
        .k4(32'b00111101111101100111011101100111
),
        .k5(32'b00111100111110110011010100001110
),
        .k6(32'b10111101101100101001000110100111
),
        .k7(32'b00111101100100111000000000001110
),
        .k8(32'b00111011111101010110100100000100
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
        .k0(32'b00111100010100101000010001101110
),
        .k1(32'b10111100100000101101001101101011
),
        .k2(32'b10111101110010011000111101111010
),
        .k3(32'b00111101110011001011100001100001
),
        .k4(32'b00111110001001101101101100010011
),
        .k5(32'b00111100110010001000011111001011
),
        .k6(32'b00111101010110011011010101011011
),
        .k7(32'b00111101100111110110100011001101
),
        .k8(32'b00111101101110111010111101110001
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
        .k0(32'b10111101101001001111001111011000
),
        .k1(32'b00111101110001011010011011000100
),
        .k2(32'b00111110000000001110110100101101
),
        .k3(32'b00111100010000110111101000101011
),
        .k4(32'b00111101101101011000101110011101
),
        .k5(32'b00111100110010110110000011101010
),
        .k6(32'b00111101001101101101001010111011
),
        .k7(32'b00111110000010001001101000000000
),
        .k8(32'b00111100110010100111001010101101
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
////////////////////////////////////////// FILTER 13 //////////////////////////////////////////
module featuremap_conv2d_4_filter13
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b00111011100001000001010100101001
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
        .k0(32'b10111101000000001000111111111101
),
        .k1(32'b00111110000010110010111000101101
),
        .k2(32'b00111100010100100000100010010011
),
        .k3(32'b00111101100011111000110001001011
),
        .k4(32'b00111100110000101010010111110110
),
        .k5(32'b00111100101101101010011101010110
),
        .k6(32'b00111101011000010111111001001011
),
        .k7(32'b10111100111111101001110000110001
),
        .k8(32'b00111101100000101100111111110100
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
        .k0(32'b00111101110000101111110011110011
),
        .k1(32'b10111100101101111000101111000001
),
        .k2(32'b00111110000010101111001001101000
),
        .k3(32'b10111101101010010100001010100001
),
        .k4(32'b00111100001111010011101011001101
),
        .k5(32'b10111101110101010011000100001100
),
        .k6(32'b00111101100111101001110000001001
),
        .k7(32'b10111101011111100011001010000011
),
        .k8(32'b10111101111100010001000100100100
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
        .k0(32'b00111110000100100110000011010100
),
        .k1(32'b10111101011101000011101011001011
),
        .k2(32'b10111110000000001110011101000100
),
        .k3(32'b00111101000110011110000000000101
),
        .k4(32'b00111110000010100111101111111000
),
        .k5(32'b10111101010110010110000101111110
),
        .k6(32'b10111101110001010001001011110011
),
        .k7(32'b00111101101100010101111010110111
),
        .k8(32'b00111110000100000001101000110111
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
        .k0(32'b00111101000100001011101010111010
),
        .k1(32'b10111011010111001000100001100101
),
        .k2(32'b10111101101010011100001110010010
),
        .k3(32'b00111101010001011101000101001011
),
        .k4(32'b10111101110101110111001111011111
),
        .k5(32'b10111101011000101000010010010101
),
        .k6(32'b00111101111110010101110001010001
),
        .k7(32'b00111100011110000011110110101001
),
        .k8(32'b10111101111111111100101010011001
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
        .k0(32'b10111101110100110001001010111001
),
        .k1(32'b00111101100110001010111010010111
),
        .k2(32'b10111100101001100101001100000111
),
        .k3(32'b10111101111101010001111111101011
),
        .k4(32'b10111101101111100111001010001100
),
        .k5(32'b10111101000001000001101011001100
),
        .k6(32'b10111110000010111000001000010110
),
        .k7(32'b10111110000000100110001000001000
),
        .k8(32'b00111101010010100101011111110101
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
        .k0(32'b00111110000100011100110111000111
),
        .k1(32'b10111101111001101010100000001111
),
        .k2(32'b10111110000001000100010101111001
),
        .k3(32'b10111101111111100100100111000001
),
        .k4(32'b00111101110001010011111010001010
),
        .k5(32'b10111101101100100110011000100001
),
        .k6(32'b00111101110010010100011010101100
),
        .k7(32'b10111101101001111111110101010000
),
        .k8(32'b00111101010000001100001101010110
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
        .k0(32'b10111100010001101001000011111111
),
        .k1(32'b10111011111100100100010100101101
),
        .k2(32'b10111110000001010000000000100010
),
        .k3(32'b10111101100110111110001111100110
),
        .k4(32'b10111101011010100100010100101010
),
        .k5(32'b10111101101111011001110011110000
),
        .k6(32'b00111100100100011101100100001010
),
        .k7(32'b10111101011100010000100111100010
),
        .k8(32'b10111100001101110011101101011111
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
        .k0(32'b10111101111101101000110001000011
),
        .k1(32'b10111101111010111111101101001011
),
        .k2(32'b00111101100011110100111110100100
),
        .k3(32'b10111101011001111111111101000011
),
        .k4(32'b10111101111100001010000011100010
),
        .k5(32'b00111101000011100000011001110000
),
        .k6(32'b10111101101011111100011011000100
),
        .k7(32'b00111101100110100000010100111101
),
        .k8(32'b10111010010000011010000111010110
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
        .k0(32'b10111110000000110100110101011010
),
        .k1(32'b10111101001110110101000000000101
),
        .k2(32'b10111101001100111001101111111000
),
        .k3(32'b10111101101000100011000010000101
),
        .k4(32'b10111101111110010000010000110111
),
        .k5(32'b10111101000010100000100011110100
),
        .k6(32'b10111110000000110011001101001111
),
        .k7(32'b00111101101111110000101000111001
),
        .k8(32'b10111011111011000100101111111000
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
        .k0(32'b00111110000010110101100111101110
),
        .k1(32'b10111110000100100110110010011111
),
        .k2(32'b00111100100010000100011101010010
),
        .k3(32'b10111101001110100101110110100001
),
        .k4(32'b10111100110101001011000000001110
),
        .k5(32'b10111101100001010101110110010011
),
        .k6(32'b10111101100111011001111110101111
),
        .k7(32'b10111101101111001111010111011101
),
        .k8(32'b10111101100111011111101010001100
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
        .k0(32'b00111101111100010110101010011010
),
        .k1(32'b00111101101100010010010111101101
),
        .k2(32'b00111110000011001111110101000100
),
        .k3(32'b10111101110110011111110110000010
),
        .k4(32'b10111101011100011111111100111000
),
        .k5(32'b00111101101010101011001110101101
),
        .k6(32'b10111101001001110101111001111101
),
        .k7(32'b00111110000010010111100111110001
),
        .k8(32'b00111101010110010111000010100110
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
        .k0(32'b10111101100000000111010110110101
),
        .k1(32'b10111101000010110000001111011101
),
        .k2(32'b00111101110100010111110100111110
),
        .k3(32'b00111101101110001011111001001000
),
        .k4(32'b10111101110101001010100110011011
),
        .k5(32'b10111110000011110000110100111101
),
        .k6(32'b10111101110000000000010001010100
),
        .k7(32'b10111101001011001001100110101010
),
        .k8(32'b10111110000010101101110010111110
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
        .k0(32'b10111110000010111100011100111111
),
        .k1(32'b10111101100010110000000110001010
),
        .k2(32'b00111101101011000110011111001000
),
        .k3(32'b00111101100111110010111001010010
),
        .k4(32'b00111101000010110010011011111011
),
        .k5(32'b10111101001111101000011101101100
),
        .k6(32'b10111101110110010100100100000010
),
        .k7(32'b10111101100110010011110010011011
),
        .k8(32'b10111101100110111111010011111011
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
        .k0(32'b10111011011000001010111011110110
),
        .k1(32'b10111101101001001100000100101010
),
        .k2(32'b00111101111001101110000011000110
),
        .k3(32'b10111101010111011110001010101011
),
        .k4(32'b10111101011010101011111000100001
),
        .k5(32'b00111100110000010000011111110001
),
        .k6(32'b00111101110011110011010110011111
),
        .k7(32'b00111101101000010101011010100010
),
        .k8(32'b10111101101000010110101011111011
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
        .k0(32'b10111101101011111011000011110100
),
        .k1(32'b10111101000100001010101001011101
),
        .k2(32'b10111100100111000001010010000000
),
        .k3(32'b00111101101001100001000101101110
),
        .k4(32'b00111101001001010010111011110000
),
        .k5(32'b10111100001110101001101010000111
),
        .k6(32'b00111100100001000111011110100011
),
        .k7(32'b10111101101011100100101101001001
),
        .k8(32'b00111101110000100110100110110010
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
        .k0(32'b10111101100001110011110001101111
),
        .k1(32'b10111101101010011111010001110000
),
        .k2(32'b10111101110110000110001101011011
),
        .k3(32'b00111110000010001100000111101001
),
        .k4(32'b10111101101001011001101111000101
),
        .k5(32'b00111101101001111010101110110010
),
        .k6(32'b00111101111110011010000110010111
),
        .k7(32'b00111101110011010100101100001100
),
        .k8(32'b10111101111011000011111100111001
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
////////////////////////////////////////// FILTER 14 //////////////////////////////////////////
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
////////////////////////////////////////// FILTER 15 //////////////////////////////////////////
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
