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