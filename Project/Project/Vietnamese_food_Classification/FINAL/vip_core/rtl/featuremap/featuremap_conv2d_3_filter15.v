module featuremap_conv2d_3_filter15
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b00111011101010011110101001011011
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
        .k0(32'b00111101111110111111000101001100
),
        .k1(32'b00111101010100011111010101001110
),
        .k2(32'b00111101111100001010100000111000
),
        .k3(32'b00111100101001100000001011111111
),
        .k4(32'b10111101111011011000010101100110
),
        .k5(32'b10111100101111001100111011100101
),
        .k6(32'b00111100001000110010100110110010
),
        .k7(32'b00111100101000111101011000100001
),
        .k8(32'b10111101100110101011000001001011
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
        .k0(32'b10111100011100000110000100011111
),
        .k1(32'b10111101100000110010100100110111
),
        .k2(32'b10111110000001111010001010010011
),
        .k3(32'b00111011110100101011000101011100
),
        .k4(32'b10111101111111010101000100101000
),
        .k5(32'b10111101110001001001111000101001
),
        .k6(32'b00111101110011001010000001000100
),
        .k7(32'b00111101100110011010010101011101
),
        .k8(32'b00111101111111011011001000001000
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
        .k0(32'b00111110000010001000100011011000
),
        .k1(32'b00111110000111000011010101100110
),
        .k2(32'b00111101111010110110011011000100
),
        .k3(32'b00111101000101001011100010111111
),
        .k4(32'b10111101101111101100101110101101
),
        .k5(32'b00111101100000011000100100000111
),
        .k6(32'b10111101101101101010010101111110
),
        .k7(32'b10111011110011010110100001100011
),
        .k8(32'b00111101110010000110011000110011
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
        .k0(32'b10111101100101001010100110111110
),
        .k1(32'b00111101100011111010010110111001
),
        .k2(32'b00111100111110111010101000110100
),
        .k3(32'b10111101011110011101110000101111
),
        .k4(32'b00111101110100000110101100110001
),
        .k5(32'b10111101100000010100110011111101
),
        .k6(32'b00111101100111011100001000001100
),
        .k7(32'b10111101111001011110111001101000
),
        .k8(32'b00111101001000010111000010000110
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
        .k0(32'b10111101110000001100001110011010
),
        .k1(32'b00111101110101110100010110101100
),
        .k2(32'b10111100111110000111101101011011
),
        .k3(32'b10111101000111101000010001101111
),
        .k4(32'b00111101111001111100110110110011
),
        .k5(32'b10111110000110011101111101110000
),
        .k6(32'b00111100110010000110001000000110
),
        .k7(32'b10111110000100101000011001010100
),
        .k8(32'b10111101000101111100100101011101
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
        .k0(32'b10111100101011011111000111100111
),
        .k1(32'b00111101101100100001101101001000
),
        .k2(32'b10111101010001101010110100000010
),
        .k3(32'b10111101100000111100010111001111
),
        .k4(32'b00111110000001101101100000101111
),
        .k5(32'b10111101101100100001000100010000
),
        .k6(32'b00111101010111010001110010001110
),
        .k7(32'b10111101001001101001111101110111
),
        .k8(32'b10111101110100011010000111101110
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
        .k0(32'b10111110000101100100111001101111
),
        .k1(32'b00111101100111110001110001011011
),
        .k2(32'b10111101000001000000011100100100
),
        .k3(32'b00111101110000011011011110010111
),
        .k4(32'b10111101001011000100010001011001
),
        .k5(32'b10111110001000110010011010010010
),
        .k6(32'b00111101001000001000110110011010
),
        .k7(32'b10111101110101001110011111101000
),
        .k8(32'b10111101100010001000000011001111
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
        .k0(32'b00111101000100011010100011011100
),
        .k1(32'b00111110000100000000111101001111
),
        .k2(32'b00111101101111100111100000111101
),
        .k3(32'b00111011010000100111110101000010
),
        .k4(32'b00111101100000100110101110101111
),
        .k5(32'b00111101101111001001000010110111
),
        .k6(32'b00111100010010100000101010100011
),
        .k7(32'b00111101100101011110110111110000
),
        .k8(32'b10111101101001110101111001101010
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
        .k0(32'b10111101000010100001101101111010
),
        .k1(32'b00111110000101001111011101100111
),
        .k2(32'b00111101000001100011001000001001
),
        .k3(32'b10111101110011010101001000011101
),
        .k4(32'b10111101101000110000001000100110
),
        .k5(32'b00111101011001001001001000110101
),
        .k6(32'b00111101110001010011000001100100
),
        .k7(32'b00111110000100011011000111111000
),
        .k8(32'b00111011110110100101101010100100
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
        .k0(32'b10111101101000000100111001110011
),
        .k1(32'b00111110000000101011000010100111
),
        .k2(32'b00111011110000111111111011110000
),
        .k3(32'b00111101101001001110010100011110
),
        .k4(32'b00111011101011101000001111101011
),
        .k5(32'b10111101110101000110011010011111
),
        .k6(32'b00111101110110101000000001111100
),
        .k7(32'b10111101100001100001110111010101
),
        .k8(32'b00111101110100011001010101000001
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
        .k0(32'b10111101101000101100111111010010
),
        .k1(32'b00111101000110001001010011001111
),
        .k2(32'b00111100011101011101111010000001
),
        .k3(32'b10111101111001000101010100111100
),
        .k4(32'b10111100111100101110110111100111
),
        .k5(32'b00111101101001110001010111100011
),
        .k6(32'b10111011101111110110011011010001
),
        .k7(32'b10111110001000010010111001101110
),
        .k8(32'b10111101100111100000001100000010
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
        .k0(32'b10111100100100001011011010110110
),
        .k1(32'b10111101111000111100101100011011
),
        .k2(32'b00111101111000101001101110010111
),
        .k3(32'b00111101100110111001111100111000
),
        .k4(32'b00111101000011000001100100100101
),
        .k5(32'b00111011010010000000101010010100
),
        .k6(32'b10111101001001010101110111000011
),
        .k7(32'b00111110000001110000110101111101
),
        .k8(32'b00111100010010011011000011110011
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
        .k0(32'b10111101100111101001010111110001
),
        .k1(32'b00111101101110001101100000011001
),
        .k2(32'b10111100011001010110010100110111
),
        .k3(32'b00111101111111010000011001111001
),
        .k4(32'b10111101000100001011001011011010
),
        .k5(32'b10111101010101011001011101001011
),
        .k6(32'b10111101011010101110001100100000
),
        .k7(32'b00111110000001011110100111010101
),
        .k8(32'b10111101110000111011111100011011
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
        .k0(32'b10111100010000100111101101110001
),
        .k1(32'b10111101101000011111100011111000
),
        .k2(32'b10111101100001011100111101100110
),
        .k3(32'b10111100111101111001110010001001
),
        .k4(32'b00111101111111011100010110111001
),
        .k5(32'b00111110000011010000001011111010
),
        .k6(32'b10111110000001100010101001011000
),
        .k7(32'b00111110000001100011101111011000
),
        .k8(32'b10111101101000011110000011101011
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
        .k0(32'b00111101010000010100110001010101
),
        .k1(32'b00111100000110101000001001111010
),
        .k2(32'b00111101100000110111111001111100
),
        .k3(32'b00111101000000111101101100110101
),
        .k4(32'b00111101011111010101000000011010
),
        .k5(32'b00111011101001111011101000011100
),
        .k6(32'b00111110000100011010001001110001
),
        .k7(32'b10111100111111000001101110100101
),
        .k8(32'b00111101110100001110111000110100
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
        .k0(32'b10111110000000110000111010010101
),
        .k1(32'b10111110000001100111011100101110
),
        .k2(32'b00111101000101101100111001000100
),
        .k3(32'b10111110001000110001111000011001
),
        .k4(32'b10111101100000111001111001001101
),
        .k5(32'b00111101101101010010111011011110
),
        .k6(32'b10111101100100110010000010100101
),
        .k7(32'b00111101110001111000100001011011
),
        .k8(32'b00111101011100000000010100000101
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