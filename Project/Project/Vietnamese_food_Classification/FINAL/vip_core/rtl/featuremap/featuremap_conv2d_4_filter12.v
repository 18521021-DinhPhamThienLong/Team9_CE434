module featuremap_conv2d_4_filter12
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b10111010011010111000111001000100
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
        .k0(32'b10111101100001010011001001110000
),
        .k1(32'b10111101010101110110111001100011
),
        .k2(32'b10111110000010010001010011100011
),
        .k3(32'b00111101010001100101100100111010
),
        .k4(32'b10111101110110010101111100100011
),
        .k5(32'b00111100001111100001011001001101
),
        .k6(32'b10111110000001001111001101000110
),
        .k7(32'b10111100101011010100000111000001
),
        .k8(32'b10111100111011100100001001000101
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
        .k0(32'b10111101101111010010101010100111
),
        .k1(32'b00111101101111001101111110010111
),
        .k2(32'b10111100001011000101010101000010
),
        .k3(32'b10111101110111110100001001101010
),
        .k4(32'b10111100111000111000010111000000
),
        .k5(32'b00111101100111000100010111010100
),
        .k6(32'b10111101011111001010101000100100
),
        .k7(32'b00111011001011101001011011000101
),
        .k8(32'b00111101001100100011100010011100
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
        .k0(32'b10111101101000110111010010010100
),
        .k1(32'b00111110000001111110100001111101
),
        .k2(32'b10111100001010000111001010110011
),
        .k3(32'b00111011111111111001001000100001
),
        .k4(32'b00111101100110111101111010011101
),
        .k5(32'b00111110000110011111110010001110
),
        .k6(32'b10111101011000101110010001011000
),
        .k7(32'b10111110000000001010010100111011
),
        .k8(32'b10111100000001111001000111000101
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
        .k0(32'b00111101101111010111110100101010
),
        .k1(32'b00111101110011100011010001111010
),
        .k2(32'b10111101110101100111111111000000
),
        .k3(32'b00111101100010001110010110100101
),
        .k4(32'b10111101101100001001001010001100
),
        .k5(32'b00111101001111100101011110110001
),
        .k6(32'b10111101110011101111100111100100
),
        .k7(32'b10111011101100111001001010011110
),
        .k8(32'b10111101101110010011111100001000
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
        .k0(32'b00111101001010101010110101001100
),
        .k1(32'b00111100100110011101011100011110
),
        .k2(32'b10111100110011101111000111011010
),
        .k3(32'b10111101000010100110111010110100
),
        .k4(32'b00111100111111001000111111011101
),
        .k5(32'b00111101110100001101011100100001
),
        .k6(32'b10111101111011100100010101010000
),
        .k7(32'b10111100110000100111010001010010
),
        .k8(32'b10111100001000010001001000100110
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
        .k0(32'b10111110000010001101101110001100
),
        .k1(32'b10111110000000111001010100110001
),
        .k2(32'b10111101011011100001001111111110
),
        .k3(32'b10111001001010110011001001101110
),
        .k4(32'b10111110000001100010010010110111
),
        .k5(32'b10111101010001010011100010011100
),
        .k6(32'b10111110000000111000111101000110
),
        .k7(32'b00111101110000001101100000010101
),
        .k8(32'b00111100101000110110111010001011
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
        .k0(32'b10111101110000111101001010100001
),
        .k1(32'b00111101100010110011001111101011
),
        .k2(32'b10111101100000011100011100110110
),
        .k3(32'b10111100111111011000001101011010
),
        .k4(32'b10111101111110010001101110101101
),
        .k5(32'b10111101100010110010011100011101
),
        .k6(32'b10111110000000101000011100110101
),
        .k7(32'b00111101101101111111111001011111
),
        .k8(32'b00111101001000001011001010000011
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
        .k0(32'b00111101100111101111110100101111
),
        .k1(32'b10111101100100100011110001010011
),
        .k2(32'b10111101000000110000000110101100
),
        .k3(32'b00111101110010001010010101011111
),
        .k4(32'b00111101001011110101111011100110
),
        .k5(32'b00111101100000000001100000100101
),
        .k6(32'b10111101101000100110001110110110
),
        .k7(32'b00111101000000100100101001001101
),
        .k8(32'b00111100111000100101000000100110
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
        .k0(32'b10111101001111011000101000110011
),
        .k1(32'b00111100101001000010100111101110
),
        .k2(32'b10111101001100001111011011101011
),
        .k3(32'b10111101010010000100001111110110
),
        .k4(32'b10111110000010010100000001111000
),
        .k5(32'b00111101110111101101101010001010
),
        .k6(32'b10111101111101101001001110001110
),
        .k7(32'b00111101110100110111110110101011
),
        .k8(32'b10111100100101011110110011011011
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
        .k0(32'b10111101110010101000001011111001
),
        .k1(32'b00111110001000011000001110110100
),
        .k2(32'b10111101110010111101110101001110
),
        .k3(32'b10111101001001011100101011111001
),
        .k4(32'b00111101110000110111100110000001
),
        .k5(32'b00111101100110000001111111010010
),
        .k6(32'b00111101101011110001011000011111
),
        .k7(32'b00111101111010000110011111111000
),
        .k8(32'b00111101110011000100010011001000
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
        .k0(32'b10111101000001111010001111011000
),
        .k1(32'b00111101100100001000000110000010
),
        .k2(32'b10111100110001101111011101000011
),
        .k3(32'b10111101111010111010011101101111
),
        .k4(32'b10111101011000110101011001011101
),
        .k5(32'b00111101010001000001011000111010
),
        .k6(32'b00111101101000100101001011001001
),
        .k7(32'b00111101011111010010101110101101
),
        .k8(32'b00111101001010001011001110111100
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
        .k0(32'b10111100001111001111000101111101
),
        .k1(32'b00111101110010000110100011000110
),
        .k2(32'b00111101100011101011011010001110
),
        .k3(32'b10111101101100010010011010100010
),
        .k4(32'b10111101101110010001100010111111
),
        .k5(32'b10111100111101011000011101011000
),
        .k6(32'b10111100111101100101001100100001
),
        .k7(32'b00111101111001000001000010100000
),
        .k8(32'b10111100110001101111101110111000
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
        .k0(32'b00111110000100100010110100110010
),
        .k1(32'b00111110000000010010100000011101
),
        .k2(32'b10111101001101110010000100011110
),
        .k3(32'b10111101110011001111111011000010
),
        .k4(32'b00111100100011001101100011010111
),
        .k5(32'b00111101110111111001000101010010
),
        .k6(32'b10111110000000100111111111110000
),
        .k7(32'b00111101110011000010011110111111
),
        .k8(32'b00111101111100101110000110101111
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
        .k0(32'b00111101100110101011111011100010
),
        .k1(32'b10111101111011010000111010001010
),
        .k2(32'b00111100111101110010001000001011
),
        .k3(32'b10111100010111101100011100000001
),
        .k4(32'b00111101111101100111011101100111
),
        .k5(32'b00111100111110110011010100001110
),
        .k6(32'b10111101101100101001000110100111
),
        .k7(32'b00111101100100111000000000001110
),
        .k8(32'b00111011111101010110100100000100
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
        .k0(32'b00111100010100101000010001101110
),
        .k1(32'b10111100100000101101001101101011
),
        .k2(32'b10111101110010011000111101111010
),
        .k3(32'b00111101110011001011100001100001
),
        .k4(32'b00111110001001101101101100010011
),
        .k5(32'b00111100110010001000011111001011
),
        .k6(32'b00111101010110011011010101011011
),
        .k7(32'b00111101100111110110100011001101
),
        .k8(32'b00111101101110111010111101110001
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
        .k0(32'b10111101101001001111001111011000
),
        .k1(32'b00111101110001011010011011000100
),
        .k2(32'b00111110000000001110110100101101
),
        .k3(32'b00111100010000110111101000101011
),
        .k4(32'b00111101101101011000101110011101
),
        .k5(32'b00111100110010110110000011101010
),
        .k6(32'b00111101001101101101001010111011
),
        .k7(32'b00111110000010001001101000000000
),
        .k8(32'b00111100110010100111001010101101
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