module featuremap_conv2d_3_filter5
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b10111011011011001110110011001011
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
        .k0(32'b00111010000000100010010101001011
),
        .k1(32'b10111101101010110110011000010101
),
        .k2(32'b10111110001000101010100010000010
),
        .k3(32'b10111110001001001010001011111110
),
        .k4(32'b00111100100011110101011101001111
),
        .k5(32'b10111101110011101100100110110111
),
        .k6(32'b00111101010001010011110010010101
),
        .k7(32'b10111101101000000001111101000001
),
        .k8(32'b10111110001000111011100010100101
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
        .k0(32'b00111101111001011101101010001011
),
        .k1(32'b10111011111010110000111101101001
),
        .k2(32'b10111101111000100110011000011001
),
        .k3(32'b00111101010111110011111101011000
),
        .k4(32'b00111011000111001100011001010010
),
        .k5(32'b00111101100111110100101100110101
),
        .k6(32'b00111101110000110011101001100100
),
        .k7(32'b00111101010010001010000000010100
),
        .k8(32'b00111101000110100111001100111101
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
        .k0(32'b10111101111010110100100000100110
),
        .k1(32'b10111101001100100000010111000010
),
        .k2(32'b10111101010100000101101100100011
),
        .k3(32'b00111101100011000001011100101111
),
        .k4(32'b00111100100011101111010001110100
),
        .k5(32'b00111101011111011011101100101010
),
        .k6(32'b10111110000010111100110100000001
),
        .k7(32'b10111101101000001000100100100000
),
        .k8(32'b00111101101001100000010101000010
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
        .k0(32'b00111101011001100010101110110110
),
        .k1(32'b00111101000000101010000011111111
),
        .k2(32'b10111101110001000010111111000011
),
        .k3(32'b10111100100101000000001101001110
),
        .k4(32'b00111011100000001111000101100000
),
        .k5(32'b00111101101010001110010001100001
),
        .k6(32'b00111101010011101100111110010000
),
        .k7(32'b10111110000101110110011011010000
),
        .k8(32'b00111100101100000101001001101110
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
        .k0(32'b00111101001001010110010110100000
),
        .k1(32'b00111110000001111111101111110110
),
        .k2(32'b10111101010001101000111001000111
),
        .k3(32'b00111100000100011011101111010010
),
        .k4(32'b00111101101010110000101001000010
),
        .k5(32'b00111101001000101101001100010111
),
        .k6(32'b00111101101111000101001000001001
),
        .k7(32'b10111101111100001000110101011111
),
        .k8(32'b00111100110000010001110111001011
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
        .k0(32'b10111100010100101101000100010101
),
        .k1(32'b00111101100011000100111100001001
),
        .k2(32'b00111110000100011000101100110000
),
        .k3(32'b00111101110100101111000111000101
),
        .k4(32'b00111101000110001110101101000111
),
        .k5(32'b00111101010010011011000011010010
),
        .k6(32'b10111101110011011111100011111100
),
        .k7(32'b00111101100011011101110101011001
),
        .k8(32'b00111110000011010001101101010000
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
        .k0(32'b00111101010000001100110000001110
),
        .k1(32'b10111101101011101001111000011101
),
        .k2(32'b00111101100010100010101011110101
),
        .k3(32'b00111101100111111010010010101100
),
        .k4(32'b10111100011101101010100000010110
),
        .k5(32'b10111110000010001110110011011110
),
        .k6(32'b00111100110011111101001100010110
),
        .k7(32'b10111101110110001100010110110010
),
        .k8(32'b10111110000101011011010001110110
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
        .k0(32'b10111101001000011101100111111100
),
        .k1(32'b00111101110111101110011101100110
),
        .k2(32'b00111100100110111011010000111111
),
        .k3(32'b00111101110110010011001110000101
),
        .k4(32'b00111101000111001110111011110100
),
        .k5(32'b00111101110111010000111001000011
),
        .k6(32'b10111101100101010110100010001110
),
        .k7(32'b10111011001000000100101000011100
),
        .k8(32'b00111101010000000011010100100000
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
        .k0(32'b10111100110110010010001011110111
),
        .k1(32'b10111101110101100011100110111110
),
        .k2(32'b10111101001101111010010001010110
),
        .k3(32'b00111101111111110001100111000111
),
        .k4(32'b10111101001111100100100001111001
),
        .k5(32'b10111100110111011001001011111001
),
        .k6(32'b10111101100010111000100111100001
),
        .k7(32'b00111101011110110101110011000101
),
        .k8(32'b00111101100010111000110110010100
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
        .k0(32'b10111100110001101010011100011001
),
        .k1(32'b10111101111010001100000010111100
),
        .k2(32'b00111101000011111011101101111010
),
        .k3(32'b00111101111100001101001000000101
),
        .k4(32'b00111101100110011001000001111001
),
        .k5(32'b00111101100011001010001010101111
),
        .k6(32'b10111011100110000011001100111010
),
        .k7(32'b10111011111010110010001000110110
),
        .k8(32'b10111110000001000011010101111110
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
        .k0(32'b10111101000011010110101001101110
),
        .k1(32'b00111101000110000100110100011101
),
        .k2(32'b10111101101000010011010000110001
),
        .k3(32'b00111101101000000000000101010101
),
        .k4(32'b00111110000111100111011010111100
),
        .k5(32'b00111100101010101010101001000001
),
        .k6(32'b00111110000100100100101011010111
),
        .k7(32'b00111101100101000100011101011110
),
        .k8(32'b10111101100010111101110100011100
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
        .k0(32'b10111101111100000101110010101100
),
        .k1(32'b10111101100010111100110010100111
),
        .k2(32'b10111101000101101011111001101111
),
        .k3(32'b10111101010000011010111010011100
),
        .k4(32'b10111110000000101101101110010010
),
        .k5(32'b10111100111110100000101111101111
),
        .k6(32'b00111100001110000101010111000111
),
        .k7(32'b00111101101100100100001000101101
),
        .k8(32'b00111101011011110000010010111111
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
        .k0(32'b10111101101011001110111110000001
),
        .k1(32'b00111100010011001100100011100101
),
        .k2(32'b10111101101000111101000010110011
),
        .k3(32'b10111101101001111011001110000111
),
        .k4(32'b10111101001000000111001010011101
),
        .k5(32'b00111100101001001110100000101001
),
        .k6(32'b10111100110101010100001011111001
),
        .k7(32'b00111101110100000101111010100110
),
        .k8(32'b00111100101101000011110110010000
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
        .k0(32'b10111110000101000000110001100000
),
        .k1(32'b10111110000000001101001111000010
),
        .k2(32'b00111101001111000001100111010010
),
        .k3(32'b10111101000100101100010000110000
),
        .k4(32'b00111101110111011111110000010100
),
        .k5(32'b10111101101100111100100000010111
),
        .k6(32'b10111100111100011111111110010010
),
        .k7(32'b10111100010001111110010010100111
),
        .k8(32'b00111100000010010011010110100110
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
        .k0(32'b10111100110101101100000101001000
),
        .k1(32'b10111101110101111001101010000101
),
        .k2(32'b10111101101001011101010110101110
),
        .k3(32'b10111101110011011101010001001110
),
        .k4(32'b10111110000101000100010111000000
),
        .k5(32'b00111101100000010001011110100111
),
        .k6(32'b10111101111010000000110100011110
),
        .k7(32'b10111101010001100001010010101010
),
        .k8(32'b10111100011000000010111110010101
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
        .k0(32'b00111101001000000101000100101000
),
        .k1(32'b10111101100000000111101100001000
),
        .k2(32'b10111101110000011111001101001110
),
        .k3(32'b00111110000110110111011101100100
),
        .k4(32'b00111101111011101011000100101110
),
        .k5(32'b00111101000001001110100000001000
),
        .k6(32'b00111100101100001101110010100011
),
        .k7(32'b00111110000110101111110000011100
),
        .k8(32'b00111101110110100111100011101001
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