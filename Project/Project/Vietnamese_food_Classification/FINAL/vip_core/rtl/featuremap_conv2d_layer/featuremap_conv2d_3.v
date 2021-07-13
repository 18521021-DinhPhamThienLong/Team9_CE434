////////////////////////////////////////// FILTER 0 //////////////////////////////////////////
module featuremap_conv2d_3_filter0
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b10111011110001101101111110111010
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
        .k0(32'b10111101101110011000110000010000
),
        .k1(32'b00111101110001111100000000101010
),
        .k2(32'b00111101101001110101011011100111
),
        .k3(32'b00111101111011000110100000010011
),
        .k4(32'b00111100100000111010001111010101
),
        .k5(32'b10111101000010100101000110100011
),
        .k6(32'b00111101010111110100100011111100
),
        .k7(32'b00111101111010101111100001101000
),
        .k8(32'b10111101101001101110010111010010
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
        .k0(32'b10111101011011010001110111000111
),
        .k1(32'b10111101000010011110110000110011
),
        .k2(32'b00111101011111101011111001000100
),
        .k3(32'b10111101100101001000001010101111
),
        .k4(32'b10111110000000111100001010010011
),
        .k5(32'b00111101010111110100001000010100
),
        .k6(32'b10111100100101011110100011001011
),
        .k7(32'b00111101000011110011001110001011
),
        .k8(32'b10111101001110000100000100111001
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
        .k0(32'b10111101100100100000100110111000
),
        .k1(32'b00111101000100100101110101100111
),
        .k2(32'b10111101001001101011010100010010
),
        .k3(32'b10111101100011011110011101111100
),
        .k4(32'b10111100010011001101000101010000
),
        .k5(32'b00111100100100111010111000000010
),
        .k6(32'b00111100101101111011101111101100
),
        .k7(32'b00111101011111101110111000000110
),
        .k8(32'b10111101010010000001011111011110
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
        .k0(32'b10111011001110011101110110001010
),
        .k1(32'b10111100111111110010111001100101
),
        .k2(32'b10111101111000110110101000001001
),
        .k3(32'b00111110000011000100000011101100
),
        .k4(32'b00111101000111111111101110001010
),
        .k5(32'b10111100001100111011101001011000
),
        .k6(32'b00111100001101100001100101001111
),
        .k7(32'b10111101011011101000011011111111
),
        .k8(32'b00111110000000110101101100111010
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
        .k0(32'b00111101110010111010111001111001
),
        .k1(32'b00111100100101001111100010110101
),
        .k2(32'b10111101110000100100100010000000
),
        .k3(32'b10111101110001110010101000011111
),
        .k4(32'b10111101100000010001111110101110
),
        .k5(32'b10111101110100111100111000110001
),
        .k6(32'b10111101000000011101010001000110
),
        .k7(32'b10111011001000001011101110111101
),
        .k8(32'b10111101111100001100011101110100
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
        .k0(32'b10111101001001010111000000100110
),
        .k1(32'b00111110000000110000110110000010
),
        .k2(32'b10111101111111010111000110001111
),
        .k3(32'b10111101111001101010001101000100
),
        .k4(32'b00111101100101110100010010010111
),
        .k5(32'b10111011100011111001011101100010
),
        .k6(32'b10111100100110011001011100010100
),
        .k7(32'b00111101110110011010100110000110
),
        .k8(32'b00111101001101100000110000001110
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
        .k0(32'b10111110000000111001010011110011
),
        .k1(32'b00111101001110110001011001000010
),
        .k2(32'b00111110000010000010001111110111
),
        .k3(32'b10111110000000101100001000100110
),
        .k4(32'b00111100010011111111011000101100
),
        .k5(32'b10111101100001110111111100001011
),
        .k6(32'b00111101111100100001010011001100
),
        .k7(32'b00111101000110001010000110000000
),
        .k8(32'b00111101110111110100111111000011
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
        .k0(32'b00111101111001110100101111111000
),
        .k1(32'b00111101100100011100001010001100
),
        .k2(32'b10111101101100101100000101101001
),
        .k3(32'b00111101100110010000100101111011
),
        .k4(32'b10111101011111011110001101001011
),
        .k5(32'b00111101111000011101001101101001
),
        .k6(32'b10111101111010010000110010010111
),
        .k7(32'b10111101110101100100011111101001
),
        .k8(32'b10111101110001000000101001000100
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
        .k0(32'b00111101101011111111011010000001
),
        .k1(32'b00111101100000100000010100000101
),
        .k2(32'b10111101111000101010001001110111
),
        .k3(32'b10111100011011010100010110001101
),
        .k4(32'b00111100101101101001010111101101
),
        .k5(32'b00111101101110001100000011011110
),
        .k6(32'b10111101111101010011011110110110
),
        .k7(32'b00111100010000000001101110011010
),
        .k8(32'b10111110000110110110001000010000
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
        .k0(32'b00111101110110101001000010010111
),
        .k1(32'b00111110000100011110111111000101
),
        .k2(32'b10111110000100011011010000111010
),
        .k3(32'b10111101110000100111100011100111
),
        .k4(32'b00111101100110110011001001100000
),
        .k5(32'b10111101110010101111010000000010
),
        .k6(32'b10111101101010110001001000011000
),
        .k7(32'b10111101100000110110111111100101
),
        .k8(32'b10111101111010001010011011111100
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
        .k0(32'b10111101011100111100001011010001
),
        .k1(32'b10111101100110010101000110101101
),
        .k2(32'b10111101000111100111110110111110
),
        .k3(32'b10111101101001101001100101011011
),
        .k4(32'b10111101101110011110000111000110
),
        .k5(32'b00111101110101101001101010101000
),
        .k6(32'b10111101000000011000001101101111
),
        .k7(32'b00111110000000010100011110011010
),
        .k8(32'b00111101100101011000000001001111
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
        .k0(32'b10111101000100100100011100001100
),
        .k1(32'b00111101110110010010011011101010
),
        .k2(32'b00111100011010111010100010011011
),
        .k3(32'b10111100101011100011001011000111
),
        .k4(32'b00111101101001010101100010010001
),
        .k5(32'b00111100010100000011000001110000
),
        .k6(32'b10111101101111000010010001011010
),
        .k7(32'b10111101111000000001100110011010
),
        .k8(32'b00111101111101000001000111110000
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
        .k0(32'b10111101110111011000110011100001
),
        .k1(32'b00111001111011110010010110011100
),
        .k2(32'b10111101000011110001000011000000
),
        .k3(32'b10111101110000100111111000010010
),
        .k4(32'b00111101110000011000111010111010
),
        .k5(32'b10111110000001110010000110110110
),
        .k6(32'b10111100001000000010010011100110
),
        .k7(32'b00111110000100010101010010000111
),
        .k8(32'b10111101000101111011011100101111
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
        .k0(32'b10111101000110011010010110111011
),
        .k1(32'b10111110000011001010011010111101
),
        .k2(32'b10111100100010101000111011001001
),
        .k3(32'b10111110000100110011011001001010
),
        .k4(32'b10111101001011010010110000101101
),
        .k5(32'b10111101111110011001111111111110
),
        .k6(32'b10111100110101111010000001001111
),
        .k7(32'b10111110000010011001110111000101
),
        .k8(32'b00111110000001001011001000000000
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
        .k0(32'b10111101110101000110011001001010
),
        .k1(32'b10111101110011011000101100100010
),
        .k2(32'b00111101100100110001110110000000
),
        .k3(32'b10111101001000111111011111000011
),
        .k4(32'b10111100101110110001011100011011
),
        .k5(32'b10111101000100101010010001101101
),
        .k6(32'b10111101101100010000001110111111
),
        .k7(32'b10111100101010000101111101011010
),
        .k8(32'b10111101001001000110001010010100
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
        .k0(32'b10111101111010101010010111011100
),
        .k1(32'b00111101011010000110001011001101
),
        .k2(32'b10111101101101010111111001100101
),
        .k3(32'b00111101111101110110001001001111
),
        .k4(32'b10111100110001010100000011000000
),
        .k5(32'b10111101001001110000000111101110
),
        .k6(32'b10111101110100110001010110110001
),
        .k7(32'b00111101111000101100010110111001
),
        .k8(32'b10111100000010010010010000011101
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
module featuremap_conv2d_3_filter1
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b00111011111001011001011001100010
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
        .k0(32'b10111101011010101110000100011111
),
        .k1(32'b10111101101011100111001000010011
),
        .k2(32'b10111101001011000000101011101111
),
        .k3(32'b00111101001010110101100010011011
),
        .k4(32'b10111101100100101011110100111101
),
        .k5(32'b00111101101000001110101010000110
),
        .k6(32'b10111101111010110010000011010010
),
        .k7(32'b00111100111111100000111100110110
),
        .k8(32'b10111101000100111011011100001010
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
        .k0(32'b00111011001100001111011100100111
),
        .k1(32'b10111101011000000000101010111100
),
        .k2(32'b00111110000110111001110000111100
),
        .k3(32'b10111100101001000111110110001110
),
        .k4(32'b00111101111111010100000011101101
),
        .k5(32'b10111101100011100011111101111111
),
        .k6(32'b00111101011111100011000011111010
),
        .k7(32'b00111101110101000010001011110011
),
        .k8(32'b00111011011111111111101001011001
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
        .k0(32'b00111100001111010101101011001100
),
        .k1(32'b10111100110101110111011011011111
),
        .k2(32'b10111101001011011010110000101111
),
        .k3(32'b10111100011111111000010110001010
),
        .k4(32'b10111110000011001101110100001100
),
        .k5(32'b10111110000100010110111011000011
),
        .k6(32'b00111100101001100010110101000001
),
        .k7(32'b10111100011101011100011101011001
),
        .k8(32'b10111101111010100010011100101010
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
        .k0(32'b10111101101110000010011100000111
),
        .k1(32'b00111101000100000111101111110100
),
        .k2(32'b00111101110111011000011011011111
),
        .k3(32'b00111101111111101100000000000110
),
        .k4(32'b10111101010011100001010111011000
),
        .k5(32'b00111101111110000000010010100100
),
        .k6(32'b00111110000001110011101001101011
),
        .k7(32'b10111101110000100101011011011010
),
        .k8(32'b10111101111000111110010110001111
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
        .k0(32'b00111100101010000111111111010101
),
        .k1(32'b00111101110000101010011100000101
),
        .k2(32'b10111101100000011010010110110100
),
        .k3(32'b00111100101101111010010110101111
),
        .k4(32'b10111101100101111010111010110011
),
        .k5(32'b10111011100010111100111110010110
),
        .k6(32'b10111011001100000101001110101000
),
        .k7(32'b00111101100111101000110110110000
),
        .k8(32'b00111101101001010110010110010010
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
        .k0(32'b10111101011110110001111101111011
),
        .k1(32'b00111101110101011001000010011110
),
        .k2(32'b10111101000101110010110101111011
),
        .k3(32'b10111101100101110001011111011010
),
        .k4(32'b00111101100011000011010100101001
),
        .k5(32'b00111101001100110001110001010001
),
        .k6(32'b10111101110011010101000101101111
),
        .k7(32'b00111101101101001001000011011001
),
        .k8(32'b10111100000010110001101011100101
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
        .k0(32'b10111101000100101100000111000111
),
        .k1(32'b00111101101001100000010100110011
),
        .k2(32'b00111101100110000000011000101101
),
        .k3(32'b00111100110010001001000110100100
),
        .k4(32'b10111101011111101010101011000111
),
        .k5(32'b10111101100000011100010010000111
),
        .k6(32'b00111101110100100100000110011011
),
        .k7(32'b00111101010100000011101100010000
),
        .k8(32'b00111101100001011000110111010110
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
        .k0(32'b10111101101010010000101011110001
),
        .k1(32'b00111101001100111010010110001100
),
        .k2(32'b10111101110101001000001100110000
),
        .k3(32'b00111101010010101010001110001101
),
        .k4(32'b10111101110000011110000001011000
),
        .k5(32'b10111101110000101111100101001010
),
        .k6(32'b10111100100011001100000011011110
),
        .k7(32'b10111100111110101111001000010010
),
        .k8(32'b00111101110000100011000100110001
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
        .k0(32'b00111011001100110111110111000110
),
        .k1(32'b10111001100000101110011101011100
),
        .k2(32'b10111100101001111010111101111101
),
        .k3(32'b10111101111011000111111001010001
),
        .k4(32'b00111101110111101100001001101011
),
        .k5(32'b00111101101111100010010011001010
),
        .k6(32'b00111101111010000000100101110011
),
        .k7(32'b00111101010010111001101110101110
),
        .k8(32'b00111100100011000110010111100111
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
        .k0(32'b10111110000010001110100010001101
),
        .k1(32'b10111101111010010001110101001001
),
        .k2(32'b10111101101001010111001000101011
),
        .k3(32'b00111100110111011101100000010100
),
        .k4(32'b00111010110001010110111000011001
),
        .k5(32'b10111011010111100111011011011010
),
        .k6(32'b10111101001000100110011000001000
),
        .k7(32'b10111101101110000100100110110011
),
        .k8(32'b10111101101010011000011110011101
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
        .k0(32'b10111101101100100101000010001100
),
        .k1(32'b10111101011011111011110111100000
),
        .k2(32'b00111100001100000011111011100001
),
        .k3(32'b00111110000100001110100010100000
),
        .k4(32'b00111110000010110011111111111000
),
        .k5(32'b00111101111110000111100010010100
),
        .k6(32'b10111101101001100100101001100110
),
        .k7(32'b00111010000110110111010100000111
),
        .k8(32'b00111101011011110001000001010010
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
        .k0(32'b10111011011011110010111110110011
),
        .k1(32'b10111101011111101010101111100000
),
        .k2(32'b00111011101101010001000001111111
),
        .k3(32'b00111101101011001010110100010101
),
        .k4(32'b00111101111110011111001010110000
),
        .k5(32'b00111101111110111110000110000010
),
        .k6(32'b00111100101010001000111100111001
),
        .k7(32'b00111101110111011101001011001000
),
        .k8(32'b00111101100000010101101010110100
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
        .k0(32'b10111101101111001000100110011100
),
        .k1(32'b00111101110111000001001011100100
),
        .k2(32'b10111101000101001110010011101001
),
        .k3(32'b10111101101011101111111011100000
),
        .k4(32'b10111101000001000011100100110111
),
        .k5(32'b10111101111111000111110111011011
),
        .k6(32'b00111100111100000110010111110100
),
        .k7(32'b00111101011110011110100000001001
),
        .k8(32'b00111101000100001111000010110011
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
        .k0(32'b10111101100010111000010110111010
),
        .k1(32'b10111101110010000100000001000111
),
        .k2(32'b00111101101010010111010110011100
),
        .k3(32'b10111101010010011000111010010001
),
        .k4(32'b00111110000011101101100100001110
),
        .k5(32'b10111100110111101101111010100000
),
        .k6(32'b00111100110011001000101001001010
),
        .k7(32'b10111110000011110001011010000110
),
        .k8(32'b10111101101001000001110110010010
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
        .k0(32'b00111101100001100100010100000110
),
        .k1(32'b00111100111101110001111110000100
),
        .k2(32'b10111110000010001111001111001110
),
        .k3(32'b00111101010100000001100111101000
),
        .k4(32'b10111101101100101110111010010110
),
        .k5(32'b10111101101110101000011110100011
),
        .k6(32'b10111101001011001010001100010011
),
        .k7(32'b10111101010100100101010011011001
),
        .k8(32'b00111101111110010111011001111101
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
        .k0(32'b00111101101101100001011001011000
),
        .k1(32'b00111110001001101100100000010010
),
        .k2(32'b00111101001111011010001000010010
),
        .k3(32'b00111101110110001011110010010100
),
        .k4(32'b00111011101000100100100110101011
),
        .k5(32'b10111101100000011101110101010111
),
        .k6(32'b00111101011100011111011001011110
),
        .k7(32'b00111101010101110000011011101011
),
        .k8(32'b00111100001001100001000001110010
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
module featuremap_conv2d_3_filter2
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b00111011000011010011101000001101
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
        .k0(32'b10111101010100101010110011110001
),
        .k1(32'b00111110000000100001011101100111
),
        .k2(32'b10111101111111100011010111010011
),
        .k3(32'b10111101110111001111011001111010
),
        .k4(32'b00111101101000001110111011001110
),
        .k5(32'b00111110000110010110110111110011
),
        .k6(32'b00111101111011000010110110001111
),
        .k7(32'b00111100011101010110000001001100
),
        .k8(32'b10111100100011011100010110000100
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
        .k0(32'b10111101101000101101100000100010
),
        .k1(32'b10111101101011110011001011110011
),
        .k2(32'b10111110000000111010110100111000
),
        .k3(32'b10111101111101010111110110101011
),
        .k4(32'b10111101111010111000000100100111
),
        .k5(32'b10111101000110000001101011110010
),
        .k6(32'b00111101100000011100111111001010
),
        .k7(32'b10111101000001100110101010011001
),
        .k8(32'b00111101100001111010010100000000
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
        .k0(32'b00111101101101110110110110000010
),
        .k1(32'b10111101110001010011110010100001
),
        .k2(32'b10111101010111000000101000001111
),
        .k3(32'b10111101100101100110110111000110
),
        .k4(32'b00111101111111011000101110110110
),
        .k5(32'b10111101101110010000010110111000
),
        .k6(32'b10111101110101010110000010111000
),
        .k7(32'b00111110000110011100010000001011
),
        .k8(32'b10111101110101011110000000011010
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
        .k0(32'b00111101001101000010111110011010
),
        .k1(32'b10111101100100000100101000001111
),
        .k2(32'b00111101101111011110100100011101
),
        .k3(32'b10111110000010110000100010111011
),
        .k4(32'b00111101011101111101010000100100
),
        .k5(32'b00111101101000111010010000011010
),
        .k6(32'b00111101000001111100001110001110
),
        .k7(32'b10111110000000000100100011001011
),
        .k8(32'b00111010100011010111010011001001
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
        .k0(32'b00111101110011010100011000111011
),
        .k1(32'b10111100100101000100011010011010
),
        .k2(32'b00111110000000001100011101111110
),
        .k3(32'b00111101010010101010100010100000
),
        .k4(32'b00111101110001010010111011000111
),
        .k5(32'b00111101110001110101111001001110
),
        .k6(32'b10111110000010011000000000101101
),
        .k7(32'b10111100101110001000111100101010
),
        .k8(32'b10111101001010011110100001100000
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
        .k0(32'b10111100101111001111111111001000
),
        .k1(32'b10111110000011000111111101110100
),
        .k2(32'b00111100111101011110010100000000
),
        .k3(32'b00111110000011110010110100110000
),
        .k4(32'b10111100010111101100111110011110
),
        .k5(32'b00111101110000011011010011001010
),
        .k6(32'b10111101010100000010000010111110
),
        .k7(32'b00111100001111011110010111000110
),
        .k8(32'b10111101110101011010000001011011
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
        .k0(32'b10111101010101010001111001000001
),
        .k1(32'b10111110000011100101010000110011
),
        .k2(32'b10111101111111101100110001111110
),
        .k3(32'b10111101110101110101001000011100
),
        .k4(32'b00111101010011010101010100001000
),
        .k5(32'b10111101111101010011011101000010
),
        .k6(32'b00111110000100100110011100001000
),
        .k7(32'b00111110000010100111011101100101
),
        .k8(32'b00111101101010001000100001001110
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
        .k0(32'b10111101111010110000001011111001
),
        .k1(32'b10111100000100100010100011111110
),
        .k2(32'b00111101101000001110111000110110
),
        .k3(32'b10111010010000011110001100010001
),
        .k4(32'b10111101010111011000001011110000
),
        .k5(32'b00111100000010110000110001111011
),
        .k6(32'b10111101111001001001111000110010
),
        .k7(32'b10111100111101010100010100010010
),
        .k8(32'b10111101100110001011101010100011
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
        .k0(32'b10111101111111111110100111011101
),
        .k1(32'b00111110000001111010001110111111
),
        .k2(32'b10111101100011110111011000010001
),
        .k3(32'b00111101111001100011000000011111
),
        .k4(32'b00111101110100111110011001010000
),
        .k5(32'b00111101110111100001000101000001
),
        .k6(32'b00111101010100010100000101110001
),
        .k7(32'b00111010100000100001111110110110
),
        .k8(32'b00111101010001001001011000100000
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
        .k0(32'b10111110000010101100011001110000
),
        .k1(32'b00111110000111001000100011110111
),
        .k2(32'b10111101100000110110001011011100
),
        .k3(32'b00111100110110100111110001100100
),
        .k4(32'b00111110000110000010101110000111
),
        .k5(32'b00111101000010100000000010000011
),
        .k6(32'b10111101111010011110000001101111
),
        .k7(32'b00111101010110010100010100010001
),
        .k8(32'b00111100101100000110010100001011
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
        .k0(32'b10111101110011011110000010010010
),
        .k1(32'b10111100000001100100110010010110
),
        .k2(32'b00111101101001001100001100101111
),
        .k3(32'b10111110000101001001010101111000
),
        .k4(32'b00111101100001001111010111010101
),
        .k5(32'b10111011000101101111010010011001
),
        .k6(32'b10111110000101111011010101011001
),
        .k7(32'b10111101100000001101111010011011
),
        .k8(32'b00111101111001011001111010011110
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
        .k0(32'b10111101001111110111111100110100
),
        .k1(32'b00111101000010111001000000101001
),
        .k2(32'b00111110000101000111100110010100
),
        .k3(32'b00111101101000011000011111000000
),
        .k4(32'b00111101110100100001110110001010
),
        .k5(32'b00111110000010011110110000001001
),
        .k6(32'b10111100100101101110011110101001
),
        .k7(32'b10111101111001100101011110101001
),
        .k8(32'b10111101101011110101011101110101
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
        .k0(32'b00111100110001111000011000000010
),
        .k1(32'b00111100101111001110111111000011
),
        .k2(32'b00111101010001010100000010110110
),
        .k3(32'b10111101000101000011111000000010
),
        .k4(32'b10111100001110111000110100001001
),
        .k5(32'b00111101100100010101000000101111
),
        .k6(32'b00111101111100100111000011010110
),
        .k7(32'b00111110000010101000001111001100
),
        .k8(32'b10111101101111111011011111011100
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
        .k0(32'b10111100111100110110100000001101
),
        .k1(32'b10111110000011000100100100011000
),
        .k2(32'b10111101111100001111111110010001
),
        .k3(32'b10111101110010011001101110101010
),
        .k4(32'b00111101000000110011101001011110
),
        .k5(32'b00111100100101101011100010001001
),
        .k6(32'b00111101110010111111100000110100
),
        .k7(32'b00111101110100010111111110110000
),
        .k8(32'b10111101101011011100101100111000
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
        .k0(32'b10111101110001000110001101001110
),
        .k1(32'b00111110000001100001101011101110
),
        .k2(32'b00111101111101110001011100000101
),
        .k3(32'b00111100000011111110011100001100
),
        .k4(32'b00111100001100111011101010100001
),
        .k5(32'b00111101010001001110000110101111
),
        .k6(32'b10111101111010001101001111100110
),
        .k7(32'b00111101001000100110100001011000
),
        .k8(32'b10111101110010100011011000110011
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
        .k0(32'b10111101110111101101001110011100
),
        .k1(32'b10111100000001110001010101111011
),
        .k2(32'b00111100110100100010010101100010
),
        .k3(32'b00111100110110100100001100110011
),
        .k4(32'b10111101100011010101111101010111
),
        .k5(32'b10111101101101001001110010011001
),
        .k6(32'b00111101101010011000100111000001
),
        .k7(32'b10111100000111110011001001110000
),
        .k8(32'b10111110000001001010110001101110
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
////////////////////////////////////////// FILTER 4 //////////////////////////////////////////
module featuremap_conv2d_3_filter4
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b00111011010000101010000110000110
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
        .k0(32'b10111101111111000011111010000010
),
        .k1(32'b10111101100001011011100110101110
),
        .k2(32'b10111101111110000001011001110011
),
        .k3(32'b00111101011100100000001110010011
),
        .k4(32'b10111101111110001001111110010001
),
        .k5(32'b00111101100001011010010101010011
),
        .k6(32'b00111110000011000100100000010110
),
        .k7(32'b00111101111010101001010010011000
),
        .k8(32'b00111101111101110000111101111000
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
        .k0(32'b00111101010100011111111001001001
),
        .k1(32'b00111101101011010011101110100000
),
        .k2(32'b00111101111111101001000101110011
),
        .k3(32'b10111110000000011010011000000001
),
        .k4(32'b10111101011100011000010100000010
),
        .k5(32'b10111101100010011100111001101010
),
        .k6(32'b00111101001001010011011110000101
),
        .k7(32'b10111101100010110000001010101000
),
        .k8(32'b10111101010111000110010011000000
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
        .k0(32'b10111101100100011110000001111000
),
        .k1(32'b00111101011010011110000111010110
),
        .k2(32'b10111101100100111111010011111011
),
        .k3(32'b10111101101111101001011001001101
),
        .k4(32'b10111101100101011011001101001111
),
        .k5(32'b10111011110000001001001010001101
),
        .k6(32'b10111100001111100111111100010001
),
        .k7(32'b10111011010110001001111011000000
),
        .k8(32'b00111100011111100111010111110010
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
        .k0(32'b10111100100010011100010010100010
),
        .k1(32'b10111101010101100010011100011011
),
        .k2(32'b00111101101010110010100110000111
),
        .k3(32'b00111101100100101001000010101100
),
        .k4(32'b10111101101011101101011101000000
),
        .k5(32'b00111100101100000111101110111110
),
        .k6(32'b00111101101001110111111110110110
),
        .k7(32'b00111101110111101100010000011011
),
        .k8(32'b00111110000000111110011101010010
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
        .k0(32'b10111100100110011110011111110010
),
        .k1(32'b10111101010110010101010100001100
),
        .k2(32'b00111101110001010001111000111001
),
        .k3(32'b00111100010110100101000010101001
),
        .k4(32'b00111100110111010100100000011001
),
        .k5(32'b10111100101100111010101101010000
),
        .k6(32'b00111110000010001010111110011010
),
        .k7(32'b10111101111001011001110011101101
),
        .k8(32'b10111101100011010100111111011100
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
        .k0(32'b10111101101111100101001000001100
),
        .k1(32'b00111101100101100100000101111111
),
        .k2(32'b00111101100001010001101010100110
),
        .k3(32'b10111101100011001100100110000110
),
        .k4(32'b10111101101000110010000000111111
),
        .k5(32'b00111011111000110111000110000110
),
        .k6(32'b10111110000011001100110110011010
),
        .k7(32'b00111101110101010000110000011101
),
        .k8(32'b00111100101100100101000000011101
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
        .k0(32'b10111101111111000101000000011001
),
        .k1(32'b10111101010001010001111011010101
),
        .k2(32'b00111101101000000000000111010011
),
        .k3(32'b10111101010100011101101101110010
),
        .k4(32'b00111101100010000000111100100010
),
        .k5(32'b10111101011011100000011001110110
),
        .k6(32'b00111100101110101101010010001000
),
        .k7(32'b10111101010101001100101101010010
),
        .k8(32'b00111101010001101011101011110101
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
        .k0(32'b00111110001001111011001001100100
),
        .k1(32'b00111110000000001001101101111000
),
        .k2(32'b10111110000001100111000110001100
),
        .k3(32'b00111101111111001111011110011100
),
        .k4(32'b10111101010000110100101111100000
),
        .k5(32'b00111110000001000001010001000101
),
        .k6(32'b00111100001001101011010011010111
),
        .k7(32'b10111100100011110101101010011010
),
        .k8(32'b10111101100010101000111001101010
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
        .k0(32'b00111101111011100111001001001100
),
        .k1(32'b00111101010111111000101010111011
),
        .k2(32'b00111101101010111011110001000101
),
        .k3(32'b10111010010101010111101000101010
),
        .k4(32'b10111101100000111100101001100101
),
        .k5(32'b00111101011000010100010000001100
),
        .k6(32'b00111110000010011100100100111001
),
        .k7(32'b10111101000010111111011010111101
),
        .k8(32'b10111101101101101010110110010010
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
        .k0(32'b10111101100111101111110111011100
),
        .k1(32'b00111101111011010000111110011100
),
        .k2(32'b10111101100110001100100110101001
),
        .k3(32'b00111101000001110010110111010001
),
        .k4(32'b00111101101111101101101001111001
),
        .k5(32'b10111101010111110100010010010111
),
        .k6(32'b00111101110000000011010000011101
),
        .k7(32'b00111011101000011011000010110010
),
        .k8(32'b10111101100100011110111110101100
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
        .k0(32'b10111100100101100000111101011000
),
        .k1(32'b00111101001001000111011110100000
),
        .k2(32'b00111100100100011101100001110000
),
        .k3(32'b00111101101010111010011010000111
),
        .k4(32'b10111110000101000111011011000000
),
        .k5(32'b10111110000101110110001010111111
),
        .k6(32'b10111100111001011001101010101101
),
        .k7(32'b10111110000101111010110001111100
),
        .k8(32'b10111101101110001001110011100010
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
        .k0(32'b00111110000011010001101010100001
),
        .k1(32'b00111100111001100111101110000001
),
        .k2(32'b10111101110001010010010010110000
),
        .k3(32'b10111100001100111001101011100100
),
        .k4(32'b00111110001001010100101001010100
),
        .k5(32'b00111101101100110010011010010111
),
        .k6(32'b00111101100101010000101011011101
),
        .k7(32'b10111101101010101010001001101100
),
        .k8(32'b00111100011110011101011100110000
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
        .k0(32'b10111101001110100001111000000010
),
        .k1(32'b10111100111001100110011011000111
),
        .k2(32'b10111101111000001111101000000001
),
        .k3(32'b00111101111010110010001100011001
),
        .k4(32'b10111100100100010100000101100110
),
        .k5(32'b10111101101101011011011010111000
),
        .k6(32'b00111101100001110101100010001110
),
        .k7(32'b00111101110101101001001111110111
),
        .k8(32'b10111110000010110000101101000100
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
        .k0(32'b00111110000010010100101100010100
),
        .k1(32'b00111100010010100100011100101010
),
        .k2(32'b00111101000100110101000111000001
),
        .k3(32'b10111110000010000001001100010101
),
        .k4(32'b00111110000000000010100111000000
),
        .k5(32'b10111101011001001010100000110010
),
        .k6(32'b00111100100010100001110000011010
),
        .k7(32'b10111101111110000011010100011100
),
        .k8(32'b10111101100001110011101000100110
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
        .k0(32'b00111101101010010111010100110011
),
        .k1(32'b10111110000010010111111010111011
),
        .k2(32'b10111101101101011110011110111010
),
        .k3(32'b00111101111000101100001111110001
),
        .k4(32'b00111110000000010011001110001001
),
        .k5(32'b00111101000001100011110001101001
),
        .k6(32'b10111101111011110000110110000001
),
        .k7(32'b10111101110111111001001110011011
),
        .k8(32'b10111101101000111000100000101001
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
        .k0(32'b00111101101110111110000100000000
),
        .k1(32'b10111101001110100111001000010100
),
        .k2(32'b10111110000011100011100101001101
),
        .k3(32'b00111101010001000001001001111100
),
        .k4(32'b00111101100110111011011001011110
),
        .k5(32'b00111011110111001000100110000111
),
        .k6(32'b10111101111110011010000011111100
),
        .k7(32'b00111101010011101011010001010100
),
        .k8(32'b00111100011011011100110010111101
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
module featuremap_conv2d_3_filter5
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b10111011011011001110110011001011
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
        .k0(32'b00111010000000100010010101001011
),
        .k1(32'b10111101101010110110011000010101
),
        .k2(32'b10111110001000101010100010000010
),
        .k3(32'b10111110001001001010001011111110
),
        .k4(32'b00111100100011110101011101001111
),
        .k5(32'b10111101110011101100100110110111
),
        .k6(32'b00111101010001010011110010010101
),
        .k7(32'b10111101101000000001111101000001
),
        .k8(32'b10111110001000111011100010100101
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
        .k0(32'b00111101111001011101101010001011
),
        .k1(32'b10111011111010110000111101101001
),
        .k2(32'b10111101111000100110011000011001
),
        .k3(32'b00111101010111110011111101011000
),
        .k4(32'b00111011000111001100011001010010
),
        .k5(32'b00111101100111110100101100110101
),
        .k6(32'b00111101110000110011101001100100
),
        .k7(32'b00111101010010001010000000010100
),
        .k8(32'b00111101000110100111001100111101
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
        .k0(32'b10111101111010110100100000100110
),
        .k1(32'b10111101001100100000010111000010
),
        .k2(32'b10111101010100000101101100100011
),
        .k3(32'b00111101100011000001011100101111
),
        .k4(32'b00111100100011101111010001110100
),
        .k5(32'b00111101011111011011101100101010
),
        .k6(32'b10111110000010111100110100000001
),
        .k7(32'b10111101101000001000100100100000
),
        .k8(32'b00111101101001100000010101000010
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
        .k0(32'b00111101011001100010101110110110
),
        .k1(32'b00111101000000101010000011111111
),
        .k2(32'b10111101110001000010111111000011
),
        .k3(32'b10111100100101000000001101001110
),
        .k4(32'b00111011100000001111000101100000
),
        .k5(32'b00111101101010001110010001100001
),
        .k6(32'b00111101010011101100111110010000
),
        .k7(32'b10111110000101110110011011010000
),
        .k8(32'b00111100101100000101001001101110
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
        .k0(32'b00111101001001010110010110100000
),
        .k1(32'b00111110000001111111101111110110
),
        .k2(32'b10111101010001101000111001000111
),
        .k3(32'b00111100000100011011101111010010
),
        .k4(32'b00111101101010110000101001000010
),
        .k5(32'b00111101001000101101001100010111
),
        .k6(32'b00111101101111000101001000001001
),
        .k7(32'b10111101111100001000110101011111
),
        .k8(32'b00111100110000010001110111001011
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
        .k0(32'b10111100010100101101000100010101
),
        .k1(32'b00111101100011000100111100001001
),
        .k2(32'b00111110000100011000101100110000
),
        .k3(32'b00111101110100101111000111000101
),
        .k4(32'b00111101000110001110101101000111
),
        .k5(32'b00111101010010011011000011010010
),
        .k6(32'b10111101110011011111100011111100
),
        .k7(32'b00111101100011011101110101011001
),
        .k8(32'b00111110000011010001101101010000
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
        .k0(32'b00111101010000001100110000001110
),
        .k1(32'b10111101101011101001111000011101
),
        .k2(32'b00111101100010100010101011110101
),
        .k3(32'b00111101100111111010010010101100
),
        .k4(32'b10111100011101101010100000010110
),
        .k5(32'b10111110000010001110110011011110
),
        .k6(32'b00111100110011111101001100010110
),
        .k7(32'b10111101110110001100010110110010
),
        .k8(32'b10111110000101011011010001110110
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
        .k0(32'b10111101001000011101100111111100
),
        .k1(32'b00111101110111101110011101100110
),
        .k2(32'b00111100100110111011010000111111
),
        .k3(32'b00111101110110010011001110000101
),
        .k4(32'b00111101000111001110111011110100
),
        .k5(32'b00111101110111010000111001000011
),
        .k6(32'b10111101100101010110100010001110
),
        .k7(32'b10111011001000000100101000011100
),
        .k8(32'b00111101010000000011010100100000
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
        .k0(32'b10111100110110010010001011110111
),
        .k1(32'b10111101110101100011100110111110
),
        .k2(32'b10111101001101111010010001010110
),
        .k3(32'b00111101111111110001100111000111
),
        .k4(32'b10111101001111100100100001111001
),
        .k5(32'b10111100110111011001001011111001
),
        .k6(32'b10111101100010111000100111100001
),
        .k7(32'b00111101011110110101110011000101
),
        .k8(32'b00111101100010111000110110010100
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
        .k0(32'b10111100110001101010011100011001
),
        .k1(32'b10111101111010001100000010111100
),
        .k2(32'b00111101000011111011101101111010
),
        .k3(32'b00111101111100001101001000000101
),
        .k4(32'b00111101100110011001000001111001
),
        .k5(32'b00111101100011001010001010101111
),
        .k6(32'b10111011100110000011001100111010
),
        .k7(32'b10111011111010110010001000110110
),
        .k8(32'b10111110000001000011010101111110
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
        .k0(32'b10111101000011010110101001101110
),
        .k1(32'b00111101000110000100110100011101
),
        .k2(32'b10111101101000010011010000110001
),
        .k3(32'b00111101101000000000000101010101
),
        .k4(32'b00111110000111100111011010111100
),
        .k5(32'b00111100101010101010101001000001
),
        .k6(32'b00111110000100100100101011010111
),
        .k7(32'b00111101100101000100011101011110
),
        .k8(32'b10111101100010111101110100011100
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
        .k0(32'b10111101111100000101110010101100
),
        .k1(32'b10111101100010111100110010100111
),
        .k2(32'b10111101000101101011111001101111
),
        .k3(32'b10111101010000011010111010011100
),
        .k4(32'b10111110000000101101101110010010
),
        .k5(32'b10111100111110100000101111101111
),
        .k6(32'b00111100001110000101010111000111
),
        .k7(32'b00111101101100100100001000101101
),
        .k8(32'b00111101011011110000010010111111
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
        .k0(32'b10111101101011001110111110000001
),
        .k1(32'b00111100010011001100100011100101
),
        .k2(32'b10111101101000111101000010110011
),
        .k3(32'b10111101101001111011001110000111
),
        .k4(32'b10111101001000000111001010011101
),
        .k5(32'b00111100101001001110100000101001
),
        .k6(32'b10111100110101010100001011111001
),
        .k7(32'b00111101110100000101111010100110
),
        .k8(32'b00111100101101000011110110010000
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
        .k0(32'b10111110000101000000110001100000
),
        .k1(32'b10111110000000001101001111000010
),
        .k2(32'b00111101001111000001100111010010
),
        .k3(32'b10111101000100101100010000110000
),
        .k4(32'b00111101110111011111110000010100
),
        .k5(32'b10111101101100111100100000010111
),
        .k6(32'b10111100111100011111111110010010
),
        .k7(32'b10111100010001111110010010100111
),
        .k8(32'b00111100000010010011010110100110
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
        .k0(32'b10111100110101101100000101001000
),
        .k1(32'b10111101110101111001101010000101
),
        .k2(32'b10111101101001011101010110101110
),
        .k3(32'b10111101110011011101010001001110
),
        .k4(32'b10111110000101000100010111000000
),
        .k5(32'b00111101100000010001011110100111
),
        .k6(32'b10111101111010000000110100011110
),
        .k7(32'b10111101010001100001010010101010
),
        .k8(32'b10111100011000000010111110010101
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
        .k0(32'b00111101001000000101000100101000
),
        .k1(32'b10111101100000000111101100001000
),
        .k2(32'b10111101110000011111001101001110
),
        .k3(32'b00111110000110110111011101100100
),
        .k4(32'b00111101111011101011000100101110
),
        .k5(32'b00111101000001001110100000001000
),
        .k6(32'b00111100101100001101110010100011
),
        .k7(32'b00111110000110101111110000011100
),
        .k8(32'b00111101110110100111100011101001
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
module featuremap_conv2d_3_filter6
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b10111001001101011100000100000011
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
        .k0(32'b10111101110110110111100110010110
),
        .k1(32'b00111100110000011100001000000001
),
        .k2(32'b00111101010110010111100000110110
),
        .k3(32'b10111101101000101100101101100011
),
        .k4(32'b10111100111110101110101000110100
),
        .k5(32'b10111101101011110101000011000101
),
        .k6(32'b10111100101000101101111101011010
),
        .k7(32'b10111101101010000011001110001111
),
        .k8(32'b10111100111001110010010110001100
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
        .k0(32'b00111100011010010111001001100010
),
        .k1(32'b00111101010110000010000100101010
),
        .k2(32'b00111101000011100100010001000101
),
        .k3(32'b00111101011011110000101101111001
),
        .k4(32'b10111101111111101011101010000101
),
        .k5(32'b00111110001000110011011011101100
),
        .k6(32'b00111100100001000010100101111110
),
        .k7(32'b00111110000100101001110111011101
),
        .k8(32'b10111101000000000010111100101100
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
        .k0(32'b10111110000011011000001100100101
),
        .k1(32'b00111101101100101101010111101010
),
        .k2(32'b00111100001111001000000110101000
),
        .k3(32'b10111101011110110011111000111110
),
        .k4(32'b10111101110010111010011010010000
),
        .k5(32'b10111101010011100101000000110101
),
        .k6(32'b10111100100010001000110001011011
),
        .k7(32'b10111110001011101000110011000100
),
        .k8(32'b00111101000100101010101111010010
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
        .k0(32'b10111101101110010011010011010100
),
        .k1(32'b10111101100101110011110011111000
),
        .k2(32'b10111101100100100101100101001110
),
        .k3(32'b00111101100010111000111101010110
),
        .k4(32'b00111100100000011010110111100101
),
        .k5(32'b00111110000010000100010101011100
),
        .k6(32'b10111101100101010010000010011110
),
        .k7(32'b10111100100011111111110100101011
),
        .k8(32'b00111101101111100100000010111000
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
        .k0(32'b10111101111010111101010111001111
),
        .k1(32'b00111101010110001010100010111010
),
        .k2(32'b00111110001000100011100110010000
),
        .k3(32'b10111100110011010000110000010011
),
        .k4(32'b10111101100100010101000110101111
),
        .k5(32'b00111101111111001001001001111001
),
        .k6(32'b00111101110110101001011000011010
),
        .k7(32'b00111101011000111011100101010111
),
        .k8(32'b10111101100000010010000010100111
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
        .k0(32'b00111101010011001000111010011110
),
        .k1(32'b10111101111111000001001110001010
),
        .k2(32'b10111101111111001011011011100100
),
        .k3(32'b00111101101110000110111111100010
),
        .k4(32'b00111101001101010100111111110000
),
        .k5(32'b10111100110010000010010001101011
),
        .k6(32'b10111101010010111101000010011110
),
        .k7(32'b00111110000000110001010010100011
),
        .k8(32'b00111101111101101111100000001100
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
        .k0(32'b00111101101100101111111101111011
),
        .k1(32'b10111110000110011011000111011111
),
        .k2(32'b10111110000010110101110100110110
),
        .k3(32'b10111101110000111010000100000101
),
        .k4(32'b00111101011110001011110111000010
),
        .k5(32'b10111101111010001010100110100101
),
        .k6(32'b00111101101001101010010111100001
),
        .k7(32'b10111100101101110111011001001011
),
        .k8(32'b00111101100100111010100110100000
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
        .k0(32'b10111101011111101011110110100110
),
        .k1(32'b10111110000110010000110101110101
),
        .k2(32'b10111100001000011111110110101111
),
        .k3(32'b10111101001001101101000010101111
),
        .k4(32'b10111101100110101010101001000111
),
        .k5(32'b00111101101001001101001101001001
),
        .k6(32'b10111110000000000101111000010000
),
        .k7(32'b00111101001101010111001100101110
),
        .k8(32'b10111101001010001101100011111110
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
        .k0(32'b00111101101011000000001110000110
),
        .k1(32'b00111100111001011011000110100010
),
        .k2(32'b00111101110111110110001011111001
),
        .k3(32'b00111100010111110110110110001010
),
        .k4(32'b10111101010100110000010000110101
),
        .k5(32'b00111110000011110100100100100000
),
        .k6(32'b00111110000101100111111101100011
),
        .k7(32'b10111011010001110010001010001000
),
        .k8(32'b10111101101100001001110111001010
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
        .k0(32'b00111101110101010101001001010111
),
        .k1(32'b00111010101011110011111010001001
),
        .k2(32'b10111110000110100001101100100000
),
        .k3(32'b10111101100000101111001000011100
),
        .k4(32'b10111010100100010011001101110100
),
        .k5(32'b10111100100000000111110111101100
),
        .k6(32'b10111101101101000010010100100111
),
        .k7(32'b00111100001101100000110101101100
),
        .k8(32'b10111101100100001100000010001010
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
        .k0(32'b00111101001000011100000110110011
),
        .k1(32'b00111100101101000000010110110011
),
        .k2(32'b00111101000101101001110110110110
),
        .k3(32'b10111101000110101101101000010101
),
        .k4(32'b10111101100111110000101110100111
),
        .k5(32'b10111101011100001101010011101101
),
        .k6(32'b00111101111010111101000011111110
),
        .k7(32'b00111101101100001111100101100110
),
        .k8(32'b10111101000100110110010101110110
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
        .k0(32'b10111110000010111011011000100000
),
        .k1(32'b10111110000010110000111010100000
),
        .k2(32'b10111100101110011100011111001010
),
        .k3(32'b10111110000001000111101001110001
),
        .k4(32'b10111101111110010001001110001010
),
        .k5(32'b00111101100111111011001011100000
),
        .k6(32'b00111011101110000110011010001101
),
        .k7(32'b10111101100110100010011011111101
),
        .k8(32'b00111101001101100011010110011110
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
        .k0(32'b10111101101000000000001001100100
),
        .k1(32'b00111101100100101101110010100000
),
        .k2(32'b00111101101101100101101100111010
),
        .k3(32'b10111100101010000101010110001001
),
        .k4(32'b10111110000000001001001101110110
),
        .k5(32'b10111101101100100011111010100010
),
        .k6(32'b10111101111001111010111110000000
),
        .k7(32'b10111101111000011100110101001110
),
        .k8(32'b10111100011110111000110010111110
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
        .k0(32'b10111110000001110000010000000101
),
        .k1(32'b00111101010001000100001110000110
),
        .k2(32'b00111100101100001101101010101010
),
        .k3(32'b10111101010101110111001100110010
),
        .k4(32'b10111101111101111010001110011111
),
        .k5(32'b10111101011010000110110110111110
),
        .k6(32'b10111011110000110111110101001011
),
        .k7(32'b00111101111001000000000111000110
),
        .k8(32'b00111100101001001001100001000000
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
        .k0(32'b00111100111011010010011101011101
),
        .k1(32'b10111101101011010010001111101101
),
        .k2(32'b00111101100011000000110100111101
),
        .k3(32'b10111101100010010111011101111101
),
        .k4(32'b00111100001101010010101111000101
),
        .k5(32'b10111110000001001000010110101111
),
        .k6(32'b00111100001001110001011000010011
),
        .k7(32'b00111101010010100111010000000000
),
        .k8(32'b10111110000001101010110111101011
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
        .k0(32'b00111101100101000101001100000101
),
        .k1(32'b00111101101110100111101000010110
),
        .k2(32'b00111110000101111100000000011111
),
        .k3(32'b10111010101111111101000101111000
),
        .k4(32'b00111110001011010000011101000101
),
        .k5(32'b00111101110101001001111011011010
),
        .k6(32'b00111101000101110111111001111111
),
        .k7(32'b10111101110010011010010010011011
),
        .k8(32'b10111101010010010111010011110110
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
module featuremap_conv2d_3_filter7
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b10111100001101001101111010011000
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
        .k0(32'b10111101110100100000100110000011
),
        .k1(32'b10111100101011100010110100001111
),
        .k2(32'b10111101011110101100001011010010
),
        .k3(32'b00111110000011101001010000001110
),
        .k4(32'b00111110000000100111001111110101
),
        .k5(32'b10111101011001110010111111111100
),
        .k6(32'b10111101101100111000001010011100
),
        .k7(32'b00111100101010000011101111010000
),
        .k8(32'b00111101100101001001100001011010
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
        .k0(32'b00111011100010100001110000010011
),
        .k1(32'b00111101100010100110100010110111
),
        .k2(32'b10111101111100010110100010111100
),
        .k3(32'b00111100010001010010000101000001
),
        .k4(32'b00111110000111011110110011101010
),
        .k5(32'b00111110000111000001100111011111
),
        .k6(32'b10111011101111011100010101110100
),
        .k7(32'b00111011111110100010110110101000
),
        .k8(32'b10111100101011110001000010001110
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
        .k0(32'b10111100110011000111101011110110
),
        .k1(32'b00111101111011111010011101100100
),
        .k2(32'b10111100011111011100100000111111
),
        .k3(32'b10111101111101000101111001100011
),
        .k4(32'b00111101110001011010101111110011
),
        .k5(32'b10111100100101001101010101100010
),
        .k6(32'b00111101111010010110111110010000
),
        .k7(32'b00111101011010111101110100110100
),
        .k8(32'b00111101111100010110010100000110
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
        .k0(32'b00111101101000000101110010101101
),
        .k1(32'b00111110000110000001011111100100
),
        .k2(32'b00111001011101010011100101111110
),
        .k3(32'b00111101111010000110010011100010
),
        .k4(32'b00111101000001101111001010111100
),
        .k5(32'b00111101111100110000000111011010
),
        .k6(32'b10111100101111100010110101010100
),
        .k7(32'b10111100100001001011111010000101
),
        .k8(32'b00111101101011100101111010100001
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
        .k0(32'b00111100101110011110100110101011
),
        .k1(32'b00111101100101001111101000000111
),
        .k2(32'b10111100001101000100110000010101
),
        .k3(32'b00111110000001110111110111111110
),
        .k4(32'b10111101000011100111011000000011
),
        .k5(32'b10111110000011000111111001111111
),
        .k6(32'b10111101111011011111101000011011
),
        .k7(32'b00111110000000001011011100001101
),
        .k8(32'b10111110000000000000100110101110
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
        .k0(32'b00111101001001011000101000111100
),
        .k1(32'b00111101101011001011001110001101
),
        .k2(32'b00111110000001010000010110011011
),
        .k3(32'b00111110000101100001110010111000
),
        .k4(32'b10111100110110111111011100111110
),
        .k5(32'b00111101110101100001100111010010
),
        .k6(32'b10111101100001110011001011111000
),
        .k7(32'b10111100001101011010001101101110
),
        .k8(32'b00111001110000111101110010011100
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
        .k0(32'b10111011101111000101100011011011
),
        .k1(32'b10111110000010111100011000000110
),
        .k2(32'b00111100011100010010001110011000
),
        .k3(32'b00111100100101110010100010000001
),
        .k4(32'b10111101001000110111011001010001
),
        .k5(32'b10111101111001010010100110110000
),
        .k6(32'b00111101001010000111110001111011
),
        .k7(32'b00111101101011100101001000010100
),
        .k8(32'b10111101110110011010110011000011
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
        .k0(32'b10111100010110010011000001111010
),
        .k1(32'b00111101111101000111010011000011
),
        .k2(32'b10111100100000110110101101001001
),
        .k3(32'b10111101111001001111000111000111
),
        .k4(32'b10111101111111110101100011010101
),
        .k5(32'b10111101010110010111001000101010
),
        .k6(32'b00111100001110000101101000101001
),
        .k7(32'b00111101110110110101001101101110
),
        .k8(32'b00111101101010101010110010110011
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
        .k0(32'b00111101100101000111100110110010
),
        .k1(32'b00111101010101101010100100100001
),
        .k2(32'b00111101101110000111111101111100
),
        .k3(32'b00111101100101100001000000100010
),
        .k4(32'b00111101111111010100101010111001
),
        .k5(32'b00111101110100001000101010011100
),
        .k6(32'b00111100111010111101100110011011
),
        .k7(32'b00111101101111010100011101110010
),
        .k8(32'b00111100000100101000110000000011
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
        .k0(32'b00111101100000100101011010001110
),
        .k1(32'b00111101010011111010010011000100
),
        .k2(32'b00111101101000001010101101000100
),
        .k3(32'b00111110000100001000000000010111
),
        .k4(32'b10111100010011000110110100000110
),
        .k5(32'b00111110000110101100001000000010
),
        .k6(32'b00111100111010001000000110010000
),
        .k7(32'b00111110000100100101000101101101
),
        .k8(32'b10111101110111001111111001001010
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
        .k0(32'b10111101100000010111000001001001
),
        .k1(32'b00111101010110101100010011100101
),
        .k2(32'b10111100010110001111100000001000
),
        .k3(32'b10111101101101111001111101001100
),
        .k4(32'b00111100100101010101011001110011
),
        .k5(32'b00111101000111011110001011010011
),
        .k6(32'b00111110000000111010111001110010
),
        .k7(32'b10111101000111010110110001011110
),
        .k8(32'b10111100100000101111100110000101
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
        .k0(32'b10111101101101000000011111111000
),
        .k1(32'b10111101100101111011010000101101
),
        .k2(32'b00111101111101101010010100110101
),
        .k3(32'b00111101111110001110010011000010
),
        .k4(32'b00111110000011010001001010010011
),
        .k5(32'b10111101001111110001010100011010
),
        .k6(32'b10111101101110010000111100100100
),
        .k7(32'b10111101100101101000001011100011
),
        .k8(32'b10111101001111110000000110110111
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
        .k0(32'b10111101110100101011010011011101
),
        .k1(32'b00111101111001100001001000001111
),
        .k2(32'b10111100001100100011011010001010
),
        .k3(32'b00111101110100101110010110110101
),
        .k4(32'b00111101011111001010101010101110
),
        .k5(32'b00111110000000001101011001000111
),
        .k6(32'b10111110000010110100011101100001
),
        .k7(32'b10111101111000001110101110000110
),
        .k8(32'b10111101001100110111100100111011
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
        .k0(32'b10111110000001000111001001111010
),
        .k1(32'b10111110000000001100010000000110
),
        .k2(32'b00111101101100111011010101101101
),
        .k3(32'b10111101100100000110010100001011
),
        .k4(32'b00111101010000000100101001000101
),
        .k5(32'b10111101101110000111110101001001
),
        .k6(32'b10111011110101101110101100000110
),
        .k7(32'b10111100100110110010000000000111
),
        .k8(32'b00111101111011010011111101001000
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
        .k0(32'b10111100111000110000110100011110
),
        .k1(32'b00111101111111011111011000000011
),
        .k2(32'b10111110000000101010100101101101
),
        .k3(32'b10111101000100010111011001000100
),
        .k4(32'b10111011010101111001111011010000
),
        .k5(32'b00111101011011101001011011111011
),
        .k6(32'b10111101111110010010100001110000
),
        .k7(32'b00111101101101100010011011010010
),
        .k8(32'b10111110001000101001000001011111
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
        .k0(32'b10111100111110000111001000111011
),
        .k1(32'b10111101010001001101011001001100
),
        .k2(32'b10111100101110110000101110110111
),
        .k3(32'b00111101100100010111101100001111
),
        .k4(32'b10111101100000001010111111110010
),
        .k5(32'b00111100100101101011110001111001
),
        .k6(32'b10111001010001010000000110101001
),
        .k7(32'b00111100100000000010101010001111
),
        .k8(32'b00111100100110101101111000110111
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
module featuremap_conv2d_3_filter8
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b00111011010010001011101100011101
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
        .k0(32'b00111101111010100011101111011000
),
        .k1(32'b10111101111011000111001100111011
),
        .k2(32'b10111010111000011111010001100011
),
        .k3(32'b00111101111010001011100100100111
),
        .k4(32'b00111101100111110001100001111010
),
        .k5(32'b00111101101100100111110110001111
),
        .k6(32'b10111110000100110110010101010111
),
        .k7(32'b10111100110100001011110101110110
),
        .k8(32'b00111101101110011101011011011111
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
        .k0(32'b00111101000100111011101111110011
),
        .k1(32'b10111100000100100101001011111101
),
        .k2(32'b10111101110101100001100100101111
),
        .k3(32'b00111101110010110010100100111010
),
        .k4(32'b00111101101010000110110111100111
),
        .k5(32'b00111101100001100111111111001011
),
        .k6(32'b10111100110110010111001010000010
),
        .k7(32'b00111101101100111000111110010100
),
        .k8(32'b00111101001110001011011011110101
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
        .k0(32'b10111100000111011101100010110011
),
        .k1(32'b10111101001001011110011001001010
),
        .k2(32'b00111101001111011011001010101011
),
        .k3(32'b00111101111010101001000110010100
),
        .k4(32'b00111101110101110101100001010010
),
        .k5(32'b10111101011011010111010010101100
),
        .k6(32'b10111011011001111111001111101000
),
        .k7(32'b00111101101111110101100110111101
),
        .k8(32'b10111101100110000101101000010010
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
        .k0(32'b10111101110001101000011000011000
),
        .k1(32'b10111101100000111110010111110011
),
        .k2(32'b00111101110100111001111010111101
),
        .k3(32'b10111101110011010110000101011101
),
        .k4(32'b00111101111001111100001110111100
),
        .k5(32'b10111110000001010111011110101001
),
        .k6(32'b10111101101001001110011111111000
),
        .k7(32'b00111101110000111001101111100101
),
        .k8(32'b10111100101001100011101100110000
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
        .k0(32'b10111100011011011001011101010011
),
        .k1(32'b00111110001100101001011011000110
),
        .k2(32'b00111101111011011100111111110101
),
        .k3(32'b00111110000111110000110000011101
),
        .k4(32'b00111101001110100101111101010001
),
        .k5(32'b00111101101110100010110100111000
),
        .k6(32'b10111010111001001001100101010011
),
        .k7(32'b00111101000001010010111100011011
),
        .k8(32'b10111101100110011101010010101011
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
        .k0(32'b00111110000011110100011100011110
),
        .k1(32'b10111110000001100101001011111011
),
        .k2(32'b00111101101011111111100111010011
),
        .k3(32'b00111110000100000111011011000001
),
        .k4(32'b10111101110111001111110001000000
),
        .k5(32'b00111101010001111101110101010001
),
        .k6(32'b00111101110100101011110001000111
),
        .k7(32'b00111101100011110110001111001010
),
        .k8(32'b00111101100010101001010110011110
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
        .k0(32'b00111101101111000110010011011011
),
        .k1(32'b00111101111100110010101001001111
),
        .k2(32'b10111101010111100010111010100000
),
        .k3(32'b10111110000100111110110100001110
),
        .k4(32'b10111101011100111110100000001000
),
        .k5(32'b00111010111001110110001001011001
),
        .k6(32'b10111010000101100110001101011001
),
        .k7(32'b10111101111001011000011000011000
),
        .k8(32'b10111101100010000101011100101101
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
        .k0(32'b00111101101000011010110010010011
),
        .k1(32'b10111101011110001101001100010100
),
        .k2(32'b10111101100001001001111001001010
),
        .k3(32'b00111101001000001000110011100110
),
        .k4(32'b00111101101000111000111010101101
),
        .k5(32'b00111101101110001100000010001001
),
        .k6(32'b00111101000010011001010100011001
),
        .k7(32'b10111101110000011001011101001011
),
        .k8(32'b00111101100100100011101000010010
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
        .k0(32'b00111110000010000111111101010000
),
        .k1(32'b00111101111111110010010110001011
),
        .k2(32'b10111110000011111010111000010010
),
        .k3(32'b10111101000010010000101101110110
),
        .k4(32'b10111101100011101010010100110111
),
        .k5(32'b10111101110100011110101010000101
),
        .k6(32'b00111101111110011001001101000101
),
        .k7(32'b00111011000110001011111110100110
),
        .k8(32'b00111101010101110010110111111011
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
        .k0(32'b00111101100100011101100011000110
),
        .k1(32'b00111100001000011001111110110101
),
        .k2(32'b00111101011110011001001010100101
),
        .k3(32'b10111101111110001000101000101000
),
        .k4(32'b10111101101011000001000011111011
),
        .k5(32'b00111101111101100100111001001111
),
        .k6(32'b00111101111001111000100101110100
),
        .k7(32'b00111101010001100010011001010110
),
        .k8(32'b10111101011000010011101100011100
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
        .k0(32'b00111101110100011001110011110011
),
        .k1(32'b00111101011010011001011110010011
),
        .k2(32'b00111101000111000010011000000011
),
        .k3(32'b10111101011111101100101001000111
),
        .k4(32'b00111101110100001111011011011100
),
        .k5(32'b10111100110001011100110010110010
),
        .k6(32'b00111101000100011101100100010001
),
        .k7(32'b10111101111001010111001000110101
),
        .k8(32'b00111101110111000011101111001111
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
        .k0(32'b00111101011110100101010010101001
),
        .k1(32'b00111101110011001010011100011010
),
        .k2(32'b10111110000010100111011011000101
),
        .k3(32'b00111101011100111011001010111100
),
        .k4(32'b00111101110000110000001001010011
),
        .k5(32'b10111011011000111000001100101101
),
        .k6(32'b00111101111011101010001000000101
),
        .k7(32'b00111100100110100011001111111011
),
        .k8(32'b10111101011001011101000010111001
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
        .k0(32'b10111101011101011001010001100100
),
        .k1(32'b10111100101000101000110001110110
),
        .k2(32'b00111101111110001010001000100000
),
        .k3(32'b00111101000011001101100010110011
),
        .k4(32'b10111101100000100001100001100011
),
        .k5(32'b10111110000111000011000100011100
),
        .k6(32'b00111101101100010000110011101000
),
        .k7(32'b00111101101010110111001000110111
),
        .k8(32'b10111101111100111010101111010100
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
        .k0(32'b10111110000001110110011001011100
),
        .k1(32'b00111101111011101101001100101000
),
        .k2(32'b00111110000000000111100000010001
),
        .k3(32'b10111101111011011100010111111010
),
        .k4(32'b10111101011100110100100101010111
),
        .k5(32'b00111100100001010010100111000110
),
        .k6(32'b00111101111001111110111111010110
),
        .k7(32'b00111101011110111101000101010010
),
        .k8(32'b00111011111111111110100110000010
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
        .k0(32'b00111101000110000111100000100010
),
        .k1(32'b00111101110000110011100011100010
),
        .k2(32'b00111101110101000101010110011110
),
        .k3(32'b10111110000011001111001100110001
),
        .k4(32'b10111100101111010001001101010111
),
        .k5(32'b10111101111100011101010011000100
),
        .k6(32'b00111101110110101111010000011100
),
        .k7(32'b10111011110001000010111110001010
),
        .k8(32'b10111101100010011110110000100010
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
        .k0(32'b00111110000100001010100101100010
),
        .k1(32'b00111101000101001010010100100110
),
        .k2(32'b00111101111110011000001010101000
),
        .k3(32'b10111101100010101011011111011111
),
        .k4(32'b00111101100011000100101000110001
),
        .k5(32'b10111101111100101011001110111110
),
        .k6(32'b00111101011100110001101010010110
),
        .k7(32'b10111101110100001110000000001011
),
        .k8(32'b00111110000010100010101100110000
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
module featuremap_conv2d_3_filter9
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b00111011011101101101011000001010
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
        .k0(32'b00111100100110001001111000101110
),
        .k1(32'b10111101101110000011000011100000
),
        .k2(32'b10111100111101111000110011111111
),
        .k3(32'b00111101111111001011101111011111
),
        .k4(32'b10111101110000101011101111001010
),
        .k5(32'b00111110001010110000100001001001
),
        .k6(32'b00111101000000010110010110000111
),
        .k7(32'b00111101111001111101100100000111
),
        .k8(32'b00111110000011001101010101101010
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
        .k0(32'b10111101101110000101001100001001
),
        .k1(32'b00111100010000000100100100101000
),
        .k2(32'b00111101010101110011100111110100
),
        .k3(32'b10111101111110101100111111000110
),
        .k4(32'b10111101110001011110100011011100
),
        .k5(32'b00111110000100011100110010100100
),
        .k6(32'b10111101001101110000100000100010
),
        .k7(32'b00111110000001010100010010111010
),
        .k8(32'b10111101110011011011000111110010
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
        .k0(32'b00111101110101100000101110100000
),
        .k1(32'b00111101011001101110001111110010
),
        .k2(32'b00111110001001000101000111101100
),
        .k3(32'b00111110001101000100111010100011
),
        .k4(32'b10111101101100010000110001000111
),
        .k5(32'b00111101011101101001110110100111
),
        .k6(32'b00111110010001100011001101001100
),
        .k7(32'b10111101011000010001101000011001
),
        .k8(32'b10111100100000001011101000110000
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
        .k0(32'b10111101101110000101100000011000
),
        .k1(32'b00111101001101001101000110110101
),
        .k2(32'b10111101011111010011001111110110
),
        .k3(32'b00111101100001100000001101101011
),
        .k4(32'b10111101110101100100100101100110
),
        .k5(32'b00111101001100001110000011011101
),
        .k6(32'b00111101101001011110010111101011
),
        .k7(32'b10111101101110011110111101010100
),
        .k8(32'b10111101100010111100100101100000
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
        .k0(32'b00111101000101110001011111101011
),
        .k1(32'b10111101001111010110101000110101
),
        .k2(32'b00111100010011010101111110101011
),
        .k3(32'b10111110001011111001010111100100
),
        .k4(32'b10111110001100111111101110101101
),
        .k5(32'b10111110000010011110010001100000
),
        .k6(32'b10111101001000100001111001011001
),
        .k7(32'b10111100110001110000110101100111
),
        .k8(32'b10111101100011101110010101010110
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
        .k0(32'b10111101001101000110001101110100
),
        .k1(32'b10111101100000001001000011010100
),
        .k2(32'b00111110000100000001010011101111
),
        .k3(32'b10111101101110111111011101111110
),
        .k4(32'b00111101101000101001101101101110
),
        .k5(32'b10111101010001111101111000111101
),
        .k6(32'b00111110000000001111111101100001
),
        .k7(32'b10111100101111110011001111000011
),
        .k8(32'b00111101100101101010000011110010
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
        .k0(32'b10111010001100101110110000111101
),
        .k1(32'b00111101100101010110001001010110
),
        .k2(32'b00111101000000001111000100001001
),
        .k3(32'b00111100010001110001010110011011
),
        .k4(32'b10111101111011000101000110100111
),
        .k5(32'b00111101110010110011000111001001
),
        .k6(32'b10111101101001110000110100000000
),
        .k7(32'b00111110000000011010011101100000
),
        .k8(32'b00111100011011011000101101100011
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
        .k0(32'b10111101101110111000010110100010
),
        .k1(32'b00111101111011010100010001011000
),
        .k2(32'b00111110000010011110111110001110
),
        .k3(32'b00111110000001000110001111001111
),
        .k4(32'b10111110000001110101010010010101
),
        .k5(32'b10111101111111101011110101011111
),
        .k6(32'b00111100001001111010110000010111
),
        .k7(32'b10111011011110101010111101000110
),
        .k8(32'b00111101010011111100100111111010
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
        .k0(32'b00111100110100001010101000001010
),
        .k1(32'b00111101101100001000101011100000
),
        .k2(32'b00111110000010010001000110000101
),
        .k3(32'b10111101000101001111010011010111
),
        .k4(32'b10111100101101100101011101100011
),
        .k5(32'b10111101010001001101100110100111
),
        .k6(32'b10111101111101110100100001010010
),
        .k7(32'b10111101101100110010000011101111
),
        .k8(32'b00111101001101100011101101110001
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
        .k0(32'b10111100010000000100101000111111
),
        .k1(32'b00111110000100010110001100101110
),
        .k2(32'b00111100000111111111011000010100
),
        .k3(32'b00111100111110010000010100010111
),
        .k4(32'b10111101000101001010001011100001
),
        .k5(32'b00111100101011111110100010001000
),
        .k6(32'b00111101000000010100100101010100
),
        .k7(32'b10111110000000101110110110101011
),
        .k8(32'b00111100100111100110110000100000
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
        .k0(32'b10111100110010101011110010100110
),
        .k1(32'b00111100101010010011110110011110
),
        .k2(32'b10111101100111011011110000111100
),
        .k3(32'b00111011110010011000100000000101
),
        .k4(32'b10111110000000001001001011100011
),
        .k5(32'b10111101101111111000110001010010
),
        .k6(32'b00111100101101100000010100001010
),
        .k7(32'b10111101010010101111100100000010
),
        .k8(32'b10111101101111000101111001011111
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
        .k0(32'b00111101101001110000101001000011
),
        .k1(32'b00111110000000000000111111101111
),
        .k2(32'b00111110000100101111001111011000
),
        .k3(32'b10111100111001011100110000101000
),
        .k4(32'b00111100000101110000011101110001
),
        .k5(32'b10111101100111010101110011101110
),
        .k6(32'b10111110000001010011001000010111
),
        .k7(32'b10111101101010101101100011000101
),
        .k8(32'b10111101000110011001001111101000
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
        .k0(32'b00111100100101111110101110010101
),
        .k1(32'b00111110000000010000110010010101
),
        .k2(32'b10111101101111000110001010001101
),
        .k3(32'b10111101001100101011011011111000
),
        .k4(32'b00111101100100111101111000000000
),
        .k5(32'b10111100011010101111111110101010
),
        .k6(32'b00111110000010000001101110100010
),
        .k7(32'b00111101111000110101101111101010
),
        .k8(32'b00111101101100010111100010101011
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
        .k0(32'b10111100101100000010111010101011
),
        .k1(32'b00111101101011010001000010110110
),
        .k2(32'b10111101010010000100010000100110
),
        .k3(32'b10111101011111100011000111001001
),
        .k4(32'b00111101100110011011001101001110
),
        .k5(32'b00111101100101100000100010010111
),
        .k6(32'b00111110000011101101110101101011
),
        .k7(32'b00111101111101100010011101000110
),
        .k8(32'b10111101111000010001101010100110
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
        .k0(32'b10111101111001001001100110100110
),
        .k1(32'b00111110000111101100011111110110
),
        .k2(32'b10111101110000110100010011110001
),
        .k3(32'b00111110000011011011000001011001
),
        .k4(32'b00111110000010101101011000110100
),
        .k5(32'b00111101101101110110110001111100
),
        .k6(32'b00111010111000100110001111100000
),
        .k7(32'b10111101000100011011000101110010
),
        .k8(32'b10111101100100100000111011111010
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
        .k0(32'b10111101110101000011011010011001
),
        .k1(32'b10111101100110000011111111000111
),
        .k2(32'b10111101000010010111110001001000
),
        .k3(32'b00111101110110001000111000011100
),
        .k4(32'b10111110000011101010101100101000
),
        .k5(32'b10111101100111000011011111110010
),
        .k6(32'b00111101101101100111001000101101
),
        .k7(32'b10111101110111011101110011110100
),
        .k8(32'b10111101000101101010000101100110
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
module featuremap_conv2d_3_filter10
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b10111011100000101010100010101101
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
        .k0(32'b00111101011110000011001000110111
),
        .k1(32'b00111110000000010011101000100010
),
        .k2(32'b00111100111000000100110100100010
),
        .k3(32'b10111101001011110001010100001110
),
        .k4(32'b00111101101010011111011000100110
),
        .k5(32'b00111101110100110111001001000011
),
        .k6(32'b10111100000011011001001111100111
),
        .k7(32'b00111110001000110110010000001010
),
        .k8(32'b10111101101101100110111000100001
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
        .k0(32'b10111110000010111111010000001100
),
        .k1(32'b10111101000011011110011011111000
),
        .k2(32'b10111110000000000101011011110011
),
        .k3(32'b00111101100110000011100011100100
),
        .k4(32'b10111101111100101111101011111111
),
        .k5(32'b10111101111100110110011111110111
),
        .k6(32'b00111101101010111100000100011000
),
        .k7(32'b10111110000001011111011110011101
),
        .k8(32'b10111101101110001111111100100010
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
        .k0(32'b10111100101111111111010001000111
),
        .k1(32'b10111101111110000111110100101000
),
        .k2(32'b00111110000100101011011100001101
),
        .k3(32'b10111101100001101100000110001100
),
        .k4(32'b00111110000011110110110110010111
),
        .k5(32'b00111101101111110110111001100010
),
        .k6(32'b10111011000100110110110010111101
),
        .k7(32'b00111101110011110011001100011100
),
        .k8(32'b10111101001010111001101010010001
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
        .k0(32'b00111101011011001111100010000010
),
        .k1(32'b00111101001110100110000011010101
),
        .k2(32'b10111101111111011100001110000101
),
        .k3(32'b10111100100011110000011111100001
),
        .k4(32'b00111101001000011111101110010111
),
        .k5(32'b00111101110100110110001100010100
),
        .k6(32'b00111101000100111100010010001011
),
        .k7(32'b00111110000001111001100110111010
),
        .k8(32'b10111101011111111100011000000001
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
        .k0(32'b00111101110110110101001010101010
),
        .k1(32'b10111011001011101100010111100111
),
        .k2(32'b10111101111111000111111000010010
),
        .k3(32'b00111101100000111010011100101100
),
        .k4(32'b10111101101000001000000010010111
),
        .k5(32'b00111101111010010011010101101000
),
        .k6(32'b00111101010110110110000110000101
),
        .k7(32'b10111110000001100001001001011101
),
        .k8(32'b10111101000110010111110100111110
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
        .k0(32'b10111101010000011110111001011111
),
        .k1(32'b00111101000001011111110010101001
),
        .k2(32'b00111101011100101110010110010011
),
        .k3(32'b10111101001101001100010100111010
),
        .k4(32'b10111100010101011110010100000001
),
        .k5(32'b00111101110101010011101000100111
),
        .k6(32'b10111110000000011011001010101101
),
        .k7(32'b10111100010110010000101100000110
),
        .k8(32'b00111101100011111000001110001111
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
        .k0(32'b00111101000100011111110111111001
),
        .k1(32'b00111101100111011101101011000100
),
        .k2(32'b10111101001110110101011011111010
),
        .k3(32'b10111101111001010000011011101011
),
        .k4(32'b00111110000000101100010101010001
),
        .k5(32'b10111101100011000001101101101010
),
        .k6(32'b00111101000000110110110010001100
),
        .k7(32'b10111100111101000001111000010011
),
        .k8(32'b00111100011010110100101111101100
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
        .k0(32'b00111100111001101100000001001011
),
        .k1(32'b10111101110100000111000110101100
),
        .k2(32'b00111101100110101000001101101100
),
        .k3(32'b00111101010100010111101011110101
),
        .k4(32'b00111100110101100010110011101011
),
        .k5(32'b10111101101110010010100110111010
),
        .k6(32'b00111101111101011111011101010000
),
        .k7(32'b00111011010010010100111010011101
),
        .k8(32'b10111011001001100100101110011000
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
        .k0(32'b10111101100111101010111101010010
),
        .k1(32'b00111101100001100010110001111111
),
        .k2(32'b10111101101111101111101011010110
),
        .k3(32'b10111101001010101110010110010000
),
        .k4(32'b00111110000011011001010101000000
),
        .k5(32'b00111011011101110101010100101100
),
        .k6(32'b10111100111100110000001011010111
),
        .k7(32'b10111100011011000000000000111011
),
        .k8(32'b10111101110010111110100101000100
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
        .k0(32'b00111101100101110110010010000111
),
        .k1(32'b00111101101100110110010000011000
),
        .k2(32'b10111101100101001100011001100001
),
        .k3(32'b10111101110110100110100110010111
),
        .k4(32'b00111101110110010100001001101010
),
        .k5(32'b00111011100101010000101011010111
),
        .k6(32'b10111110000101001011110010011101
),
        .k7(32'b00111101001001001110110011000011
),
        .k8(32'b10111101001010010000100010111100
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
        .k0(32'b10111100000110111000111101110100
),
        .k1(32'b10111100110011100001111000000000
),
        .k2(32'b10111101111001010001010011001010
),
        .k3(32'b00111100100100001111010010110010
),
        .k4(32'b10111100001000001010011100101111
),
        .k5(32'b10111100111110111001001110001110
),
        .k6(32'b10111101011010001100100111000100
),
        .k7(32'b00111101111010100110010100011111
),
        .k8(32'b10111101011001110100011101110111
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
        .k0(32'b10111101000100100011111111111111
),
        .k1(32'b10111101011101100000011101011010
),
        .k2(32'b10111101001000110101100100100001
),
        .k3(32'b10111110000010010100100100111011
),
        .k4(32'b00111011101000010010011101110010
),
        .k5(32'b10111110000000000010000000010111
),
        .k6(32'b10111101111101011110111001100100
),
        .k7(32'b00111110000010011011101110111001
),
        .k8(32'b00111101010011111101011001001010
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
        .k0(32'b10111101011001101110100000001100
),
        .k1(32'b00111110000100110111100111100001
),
        .k2(32'b00111110000011100000110110110101
),
        .k3(32'b10111101011110010100101100000000
),
        .k4(32'b10111101010010001100010000011111
),
        .k5(32'b00111101011100000101010100011111
),
        .k6(32'b10111101001111110011011100010110
),
        .k7(32'b00111101101010011101101110110011
),
        .k8(32'b10111011011111100110000011100100
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
        .k0(32'b00111110000100100011101001001101
),
        .k1(32'b00111011110100011011111011100100
),
        .k2(32'b10111101011000111110110111111100
),
        .k3(32'b00111101011010000000100001100010
),
        .k4(32'b00111101011110000011000100100101
),
        .k5(32'b00111101111010001100010101010111
),
        .k6(32'b00111101111011101100110111000111
),
        .k7(32'b10111101101110111101001100111101
),
        .k8(32'b10111101111101010110110000110000
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
        .k0(32'b10111101010111000110110000100011
),
        .k1(32'b00111101101110011001000001111110
),
        .k2(32'b10111100110110000101100011101110
),
        .k3(32'b10111101011111110011100000111010
),
        .k4(32'b10111100101010001111100010110100
),
        .k5(32'b00111101101001010101000001001000
),
        .k6(32'b00111100010110100111001010100001
),
        .k7(32'b10111101010111010100011101000011
),
        .k8(32'b10111101111101000100010010011010
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
        .k0(32'b00111101110111111000110110101110
),
        .k1(32'b10111110000010000111101001110110
),
        .k2(32'b10111011100100011011110000101001
),
        .k3(32'b10111110000010101010110100100111
),
        .k4(32'b00111101011100110110011010101001
),
        .k5(32'b10111101111101110111010100110000
),
        .k6(32'b00111101110100001001110010111011
),
        .k7(32'b00111011010010101010110011011010
),
        .k8(32'b10111101011100101100100111011010
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
module featuremap_conv2d_3_filter11
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b00111011110111111101111001101101
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
        .k0(32'b00111100011011110110111011010110
),
        .k1(32'b00111101011011110110010101111100
),
        .k2(32'b10111100010011001001110001010101
),
        .k3(32'b10111101110100111011111101000101
),
        .k4(32'b10111100010110001011011001000000
),
        .k5(32'b00111101101010000110100000110010
),
        .k6(32'b00111100011101000111010000001000
),
        .k7(32'b00111110000011001001010000111010
),
        .k8(32'b10111101110011110011001011010111
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
        .k0(32'b00111101010101100011010110111010
),
        .k1(32'b00111101100010010100000000010000
),
        .k2(32'b00111110000100011001100011000011
),
        .k3(32'b10111100111101000100011110001000
),
        .k4(32'b10111101111110110001100000101111
),
        .k5(32'b10111101100000101110111001001101
),
        .k6(32'b10111100000101010101011110110111
),
        .k7(32'b00111101110101110111101010001100
),
        .k8(32'b00111101001100101010000010011000
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
        .k0(32'b10111101100001000111001101011111
),
        .k1(32'b00111101100101101111010011010101
),
        .k2(32'b10111010100000011101111010111110
),
        .k3(32'b10111101101001010001110111110101
),
        .k4(32'b00111101100100000100100100100100
),
        .k5(32'b00111100111011000001001100111111
),
        .k6(32'b10111110000010001001010110010010
),
        .k7(32'b10111011001001100100110110110110
),
        .k8(32'b00111101100010010010111000101000
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
        .k0(32'b00111011001101000100001001001110
),
        .k1(32'b00111100010110011000001100001101
),
        .k2(32'b00111100111100010111011000000011
),
        .k3(32'b00111101110010110111100010111010
),
        .k4(32'b10111101110110101111011001010011
),
        .k5(32'b10111110000000101101010111101010
),
        .k6(32'b00111101110110101111110000100111
),
        .k7(32'b00111101110000000101101010001101
),
        .k8(32'b10111110000011011001101010100001
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
        .k0(32'b00111101101001011111010101111000
),
        .k1(32'b10111101101001000100001111110111
),
        .k2(32'b10111101110011011110011111110101
),
        .k3(32'b10111101011101111111111111001010
),
        .k4(32'b10111101110111101100000100110010
),
        .k5(32'b00111100001110000011101010100110
),
        .k6(32'b10111101110100011010101100000011
),
        .k7(32'b10111101110100111101111000101000
),
        .k8(32'b00111101110001000010101110100010
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
        .k0(32'b10111110000000001010001110000111
),
        .k1(32'b00111100101111110001100101100001
),
        .k2(32'b10111101110001011100011011001101
),
        .k3(32'b00111100000001110100010001111111
),
        .k4(32'b00111110000011110010000011110100
),
        .k5(32'b10111101101100011101110010110010
),
        .k6(32'b10111101001000100111011000000011
),
        .k7(32'b10111101111010100010111011000110
),
        .k8(32'b10111101100101001011001101001101
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
        .k0(32'b10111101100011111111100110010110
),
        .k1(32'b10111101110100110010101110110001
),
        .k2(32'b10111101110101101101111001011101
),
        .k3(32'b10111101010001101101011001111001
),
        .k4(32'b00111010101110000011111101110100
),
        .k5(32'b00111110000100010111000100001100
),
        .k6(32'b00111101100100010101001000101010
),
        .k7(32'b00111101000101010100101110011001
),
        .k8(32'b10111101011101001110011110000000
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
        .k0(32'b10111101001011010010101111001010
),
        .k1(32'b10111101100011011100100101000101
),
        .k2(32'b00111100100000000000000001011100
),
        .k3(32'b10111100110101001010111010000000
),
        .k4(32'b00111101110010100011010010011110
),
        .k5(32'b00111101110011101001001100110100
),
        .k6(32'b10111101110011100011110110110110
),
        .k7(32'b00111101110011001101101001001101
),
        .k8(32'b00111101111010100011110011110010
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
        .k0(32'b00111100101110101101001010010111
),
        .k1(32'b00111101101100000110110100011001
),
        .k2(32'b10111110000010110010111001101001
),
        .k3(32'b10111101111100100001010000100010
),
        .k4(32'b00111100111111010000010110111001
),
        .k5(32'b10111110000010101000001111010111
),
        .k6(32'b10111101000101111100010100000001
),
        .k7(32'b00111100100000110010010101111011
),
        .k8(32'b00111101000011010000000110011011
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
        .k0(32'b10111101110001100101100101100100
),
        .k1(32'b10111101100000010110000110000100
),
        .k2(32'b00111100100100101111010000010011
),
        .k3(32'b10111101100000000010110011000000
),
        .k4(32'b10111101111111011101110000011001
),
        .k5(32'b00111101010010010110100010011110
),
        .k6(32'b10111110000011111111011011100101
),
        .k7(32'b00111101011000010101011000000001
),
        .k8(32'b10111101100011110011000110111010
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
        .k0(32'b00111101100000111000110010111011
),
        .k1(32'b10111101111101100000101110101010
),
        .k2(32'b00111110000101101000011000111010
),
        .k3(32'b00111101001100110100001100011000
),
        .k4(32'b00111101100010000010111010001100
),
        .k5(32'b10111101001010111001000010010100
),
        .k6(32'b10111100011000100111000110010111
),
        .k7(32'b00111110000100101001111101011010
),
        .k8(32'b00111110000101110001001011010001
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
        .k0(32'b10111101110111110110110101110011
),
        .k1(32'b00111101111011011100000000010000
),
        .k2(32'b10111110000011001111101110011000
),
        .k3(32'b10111011000010111000111111101100
),
        .k4(32'b10111101101111111111101010101101
),
        .k5(32'b00111100010000101001110011000100
),
        .k6(32'b10111101010110000000001100100111
),
        .k7(32'b00111101111101011101001010000110
),
        .k8(32'b00111100000011010100001000010011
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
        .k0(32'b10111101011100110000101010010011
),
        .k1(32'b10111101100110110011000010011001
),
        .k2(32'b10111101111001100000111101110011
),
        .k3(32'b00111100110000100011111001101101
),
        .k4(32'b10111101101110111111110111001100
),
        .k5(32'b00111101100001110000111101000111
),
        .k6(32'b10111101101110110001110001111001
),
        .k7(32'b00111101001101010010000011111110
),
        .k8(32'b00111100010100000101010100001001
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
        .k0(32'b10111101100101100011101000110101
),
        .k1(32'b00111011110101001110100111001001
),
        .k2(32'b10111100101111110001111011100111
),
        .k3(32'b00111101011100100000100111011010
),
        .k4(32'b10111101111100111101100000010011
),
        .k5(32'b00111101001000110010100100001001
),
        .k6(32'b00111101100011111100000100101111
),
        .k7(32'b10111110000011001000011110011101
),
        .k8(32'b10111101011000001111110011001100
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
        .k0(32'b00111100000111011110001101001100
),
        .k1(32'b10111101100000111100001001001101
),
        .k2(32'b00111101100011110100000100101000
),
        .k3(32'b10111101111001110100011001000000
),
        .k4(32'b00111100011010010111011111111011
),
        .k5(32'b10111101101000100100011110100011
),
        .k6(32'b10111100110110111010101011011010
),
        .k7(32'b10111110000000101111010110011001
),
        .k8(32'b10111110000001101101101011100110
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
        .k0(32'b00111110000101100000010001110110
),
        .k1(32'b10111100111010111011001010000011
),
        .k2(32'b00111100100110111000001111111101
),
        .k3(32'b00111101001101111101110111010010
),
        .k4(32'b10111100111100000100011100111010
),
        .k5(32'b00111101000011101001101011010010
),
        .k6(32'b10111101001110011001010000000001
),
        .k7(32'b10111101010011110010100001101000
),
        .k8(32'b10111100110010101100100011000000
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
module featuremap_conv2d_3_filter12
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b10111011010010011010010110011110
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
        .k0(32'b00111101101011111110011110100111
),
        .k1(32'b00111101001010110111110010111001
),
        .k2(32'b00111101100001101011111101111010
),
        .k3(32'b00111101101100100001100111100011
),
        .k4(32'b00111110000111011010111101101010
),
        .k5(32'b10111101111000101010101011011101
),
        .k6(32'b00111011000111110100101001001010
),
        .k7(32'b10111101111101101011001101111110
),
        .k8(32'b00111101010010001110010110010010
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
        .k0(32'b00111011100101111111000111010110
),
        .k1(32'b00111101111110001011000110100101
),
        .k2(32'b10111101100010010000111111010100
),
        .k3(32'b10111110000001101101101000000010
),
        .k4(32'b10111101011101001001011111110101
),
        .k5(32'b00111100011010000101111000010000
),
        .k6(32'b10111101111000101110110110011011
),
        .k7(32'b10111101001011100111011110111001
),
        .k8(32'b10111101101111001100010000000001
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
        .k0(32'b00111101001001111001011001000101
),
        .k1(32'b00111100111101001001001100110000
),
        .k2(32'b00111101101000000010000000010110
),
        .k3(32'b00111101101101000111101110010111
),
        .k4(32'b00111101011101011110001010010101
),
        .k5(32'b10111100001101000000101010110100
),
        .k6(32'b00111110000100101001000101100100
),
        .k7(32'b00111100010011111101111001001000
),
        .k8(32'b10111101000010000011110010100010
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
        .k0(32'b00111101001111011001010011101111
),
        .k1(32'b10111100100001001100110011010000
),
        .k2(32'b00111101010010011011101110010001
),
        .k3(32'b00111110000001110011001110000110
),
        .k4(32'b00111101111010001010101110000010
),
        .k5(32'b10111101110010010010001001101101
),
        .k6(32'b10111101100011110001011010011100
),
        .k7(32'b00111101100110001011110010011010
),
        .k8(32'b00111100111100001000110100011111
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
        .k0(32'b00111101010111111010111110010001
),
        .k1(32'b10111110000011100001101110010101
),
        .k2(32'b10111100101110110100000011010111
),
        .k3(32'b10111101001010000001001110000111
),
        .k4(32'b10111101101011000011011001000101
),
        .k5(32'b00111101110100111011101011101010
),
        .k6(32'b10111011101001111110000011111111
),
        .k7(32'b10111101111111001110010010010001
),
        .k8(32'b00111101101001011110100100010111
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
        .k0(32'b00111101111010001000011001000101
),
        .k1(32'b10111101001111101010011001100111
),
        .k2(32'b00111110000011100000000001010111
),
        .k3(32'b00111110000010001111101011010111
),
        .k4(32'b10111100111100110010010010110111
),
        .k5(32'b10111101010110101110101010100100
),
        .k6(32'b10111101011100111001010010111101
),
        .k7(32'b10111101111001101111101101101001
),
        .k8(32'b00111101010011010000110110100110
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
        .k0(32'b10111100111000000011101100101000
),
        .k1(32'b00111101110011101111010100100100
),
        .k2(32'b00111101100100001010010100110111
),
        .k3(32'b10111100010101110101111010000010
),
        .k4(32'b10111101101000110001011011001110
),
        .k5(32'b10111101111100001001101111100001
),
        .k6(32'b10111101101110101011110110000101
),
        .k7(32'b10111110000001111111110010000001
),
        .k8(32'b10111101001010101110001110111010
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
        .k0(32'b10111110000010111101100010000111
),
        .k1(32'b10111101011100001000111001000110
),
        .k2(32'b10111110000011000000101111100101
),
        .k3(32'b00111101100101000110110001100100
),
        .k4(32'b00111100100110011010010100100011
),
        .k5(32'b10111101100100011011101100111110
),
        .k6(32'b00111101111010010000011000110111
),
        .k7(32'b00111101001100101001101000011011
),
        .k8(32'b10111100000000000100111100010100
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
        .k0(32'b00111101011100110110000000111011
),
        .k1(32'b00111101001110100111111011000101
),
        .k2(32'b00111101011011101100100101011110
),
        .k3(32'b00111101110111110010001110011100
),
        .k4(32'b10111101110000011001101100010001
),
        .k5(32'b10111011101011010011000001100100
),
        .k6(32'b00111110000011010000010010011001
),
        .k7(32'b10111101011001010011100110101010
),
        .k8(32'b00111100111100001010101111110110
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
        .k0(32'b10111101000010000111100011010000
),
        .k1(32'b10111101101101100110010110001110
),
        .k2(32'b10111101011110101110000101001101
),
        .k3(32'b10111100101010011001101010001010
),
        .k4(32'b10111110000001100001000100010110
),
        .k5(32'b00111101111010011000010100011100
),
        .k6(32'b00111100100110010000000001111000
),
        .k7(32'b10111101110011010100000101000000
),
        .k8(32'b10111110000000110111000111101000
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
        .k0(32'b10111100001010001011111011110111
),
        .k1(32'b10111101010111100011101001001100
),
        .k2(32'b10111010111111000011001010010001
),
        .k3(32'b00111011101100101001001001111000
),
        .k4(32'b00111100110000101111011100100101
),
        .k5(32'b10111110000100111111110011100110
),
        .k6(32'b10111101010000011111101001101010
),
        .k7(32'b10111101101011110111000101011100
),
        .k8(32'b10111110000110010010110010110001
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
        .k0(32'b10111100110111000000000100110110
),
        .k1(32'b10111011100110000010011011111110
),
        .k2(32'b00111101000101011110010110100111
),
        .k3(32'b10111101110100111101000101000110
),
        .k4(32'b10111101110111001111010101000010
),
        .k5(32'b00111110000000010000010010001110
),
        .k6(32'b10111110000010010000111000110011
),
        .k7(32'b00111101011010000110111010101111
),
        .k8(32'b00111101101000001110101101110100
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
        .k0(32'b00111110000010001010111010111010
),
        .k1(32'b00111101000111001001010110010011
),
        .k2(32'b00111110000010011010001100011110
),
        .k3(32'b10111101000010011110001110100001
),
        .k4(32'b10111100110101110110010010100001
),
        .k5(32'b00111101101100000010011001111100
),
        .k6(32'b00111101100011110101111101100100
),
        .k7(32'b10111101010100000011001110100000
),
        .k8(32'b10111101110100010110000101101011
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
        .k0(32'b10111100011010110100011111000000
),
        .k1(32'b10111101101001100100000101011111
),
        .k2(32'b00111110000000000011001100111101
),
        .k3(32'b10111101001010111000100010010001
),
        .k4(32'b00111110000110000001011001000001
),
        .k5(32'b10111101000010011001110111110111
),
        .k6(32'b10111100010101011000110011001100
),
        .k7(32'b00111100101111101111100110110111
),
        .k8(32'b00111101100111101110100001101001
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
        .k0(32'b00111101111011111010000100101101
),
        .k1(32'b00111110000000001001010111100100
),
        .k2(32'b00111101100000001111000101101100
),
        .k3(32'b00111101011100110111011011010000
),
        .k4(32'b00111101110011000001100101010001
),
        .k5(32'b10111100010110111010100110000111
),
        .k6(32'b10111101000011100011110001000101
),
        .k7(32'b10111101010011001111110110000001
),
        .k8(32'b00111101100001010110111110010010
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
        .k0(32'b10111101110000000111110011001010
),
        .k1(32'b00111101001010110011110000101100
),
        .k2(32'b10111110000011100000000001110100
),
        .k3(32'b00111011011011000000110010010010
),
        .k4(32'b00111101000011110100011110110010
),
        .k5(32'b10111110001010000111010111010110
),
        .k6(32'b00111101110110000111010110110000
),
        .k7(32'b10111101110010011110100100000111
),
        .k8(32'b10111100000110011000111101101000
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
////////////////////////////////////////// FILTER 14 //////////////////////////////////////////
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
////////////////////////////////////////// FILTER 15 //////////////////////////////////////////
module featuremap_conv2d_3_filter15
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b00111011101010011110101001011011
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
        .k0(32'b00111101111110111111000101001100
),
        .k1(32'b00111101010100011111010101001110
),
        .k2(32'b00111101111100001010100000111000
),
        .k3(32'b00111100101001100000001011111111
),
        .k4(32'b10111101111011011000010101100110
),
        .k5(32'b10111100101111001100111011100101
),
        .k6(32'b00111100001000110010100110110010
),
        .k7(32'b00111100101000111101011000100001
),
        .k8(32'b10111101100110101011000001001011
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
        .k0(32'b10111100011100000110000100011111
),
        .k1(32'b10111101100000110010100100110111
),
        .k2(32'b10111110000001111010001010010011
),
        .k3(32'b00111011110100101011000101011100
),
        .k4(32'b10111101111111010101000100101000
),
        .k5(32'b10111101110001001001111000101001
),
        .k6(32'b00111101110011001010000001000100
),
        .k7(32'b00111101100110011010010101011101
),
        .k8(32'b00111101111111011011001000001000
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
        .k0(32'b00111110000010001000100011011000
),
        .k1(32'b00111110000111000011010101100110
),
        .k2(32'b00111101111010110110011011000100
),
        .k3(32'b00111101000101001011100010111111
),
        .k4(32'b10111101101111101100101110101101
),
        .k5(32'b00111101100000011000100100000111
),
        .k6(32'b10111101101101101010010101111110
),
        .k7(32'b10111011110011010110100001100011
),
        .k8(32'b00111101110010000110011000110011
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
        .k0(32'b10111101100101001010100110111110
),
        .k1(32'b00111101100011111010010110111001
),
        .k2(32'b00111100111110111010101000110100
),
        .k3(32'b10111101011110011101110000101111
),
        .k4(32'b00111101110100000110101100110001
),
        .k5(32'b10111101100000010100110011111101
),
        .k6(32'b00111101100111011100001000001100
),
        .k7(32'b10111101111001011110111001101000
),
        .k8(32'b00111101001000010111000010000110
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
        .k0(32'b10111101110000001100001110011010
),
        .k1(32'b00111101110101110100010110101100
),
        .k2(32'b10111100111110000111101101011011
),
        .k3(32'b10111101000111101000010001101111
),
        .k4(32'b00111101111001111100110110110011
),
        .k5(32'b10111110000110011101111101110000
),
        .k6(32'b00111100110010000110001000000110
),
        .k7(32'b10111110000100101000011001010100
),
        .k8(32'b10111101000101111100100101011101
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
        .k0(32'b10111100101011011111000111100111
),
        .k1(32'b00111101101100100001101101001000
),
        .k2(32'b10111101010001101010110100000010
),
        .k3(32'b10111101100000111100010111001111
),
        .k4(32'b00111110000001101101100000101111
),
        .k5(32'b10111101101100100001000100010000
),
        .k6(32'b00111101010111010001110010001110
),
        .k7(32'b10111101001001101001111101110111
),
        .k8(32'b10111101110100011010000111101110
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
        .k0(32'b10111110000101100100111001101111
),
        .k1(32'b00111101100111110001110001011011
),
        .k2(32'b10111101000001000000011100100100
),
        .k3(32'b00111101110000011011011110010111
),
        .k4(32'b10111101001011000100010001011001
),
        .k5(32'b10111110001000110010011010010010
),
        .k6(32'b00111101001000001000110110011010
),
        .k7(32'b10111101110101001110011111101000
),
        .k8(32'b10111101100010001000000011001111
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
        .k0(32'b00111101000100011010100011011100
),
        .k1(32'b00111110000100000000111101001111
),
        .k2(32'b00111101101111100111100000111101
),
        .k3(32'b00111011010000100111110101000010
),
        .k4(32'b00111101100000100110101110101111
),
        .k5(32'b00111101101111001001000010110111
),
        .k6(32'b00111100010010100000101010100011
),
        .k7(32'b00111101100101011110110111110000
),
        .k8(32'b10111101101001110101111001101010
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
        .k0(32'b10111101000010100001101101111010
),
        .k1(32'b00111110000101001111011101100111
),
        .k2(32'b00111101000001100011001000001001
),
        .k3(32'b10111101110011010101001000011101
),
        .k4(32'b10111101101000110000001000100110
),
        .k5(32'b00111101011001001001001000110101
),
        .k6(32'b00111101110001010011000001100100
),
        .k7(32'b00111110000100011011000111111000
),
        .k8(32'b00111011110110100101101010100100
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
        .k0(32'b10111101101000000100111001110011
),
        .k1(32'b00111110000000101011000010100111
),
        .k2(32'b00111011110000111111111011110000
),
        .k3(32'b00111101101001001110010100011110
),
        .k4(32'b00111011101011101000001111101011
),
        .k5(32'b10111101110101000110011010011111
),
        .k6(32'b00111101110110101000000001111100
),
        .k7(32'b10111101100001100001110111010101
),
        .k8(32'b00111101110100011001010101000001
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
        .k0(32'b10111101101000101100111111010010
),
        .k1(32'b00111101000110001001010011001111
),
        .k2(32'b00111100011101011101111010000001
),
        .k3(32'b10111101111001000101010100111100
),
        .k4(32'b10111100111100101110110111100111
),
        .k5(32'b00111101101001110001010111100011
),
        .k6(32'b10111011101111110110011011010001
),
        .k7(32'b10111110001000010010111001101110
),
        .k8(32'b10111101100111100000001100000010
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
        .k0(32'b10111100100100001011011010110110
),
        .k1(32'b10111101111000111100101100011011
),
        .k2(32'b00111101111000101001101110010111
),
        .k3(32'b00111101100110111001111100111000
),
        .k4(32'b00111101000011000001100100100101
),
        .k5(32'b00111011010010000000101010010100
),
        .k6(32'b10111101001001010101110111000011
),
        .k7(32'b00111110000001110000110101111101
),
        .k8(32'b00111100010010011011000011110011
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
        .k0(32'b10111101100111101001010111110001
),
        .k1(32'b00111101101110001101100000011001
),
        .k2(32'b10111100011001010110010100110111
),
        .k3(32'b00111101111111010000011001111001
),
        .k4(32'b10111101000100001011001011011010
),
        .k5(32'b10111101010101011001011101001011
),
        .k6(32'b10111101011010101110001100100000
),
        .k7(32'b00111110000001011110100111010101
),
        .k8(32'b10111101110000111011111100011011
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
        .k0(32'b10111100010000100111101101110001
),
        .k1(32'b10111101101000011111100011111000
),
        .k2(32'b10111101100001011100111101100110
),
        .k3(32'b10111100111101111001110010001001
),
        .k4(32'b00111101111111011100010110111001
),
        .k5(32'b00111110000011010000001011111010
),
        .k6(32'b10111110000001100010101001011000
),
        .k7(32'b00111110000001100011101111011000
),
        .k8(32'b10111101101000011110000011101011
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
        .k0(32'b00111101010000010100110001010101
),
        .k1(32'b00111100000110101000001001111010
),
        .k2(32'b00111101100000110111111001111100
),
        .k3(32'b00111101000000111101101100110101
),
        .k4(32'b00111101011111010101000000011010
),
        .k5(32'b00111011101001111011101000011100
),
        .k6(32'b00111110000100011010001001110001
),
        .k7(32'b10111100111111000001101110100101
),
        .k8(32'b00111101110100001110111000110100
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
        .k0(32'b10111110000000110000111010010101
),
        .k1(32'b10111110000001100111011100101110
),
        .k2(32'b00111101000101101100111001000100
),
        .k3(32'b10111110001000110001111000011001
),
        .k4(32'b10111101100000111001111001001101
),
        .k5(32'b00111101101101010010111011011110
),
        .k6(32'b10111101100100110010000010100101
),
        .k7(32'b00111101110001111000100001011011
),
        .k8(32'b00111101011100000000010100000101
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
