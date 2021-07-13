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