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