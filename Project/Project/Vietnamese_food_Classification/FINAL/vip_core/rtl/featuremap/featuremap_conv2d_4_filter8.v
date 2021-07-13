module featuremap_conv2d_4_filter8
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b10111001110010000001100101010011
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
        .k0(32'b00111101110011110010100000100010
),
        .k1(32'b10111101110110001101111011001111
),
        .k2(32'b10111110000001010100011100001011
),
        .k3(32'b10111100011101111011000000001001
),
        .k4(32'b10111101110101011100110001010000
),
        .k5(32'b10111010111101010010011101110010
),
        .k6(32'b10111101101001101001110100011100
),
        .k7(32'b10111101110011000010101110010111
),
        .k8(32'b00111101111111001110000100111111
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
        .k0(32'b10111100011101101001001000110111
),
        .k1(32'b10111101110000101111110111110010
),
        .k2(32'b10111110000001110010010010110111
),
        .k3(32'b00111101110000111001111111010011
),
        .k4(32'b00111101111000101000001000110001
),
        .k5(32'b10111101110100001101000011010000
),
        .k6(32'b00111101111001001101100101100111
),
        .k7(32'b10111101100001110111011010001110
),
        .k8(32'b10111101101100011000001010010010
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
        .k0(32'b00111101101000001001111010010011
),
        .k1(32'b00111110000100010111100010111111
),
        .k2(32'b10111101100111011000000111101100
),
        .k3(32'b10111101011100010010010100110011
),
        .k4(32'b00111101101010100011001000101010
),
        .k5(32'b10111101011100000101001001110011
),
        .k6(32'b10111101100100101110110101001100
),
        .k7(32'b00111101101010000011110100111010
),
        .k8(32'b10111101110000010110100001010001
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
        .k0(32'b10111101100010000010100111000000
),
        .k1(32'b00111101110100100001000111100000
),
        .k2(32'b00111101110010001001010000101101
),
        .k3(32'b10111011110111001100111010010011
),
        .k4(32'b00111101110011011000001111101011
),
        .k5(32'b10111100110001010010010111110100
),
        .k6(32'b00111101101011000001010111111000
),
        .k7(32'b10111100111010011111001110100010
),
        .k8(32'b00111110000001110011010110011111
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
        .k0(32'b00111100100100000100100000100100
),
        .k1(32'b00111110000000110110010001000101
),
        .k2(32'b10111100101010100001010110011101
),
        .k3(32'b10111101001100000110001000001100
),
        .k4(32'b10111100001110100100111010011110
),
        .k5(32'b00111101111101100000011010101101
),
        .k6(32'b10111101111010110111110110101100
),
        .k7(32'b00111101111000000000000001001100
),
        .k8(32'b10111101111111100010001010001010
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
        .k0(32'b10111101001111001100110100000110
),
        .k1(32'b00111100111001010010110010101000
),
        .k2(32'b00111011110101101100111001110100
),
        .k3(32'b10111110000001110000001010101101
),
        .k4(32'b10111101101111110001000001001101
),
        .k5(32'b00111100101010001111110011110010
),
        .k6(32'b10111101111000101011111100101010
),
        .k7(32'b10111101011001100011010010011000
),
        .k8(32'b10111101011011111010000010001010
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
        .k0(32'b10111101111101111100000100101111
),
        .k1(32'b00111101001001110101101010011110
),
        .k2(32'b10111101110010010111001100000001
),
        .k3(32'b00111101100010010011000000111101
),
        .k4(32'b10111100111011011111011001101011
),
        .k5(32'b10111101011111000100111100011101
),
        .k6(32'b10111101110110110110010001011100
),
        .k7(32'b10111101111010101011011001011000
),
        .k8(32'b10111101000000011011111100011000
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
        .k0(32'b00111011110111111011000100110001
),
        .k1(32'b10111100100011000100011101100110
),
        .k2(32'b10111100010100011100111000100100
),
        .k3(32'b00111101110110110001110000110000
),
        .k4(32'b10111100101100000010011101110000
),
        .k5(32'b10111101000101000111000010111110
),
        .k6(32'b00111010011110110110000000011000
),
        .k7(32'b10111101110101001010010000011111
),
        .k8(32'b10111101110001001010100101110001
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
        .k0(32'b00111101101001000010010110001101
),
        .k1(32'b00111110000100101111010100011111
),
        .k2(32'b00111110000001011001101100101101
),
        .k3(32'b00111110000000001000100001111001
),
        .k4(32'b00111100101011110100111010110100
),
        .k5(32'b10111101100110100110001000110111
),
        .k6(32'b10111101110101010010110101001001
),
        .k7(32'b00111011110011000100001101111000
),
        .k8(32'b00111101110001100100111001111100
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
        .k0(32'b00111101001001111010010010010110
),
        .k1(32'b10111100110100101110011010011011
),
        .k2(32'b00111101111111001010000010011111
),
        .k3(32'b00111101101000110000011010111001
),
        .k4(32'b10111101010100111011000001001001
),
        .k5(32'b00111110000001101010000010000111
),
        .k6(32'b00111101110101111101001110011101
),
        .k7(32'b00111101011100011010100100110011
),
        .k8(32'b00111101110011111000111011110001
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
        .k0(32'b00111101110101101100100101010000
),
        .k1(32'b00111101101011100101010011011111
),
        .k2(32'b00111110000001001000101111100101
),
        .k3(32'b00111101100111110001101010100000
),
        .k4(32'b10111101111101100110011010101010
),
        .k5(32'b00111110000011000110010001011101
),
        .k6(32'b00111110000100010111000111011000
),
        .k7(32'b00111110000100101101011101101010
),
        .k8(32'b10111101011001110010010110001000
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
        .k0(32'b00111101111000101011001101000111
),
        .k1(32'b00111101000001011100000100010011
),
        .k2(32'b00111100111101010100010111001010
),
        .k3(32'b10111101001101100101011001001100
),
        .k4(32'b10110111111100101100101110010101
),
        .k5(32'b00111101110000101111100011010111
),
        .k6(32'b00111110000101100000111111100101
),
        .k7(32'b10111101000100001110101010110000
),
        .k8(32'b00111101111001011111110110101001
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
        .k0(32'b10111101010000010101000000010000
),
        .k1(32'b00111101000110010011101010001000
),
        .k2(32'b00111101001111110111010111100000
),
        .k3(32'b10111101011100011000100111110011
),
        .k4(32'b10111100101000011101010100011010
),
        .k5(32'b10111101101110100101111010110011
),
        .k6(32'b10111101110001001101000000000010
),
        .k7(32'b00111110000111100110110101110110
),
        .k8(32'b10111101000011101110101011000111
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
        .k0(32'b10111101010010011010001101111011
),
        .k1(32'b10111100101010110000110010100100
),
        .k2(32'b10111100100001100010110000010011
),
        .k3(32'b10111101011100001111100110000111
),
        .k4(32'b10111100010000101100110001111010
),
        .k5(32'b00111101100111100001001011001000
),
        .k6(32'b00111101100001000110110101100010
),
        .k7(32'b10111100101110000011010100001001
),
        .k8(32'b10111100011010011001001101100110
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
        .k0(32'b10111101100110011001001100110000
),
        .k1(32'b00111101110101111011000100010101
),
        .k2(32'b00111101101101111110001001000110
),
        .k3(32'b00111101100111011011011010000101
),
        .k4(32'b00111110000001010010010011010100
),
        .k5(32'b10111101101111110001101010111010
),
        .k6(32'b10111101100101101111100000000101
),
        .k7(32'b10111100101100011110010101110000
),
        .k8(32'b10111101111011001001000101010000
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
        .k0(32'b00111101101000110000011101101101
),
        .k1(32'b00111010100011010001101110011000
),
        .k2(32'b00111101100100111011101011101001
),
        .k3(32'b00111100011000101110110111100010
),
        .k4(32'b10111101000000011010101011100000
),
        .k5(32'b00111110000001011011010000111101
),
        .k6(32'b00111101010110101111100000100100
),
        .k7(32'b10111101100000010011100010011010
),
        .k8(32'b10111101110010110011101110111110
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