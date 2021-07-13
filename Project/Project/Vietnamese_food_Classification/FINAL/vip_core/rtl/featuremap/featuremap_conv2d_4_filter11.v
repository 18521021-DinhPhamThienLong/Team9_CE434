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