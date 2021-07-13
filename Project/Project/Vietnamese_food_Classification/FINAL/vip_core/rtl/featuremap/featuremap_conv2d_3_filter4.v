module featuremap_conv2d_3_filter4
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b00111011010000101010000110000110
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
        .k0(32'b10111101111111000011111010000010
),
        .k1(32'b10111101100001011011100110101110
),
        .k2(32'b10111101111110000001011001110011
),
        .k3(32'b00111101011100100000001110010011
),
        .k4(32'b10111101111110001001111110010001
),
        .k5(32'b00111101100001011010010101010011
),
        .k6(32'b00111110000011000100100000010110
),
        .k7(32'b00111101111010101001010010011000
),
        .k8(32'b00111101111101110000111101111000
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
        .k0(32'b00111101010100011111111001001001
),
        .k1(32'b00111101101011010011101110100000
),
        .k2(32'b00111101111111101001000101110011
),
        .k3(32'b10111110000000011010011000000001
),
        .k4(32'b10111101011100011000010100000010
),
        .k5(32'b10111101100010011100111001101010
),
        .k6(32'b00111101001001010011011110000101
),
        .k7(32'b10111101100010110000001010101000
),
        .k8(32'b10111101010111000110010011000000
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
        .k0(32'b10111101100100011110000001111000
),
        .k1(32'b00111101011010011110000111010110
),
        .k2(32'b10111101100100111111010011111011
),
        .k3(32'b10111101101111101001011001001101
),
        .k4(32'b10111101100101011011001101001111
),
        .k5(32'b10111011110000001001001010001101
),
        .k6(32'b10111100001111100111111100010001
),
        .k7(32'b10111011010110001001111011000000
),
        .k8(32'b00111100011111100111010111110010
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
        .k0(32'b10111100100010011100010010100010
),
        .k1(32'b10111101010101100010011100011011
),
        .k2(32'b00111101101010110010100110000111
),
        .k3(32'b00111101100100101001000010101100
),
        .k4(32'b10111101101011101101011101000000
),
        .k5(32'b00111100101100000111101110111110
),
        .k6(32'b00111101101001110111111110110110
),
        .k7(32'b00111101110111101100010000011011
),
        .k8(32'b00111110000000111110011101010010
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
        .k0(32'b10111100100110011110011111110010
),
        .k1(32'b10111101010110010101010100001100
),
        .k2(32'b00111101110001010001111000111001
),
        .k3(32'b00111100010110100101000010101001
),
        .k4(32'b00111100110111010100100000011001
),
        .k5(32'b10111100101100111010101101010000
),
        .k6(32'b00111110000010001010111110011010
),
        .k7(32'b10111101111001011001110011101101
),
        .k8(32'b10111101100011010100111111011100
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
        .k0(32'b10111101101111100101001000001100
),
        .k1(32'b00111101100101100100000101111111
),
        .k2(32'b00111101100001010001101010100110
),
        .k3(32'b10111101100011001100100110000110
),
        .k4(32'b10111101101000110010000000111111
),
        .k5(32'b00111011111000110111000110000110
),
        .k6(32'b10111110000011001100110110011010
),
        .k7(32'b00111101110101010000110000011101
),
        .k8(32'b00111100101100100101000000011101
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
        .k0(32'b10111101111111000101000000011001
),
        .k1(32'b10111101010001010001111011010101
),
        .k2(32'b00111101101000000000000111010011
),
        .k3(32'b10111101010100011101101101110010
),
        .k4(32'b00111101100010000000111100100010
),
        .k5(32'b10111101011011100000011001110110
),
        .k6(32'b00111100101110101101010010001000
),
        .k7(32'b10111101010101001100101101010010
),
        .k8(32'b00111101010001101011101011110101
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
        .k0(32'b00111110001001111011001001100100
),
        .k1(32'b00111110000000001001101101111000
),
        .k2(32'b10111110000001100111000110001100
),
        .k3(32'b00111101111111001111011110011100
),
        .k4(32'b10111101010000110100101111100000
),
        .k5(32'b00111110000001000001010001000101
),
        .k6(32'b00111100001001101011010011010111
),
        .k7(32'b10111100100011110101101010011010
),
        .k8(32'b10111101100010101000111001101010
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
        .k0(32'b00111101111011100111001001001100
),
        .k1(32'b00111101010111111000101010111011
),
        .k2(32'b00111101101010111011110001000101
),
        .k3(32'b10111010010101010111101000101010
),
        .k4(32'b10111101100000111100101001100101
),
        .k5(32'b00111101011000010100010000001100
),
        .k6(32'b00111110000010011100100100111001
),
        .k7(32'b10111101000010111111011010111101
),
        .k8(32'b10111101101101101010110110010010
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
        .k0(32'b10111101100111101111110111011100
),
        .k1(32'b00111101111011010000111110011100
),
        .k2(32'b10111101100110001100100110101001
),
        .k3(32'b00111101000001110010110111010001
),
        .k4(32'b00111101101111101101101001111001
),
        .k5(32'b10111101010111110100010010010111
),
        .k6(32'b00111101110000000011010000011101
),
        .k7(32'b00111011101000011011000010110010
),
        .k8(32'b10111101100100011110111110101100
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
        .k0(32'b10111100100101100000111101011000
),
        .k1(32'b00111101001001000111011110100000
),
        .k2(32'b00111100100100011101100001110000
),
        .k3(32'b00111101101010111010011010000111
),
        .k4(32'b10111110000101000111011011000000
),
        .k5(32'b10111110000101110110001010111111
),
        .k6(32'b10111100111001011001101010101101
),
        .k7(32'b10111110000101111010110001111100
),
        .k8(32'b10111101101110001001110011100010
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
        .k0(32'b00111110000011010001101010100001
),
        .k1(32'b00111100111001100111101110000001
),
        .k2(32'b10111101110001010010010010110000
),
        .k3(32'b10111100001100111001101011100100
),
        .k4(32'b00111110001001010100101001010100
),
        .k5(32'b00111101101100110010011010010111
),
        .k6(32'b00111101100101010000101011011101
),
        .k7(32'b10111101101010101010001001101100
),
        .k8(32'b00111100011110011101011100110000
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
        .k0(32'b10111101001110100001111000000010
),
        .k1(32'b10111100111001100110011011000111
),
        .k2(32'b10111101111000001111101000000001
),
        .k3(32'b00111101111010110010001100011001
),
        .k4(32'b10111100100100010100000101100110
),
        .k5(32'b10111101101101011011011010111000
),
        .k6(32'b00111101100001110101100010001110
),
        .k7(32'b00111101110101101001001111110111
),
        .k8(32'b10111110000010110000101101000100
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
        .k0(32'b00111110000010010100101100010100
),
        .k1(32'b00111100010010100100011100101010
),
        .k2(32'b00111101000100110101000111000001
),
        .k3(32'b10111110000010000001001100010101
),
        .k4(32'b00111110000000000010100111000000
),
        .k5(32'b10111101011001001010100000110010
),
        .k6(32'b00111100100010100001110000011010
),
        .k7(32'b10111101111110000011010100011100
),
        .k8(32'b10111101100001110011101000100110
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
        .k0(32'b00111101101010010111010100110011
),
        .k1(32'b10111110000010010111111010111011
),
        .k2(32'b10111101101101011110011110111010
),
        .k3(32'b00111101111000101100001111110001
),
        .k4(32'b00111110000000010011001110001001
),
        .k5(32'b00111101000001100011110001101001
),
        .k6(32'b10111101111011110000110110000001
),
        .k7(32'b10111101110111111001001110011011
),
        .k8(32'b10111101101000111000100000101001
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
        .k0(32'b00111101101110111110000100000000
),
        .k1(32'b10111101001110100111001000010100
),
        .k2(32'b10111110000011100011100101001101
),
        .k3(32'b00111101010001000001001001111100
),
        .k4(32'b00111101100110111011011001011110
),
        .k5(32'b00111011110111001000100110000111
),
        .k6(32'b10111101111110011010000011111100
),
        .k7(32'b00111101010011101011010001010100
),
        .k8(32'b00111100011011011100110010111101
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