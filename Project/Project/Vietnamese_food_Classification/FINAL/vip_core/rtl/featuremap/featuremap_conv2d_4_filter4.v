module featuremap_conv2d_4_filter4
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b10111011001001010011111000000010
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
        .k0(32'b00111101010011100100001101001110
),
        .k1(32'b10111110000001000110100011111110
),
        .k2(32'b10111101100000110111011010010001
),
        .k3(32'b00111110000001110111111011101111
),
        .k4(32'b10111101001100001110100000111000
),
        .k5(32'b10111110000010111001110110001110
),
        .k6(32'b10111100011101010011011011010110
),
        .k7(32'b10111100110110110000001110010101
),
        .k8(32'b00111010100111100011000011111110
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
        .k0(32'b00111101101111100010001100111001
),
        .k1(32'b10111011010001010000101101000111
),
        .k2(32'b10111101111110010111011001011010
),
        .k3(32'b00111100110111000101100000000011
),
        .k4(32'b10111101001001000001001110000010
),
        .k5(32'b10111101011010001010111010001010
),
        .k6(32'b10111100010001100001110000111110
),
        .k7(32'b10111101101100010110001111111100
),
        .k8(32'b10111110000011111011000000100010
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
        .k0(32'b00111101100100011111010000110011
),
        .k1(32'b10111100111100010111011110110101
),
        .k2(32'b10111101101111110100101110010101
),
        .k3(32'b10111101111110101001000011010101
),
        .k4(32'b00111101111000100001011110011010
),
        .k5(32'b00111101110010110010100011011010
),
        .k6(32'b10111101111001111001001001111111
),
        .k7(32'b00111101111000111110101110001000
),
        .k8(32'b00111101011101100101111011110000
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
        .k0(32'b00111101111000000100010001110101
),
        .k1(32'b10111101001000111111000010111011
),
        .k2(32'b10111010010010011110111011010001
),
        .k3(32'b00111110000001100000010111010011
),
        .k4(32'b00111101011011000010100001010000
),
        .k5(32'b00111101010010011011101010110010
),
        .k6(32'b10111100000010011100011001111101
),
        .k7(32'b00111101111000100010000110000111
),
        .k8(32'b00111101111000001001000001110110
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
        .k0(32'b00111101110110011110000011110100
),
        .k1(32'b00111101010010011010111110010011
),
        .k2(32'b10111100111000110101011010110011
),
        .k3(32'b10111110000001110101100000011100
),
        .k4(32'b10111101010111111011100111101111
),
        .k5(32'b10111101010010100100001001001111
),
        .k6(32'b00111101101111100011011101100011
),
        .k7(32'b10111101001100111010101110000001
),
        .k8(32'b10111101100011001101011001000100
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
        .k0(32'b10111101101001100010000100100111
),
        .k1(32'b10111101010111100001010001110110
),
        .k2(32'b10111101101110010010100100000010
),
        .k3(32'b00111110000001010000111011000011
),
        .k4(32'b10111101111101000000010001011101
),
        .k5(32'b10111101010111101101111010100110
),
        .k6(32'b00111100011101010110011100001010
),
        .k7(32'b10111101100001111010001001100001
),
        .k8(32'b10111110000111011111100011000100
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
        .k0(32'b10111101010110110100110010011010
),
        .k1(32'b00111110000100001110010101011010
),
        .k2(32'b10111101111100110100111000101001
),
        .k3(32'b10111101100100110111011011101011
),
        .k4(32'b00111110000010000101101010101101
),
        .k5(32'b10111011000011011100011010101011
),
        .k6(32'b10111101011001000010011011101111
),
        .k7(32'b00111101110000011000110011110111
),
        .k8(32'b00111101001000110101100001101000
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
        .k0(32'b10111110000001001001001111001010
),
        .k1(32'b10111100001001111001101111001101
),
        .k2(32'b00111101010111001111000110111001
),
        .k3(32'b00111101001101101100000101011110
),
        .k4(32'b00111101101101110011001011110100
),
        .k5(32'b00111110000000010000011000111011
),
        .k6(32'b10111101100001001001011000100011
),
        .k7(32'b10111101101111100110000001011001
),
        .k8(32'b10111101111111111111011010101001
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
        .k0(32'b00111101101101111101010111010010
),
        .k1(32'b10111101110111001001011011010010
),
        .k2(32'b10111110000000101100101001000001
),
        .k3(32'b00111100110100111010000101101110
),
        .k4(32'b10111101011100101010101111110000
),
        .k5(32'b00111101100111001101010111011010
),
        .k6(32'b10111101100100000001100111011001
),
        .k7(32'b10111101100100010000100100011001
),
        .k8(32'b10111100001110111110011011011101
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
        .k0(32'b10111100110001110110011111001011
),
        .k1(32'b10111101110011011001111000110010
),
        .k2(32'b10111101010110100101111100100000
),
        .k3(32'b00111101101000100110111100011100
),
        .k4(32'b00111101100000101000110000110101
),
        .k5(32'b00111100100101001011100010001001
),
        .k6(32'b00111110001001000100011110000001
),
        .k7(32'b00111101111111100011111111001010
),
        .k8(32'b00111101001110001010010100010001
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
        .k0(32'b10111101100111011110100111111101
),
        .k1(32'b00111110000011110100110111010011
),
        .k2(32'b00111101100100010010011001001100
),
        .k3(32'b00111100011011111100111000110010
),
        .k4(32'b10111110000000110001011001001100
),
        .k5(32'b10111010110101101001110100100111
),
        .k6(32'b10111101100001000101001000100101
),
        .k7(32'b00111101010010011010010110010101
),
        .k8(32'b00111101110110111010101111100110
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
        .k0(32'b00111101100010000111000110110101
),
        .k1(32'b00111101111001000101001011101001
),
        .k2(32'b10111101101111101111000101110100
),
        .k3(32'b00111101001101101010001001001110
),
        .k4(32'b00111100101111000101001011001110
),
        .k5(32'b10111101101010001101101100000011
),
        .k6(32'b10111101000011001111001011100111
),
        .k7(32'b00111101101000001101000101110111
),
        .k8(32'b10111101110011000001010110111110
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
        .k0(32'b00111101001100111101100110000111
),
        .k1(32'b00111110000000101100101110011001
),
        .k2(32'b00111101011011101101001001010000
),
        .k3(32'b00111100011101000001011010111000
),
        .k4(32'b00111100110000101000001001011000
),
        .k5(32'b10111101101000000111000001110011
),
        .k6(32'b10111101110010001110011000101100
),
        .k7(32'b00111110000010100010011010011111
),
        .k8(32'b00111101101111010111010001100100
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
        .k0(32'b10111100110010000101110010111110
),
        .k1(32'b00111101111010011100110100110011
),
        .k2(32'b00111101110101001011101101101101
),
        .k3(32'b10111101001001010010110001100111
),
        .k4(32'b00111101001111001101110001101100
),
        .k5(32'b00111101011001110010110011010011
),
        .k6(32'b10111101100100010100001101010110
),
        .k7(32'b00111100100010010101101000001010
),
        .k8(32'b10111100010001101110011010001100
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
        .k0(32'b10111101100000110100000001100010
),
        .k1(32'b00111110000101011110001110111111
),
        .k2(32'b10111101011110101011001010111100
),
        .k3(32'b10111101101111000101111010001111
),
        .k4(32'b00111101111111101000111101111000
),
        .k5(32'b00111100000001011100100100101111
),
        .k6(32'b00111101111110010001001011101001
),
        .k7(32'b10111101010111101110001000010010
),
        .k8(32'b10111011100011010101000000100101
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
        .k0(32'b00111101010001101110000010110010
),
        .k1(32'b10111101001011000000010101100010
),
        .k2(32'b00111101111111000110011011110110
),
        .k3(32'b10111100101011100100111100010011
),
        .k4(32'b10111010111011100000011111101101
),
        .k5(32'b00111101001101111001111101011100
),
        .k6(32'b00111110000010001100101010000010
),
        .k7(32'b00111101100101110000001000000101
),
        .k8(32'b10111101100101111010111001010010
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