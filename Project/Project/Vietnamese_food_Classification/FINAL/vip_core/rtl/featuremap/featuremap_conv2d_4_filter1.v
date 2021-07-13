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