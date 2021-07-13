module featuremap_conv2d_4_filter10
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b00111011100010000110110111101101
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
        .k0(32'b00111101001000011001110001100000
),
        .k1(32'b10111101110010111110100100001001
),
        .k2(32'b10111110000000111101100010001010
),
        .k3(32'b10111101100100111000010001110101
),
        .k4(32'b10111101011101010000000110001110
),
        .k5(32'b10111101010010000111101110010101
),
        .k6(32'b10111101001110011011000010000110
),
        .k7(32'b00111101100000110111110000111000
),
        .k8(32'b10111101011101000100000001001011
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
        .k0(32'b00111101110110111111011110001101
),
        .k1(32'b00111101010110010111010010110111
),
        .k2(32'b10111101000111110101110111110011
),
        .k3(32'b00111101000110100101111011111010
),
        .k4(32'b10111101101100011111001011100001
),
        .k5(32'b00111100000100000000111110010100
),
        .k6(32'b00111100101011110000111100101110
),
        .k7(32'b00111101110111001000111100110010
),
        .k8(32'b00111110000110000100101100011100
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
        .k0(32'b10111101101011010111010001001010
),
        .k1(32'b10111100100001101100011101100011
),
        .k2(32'b10111101110100111011000110001001
),
        .k3(32'b10111101100010001111110000010110
),
        .k4(32'b00111100100110110101011110001111
),
        .k5(32'b00111101101000011110110111011100
),
        .k6(32'b10111101100100000101010110011100
),
        .k7(32'b10111101111111100010100010001000
),
        .k8(32'b10111101101010010011110010110111
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
        .k0(32'b00111110001000101001010111110011
),
        .k1(32'b00111101111011110111011100010011
),
        .k2(32'b10111101100100011010000111001101
),
        .k3(32'b00111101101111111111110010011101
),
        .k4(32'b00111101111110000010000000110100
),
        .k5(32'b00111101110111111110001111111011
),
        .k6(32'b10111101100111010001001100100011
),
        .k7(32'b10111101001100001101111100100101
),
        .k8(32'b00111110000110010101100011100001
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
        .k0(32'b10111101110011101000011010001101
),
        .k1(32'b00111101101100111111100011001100
),
        .k2(32'b00111101110001111110111111011001
),
        .k3(32'b10111110000010111010110011101010
),
        .k4(32'b00111101111010111111011010111001
),
        .k5(32'b10111101010010100010010000110100
),
        .k6(32'b10111110000011010101110001110000
),
        .k7(32'b00111101010010110100100000110000
),
        .k8(32'b10111101011001011001001111101110
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
        .k0(32'b00111101000010010011010101000101
),
        .k1(32'b00111101001101110111101000111001
),
        .k2(32'b10111101011100111110001101100000
),
        .k3(32'b00111101110101111000100000000111
),
        .k4(32'b10111101010101010000111111101111
),
        .k5(32'b00111101011111010111010010101110
),
        .k6(32'b00111101101001101101100100001001
),
        .k7(32'b10111101001000101111111001010101
),
        .k8(32'b10111101110011111111100001101010
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
        .k0(32'b00111101101001110010111001110010
),
        .k1(32'b10111101101111010010010110111111
),
        .k2(32'b10111101110111011000101111000100
),
        .k3(32'b10111101000001000010111011010110
),
        .k4(32'b10111101010100100001000100010001
),
        .k5(32'b00111101101011001100101010100001
),
        .k6(32'b10111101011001010010111111101110
),
        .k7(32'b00111101110000011000000000000111
),
        .k8(32'b00111101101101001100001101111001
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
        .k0(32'b10111101001000001110001001010000
),
        .k1(32'b00111101110000110110101111010111
),
        .k2(32'b00111101010110100100110100000001
),
        .k3(32'b00111100100011110011000001010111
),
        .k4(32'b10111101101001010101011111111000
),
        .k5(32'b10111101011101111110011011010101
),
        .k6(32'b00111101111110011000011100110000
),
        .k7(32'b10111101100111111100000000001011
),
        .k8(32'b10111100001110101100010101110010
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
        .k0(32'b00111100011000110010000111011001
),
        .k1(32'b00111101110011000101110101001010
),
        .k2(32'b00111110000100110010001100100110
),
        .k3(32'b00111101001000010100001011111111
),
        .k4(32'b10111100000110001010001010001001
),
        .k5(32'b10111101101010101000110100001111
),
        .k6(32'b10111011111110000101100110110100
),
        .k7(32'b00111100101111000000000001010000
),
        .k8(32'b00111110000100111000000100001110
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
        .k0(32'b00111101001100101010010101010010
),
        .k1(32'b10111100110000101010110001110000
),
        .k2(32'b10111101100110110001011110001111
),
        .k3(32'b10111101000100000111001010011011
),
        .k4(32'b10111110001001100010011101101000
),
        .k5(32'b10111101111010111011101111000100
),
        .k6(32'b10111101111001110010100001000100
),
        .k7(32'b10111101100010000000011001000010
),
        .k8(32'b00111011111111101011101100010010
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
        .k0(32'b10111110001001100001110010011110
),
        .k1(32'b00111101110110101011110000000100
),
        .k2(32'b10111101000001100010101010001001
),
        .k3(32'b10111101000100101111111101000110
),
        .k4(32'b10111101011111100100100111010110
),
        .k5(32'b10111101010101110011001110010110
),
        .k6(32'b10111100000110011000111100001110
),
        .k7(32'b00111101011000010001001101010001
),
        .k8(32'b00111001011011101101111001001101
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
        .k0(32'b00111101100111100110011010110001
),
        .k1(32'b00111100011011110010010001001101
),
        .k2(32'b10111101000110111111000010010110
),
        .k3(32'b10111101100100110111011101101100
),
        .k4(32'b00111101100010011100100000101011
),
        .k5(32'b00111101111100001010100001111100
),
        .k6(32'b10111110000000001011001110100001
),
        .k7(32'b00111101110111001111110101001110
),
        .k8(32'b10111101110111011111111001001101
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
        .k0(32'b10111101010001110111001001000100
),
        .k1(32'b10111101011110111111001111010101
),
        .k2(32'b10111101110011101101111111010001
),
        .k3(32'b00111101111111111100100010010100
),
        .k4(32'b10111101000100000111010111101111
),
        .k5(32'b10111100011110010011111100011010
),
        .k6(32'b00111101000010000010001000110001
),
        .k7(32'b00111101011001001000110000011011
),
        .k8(32'b00111101110110000010011000010000
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
        .k0(32'b00111101110011110100111100101100
),
        .k1(32'b00111101110001010101101011110101
),
        .k2(32'b00111100001100101100110001111001
),
        .k3(32'b00111101101000111101100101011111
),
        .k4(32'b00111110000000100011010110111101
),
        .k5(32'b00111101011111101000010110001001
),
        .k6(32'b10111101100000000101110110101010
),
        .k7(32'b10111101100000100110010100100000
),
        .k8(32'b10111101111101001010011101100000
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
        .k0(32'b10111101110110001110110000010100
),
        .k1(32'b00111101010101101000000110000001
),
        .k2(32'b10111101101110001001110000100110
),
        .k3(32'b00111100110100000101100010010101
),
        .k4(32'b10111101011000110010001111100011
),
        .k5(32'b10111101101000000011001010001011
),
        .k6(32'b00111101011100010110000000101011
),
        .k7(32'b10111101110100110010101110111110
),
        .k8(32'b00111101001101110011000010011111
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
        .k0(32'b10111101111000101011010100011101
),
        .k1(32'b10111110000111101010000101001001
),
        .k2(32'b10111110000000111000000100110101
),
        .k3(32'b10111101011010100001011111100111
),
        .k4(32'b00111101000110010010111011101010
),
        .k5(32'b00111101000010111110111000111001
),
        .k6(32'b10111101000001100100101111010010
),
        .k7(32'b10111110001000101000110100001001
),
        .k8(32'b00111100010001111100100100011100
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