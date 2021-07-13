module featuremap_conv2d_3_filter1
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b00111011111001011001011001100010
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
        .k0(32'b10111101011010101110000100011111
),
        .k1(32'b10111101101011100111001000010011
),
        .k2(32'b10111101001011000000101011101111
),
        .k3(32'b00111101001010110101100010011011
),
        .k4(32'b10111101100100101011110100111101
),
        .k5(32'b00111101101000001110101010000110
),
        .k6(32'b10111101111010110010000011010010
),
        .k7(32'b00111100111111100000111100110110
),
        .k8(32'b10111101000100111011011100001010
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
        .k0(32'b00111011001100001111011100100111
),
        .k1(32'b10111101011000000000101010111100
),
        .k2(32'b00111110000110111001110000111100
),
        .k3(32'b10111100101001000111110110001110
),
        .k4(32'b00111101111111010100000011101101
),
        .k5(32'b10111101100011100011111101111111
),
        .k6(32'b00111101011111100011000011111010
),
        .k7(32'b00111101110101000010001011110011
),
        .k8(32'b00111011011111111111101001011001
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
        .k0(32'b00111100001111010101101011001100
),
        .k1(32'b10111100110101110111011011011111
),
        .k2(32'b10111101001011011010110000101111
),
        .k3(32'b10111100011111111000010110001010
),
        .k4(32'b10111110000011001101110100001100
),
        .k5(32'b10111110000100010110111011000011
),
        .k6(32'b00111100101001100010110101000001
),
        .k7(32'b10111100011101011100011101011001
),
        .k8(32'b10111101111010100010011100101010
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
        .k0(32'b10111101101110000010011100000111
),
        .k1(32'b00111101000100000111101111110100
),
        .k2(32'b00111101110111011000011011011111
),
        .k3(32'b00111101111111101100000000000110
),
        .k4(32'b10111101010011100001010111011000
),
        .k5(32'b00111101111110000000010010100100
),
        .k6(32'b00111110000001110011101001101011
),
        .k7(32'b10111101110000100101011011011010
),
        .k8(32'b10111101111000111110010110001111
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
        .k0(32'b00111100101010000111111111010101
),
        .k1(32'b00111101110000101010011100000101
),
        .k2(32'b10111101100000011010010110110100
),
        .k3(32'b00111100101101111010010110101111
),
        .k4(32'b10111101100101111010111010110011
),
        .k5(32'b10111011100010111100111110010110
),
        .k6(32'b10111011001100000101001110101000
),
        .k7(32'b00111101100111101000110110110000
),
        .k8(32'b00111101101001010110010110010010
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
        .k0(32'b10111101011110110001111101111011
),
        .k1(32'b00111101110101011001000010011110
),
        .k2(32'b10111101000101110010110101111011
),
        .k3(32'b10111101100101110001011111011010
),
        .k4(32'b00111101100011000011010100101001
),
        .k5(32'b00111101001100110001110001010001
),
        .k6(32'b10111101110011010101000101101111
),
        .k7(32'b00111101101101001001000011011001
),
        .k8(32'b10111100000010110001101011100101
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
        .k0(32'b10111101000100101100000111000111
),
        .k1(32'b00111101101001100000010100110011
),
        .k2(32'b00111101100110000000011000101101
),
        .k3(32'b00111100110010001001000110100100
),
        .k4(32'b10111101011111101010101011000111
),
        .k5(32'b10111101100000011100010010000111
),
        .k6(32'b00111101110100100100000110011011
),
        .k7(32'b00111101010100000011101100010000
),
        .k8(32'b00111101100001011000110111010110
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
        .k0(32'b10111101101010010000101011110001
),
        .k1(32'b00111101001100111010010110001100
),
        .k2(32'b10111101110101001000001100110000
),
        .k3(32'b00111101010010101010001110001101
),
        .k4(32'b10111101110000011110000001011000
),
        .k5(32'b10111101110000101111100101001010
),
        .k6(32'b10111100100011001100000011011110
),
        .k7(32'b10111100111110101111001000010010
),
        .k8(32'b00111101110000100011000100110001
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
        .k0(32'b00111011001100110111110111000110
),
        .k1(32'b10111001100000101110011101011100
),
        .k2(32'b10111100101001111010111101111101
),
        .k3(32'b10111101111011000111111001010001
),
        .k4(32'b00111101110111101100001001101011
),
        .k5(32'b00111101101111100010010011001010
),
        .k6(32'b00111101111010000000100101110011
),
        .k7(32'b00111101010010111001101110101110
),
        .k8(32'b00111100100011000110010111100111
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
        .k0(32'b10111110000010001110100010001101
),
        .k1(32'b10111101111010010001110101001001
),
        .k2(32'b10111101101001010111001000101011
),
        .k3(32'b00111100110111011101100000010100
),
        .k4(32'b00111010110001010110111000011001
),
        .k5(32'b10111011010111100111011011011010
),
        .k6(32'b10111101001000100110011000001000
),
        .k7(32'b10111101101110000100100110110011
),
        .k8(32'b10111101101010011000011110011101
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
        .k0(32'b10111101101100100101000010001100
),
        .k1(32'b10111101011011111011110111100000
),
        .k2(32'b00111100001100000011111011100001
),
        .k3(32'b00111110000100001110100010100000
),
        .k4(32'b00111110000010110011111111111000
),
        .k5(32'b00111101111110000111100010010100
),
        .k6(32'b10111101101001100100101001100110
),
        .k7(32'b00111010000110110111010100000111
),
        .k8(32'b00111101011011110001000001010010
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
        .k0(32'b10111011011011110010111110110011
),
        .k1(32'b10111101011111101010101111100000
),
        .k2(32'b00111011101101010001000001111111
),
        .k3(32'b00111101101011001010110100010101
),
        .k4(32'b00111101111110011111001010110000
),
        .k5(32'b00111101111110111110000110000010
),
        .k6(32'b00111100101010001000111100111001
),
        .k7(32'b00111101110111011101001011001000
),
        .k8(32'b00111101100000010101101010110100
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
        .k0(32'b10111101101111001000100110011100
),
        .k1(32'b00111101110111000001001011100100
),
        .k2(32'b10111101000101001110010011101001
),
        .k3(32'b10111101101011101111111011100000
),
        .k4(32'b10111101000001000011100100110111
),
        .k5(32'b10111101111111000111110111011011
),
        .k6(32'b00111100111100000110010111110100
),
        .k7(32'b00111101011110011110100000001001
),
        .k8(32'b00111101000100001111000010110011
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
        .k0(32'b10111101100010111000010110111010
),
        .k1(32'b10111101110010000100000001000111
),
        .k2(32'b00111101101010010111010110011100
),
        .k3(32'b10111101010010011000111010010001
),
        .k4(32'b00111110000011101101100100001110
),
        .k5(32'b10111100110111101101111010100000
),
        .k6(32'b00111100110011001000101001001010
),
        .k7(32'b10111110000011110001011010000110
),
        .k8(32'b10111101101001000001110110010010
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
        .k0(32'b00111101100001100100010100000110
),
        .k1(32'b00111100111101110001111110000100
),
        .k2(32'b10111110000010001111001111001110
),
        .k3(32'b00111101010100000001100111101000
),
        .k4(32'b10111101101100101110111010010110
),
        .k5(32'b10111101101110101000011110100011
),
        .k6(32'b10111101001011001010001100010011
),
        .k7(32'b10111101010100100101010011011001
),
        .k8(32'b00111101111110010111011001111101
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
        .k0(32'b00111101101101100001011001011000
),
        .k1(32'b00111110001001101100100000010010
),
        .k2(32'b00111101001111011010001000010010
),
        .k3(32'b00111101110110001011110010010100
),
        .k4(32'b00111011101000100100100110101011
),
        .k5(32'b10111101100000011101110101010111
),
        .k6(32'b00111101011100011111011001011110
),
        .k7(32'b00111101010101110000011011101011
),
        .k8(32'b00111100001001100001000001110010
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