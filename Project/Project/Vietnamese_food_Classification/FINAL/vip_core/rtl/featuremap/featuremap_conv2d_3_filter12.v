module featuremap_conv2d_3_filter12
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b10111011010010011010010110011110
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
        .k0(32'b00111101101011111110011110100111
),
        .k1(32'b00111101001010110111110010111001
),
        .k2(32'b00111101100001101011111101111010
),
        .k3(32'b00111101101100100001100111100011
),
        .k4(32'b00111110000111011010111101101010
),
        .k5(32'b10111101111000101010101011011101
),
        .k6(32'b00111011000111110100101001001010
),
        .k7(32'b10111101111101101011001101111110
),
        .k8(32'b00111101010010001110010110010010
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
        .k0(32'b00111011100101111111000111010110
),
        .k1(32'b00111101111110001011000110100101
),
        .k2(32'b10111101100010010000111111010100
),
        .k3(32'b10111110000001101101101000000010
),
        .k4(32'b10111101011101001001011111110101
),
        .k5(32'b00111100011010000101111000010000
),
        .k6(32'b10111101111000101110110110011011
),
        .k7(32'b10111101001011100111011110111001
),
        .k8(32'b10111101101111001100010000000001
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
        .k0(32'b00111101001001111001011001000101
),
        .k1(32'b00111100111101001001001100110000
),
        .k2(32'b00111101101000000010000000010110
),
        .k3(32'b00111101101101000111101110010111
),
        .k4(32'b00111101011101011110001010010101
),
        .k5(32'b10111100001101000000101010110100
),
        .k6(32'b00111110000100101001000101100100
),
        .k7(32'b00111100010011111101111001001000
),
        .k8(32'b10111101000010000011110010100010
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
        .k0(32'b00111101001111011001010011101111
),
        .k1(32'b10111100100001001100110011010000
),
        .k2(32'b00111101010010011011101110010001
),
        .k3(32'b00111110000001110011001110000110
),
        .k4(32'b00111101111010001010101110000010
),
        .k5(32'b10111101110010010010001001101101
),
        .k6(32'b10111101100011110001011010011100
),
        .k7(32'b00111101100110001011110010011010
),
        .k8(32'b00111100111100001000110100011111
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
        .k0(32'b00111101010111111010111110010001
),
        .k1(32'b10111110000011100001101110010101
),
        .k2(32'b10111100101110110100000011010111
),
        .k3(32'b10111101001010000001001110000111
),
        .k4(32'b10111101101011000011011001000101
),
        .k5(32'b00111101110100111011101011101010
),
        .k6(32'b10111011101001111110000011111111
),
        .k7(32'b10111101111111001110010010010001
),
        .k8(32'b00111101101001011110100100010111
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
        .k0(32'b00111101111010001000011001000101
),
        .k1(32'b10111101001111101010011001100111
),
        .k2(32'b00111110000011100000000001010111
),
        .k3(32'b00111110000010001111101011010111
),
        .k4(32'b10111100111100110010010010110111
),
        .k5(32'b10111101010110101110101010100100
),
        .k6(32'b10111101011100111001010010111101
),
        .k7(32'b10111101111001101111101101101001
),
        .k8(32'b00111101010011010000110110100110
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
        .k0(32'b10111100111000000011101100101000
),
        .k1(32'b00111101110011101111010100100100
),
        .k2(32'b00111101100100001010010100110111
),
        .k3(32'b10111100010101110101111010000010
),
        .k4(32'b10111101101000110001011011001110
),
        .k5(32'b10111101111100001001101111100001
),
        .k6(32'b10111101101110101011110110000101
),
        .k7(32'b10111110000001111111110010000001
),
        .k8(32'b10111101001010101110001110111010
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
        .k0(32'b10111110000010111101100010000111
),
        .k1(32'b10111101011100001000111001000110
),
        .k2(32'b10111110000011000000101111100101
),
        .k3(32'b00111101100101000110110001100100
),
        .k4(32'b00111100100110011010010100100011
),
        .k5(32'b10111101100100011011101100111110
),
        .k6(32'b00111101111010010000011000110111
),
        .k7(32'b00111101001100101001101000011011
),
        .k8(32'b10111100000000000100111100010100
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
        .k0(32'b00111101011100110110000000111011
),
        .k1(32'b00111101001110100111111011000101
),
        .k2(32'b00111101011011101100100101011110
),
        .k3(32'b00111101110111110010001110011100
),
        .k4(32'b10111101110000011001101100010001
),
        .k5(32'b10111011101011010011000001100100
),
        .k6(32'b00111110000011010000010010011001
),
        .k7(32'b10111101011001010011100110101010
),
        .k8(32'b00111100111100001010101111110110
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
        .k0(32'b10111101000010000111100011010000
),
        .k1(32'b10111101101101100110010110001110
),
        .k2(32'b10111101011110101110000101001101
),
        .k3(32'b10111100101010011001101010001010
),
        .k4(32'b10111110000001100001000100010110
),
        .k5(32'b00111101111010011000010100011100
),
        .k6(32'b00111100100110010000000001111000
),
        .k7(32'b10111101110011010100000101000000
),
        .k8(32'b10111110000000110111000111101000
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
        .k0(32'b10111100001010001011111011110111
),
        .k1(32'b10111101010111100011101001001100
),
        .k2(32'b10111010111111000011001010010001
),
        .k3(32'b00111011101100101001001001111000
),
        .k4(32'b00111100110000101111011100100101
),
        .k5(32'b10111110000100111111110011100110
),
        .k6(32'b10111101010000011111101001101010
),
        .k7(32'b10111101101011110111000101011100
),
        .k8(32'b10111110000110010010110010110001
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
        .k0(32'b10111100110111000000000100110110
),
        .k1(32'b10111011100110000010011011111110
),
        .k2(32'b00111101000101011110010110100111
),
        .k3(32'b10111101110100111101000101000110
),
        .k4(32'b10111101110111001111010101000010
),
        .k5(32'b00111110000000010000010010001110
),
        .k6(32'b10111110000010010000111000110011
),
        .k7(32'b00111101011010000110111010101111
),
        .k8(32'b00111101101000001110101101110100
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
        .k0(32'b00111110000010001010111010111010
),
        .k1(32'b00111101000111001001010110010011
),
        .k2(32'b00111110000010011010001100011110
),
        .k3(32'b10111101000010011110001110100001
),
        .k4(32'b10111100110101110110010010100001
),
        .k5(32'b00111101101100000010011001111100
),
        .k6(32'b00111101100011110101111101100100
),
        .k7(32'b10111101010100000011001110100000
),
        .k8(32'b10111101110100010110000101101011
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
        .k0(32'b10111100011010110100011111000000
),
        .k1(32'b10111101101001100100000101011111
),
        .k2(32'b00111110000000000011001100111101
),
        .k3(32'b10111101001010111000100010010001
),
        .k4(32'b00111110000110000001011001000001
),
        .k5(32'b10111101000010011001110111110111
),
        .k6(32'b10111100010101011000110011001100
),
        .k7(32'b00111100101111101111100110110111
),
        .k8(32'b00111101100111101110100001101001
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
        .k0(32'b00111101111011111010000100101101
),
        .k1(32'b00111110000000001001010111100100
),
        .k2(32'b00111101100000001111000101101100
),
        .k3(32'b00111101011100110111011011010000
),
        .k4(32'b00111101110011000001100101010001
),
        .k5(32'b10111100010110111010100110000111
),
        .k6(32'b10111101000011100011110001000101
),
        .k7(32'b10111101010011001111110110000001
),
        .k8(32'b00111101100001010110111110010010
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
        .k0(32'b10111101110000000111110011001010
),
        .k1(32'b00111101001010110011110000101100
),
        .k2(32'b10111110000011100000000001110100
),
        .k3(32'b00111011011011000000110010010010
),
        .k4(32'b00111101000011110100011110110010
),
        .k5(32'b10111110001010000111010111010110
),
        .k6(32'b00111101110110000111010110110000
),
        .k7(32'b10111101110010011110100100000111
),
        .k8(32'b10111100000110011000111101101000
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