module featuremap_conv2d_4_filter5
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b00111100000010001011101111111100
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
        .k0(32'b00111101011111000101010110111111
),
        .k1(32'b10111110000000000010001111101101
),
        .k2(32'b00111110000010000111101011110110
),
        .k3(32'b00111100111100010011010001011110
),
        .k4(32'b00111101001100011111001110101111
),
        .k5(32'b00111100011110100101100110101010
),
        .k6(32'b00111110000110111001001101110000
),
        .k7(32'b10111101100001011001010011000110
),
        .k8(32'b00111101101000101101011000010101
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
        .k0(32'b10111101000000011000011010101101
),
        .k1(32'b00111101011110110011001010011000
),
        .k2(32'b00111101110100010010011001111111
),
        .k3(32'b00111101110101000101101010011000
),
        .k4(32'b00111101110110101000110100001011
),
        .k5(32'b00111110000111101011011011001101
),
        .k6(32'b10111101100000010011101010010001
),
        .k7(32'b10111110000001000100010100001100
),
        .k8(32'b10111101001111100100111111101110
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
        .k0(32'b10111101011001010000101110111110
),
        .k1(32'b00111101011101001000010010110010
),
        .k2(32'b00111100100111000010000000101110
),
        .k3(32'b00111100111100111111100101010100
),
        .k4(32'b00111110000101000110010100100001
),
        .k5(32'b10111101101010011011101010100101
),
        .k6(32'b10111100000110100100011000110101
),
        .k7(32'b00111101100001001100111011001100
),
        .k8(32'b00111101000001001101010010101111
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
        .k0(32'b00111101101101010010001101111110
),
        .k1(32'b00110110100111100000010100010101
),
        .k2(32'b00111100101011101101100001001100
),
        .k3(32'b10111100000101001101010010000111
),
        .k4(32'b00111011010111100101011010100110
),
        .k5(32'b00111101000011001001111011111010
),
        .k6(32'b00111101100111011111001100101110
),
        .k7(32'b00111101111101000011100100011011
),
        .k8(32'b10111100111001010001110010001101
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
        .k0(32'b00111101101010100011010010100001
),
        .k1(32'b00111101100111011000000000010100
),
        .k2(32'b00111110000010001011111000000010
),
        .k3(32'b10111101101000111000100000011111
),
        .k4(32'b00111101010100010010011011101010
),
        .k5(32'b10111101011010010011001110010011
),
        .k6(32'b00111101111000000101001010111100
),
        .k7(32'b10111100110000011001101101010101
),
        .k8(32'b00111100110111011001110011101111
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
        .k0(32'b10111101100011100110110011110110
),
        .k1(32'b10111101100000010110100011001101
),
        .k2(32'b00111011100110001101100101100001
),
        .k3(32'b10111011111110100000111000100101
),
        .k4(32'b00111101110100010000100100010000
),
        .k5(32'b00111101011100110000111011110001
),
        .k6(32'b00111101101110110000010101101000
),
        .k7(32'b00111100000010101101010101110010
),
        .k8(32'b10111101000001011101010011100010
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
        .k0(32'b10111101101111111011110011000000
),
        .k1(32'b00111101000001111000110110110011
),
        .k2(32'b10111101001100010111111110001010
),
        .k3(32'b00111101100101011011001011010010
),
        .k4(32'b10111101110001001110000100000110
),
        .k5(32'b10111101001111111110101000000101
),
        .k6(32'b00111101010110000101010011100011
),
        .k7(32'b00111101101011100000010010011001
),
        .k8(32'b10111101100101110000011101011001
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
        .k0(32'b00111101110011011101011000110010
),
        .k1(32'b10111110000001111100101101001110
),
        .k2(32'b00111100000010000011110101010101
),
        .k3(32'b10111101111010101010110001010000
),
        .k4(32'b00111110000001010001000000000010
),
        .k5(32'b10111101000011111110111000011110
),
        .k6(32'b00111011111110111010010001001000
),
        .k7(32'b10111110000010101101001110111101
),
        .k8(32'b00111110000101101000010000111001
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
        .k0(32'b10111101110010010111011010100110
),
        .k1(32'b00111100001001100100111001001111
),
        .k2(32'b10111100101000101011111101110001
),
        .k3(32'b10111101100001000011000000000001
),
        .k4(32'b10111010001110111101101100100000
),
        .k5(32'b10111101000010001111011010001110
),
        .k6(32'b00111100111000001010000110111111
),
        .k7(32'b10111101101100000011000111001011
),
        .k8(32'b10111110000010110010001011100101
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
        .k0(32'b00111101100011110000001101010110
),
        .k1(32'b10111101100111011001010100111110
),
        .k2(32'b10111100111000110111001110010100
),
        .k3(32'b00111101010111111100110011001111
),
        .k4(32'b00111101110001110110100010001110
),
        .k5(32'b00111101101101010001110100101101
),
        .k6(32'b10111101000000110000110011101110
),
        .k7(32'b00111101101111111000111110000001
),
        .k8(32'b00111101000110000011100111111101
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
        .k0(32'b10111101100011110010010011011001
),
        .k1(32'b00111100101000010011011001010111
),
        .k2(32'b00111101110111001011010010000010
),
        .k3(32'b00111101000010100010111100111111
),
        .k4(32'b10111010110001001010011101110000
),
        .k5(32'b10111110001000010010111110010001
),
        .k6(32'b00111101101100001110110101100010
),
        .k7(32'b10111110000011100100111111001100
),
        .k8(32'b10111101111111110101001010010011
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
        .k0(32'b00111100101011100101001011110001
),
        .k1(32'b00111101101000111000000110010111
),
        .k2(32'b00111100110111001010101010010100
),
        .k3(32'b00111101111001000001111111011111
),
        .k4(32'b10111100001110010110010101010100
),
        .k5(32'b00111101101011110011111101011111
),
        .k6(32'b10111100011101111101101111010001
),
        .k7(32'b00111101110110111110001010010100
),
        .k8(32'b10111110000100100110011110111001
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
        .k0(32'b10111100001100111110101001000001
),
        .k1(32'b10111100110010101111110110110100
),
        .k2(32'b10111101110100111111110001000000
),
        .k3(32'b00111100100111111001001110000000
),
        .k4(32'b10111101011000011100100001111111
),
        .k5(32'b10111101000110011101101010111101
),
        .k6(32'b10111110000011011100001011001101
),
        .k7(32'b10111101100110110001110100000010
),
        .k8(32'b00111100101010000101101001100000
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
        .k0(32'b10111100001110010101101000101101
),
        .k1(32'b10111101110110100100010000110111
),
        .k2(32'b10111100100110001010110001001100
),
        .k3(32'b00111101000010100111001100111010
),
        .k4(32'b00111101101000010000010001011110
),
        .k5(32'b00111101101000101100010100111001
),
        .k6(32'b00111101001101011001011010111111
),
        .k7(32'b00111101100110011100011110111101
),
        .k8(32'b10111101110001101011100001110011
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
        .k0(32'b10111101111101110100111000110001
),
        .k1(32'b10111100101001101001011110110011
),
        .k2(32'b10111110000110000110001110111000
),
        .k3(32'b00111101000010000011010111000000
),
        .k4(32'b10111010100111011111010111100011
),
        .k5(32'b00111101001000111001000100100101
),
        .k6(32'b10111101100101101000011010110100
),
        .k7(32'b10111101010000001010001011110110
),
        .k8(32'b10111101011100010010010101101010
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
        .k0(32'b00111101101101000101110111010111
),
        .k1(32'b10111110000011001100101100110100
),
        .k2(32'b00111101101111001100110111011110
),
        .k3(32'b00111110000100011010000000100011
),
        .k4(32'b00111101100101111001111110010011
),
        .k5(32'b10111101110000010111010000110111
),
        .k6(32'b00111101000011101001000011111001
),
        .k7(32'b10111100110011100101000111110000
),
        .k8(32'b10111101111100100110001011101001
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