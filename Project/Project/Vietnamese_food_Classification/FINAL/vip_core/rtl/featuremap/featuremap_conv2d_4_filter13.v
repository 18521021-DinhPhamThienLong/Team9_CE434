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