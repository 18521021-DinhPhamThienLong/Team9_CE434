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