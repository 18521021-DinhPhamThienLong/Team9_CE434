module featuremap_conv2d_3_filter9
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b00111011011101101101011000001010
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
        .k0(32'b00111100100110001001111000101110
),
        .k1(32'b10111101101110000011000011100000
),
        .k2(32'b10111100111101111000110011111111
),
        .k3(32'b00111101111111001011101111011111
),
        .k4(32'b10111101110000101011101111001010
),
        .k5(32'b00111110001010110000100001001001
),
        .k6(32'b00111101000000010110010110000111
),
        .k7(32'b00111101111001111101100100000111
),
        .k8(32'b00111110000011001101010101101010
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
        .k0(32'b10111101101110000101001100001001
),
        .k1(32'b00111100010000000100100100101000
),
        .k2(32'b00111101010101110011100111110100
),
        .k3(32'b10111101111110101100111111000110
),
        .k4(32'b10111101110001011110100011011100
),
        .k5(32'b00111110000100011100110010100100
),
        .k6(32'b10111101001101110000100000100010
),
        .k7(32'b00111110000001010100010010111010
),
        .k8(32'b10111101110011011011000111110010
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
        .k0(32'b00111101110101100000101110100000
),
        .k1(32'b00111101011001101110001111110010
),
        .k2(32'b00111110001001000101000111101100
),
        .k3(32'b00111110001101000100111010100011
),
        .k4(32'b10111101101100010000110001000111
),
        .k5(32'b00111101011101101001110110100111
),
        .k6(32'b00111110010001100011001101001100
),
        .k7(32'b10111101011000010001101000011001
),
        .k8(32'b10111100100000001011101000110000
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
        .k0(32'b10111101101110000101100000011000
),
        .k1(32'b00111101001101001101000110110101
),
        .k2(32'b10111101011111010011001111110110
),
        .k3(32'b00111101100001100000001101101011
),
        .k4(32'b10111101110101100100100101100110
),
        .k5(32'b00111101001100001110000011011101
),
        .k6(32'b00111101101001011110010111101011
),
        .k7(32'b10111101101110011110111101010100
),
        .k8(32'b10111101100010111100100101100000
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
        .k0(32'b00111101000101110001011111101011
),
        .k1(32'b10111101001111010110101000110101
),
        .k2(32'b00111100010011010101111110101011
),
        .k3(32'b10111110001011111001010111100100
),
        .k4(32'b10111110001100111111101110101101
),
        .k5(32'b10111110000010011110010001100000
),
        .k6(32'b10111101001000100001111001011001
),
        .k7(32'b10111100110001110000110101100111
),
        .k8(32'b10111101100011101110010101010110
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
        .k0(32'b10111101001101000110001101110100
),
        .k1(32'b10111101100000001001000011010100
),
        .k2(32'b00111110000100000001010011101111
),
        .k3(32'b10111101101110111111011101111110
),
        .k4(32'b00111101101000101001101101101110
),
        .k5(32'b10111101010001111101111000111101
),
        .k6(32'b00111110000000001111111101100001
),
        .k7(32'b10111100101111110011001111000011
),
        .k8(32'b00111101100101101010000011110010
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
        .k0(32'b10111010001100101110110000111101
),
        .k1(32'b00111101100101010110001001010110
),
        .k2(32'b00111101000000001111000100001001
),
        .k3(32'b00111100010001110001010110011011
),
        .k4(32'b10111101111011000101000110100111
),
        .k5(32'b00111101110010110011000111001001
),
        .k6(32'b10111101101001110000110100000000
),
        .k7(32'b00111110000000011010011101100000
),
        .k8(32'b00111100011011011000101101100011
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
        .k0(32'b10111101101110111000010110100010
),
        .k1(32'b00111101111011010100010001011000
),
        .k2(32'b00111110000010011110111110001110
),
        .k3(32'b00111110000001000110001111001111
),
        .k4(32'b10111110000001110101010010010101
),
        .k5(32'b10111101111111101011110101011111
),
        .k6(32'b00111100001001111010110000010111
),
        .k7(32'b10111011011110101010111101000110
),
        .k8(32'b00111101010011111100100111111010
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
        .k0(32'b00111100110100001010101000001010
),
        .k1(32'b00111101101100001000101011100000
),
        .k2(32'b00111110000010010001000110000101
),
        .k3(32'b10111101000101001111010011010111
),
        .k4(32'b10111100101101100101011101100011
),
        .k5(32'b10111101010001001101100110100111
),
        .k6(32'b10111101111101110100100001010010
),
        .k7(32'b10111101101100110010000011101111
),
        .k8(32'b00111101001101100011101101110001
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
        .k0(32'b10111100010000000100101000111111
),
        .k1(32'b00111110000100010110001100101110
),
        .k2(32'b00111100000111111111011000010100
),
        .k3(32'b00111100111110010000010100010111
),
        .k4(32'b10111101000101001010001011100001
),
        .k5(32'b00111100101011111110100010001000
),
        .k6(32'b00111101000000010100100101010100
),
        .k7(32'b10111110000000101110110110101011
),
        .k8(32'b00111100100111100110110000100000
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
        .k0(32'b10111100110010101011110010100110
),
        .k1(32'b00111100101010010011110110011110
),
        .k2(32'b10111101100111011011110000111100
),
        .k3(32'b00111011110010011000100000000101
),
        .k4(32'b10111110000000001001001011100011
),
        .k5(32'b10111101101111111000110001010010
),
        .k6(32'b00111100101101100000010100001010
),
        .k7(32'b10111101010010101111100100000010
),
        .k8(32'b10111101101111000101111001011111
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
        .k0(32'b00111101101001110000101001000011
),
        .k1(32'b00111110000000000000111111101111
),
        .k2(32'b00111110000100101111001111011000
),
        .k3(32'b10111100111001011100110000101000
),
        .k4(32'b00111100000101110000011101110001
),
        .k5(32'b10111101100111010101110011101110
),
        .k6(32'b10111110000001010011001000010111
),
        .k7(32'b10111101101010101101100011000101
),
        .k8(32'b10111101000110011001001111101000
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
        .k0(32'b00111100100101111110101110010101
),
        .k1(32'b00111110000000010000110010010101
),
        .k2(32'b10111101101111000110001010001101
),
        .k3(32'b10111101001100101011011011111000
),
        .k4(32'b00111101100100111101111000000000
),
        .k5(32'b10111100011010101111111110101010
),
        .k6(32'b00111110000010000001101110100010
),
        .k7(32'b00111101111000110101101111101010
),
        .k8(32'b00111101101100010111100010101011
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
        .k0(32'b10111100101100000010111010101011
),
        .k1(32'b00111101101011010001000010110110
),
        .k2(32'b10111101010010000100010000100110
),
        .k3(32'b10111101011111100011000111001001
),
        .k4(32'b00111101100110011011001101001110
),
        .k5(32'b00111101100101100000100010010111
),
        .k6(32'b00111110000011101101110101101011
),
        .k7(32'b00111101111101100010011101000110
),
        .k8(32'b10111101111000010001101010100110
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
        .k0(32'b10111101111001001001100110100110
),
        .k1(32'b00111110000111101100011111110110
),
        .k2(32'b10111101110000110100010011110001
),
        .k3(32'b00111110000011011011000001011001
),
        .k4(32'b00111110000010101101011000110100
),
        .k5(32'b00111101101101110110110001111100
),
        .k6(32'b00111010111000100110001111100000
),
        .k7(32'b10111101000100011011000101110010
),
        .k8(32'b10111101100100100000111011111010
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
        .k0(32'b10111101110101000011011010011001
),
        .k1(32'b10111101100110000011111111000111
),
        .k2(32'b10111101000010010111110001001000
),
        .k3(32'b00111101110110001000111000011100
),
        .k4(32'b10111110000011101010101100101000
),
        .k5(32'b10111101100111000011011111110010
),
        .k6(32'b00111101101101100111001000101101
),
        .k7(32'b10111101110111011101110011110100
),
        .k8(32'b10111101000101101010000101100110
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