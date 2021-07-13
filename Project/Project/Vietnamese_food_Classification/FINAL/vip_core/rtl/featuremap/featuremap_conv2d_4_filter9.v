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