module featuremap_conv2d_3_filter
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b10111011110001101101111110111010
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
        .k0(32'b10111101101110011000110000010000
),
        .k1(32'b00111101110001111100000000101010
),
        .k2(32'b00111101101001110101011011100111
),
        .k3(32'b00111101111011000110100000010011
),
        .k4(32'b00111100100000111010001111010101
),
        .k5(32'b10111101000010100101000110100011
),
        .k6(32'b00111101010111110100100011111100
),
        .k7(32'b00111101111010101111100001101000
),
        .k8(32'b10111101101001101110010111010010
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
        .k0(32'b10111101011011010001110111000111
),
        .k1(32'b10111101000010011110110000110011
),
        .k2(32'b00111101011111101011111001000100
),
        .k3(32'b10111101100101001000001010101111
),
        .k4(32'b10111110000000111100001010010011
),
        .k5(32'b00111101010111110100001000010100
),
        .k6(32'b10111100100101011110100011001011
),
        .k7(32'b00111101000011110011001110001011
),
        .k8(32'b10111101001110000100000100111001
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
        .k0(32'b10111101100100100000100110111000
),
        .k1(32'b00111101000100100101110101100111
),
        .k2(32'b10111101001001101011010100010010
),
        .k3(32'b10111101100011011110011101111100
),
        .k4(32'b10111100010011001101000101010000
),
        .k5(32'b00111100100100111010111000000010
),
        .k6(32'b00111100101101111011101111101100
),
        .k7(32'b00111101011111101110111000000110
),
        .k8(32'b10111101010010000001011111011110
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
        .k0(32'b10111011001110011101110110001010
),
        .k1(32'b10111100111111110010111001100101
),
        .k2(32'b10111101111000110110101000001001
),
        .k3(32'b00111110000011000100000011101100
),
        .k4(32'b00111101000111111111101110001010
),
        .k5(32'b10111100001100111011101001011000
),
        .k6(32'b00111100001101100001100101001111
),
        .k7(32'b10111101011011101000011011111111
),
        .k8(32'b00111110000000110101101100111010
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
        .k0(32'b00111101110010111010111001111001
),
        .k1(32'b00111100100101001111100010110101
),
        .k2(32'b10111101110000100100100010000000
),
        .k3(32'b10111101110001110010101000011111
),
        .k4(32'b10111101100000010001111110101110
),
        .k5(32'b10111101110100111100111000110001
),
        .k6(32'b10111101000000011101010001000110
),
        .k7(32'b10111011001000001011101110111101
),
        .k8(32'b10111101111100001100011101110100
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
        .k0(32'b10111101001001010111000000100110
),
        .k1(32'b00111110000000110000110110000010
),
        .k2(32'b10111101111111010111000110001111
),
        .k3(32'b10111101111001101010001101000100
),
        .k4(32'b00111101100101110100010010010111
),
        .k5(32'b10111011100011111001011101100010
),
        .k6(32'b10111100100110011001011100010100
),
        .k7(32'b00111101110110011010100110000110
),
        .k8(32'b00111101001101100000110000001110
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
        .k0(32'b10111110000000111001010011110011
),
        .k1(32'b00111101001110110001011001000010
),
        .k2(32'b00111110000010000010001111110111
),
        .k3(32'b10111110000000101100001000100110
),
        .k4(32'b00111100010011111111011000101100
),
        .k5(32'b10111101100001110111111100001011
),
        .k6(32'b00111101111100100001010011001100
),
        .k7(32'b00111101000110001010000110000000
),
        .k8(32'b00111101110111110100111111000011
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
        .k0(32'b00111101111001110100101111111000
),
        .k1(32'b00111101100100011100001010001100
),
        .k2(32'b10111101101100101100000101101001
),
        .k3(32'b00111101100110010000100101111011
),
        .k4(32'b10111101011111011110001101001011
),
        .k5(32'b00111101111000011101001101101001
),
        .k6(32'b10111101111010010000110010010111
),
        .k7(32'b10111101110101100100011111101001
),
        .k8(32'b10111101110001000000101001000100
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
        .k0(32'b00111101101011111111011010000001
),
        .k1(32'b00111101100000100000010100000101
),
        .k2(32'b10111101111000101010001001110111
),
        .k3(32'b10111100011011010100010110001101
),
        .k4(32'b00111100101101101001010111101101
),
        .k5(32'b00111101101110001100000011011110
),
        .k6(32'b10111101111101010011011110110110
),
        .k7(32'b00111100010000000001101110011010
),
        .k8(32'b10111110000110110110001000010000
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
        .k0(32'b00111101110110101001000010010111
),
        .k1(32'b00111110000100011110111111000101
),
        .k2(32'b10111110000100011011010000111010
),
        .k3(32'b10111101110000100111100011100111
),
        .k4(32'b00111101100110110011001001100000
),
        .k5(32'b10111101110010101111010000000010
),
        .k6(32'b10111101101010110001001000011000
),
        .k7(32'b10111101100000110110111111100101
),
        .k8(32'b10111101111010001010011011111100
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
        .k0(32'b10111101011100111100001011010001
),
        .k1(32'b10111101100110010101000110101101
),
        .k2(32'b10111101000111100111110110111110
),
        .k3(32'b10111101101001101001100101011011
),
        .k4(32'b10111101101110011110000111000110
),
        .k5(32'b00111101110101101001101010101000
),
        .k6(32'b10111101000000011000001101101111
),
        .k7(32'b00111110000000010100011110011010
),
        .k8(32'b00111101100101011000000001001111
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
        .k0(32'b10111101000100100100011100001100
),
        .k1(32'b00111101110110010010011011101010
),
        .k2(32'b00111100011010111010100010011011
),
        .k3(32'b10111100101011100011001011000111
),
        .k4(32'b00111101101001010101100010010001
),
        .k5(32'b00111100010100000011000001110000
),
        .k6(32'b10111101101111000010010001011010
),
        .k7(32'b10111101111000000001100110011010
),
        .k8(32'b00111101111101000001000111110000
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
        .k0(32'b10111101110111011000110011100001
),
        .k1(32'b00111001111011110010010110011100
),
        .k2(32'b10111101000011110001000011000000
),
        .k3(32'b10111101110000100111111000010010
),
        .k4(32'b00111101110000011000111010111010
),
        .k5(32'b10111110000001110010000110110110
),
        .k6(32'b10111100001000000010010011100110
),
        .k7(32'b00111110000100010101010010000111
),
        .k8(32'b10111101000101111011011100101111
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
        .k0(32'b10111101000110011010010110111011
),
        .k1(32'b10111110000011001010011010111101
),
        .k2(32'b10111100100010101000111011001001
),
        .k3(32'b10111110000100110011011001001010
),
        .k4(32'b10111101001011010010110000101101
),
        .k5(32'b10111101111110011001111111111110
),
        .k6(32'b10111100110101111010000001001111
),
        .k7(32'b10111110000010011001110111000101
),
        .k8(32'b00111110000001001011001000000000
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
        .k0(32'b10111101110101000110011001001010
),
        .k1(32'b10111101110011011000101100100010
),
        .k2(32'b00111101100100110001110110000000
),
        .k3(32'b10111101001000111111011111000011
),
        .k4(32'b10111100101110110001011100011011
),
        .k5(32'b10111101000100101010010001101101
),
        .k6(32'b10111101101100010000001110111111
),
        .k7(32'b10111100101010000101111101011010
),
        .k8(32'b10111101001001000110001010010100
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
        .k0(32'b10111101111010101010010111011100
),
        .k1(32'b00111101011010000110001011001101
),
        .k2(32'b10111101101101010111111001100101
),
        .k3(32'b00111101111101110110001001001111
),
        .k4(32'b10111100110001010100000011000000
),
        .k5(32'b10111101001001110000000111101110
),
        .k6(32'b10111101110100110001010110110001
),
        .k7(32'b00111101111000101100010110111001
),
        .k8(32'b10111100000010010010010000011101
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