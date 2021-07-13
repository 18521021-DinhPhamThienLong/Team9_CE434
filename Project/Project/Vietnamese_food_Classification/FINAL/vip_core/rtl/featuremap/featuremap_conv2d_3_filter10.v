module featuremap_conv2d_3_filter10
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b10111011100000101010100010101101
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
        .k0(32'b00111101011110000011001000110111
),
        .k1(32'b00111110000000010011101000100010
),
        .k2(32'b00111100111000000100110100100010
),
        .k3(32'b10111101001011110001010100001110
),
        .k4(32'b00111101101010011111011000100110
),
        .k5(32'b00111101110100110111001001000011
),
        .k6(32'b10111100000011011001001111100111
),
        .k7(32'b00111110001000110110010000001010
),
        .k8(32'b10111101101101100110111000100001
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
        .k0(32'b10111110000010111111010000001100
),
        .k1(32'b10111101000011011110011011111000
),
        .k2(32'b10111110000000000101011011110011
),
        .k3(32'b00111101100110000011100011100100
),
        .k4(32'b10111101111100101111101011111111
),
        .k5(32'b10111101111100110110011111110111
),
        .k6(32'b00111101101010111100000100011000
),
        .k7(32'b10111110000001011111011110011101
),
        .k8(32'b10111101101110001111111100100010
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
        .k0(32'b10111100101111111111010001000111
),
        .k1(32'b10111101111110000111110100101000
),
        .k2(32'b00111110000100101011011100001101
),
        .k3(32'b10111101100001101100000110001100
),
        .k4(32'b00111110000011110110110110010111
),
        .k5(32'b00111101101111110110111001100010
),
        .k6(32'b10111011000100110110110010111101
),
        .k7(32'b00111101110011110011001100011100
),
        .k8(32'b10111101001010111001101010010001
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
        .k0(32'b00111101011011001111100010000010
),
        .k1(32'b00111101001110100110000011010101
),
        .k2(32'b10111101111111011100001110000101
),
        .k3(32'b10111100100011110000011111100001
),
        .k4(32'b00111101001000011111101110010111
),
        .k5(32'b00111101110100110110001100010100
),
        .k6(32'b00111101000100111100010010001011
),
        .k7(32'b00111110000001111001100110111010
),
        .k8(32'b10111101011111111100011000000001
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
        .k0(32'b00111101110110110101001010101010
),
        .k1(32'b10111011001011101100010111100111
),
        .k2(32'b10111101111111000111111000010010
),
        .k3(32'b00111101100000111010011100101100
),
        .k4(32'b10111101101000001000000010010111
),
        .k5(32'b00111101111010010011010101101000
),
        .k6(32'b00111101010110110110000110000101
),
        .k7(32'b10111110000001100001001001011101
),
        .k8(32'b10111101000110010111110100111110
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
        .k0(32'b10111101010000011110111001011111
),
        .k1(32'b00111101000001011111110010101001
),
        .k2(32'b00111101011100101110010110010011
),
        .k3(32'b10111101001101001100010100111010
),
        .k4(32'b10111100010101011110010100000001
),
        .k5(32'b00111101110101010011101000100111
),
        .k6(32'b10111110000000011011001010101101
),
        .k7(32'b10111100010110010000101100000110
),
        .k8(32'b00111101100011111000001110001111
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
        .k0(32'b00111101000100011111110111111001
),
        .k1(32'b00111101100111011101101011000100
),
        .k2(32'b10111101001110110101011011111010
),
        .k3(32'b10111101111001010000011011101011
),
        .k4(32'b00111110000000101100010101010001
),
        .k5(32'b10111101100011000001101101101010
),
        .k6(32'b00111101000000110110110010001100
),
        .k7(32'b10111100111101000001111000010011
),
        .k8(32'b00111100011010110100101111101100
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
        .k0(32'b00111100111001101100000001001011
),
        .k1(32'b10111101110100000111000110101100
),
        .k2(32'b00111101100110101000001101101100
),
        .k3(32'b00111101010100010111101011110101
),
        .k4(32'b00111100110101100010110011101011
),
        .k5(32'b10111101101110010010100110111010
),
        .k6(32'b00111101111101011111011101010000
),
        .k7(32'b00111011010010010100111010011101
),
        .k8(32'b10111011001001100100101110011000
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
        .k0(32'b10111101100111101010111101010010
),
        .k1(32'b00111101100001100010110001111111
),
        .k2(32'b10111101101111101111101011010110
),
        .k3(32'b10111101001010101110010110010000
),
        .k4(32'b00111110000011011001010101000000
),
        .k5(32'b00111011011101110101010100101100
),
        .k6(32'b10111100111100110000001011010111
),
        .k7(32'b10111100011011000000000000111011
),
        .k8(32'b10111101110010111110100101000100
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
        .k0(32'b00111101100101110110010010000111
),
        .k1(32'b00111101101100110110010000011000
),
        .k2(32'b10111101100101001100011001100001
),
        .k3(32'b10111101110110100110100110010111
),
        .k4(32'b00111101110110010100001001101010
),
        .k5(32'b00111011100101010000101011010111
),
        .k6(32'b10111110000101001011110010011101
),
        .k7(32'b00111101001001001110110011000011
),
        .k8(32'b10111101001010010000100010111100
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
        .k0(32'b10111100000110111000111101110100
),
        .k1(32'b10111100110011100001111000000000
),
        .k2(32'b10111101111001010001010011001010
),
        .k3(32'b00111100100100001111010010110010
),
        .k4(32'b10111100001000001010011100101111
),
        .k5(32'b10111100111110111001001110001110
),
        .k6(32'b10111101011010001100100111000100
),
        .k7(32'b00111101111010100110010100011111
),
        .k8(32'b10111101011001110100011101110111
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
        .k0(32'b10111101000100100011111111111111
),
        .k1(32'b10111101011101100000011101011010
),
        .k2(32'b10111101001000110101100100100001
),
        .k3(32'b10111110000010010100100100111011
),
        .k4(32'b00111011101000010010011101110010
),
        .k5(32'b10111110000000000010000000010111
),
        .k6(32'b10111101111101011110111001100100
),
        .k7(32'b00111110000010011011101110111001
),
        .k8(32'b00111101010011111101011001001010
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
        .k0(32'b10111101011001101110100000001100
),
        .k1(32'b00111110000100110111100111100001
),
        .k2(32'b00111110000011100000110110110101
),
        .k3(32'b10111101011110010100101100000000
),
        .k4(32'b10111101010010001100010000011111
),
        .k5(32'b00111101011100000101010100011111
),
        .k6(32'b10111101001111110011011100010110
),
        .k7(32'b00111101101010011101101110110011
),
        .k8(32'b10111011011111100110000011100100
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
        .k0(32'b00111110000100100011101001001101
),
        .k1(32'b00111011110100011011111011100100
),
        .k2(32'b10111101011000111110110111111100
),
        .k3(32'b00111101011010000000100001100010
),
        .k4(32'b00111101011110000011000100100101
),
        .k5(32'b00111101111010001100010101010111
),
        .k6(32'b00111101111011101100110111000111
),
        .k7(32'b10111101101110111101001100111101
),
        .k8(32'b10111101111101010110110000110000
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
        .k0(32'b10111101010111000110110000100011
),
        .k1(32'b00111101101110011001000001111110
),
        .k2(32'b10111100110110000101100011101110
),
        .k3(32'b10111101011111110011100000111010
),
        .k4(32'b10111100101010001111100010110100
),
        .k5(32'b00111101101001010101000001001000
),
        .k6(32'b00111100010110100111001010100001
),
        .k7(32'b10111101010111010100011101000011
),
        .k8(32'b10111101111101000100010010011010
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
        .k0(32'b00111101110111111000110110101110
),
        .k1(32'b10111110000010000111101001110110
),
        .k2(32'b10111011100100011011110000101001
),
        .k3(32'b10111110000010101010110100100111
),
        .k4(32'b00111101011100110110011010101001
),
        .k5(32'b10111101111101110111010100110000
),
        .k6(32'b00111101110100001001110010111011
),
        .k7(32'b00111011010010101010110011011010
),
        .k8(32'b10111101011100101100100111011010
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