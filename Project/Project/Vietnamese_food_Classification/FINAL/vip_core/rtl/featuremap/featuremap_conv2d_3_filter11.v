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