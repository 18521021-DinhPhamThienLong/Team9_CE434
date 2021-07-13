module featuremap_conv2d_3_filter2
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b00111011000011010011101000001101
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
        .k0(32'b10111101010100101010110011110001
),
        .k1(32'b00111110000000100001011101100111
),
        .k2(32'b10111101111111100011010111010011
),
        .k3(32'b10111101110111001111011001111010
),
        .k4(32'b00111101101000001110111011001110
),
        .k5(32'b00111110000110010110110111110011
),
        .k6(32'b00111101111011000010110110001111
),
        .k7(32'b00111100011101010110000001001100
),
        .k8(32'b10111100100011011100010110000100
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
        .k0(32'b10111101101000101101100000100010
),
        .k1(32'b10111101101011110011001011110011
),
        .k2(32'b10111110000000111010110100111000
),
        .k3(32'b10111101111101010111110110101011
),
        .k4(32'b10111101111010111000000100100111
),
        .k5(32'b10111101000110000001101011110010
),
        .k6(32'b00111101100000011100111111001010
),
        .k7(32'b10111101000001100110101010011001
),
        .k8(32'b00111101100001111010010100000000
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
        .k0(32'b00111101101101110110110110000010
),
        .k1(32'b10111101110001010011110010100001
),
        .k2(32'b10111101010111000000101000001111
),
        .k3(32'b10111101100101100110110111000110
),
        .k4(32'b00111101111111011000101110110110
),
        .k5(32'b10111101101110010000010110111000
),
        .k6(32'b10111101110101010110000010111000
),
        .k7(32'b00111110000110011100010000001011
),
        .k8(32'b10111101110101011110000000011010
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
        .k0(32'b00111101001101000010111110011010
),
        .k1(32'b10111101100100000100101000001111
),
        .k2(32'b00111101101111011110100100011101
),
        .k3(32'b10111110000010110000100010111011
),
        .k4(32'b00111101011101111101010000100100
),
        .k5(32'b00111101101000111010010000011010
),
        .k6(32'b00111101000001111100001110001110
),
        .k7(32'b10111110000000000100100011001011
),
        .k8(32'b00111010100011010111010011001001
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
        .k0(32'b00111101110011010100011000111011
),
        .k1(32'b10111100100101000100011010011010
),
        .k2(32'b00111110000000001100011101111110
),
        .k3(32'b00111101010010101010100010100000
),
        .k4(32'b00111101110001010010111011000111
),
        .k5(32'b00111101110001110101111001001110
),
        .k6(32'b10111110000010011000000000101101
),
        .k7(32'b10111100101110001000111100101010
),
        .k8(32'b10111101001010011110100001100000
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
        .k0(32'b10111100101111001111111111001000
),
        .k1(32'b10111110000011000111111101110100
),
        .k2(32'b00111100111101011110010100000000
),
        .k3(32'b00111110000011110010110100110000
),
        .k4(32'b10111100010111101100111110011110
),
        .k5(32'b00111101110000011011010011001010
),
        .k6(32'b10111101010100000010000010111110
),
        .k7(32'b00111100001111011110010111000110
),
        .k8(32'b10111101110101011010000001011011
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
        .k0(32'b10111101010101010001111001000001
),
        .k1(32'b10111110000011100101010000110011
),
        .k2(32'b10111101111111101100110001111110
),
        .k3(32'b10111101110101110101001000011100
),
        .k4(32'b00111101010011010101010100001000
),
        .k5(32'b10111101111101010011011101000010
),
        .k6(32'b00111110000100100110011100001000
),
        .k7(32'b00111110000010100111011101100101
),
        .k8(32'b00111101101010001000100001001110
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
        .k0(32'b10111101111010110000001011111001
),
        .k1(32'b10111100000100100010100011111110
),
        .k2(32'b00111101101000001110111000110110
),
        .k3(32'b10111010010000011110001100010001
),
        .k4(32'b10111101010111011000001011110000
),
        .k5(32'b00111100000010110000110001111011
),
        .k6(32'b10111101111001001001111000110010
),
        .k7(32'b10111100111101010100010100010010
),
        .k8(32'b10111101100110001011101010100011
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
        .k0(32'b10111101111111111110100111011101
),
        .k1(32'b00111110000001111010001110111111
),
        .k2(32'b10111101100011110111011000010001
),
        .k3(32'b00111101111001100011000000011111
),
        .k4(32'b00111101110100111110011001010000
),
        .k5(32'b00111101110111100001000101000001
),
        .k6(32'b00111101010100010100000101110001
),
        .k7(32'b00111010100000100001111110110110
),
        .k8(32'b00111101010001001001011000100000
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
        .k0(32'b10111110000010101100011001110000
),
        .k1(32'b00111110000111001000100011110111
),
        .k2(32'b10111101100000110110001011011100
),
        .k3(32'b00111100110110100111110001100100
),
        .k4(32'b00111110000110000010101110000111
),
        .k5(32'b00111101000010100000000010000011
),
        .k6(32'b10111101111010011110000001101111
),
        .k7(32'b00111101010110010100010100010001
),
        .k8(32'b00111100101100000110010100001011
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
        .k0(32'b10111101110011011110000010010010
),
        .k1(32'b10111100000001100100110010010110
),
        .k2(32'b00111101101001001100001100101111
),
        .k3(32'b10111110000101001001010101111000
),
        .k4(32'b00111101100001001111010111010101
),
        .k5(32'b10111011000101101111010010011001
),
        .k6(32'b10111110000101111011010101011001
),
        .k7(32'b10111101100000001101111010011011
),
        .k8(32'b00111101111001011001111010011110
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
        .k0(32'b10111101001111110111111100110100
),
        .k1(32'b00111101000010111001000000101001
),
        .k2(32'b00111110000101000111100110010100
),
        .k3(32'b00111101101000011000011111000000
),
        .k4(32'b00111101110100100001110110001010
),
        .k5(32'b00111110000010011110110000001001
),
        .k6(32'b10111100100101101110011110101001
),
        .k7(32'b10111101111001100101011110101001
),
        .k8(32'b10111101101011110101011101110101
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
        .k0(32'b00111100110001111000011000000010
),
        .k1(32'b00111100101111001110111111000011
),
        .k2(32'b00111101010001010100000010110110
),
        .k3(32'b10111101000101000011111000000010
),
        .k4(32'b10111100001110111000110100001001
),
        .k5(32'b00111101100100010101000000101111
),
        .k6(32'b00111101111100100111000011010110
),
        .k7(32'b00111110000010101000001111001100
),
        .k8(32'b10111101101111111011011111011100
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
        .k0(32'b10111100111100110110100000001101
),
        .k1(32'b10111110000011000100100100011000
),
        .k2(32'b10111101111100001111111110010001
),
        .k3(32'b10111101110010011001101110101010
),
        .k4(32'b00111101000000110011101001011110
),
        .k5(32'b00111100100101101011100010001001
),
        .k6(32'b00111101110010111111100000110100
),
        .k7(32'b00111101110100010111111110110000
),
        .k8(32'b10111101101011011100101100111000
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
        .k0(32'b10111101110001000110001101001110
),
        .k1(32'b00111110000001100001101011101110
),
        .k2(32'b00111101111101110001011100000101
),
        .k3(32'b00111100000011111110011100001100
),
        .k4(32'b00111100001100111011101010100001
),
        .k5(32'b00111101010001001110000110101111
),
        .k6(32'b10111101111010001101001111100110
),
        .k7(32'b00111101001000100110100001011000
),
        .k8(32'b10111101110010100011011000110011
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
        .k0(32'b10111101110111101101001110011100
),
        .k1(32'b10111100000001110001010101111011
),
        .k2(32'b00111100110100100010010101100010
),
        .k3(32'b00111100110110100100001100110011
),
        .k4(32'b10111101100011010101111101010111
),
        .k5(32'b10111101101101001001110010011001
),
        .k6(32'b00111101101010011000100111000001
),
        .k7(32'b10111100000111110011001001110000
),
        .k8(32'b10111110000001001010110001101110
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