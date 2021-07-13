////////////////////////////////////////// FILTER 0 //////////////////////////////////////////
module featuremap_conv2d_2_filter0
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b00111100010110101100000111010101
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
    
    input  data_fifo_empty0,
    input  data_fifo_empty1,
    input  data_fifo_empty2,
    input  data_fifo_empty3,
    input  data_fifo_empty4,
    input  data_fifo_empty5,
    input  data_fifo_empty6,
    input  data_fifo_empty7,

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

    wire valid_in_adder;

conv2D #(
        .DATA_WIDTH(DATA_WIDTH),
        .WIDTH(WIDTH+2),
        .k0(32'b00111101101111110000001000010111
),
        .k1(32'b00111101110110111001110011101010
),
        .k2(32'b10111100111011000101010000111001
),
        .k3(32'b00111101111010100010111001001110
),
        .k4(32'b00111110000010011100100100011111
),
        .k5(32'b10111101100001111011000001110000
),
        .k6(32'b00111101111001010010100001110111
),
        .k7(32'b00111101000010111011000111111000
),
        .k8(32'b10111101111110110110100011000101
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
        .k0(32'b10111101101001100011110000111111
),
        .k1(32'b00111101100101100100110111101101
),
        .k2(32'b10111110000001101000000011111001
),
        .k3(32'b00111100101011001110101001001110
),
        .k4(32'b00111100101101010001110011110010
),
        .k5(32'b10111101110001110111110011011001
),
        .k6(32'b10111110000011101100010011011010
),
        .k7(32'b10111101101000111111110100001111
),
        .k8(32'b00111101011111000001100011000001
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
        .k0(32'b10111101100101101001011100110100
),
        .k1(32'b10111101011110000110111111001010
),
        .k2(32'b00111101100111110000110111010001
),
        .k3(32'b10111101100010100010000111001111
),
        .k4(32'b10111110000001000110110110100011
),
        .k5(32'b00111110001100001001011011110100
),
        .k6(32'b10111110000111101111011010001011
),
        .k7(32'b00111100000100110100000011101000
),
        .k8(32'b10111110000010110000000101100110
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
        .k0(32'b00111101010111010101001000110101
),
        .k1(32'b00111101001000001110101011010001
),
        .k2(32'b10111101111100010110101010111101
),
        .k3(32'b00111110000001111010101000010001
),
        .k4(32'b00111101000100000011101100110011
),
        .k5(32'b10111101101000100011101100000001
),
        .k6(32'b00111101001111000000111100111010
),
        .k7(32'b00111101110110110100111110001111
),
        .k8(32'b00111101101000101010111000000000
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
        .k0(32'b10111110000011101100111010110001
),
        .k1(32'b10111101100111101101000011000010
),
        .k2(32'b00111110001110000110111100111100
),
        .k3(32'b10111110000010110010011101101100
),
        .k4(32'b00111110000010001000101011011011
),
        .k5(32'b10111101000100000111000100110010
),
        .k6(32'b10111110000101000010000001101011
),
        .k7(32'b00111101101001010000110111000001
),
        .k8(32'b10111100111110100101010000101101
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
        .k0(32'b00111101011111101101110111101010
),
        .k1(32'b00111110000001101001111111011001
),
        .k2(32'b00111101110110001011000001100000
),
        .k3(32'b10111101111110111101011111000001
),
        .k4(32'b00111101101001110001010011110101
),
        .k5(32'b00111100101001010100110100011110
),
        .k6(32'b00111101111001000100111110010111
),
        .k7(32'b10111101111101000011011110000100
),
        .k8(32'b00111011110100010011100001110110
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
        .k0(32'b00111101111010011000000111111010
),
        .k1(32'b00111101010000000100101101110100
),
        .k2(32'b00111110000000000100101011010000
),
        .k3(32'b00111100100101000000101100110111
),
        .k4(32'b10111101010111111011110110000111
),
        .k5(32'b10111101010110010011110010110100
),
        .k6(32'b10111101111011110000011100000101
),
        .k7(32'b00111101101101100000011010000010
),
        .k8(32'b00111101010101101010010011100111
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
        .k0(32'b10111101101011000101111110111110
),
        .k1(32'b00111110001010010010111000000110
),
        .k2(32'b10111101001100111001011111001110
),
        .k3(32'b10111101101101011011101011110010
),
        .k4(32'b10111100101000011110100100001000
),
        .k5(32'b10111100101110110011010001010011
),
        .k6(32'b10111010110101011001000111001001
),
        .k7(32'b10111110000100100101100001011110
),
        .k8(32'b10111110000001010110101101100100
)  
)conv2D_inst_7(
        .data_in(data_in_channel7),
        .clk(clk), .rst(rst), .valid_in(~data_fifo_empty7),
        .valid_out(valid_in_adder), .rdreq(rdreq),
        .data_out(data_out_conv2d_channel7)
);

add_bias_8_channel #(
        .DATA_WIDTH(DATA_WIDTH),
        .bias(bias)
)add_bias_8_channel_inst(
        .data_out_conv2d_channel0(data_out_conv2d_channel0),
        .data_out_conv2d_channel1(data_out_conv2d_channel1),
        .data_out_conv2d_channel2(data_out_conv2d_channel2),
        .data_out_conv2d_channel3(data_out_conv2d_channel3),
        .data_out_conv2d_channel4(data_out_conv2d_channel4),
        .data_out_conv2d_channel5(data_out_conv2d_channel5),
        .data_out_conv2d_channel6(data_out_conv2d_channel6),
        .data_out_conv2d_channel7(data_out_conv2d_channel7),
        .valid_in_adder(valid_in_adder), .clk(clk), .rst(rst),
        .data_out(data_out),
        .valid_out(valid_out)
);

endmodule
////////////////////////////////////////// FILTER 1 //////////////////////////////////////////
module featuremap_conv2d_2_filter1
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b00111010101111111111101010001000
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
    
    input  data_fifo_empty0,
    input  data_fifo_empty1,
    input  data_fifo_empty2,
    input  data_fifo_empty3,
    input  data_fifo_empty4,
    input  data_fifo_empty5,
    input  data_fifo_empty6,
    input  data_fifo_empty7,

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

    wire valid_in_adder;

conv2D #(
        .DATA_WIDTH(DATA_WIDTH),
        .WIDTH(WIDTH+2),
        .k0(32'b10111110000000011011100111101100
),
        .k1(32'b10111100111010000100110111001110
),
        .k2(32'b10111101110000010101111101011101
),
        .k3(32'b00111011111110101110011000010000
),
        .k4(32'b00111110001010000110000001010011
),
        .k5(32'b10111101110110010010011010101001
),
        .k6(32'b10111110001001001001110111000101
),
        .k7(32'b10111100110111000111010010000101
),
        .k8(32'b10111100001011011000011111111101
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
        .k0(32'b10111110000001011110110101000000
),
        .k1(32'b00111101001101010111010000001010
),
        .k2(32'b00111100101101110101111000101100
),
        .k3(32'b10111101101101001100110000101111
),
        .k4(32'b10111101000000101010000000110110
),
        .k5(32'b10111101110110100001111110110010
),
        .k6(32'b10111101111100110101011111010010
),
        .k7(32'b00111101101011111110010111000110
),
        .k8(32'b10111101101011000100111100000001
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
        .k0(32'b10111101100000000111101011010001
),
        .k1(32'b10111110001001001011110101101110
),
        .k2(32'b10111110001101010000110001000000
),
        .k3(32'b10111110000001001001110100000001
),
        .k4(32'b00111100110111101111000111111110
),
        .k5(32'b10111100001001010010000111100010
),
        .k6(32'b10111101011100010001010111100100
),
        .k7(32'b00111011110100101000100111110011
),
        .k8(32'b00111110000001101101111011010001
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
        .k0(32'b00111110000001110111101010010101
),
        .k1(32'b00111110001101000001101010000000
),
        .k2(32'b00111011111111000000101011001011
),
        .k3(32'b00111100110111000101010101010001
),
        .k4(32'b00111110000111100111111011110100
),
        .k5(32'b10111101100011001001000011100010
),
        .k6(32'b10111100111100000010011111000110
),
        .k7(32'b10111101000111100111000100011110
),
        .k8(32'b00111110000000011011000010011100
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
        .k0(32'b00111101110110101000110011110100
),
        .k1(32'b10111101101001001011000110011001
),
        .k2(32'b00111101110100000101001110111001
),
        .k3(32'b00111101001111001100001000011001
),
        .k4(32'b00111101110001110100001111101111
),
        .k5(32'b00111110000100111110101011101101
),
        .k6(32'b00111110000100001010000000010110
),
        .k7(32'b00111101101101010100010110010111
),
        .k8(32'b10111110000001110010111001110010
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
        .k0(32'b00111101100100001010011000010111
),
        .k1(32'b00111101111110111100110011101000
),
        .k2(32'b00111100101010000010110010100101
),
        .k3(32'b10111110000010111110101011001110
),
        .k4(32'b10111101111011100011100110100110
),
        .k5(32'b00111110001001111000001001100100
),
        .k6(32'b00111101001011111100010011111100
),
        .k7(32'b00111110001010100111101100000100
),
        .k8(32'b10111101111101001100011100011110
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
        .k0(32'b00111101101001110100000100110001
),
        .k1(32'b00111110001010011110110011011000
),
        .k2(32'b10111101100111000011111110111100
),
        .k3(32'b00111101100101110100111001010000
),
        .k4(32'b10111100110111111111101110001000
),
        .k5(32'b00111101111011011110001100010111
),
        .k6(32'b00111101111110100010001001110001
),
        .k7(32'b10111110000000010101101010101000
),
        .k8(32'b00111101010001110000101001101011
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
        .k0(32'b10111101101000010000000110010110
),
        .k1(32'b00111101010110001011001011110000
),
        .k2(32'b00111101100101010011010001000000
),
        .k3(32'b00111110000000001011010101111111
),
        .k4(32'b10111110000110011100110101111100
),
        .k5(32'b10111100110100110110101110101001
),
        .k6(32'b10111101000110001111000111011100
),
        .k7(32'b10111101010110100110110110011000
),
        .k8(32'b10111110000101100001101001100011
)  
)conv2D_inst_7(
        .data_in(data_in_channel7),
        .clk(clk), .rst(rst), .valid_in(~data_fifo_empty7),
        .valid_out(valid_in_adder), .rdreq(rdreq),
        .data_out(data_out_conv2d_channel7)
);

add_bias_8_channel #(
        .DATA_WIDTH(DATA_WIDTH),
        .bias(bias)
)add_bias_8_channel_inst(
        .data_out_conv2d_channel0(data_out_conv2d_channel0),
        .data_out_conv2d_channel1(data_out_conv2d_channel1),
        .data_out_conv2d_channel2(data_out_conv2d_channel2),
        .data_out_conv2d_channel3(data_out_conv2d_channel3),
        .data_out_conv2d_channel4(data_out_conv2d_channel4),
        .data_out_conv2d_channel5(data_out_conv2d_channel5),
        .data_out_conv2d_channel6(data_out_conv2d_channel6),
        .data_out_conv2d_channel7(data_out_conv2d_channel7),
        .valid_in_adder(valid_in_adder), .clk(clk), .rst(rst),
        .data_out(data_out),
        .valid_out(valid_out)
);

endmodule
////////////////////////////////////////// FILTER 2 //////////////////////////////////////////
module featuremap_conv2d_2_filter2
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b00111011111000111010000011000011
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
    
    input  data_fifo_empty0,
    input  data_fifo_empty1,
    input  data_fifo_empty2,
    input  data_fifo_empty3,
    input  data_fifo_empty4,
    input  data_fifo_empty5,
    input  data_fifo_empty6,
    input  data_fifo_empty7,

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

    wire valid_in_adder;

conv2D #(
        .DATA_WIDTH(DATA_WIDTH),
        .WIDTH(WIDTH+2),
        .k0(32'b10111100010011000000000010100111
),
        .k1(32'b00111011000011010101001100110110
),
        .k2(32'b00111110001010101101100001110001
),
        .k3(32'b10111101110001000111111010000010
),
        .k4(32'b10111101110010011011010001010010
),
        .k5(32'b10111100011000101011000111110000
),
        .k6(32'b00111110001010100011110011100100
),
        .k7(32'b10111101001101010111110110011000
),
        .k8(32'b10111100111100011101110000000011
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
        .k0(32'b00111010101010000111010110000011
),
        .k1(32'b00111110000010010001001100111001
),
        .k2(32'b10111100101100101010001011000101
),
        .k3(32'b10111110000000001110100010001111
),
        .k4(32'b10111101001010010000011110101010
),
        .k5(32'b10111101100111010111011100111001
),
        .k6(32'b10111101110001000111100110111001
),
        .k7(32'b00111110000111011101000101101110
),
        .k8(32'b10111100011100010101010011001111
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
        .k0(32'b00111101101001010000110111010001
),
        .k1(32'b00111100101011111000010100101001
),
        .k2(32'b10111101100101011010110100110100
),
        .k3(32'b00111110000111011110100100101010
),
        .k4(32'b00111110000000001000100010011100
),
        .k5(32'b10111101111111010100110101011001
),
        .k6(32'b00111011101001100010101100010111
),
        .k7(32'b10111110000000001110110011101111
),
        .k8(32'b00111101010011011010011001000010
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
        .k0(32'b10111101101101111000000101010111
),
        .k1(32'b10111101111001111000111011111010
),
        .k2(32'b00111101100010110100111001011001
),
        .k3(32'b10111101100101000010000011110000
),
        .k4(32'b10111101001010011011011101011001
),
        .k5(32'b10111101101010000111001001000000
),
        .k6(32'b10111101110101010111011111011001
),
        .k7(32'b10111101100100111001110110000110
),
        .k8(32'b00111101001110010001110100001111
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
        .k0(32'b10111101111110010101111000010100
),
        .k1(32'b10111101010100010010101001101000
),
        .k2(32'b00111110001110000111111011100001
),
        .k3(32'b10111101100011011000100110000010
),
        .k4(32'b10111101010001010010011000000011
),
        .k5(32'b10111101101110001100011001010001
),
        .k6(32'b10111101110001010100101000010010
),
        .k7(32'b10111110000000010000110101000101
),
        .k8(32'b00111101001101011010000010011011
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
        .k0(32'b10111101010110110100110000110010
),
        .k1(32'b00111110001111010000000101111110
),
        .k2(32'b00111011101101000101100000101001
),
        .k3(32'b00111101100001110101111010010001
),
        .k4(32'b10111101011010101101110111110000
),
        .k5(32'b10111101000111111000000111000111
),
        .k6(32'b00111100101110111011011010110010
),
        .k7(32'b10111101111101010110000110101001
),
        .k8(32'b10111101100100111110110100111101
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
        .k0(32'b10111100001110100101000100111001
),
        .k1(32'b10111110000100100101110100011010
),
        .k2(32'b10111101000000110000011101100101
),
        .k3(32'b00111101010000010011000000000111
),
        .k4(32'b00111101111101101100111100101111
),
        .k5(32'b00111101110000011111000001001001
),
        .k6(32'b10111101010001100101000000110100
),
        .k7(32'b00111100111010001001101010110110
),
        .k8(32'b00111101011111100110010101001001
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
        .k0(32'b10111100101001000101011110001110
),
        .k1(32'b10111101010010001100110111101011
),
        .k2(32'b00111101100001001100010010011010
),
        .k3(32'b00111110000101000110001011110110
),
        .k4(32'b10111101111111101100111001011010
),
        .k5(32'b10111101111010110011010101110101
),
        .k6(32'b00111110000110011101110010100001
),
        .k7(32'b00111100101101111110011110110110
),
        .k8(32'b10111100110010100011100000001110
)  
)conv2D_inst_7(
        .data_in(data_in_channel7),
        .clk(clk), .rst(rst), .valid_in(~data_fifo_empty7),
        .valid_out(valid_in_adder), .rdreq(rdreq),
        .data_out(data_out_conv2d_channel7)
);

add_bias_8_channel #(
        .DATA_WIDTH(DATA_WIDTH),
        .bias(bias)
)add_bias_8_channel_inst(
        .data_out_conv2d_channel0(data_out_conv2d_channel0),
        .data_out_conv2d_channel1(data_out_conv2d_channel1),
        .data_out_conv2d_channel2(data_out_conv2d_channel2),
        .data_out_conv2d_channel3(data_out_conv2d_channel3),
        .data_out_conv2d_channel4(data_out_conv2d_channel4),
        .data_out_conv2d_channel5(data_out_conv2d_channel5),
        .data_out_conv2d_channel6(data_out_conv2d_channel6),
        .data_out_conv2d_channel7(data_out_conv2d_channel7),
        .valid_in_adder(valid_in_adder), .clk(clk), .rst(rst),
        .data_out(data_out),
        .valid_out(valid_out)
);

endmodule
////////////////////////////////////////// FILTER 3 //////////////////////////////////////////
module featuremap_conv2d_2_filter3
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b10111011100110000011100101000000
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
    
    input  data_fifo_empty0,
    input  data_fifo_empty1,
    input  data_fifo_empty2,
    input  data_fifo_empty3,
    input  data_fifo_empty4,
    input  data_fifo_empty5,
    input  data_fifo_empty6,
    input  data_fifo_empty7,

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

    wire valid_in_adder;

conv2D #(
        .DATA_WIDTH(DATA_WIDTH),
        .WIDTH(WIDTH+2),
        .k0(32'b00111110000011010000000101011100
),
        .k1(32'b10111100111001101110010111110111
),
        .k2(32'b10111110000011001000101010111010
),
        .k3(32'b00111101111111000110100010111010
),
        .k4(32'b10111110001010101000111100001011
),
        .k5(32'b10111101100010011100000100100001
),
        .k6(32'b10111011100111001011010110001110
),
        .k7(32'b00111101000011000000110110011101
),
        .k8(32'b10111100100011011110100000010111
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
        .k0(32'b10111101101110001000101101001110
),
        .k1(32'b00111101101101111111000011111010
),
        .k2(32'b10111101000110100111000101011110
),
        .k3(32'b10111101010110110001000100111011
),
        .k4(32'b00111101111110011101000010011000
),
        .k5(32'b00111101100011000010010011111010
),
        .k6(32'b00111100100011011110000100000111
),
        .k7(32'b10111101011100010010011001110001
),
        .k8(32'b00111101011001011100101000011100
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
        .k0(32'b00111101001110111001101010010001
),
        .k1(32'b00111100100000000110110000110011
),
        .k2(32'b00111101011011000010101101010111
),
        .k3(32'b00111100100110101011101001000001
),
        .k4(32'b00111101101110000110000000001010
),
        .k5(32'b00111101100000010011110000011011
),
        .k6(32'b10111100011100111000101110001110
),
        .k7(32'b00111101110111100101110101111110
),
        .k8(32'b00111101110101101000001010001101
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
        .k0(32'b00111110000000100110001110010011
),
        .k1(32'b10111110001010111001011001101001
),
        .k2(32'b10111110000110110100110000110100
),
        .k3(32'b00111110000111000011111101011001
),
        .k4(32'b00111101100110010100110000110010
),
        .k5(32'b10111110000101111100000001011010
),
        .k6(32'b10111101100100010101101001011110
),
        .k7(32'b10111100101110000101011100101001
),
        .k8(32'b00111101100110100011001011010101
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
        .k0(32'b10111011101101010100011001111110
),
        .k1(32'b10111101111001010110010110110100
),
        .k2(32'b00111101110100101111101100111100
),
        .k3(32'b10111101110110101100101011111001
),
        .k4(32'b00111101111010011011100101110111
),
        .k5(32'b00111101010110110001010011101011
),
        .k6(32'b00111101001100110110110010011001
),
        .k7(32'b00111101111010111010001101011000
),
        .k8(32'b00111101010011011100100001000000
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
        .k0(32'b10111101001100110101011111001011
),
        .k1(32'b00111101111010000001110010010000
),
        .k2(32'b00111101101110010010010100110001
),
        .k3(32'b10111101000101000001011110111001
),
        .k4(32'b00111101000011111011100001011011
),
        .k5(32'b00111101100000110000011111111000
),
        .k6(32'b00111100001010000011110000010110
),
        .k7(32'b10111101101011110000001101011100
),
        .k8(32'b00111101011000000110010010011000
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
        .k0(32'b10111101111000111011001011100000
),
        .k1(32'b00111110000110100001101100100111
),
        .k2(32'b10111101110010110101010001110100
),
        .k3(32'b10111101011110010000001000011010
),
        .k4(32'b10111101001001111110100111110010
),
        .k5(32'b00111101010001000110101001101001
),
        .k6(32'b10111101110010011111111011010101
),
        .k7(32'b00111101010001110111011010000111
),
        .k8(32'b00111100110010110110101011110001
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
        .k0(32'b10111110000010000111011000110101
),
        .k1(32'b10111101100100000001111001101001
),
        .k2(32'b10111101001011111110100100000100
),
        .k3(32'b10111100100000100101010011110111
),
        .k4(32'b00111100001011100000101001000100
),
        .k5(32'b00111101101101100010001000011111
),
        .k6(32'b10111101111011001110001000111000
),
        .k7(32'b00111101101011001001100011010101
),
        .k8(32'b00111100111111101111110101011101
)  
)conv2D_inst_7(
        .data_in(data_in_channel7),
        .clk(clk), .rst(rst), .valid_in(~data_fifo_empty7),
        .valid_out(valid_in_adder), .rdreq(rdreq),
        .data_out(data_out_conv2d_channel7)
);

add_bias_8_channel #(
        .DATA_WIDTH(DATA_WIDTH),
        .bias(bias)
)add_bias_8_channel_inst(
        .data_out_conv2d_channel0(data_out_conv2d_channel0),
        .data_out_conv2d_channel1(data_out_conv2d_channel1),
        .data_out_conv2d_channel2(data_out_conv2d_channel2),
        .data_out_conv2d_channel3(data_out_conv2d_channel3),
        .data_out_conv2d_channel4(data_out_conv2d_channel4),
        .data_out_conv2d_channel5(data_out_conv2d_channel5),
        .data_out_conv2d_channel6(data_out_conv2d_channel6),
        .data_out_conv2d_channel7(data_out_conv2d_channel7),
        .valid_in_adder(valid_in_adder), .clk(clk), .rst(rst),
        .data_out(data_out),
        .valid_out(valid_out)
);

endmodule
////////////////////////////////////////// FILTER 4 //////////////////////////////////////////
module featuremap_conv2d_2_filter4
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b00111100101101101101111001100010
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
    
    input  data_fifo_empty0,
    input  data_fifo_empty1,
    input  data_fifo_empty2,
    input  data_fifo_empty3,
    input  data_fifo_empty4,
    input  data_fifo_empty5,
    input  data_fifo_empty6,
    input  data_fifo_empty7,

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

    wire valid_in_adder;

conv2D #(
        .DATA_WIDTH(DATA_WIDTH),
        .WIDTH(WIDTH+2),
        .k0(32'b00111110000110010110011000001011
),
        .k1(32'b00111110000110111010011010110010
),
        .k2(32'b10111110000000101000000111010010
),
        .k3(32'b00111101101110100001011101101000
),
        .k4(32'b10111101110110111101000101000111
),
        .k5(32'b10111101100010011001110001010000
),
        .k6(32'b10111101100110011110110001000100
),
        .k7(32'b00111011100111100000110101111010
),
        .k8(32'b00111101101110111111100110110011
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
        .k0(32'b10111011101101001011011000001101
),
        .k1(32'b00111110001100000011110101100000
),
        .k2(32'b10111110000110110101000111101100
),
        .k3(32'b10111101100101011101010011011011
),
        .k4(32'b00111101001000010111010101010011
),
        .k5(32'b00111110000101000010000010001001
),
        .k6(32'b10111110000001100010000101110101
),
        .k7(32'b00111101100111100110101111011110
),
        .k8(32'b00111101111000111100001100110110
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
        .k0(32'b10111110000100100010111110100011
),
        .k1(32'b10111101001110001100001011100010
),
        .k2(32'b00111100110001011000011100010110
),
        .k3(32'b10111010000001011111000011111111
),
        .k4(32'b10111100010011011101001000001111
),
        .k5(32'b10111101110000011001100010111111
),
        .k6(32'b00111101000100001110010100000101
),
        .k7(32'b10111101101001000111101111010010
),
        .k8(32'b00111110000101101110010010011011
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
        .k0(32'b00111100111111001101110010000111
),
        .k1(32'b10111101101001000011011110111000
),
        .k2(32'b10111110000100101110000101000000
),
        .k3(32'b10111101000001011101110001011111
),
        .k4(32'b00111101011111000111011011101000
),
        .k5(32'b10111101101111110001111011100111
),
        .k6(32'b10111101101010100001011111011001
),
        .k7(32'b00111101110100101001100000000110
),
        .k8(32'b10111101100001010000011011001111
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
        .k0(32'b00111101101110001000001010111111
),
        .k1(32'b10111110000100110011100101110010
),
        .k2(32'b10111101110100100101010111110101
),
        .k3(32'b10111101111110111001001001011110
),
        .k4(32'b00111110001000101001010111100010
),
        .k5(32'b00111100011101111011101111011000
),
        .k6(32'b10111110000101000000100011110000
),
        .k7(32'b00111101111000110101111111001001
),
        .k8(32'b00111101101111101001000000101111
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
        .k0(32'b10111011100111100001101101011100
),
        .k1(32'b00111110001101000001000010011000
),
        .k2(32'b10111101000101100101100101100100
),
        .k3(32'b00111101100000010110100010110100
),
        .k4(32'b00111101110001101100111001111000
),
        .k5(32'b10111101001111010101110101111010
),
        .k6(32'b00111101000001100100011000100101
),
        .k7(32'b00111101101010011001100100101001
),
        .k8(32'b00111101000000100001001001101011
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
        .k0(32'b00111101100010001010110010110010
),
        .k1(32'b00111110001101100000101101010110
),
        .k2(32'b00111110000001110100000001110111
),
        .k3(32'b00111101110101111011101001110110
),
        .k4(32'b10111110000000010011011100000000
),
        .k5(32'b00111011000110010000110110011010
),
        .k6(32'b10111011001011111110011101110010
),
        .k7(32'b00111101100111110001101001000001
),
        .k8(32'b10111101101101101001111100000011
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
        .k0(32'b00111101101011100001111100000100
),
        .k1(32'b00111110000001010110011111101000
),
        .k2(32'b00111101011111100000010011100100
),
        .k3(32'b10111101011110001011101011010101
),
        .k4(32'b10111101100010100010110001101001
),
        .k5(32'b00111110000010000110111010100100
),
        .k6(32'b00111101110101011000010100111110
),
        .k7(32'b10111101100100110000101101111000
),
        .k8(32'b10111101111101101101000111001001
)  
)conv2D_inst_7(
        .data_in(data_in_channel7),
        .clk(clk), .rst(rst), .valid_in(~data_fifo_empty7),
        .valid_out(valid_in_adder), .rdreq(rdreq),
        .data_out(data_out_conv2d_channel7)
);

add_bias_8_channel #(
        .DATA_WIDTH(DATA_WIDTH),
        .bias(bias)
)add_bias_8_channel_inst(
        .data_out_conv2d_channel0(data_out_conv2d_channel0),
        .data_out_conv2d_channel1(data_out_conv2d_channel1),
        .data_out_conv2d_channel2(data_out_conv2d_channel2),
        .data_out_conv2d_channel3(data_out_conv2d_channel3),
        .data_out_conv2d_channel4(data_out_conv2d_channel4),
        .data_out_conv2d_channel5(data_out_conv2d_channel5),
        .data_out_conv2d_channel6(data_out_conv2d_channel6),
        .data_out_conv2d_channel7(data_out_conv2d_channel7),
        .valid_in_adder(valid_in_adder), .clk(clk), .rst(rst),
        .data_out(data_out),
        .valid_out(valid_out)
);

endmodule
////////////////////////////////////////// FILTER 5 //////////////////////////////////////////
module featuremap_conv2d_2_filter5
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b10111011011001001000001111111011
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
    
    input  data_fifo_empty0,
    input  data_fifo_empty1,
    input  data_fifo_empty2,
    input  data_fifo_empty3,
    input  data_fifo_empty4,
    input  data_fifo_empty5,
    input  data_fifo_empty6,
    input  data_fifo_empty7,

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

    wire valid_in_adder;

conv2D #(
        .DATA_WIDTH(DATA_WIDTH),
        .WIDTH(WIDTH+2),
        .k0(32'b00111011010111111100000011110100
),
        .k1(32'b10111100100111010000101110100000
),
        .k2(32'b00111110000011011011111111110101
),
        .k3(32'b10111110001001000110101000101111
),
        .k4(32'b00111101010010110011100010010000
),
        .k5(32'b00111100011111100110001110110011
),
        .k6(32'b00111101010110100100000101001001
),
        .k7(32'b00111011110111011001010001010111
),
        .k8(32'b00111110000100000010010001010000
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
        .k0(32'b10111100110110011010001010110010
),
        .k1(32'b10111011110010110010100011011111
),
        .k2(32'b10111101010100011101000001001010
),
        .k3(32'b10111101001011110101000011100010
),
        .k4(32'b00111101111010011101001000101101
),
        .k5(32'b00111101001101100010000110010111
),
        .k6(32'b00111110000111001110111110111001
),
        .k7(32'b00111110001011000011000100110010
),
        .k8(32'b00111101010100010010111101000000
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
        .k0(32'b00111100110100010001000101001111
),
        .k1(32'b00111101001001100111011000100001
),
        .k2(32'b00111101010010011100101110111000
),
        .k3(32'b10111101010001111011011010100010
),
        .k4(32'b10111110000011110010000010001110
),
        .k5(32'b10111100110101000111010100011011
),
        .k6(32'b00111101011001000100111111101111
),
        .k7(32'b10111110000111111001101101001111
),
        .k8(32'b10111101001110011100011101000001
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
        .k0(32'b00111101101011111011001111001011
),
        .k1(32'b00111101101101010011111101000100
),
        .k2(32'b00111011001110001110100001001100
),
        .k3(32'b00111101000111000010001011111111
),
        .k4(32'b00111101010011000011011101100100
),
        .k5(32'b00111101001100110010000000000101
),
        .k6(32'b00111100101100011000110111010101
),
        .k7(32'b10111101011101100001000001011111
),
        .k8(32'b00111110000001100111001010101101
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
        .k0(32'b00111110000100001100110000100101
),
        .k1(32'b10111101011100011000101110100111
),
        .k2(32'b10111101101111100010101001000001
),
        .k3(32'b10111100000011100110011111110001
),
        .k4(32'b00111110000010101101111000000111
),
        .k5(32'b00111110000001101011110101010011
),
        .k6(32'b10111100100100111000000110111111
),
        .k7(32'b10111101101110000010111011101111
),
        .k8(32'b10111101001001100000110001101000
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
        .k0(32'b00111101110110101011111111111101
),
        .k1(32'b00111101000001001110100011101110
),
        .k2(32'b00111100100100000111000010110010
),
        .k3(32'b00111101010110110101101111110100
),
        .k4(32'b00111100101000001001010011101011
),
        .k5(32'b00111101110110011100011001100010
),
        .k6(32'b00111011101010001111001000000101
),
        .k7(32'b00111110000111011000101010100101
),
        .k8(32'b10111011011111110100110001010010
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
        .k0(32'b00111110000111111111101101001110
),
        .k1(32'b10111101111111101110110011101111
),
        .k2(32'b00111110000110110011010000001111
),
        .k3(32'b00111110000101001010111101010100
),
        .k4(32'b10111101100100100001010000100110
),
        .k5(32'b00111110001011100001000001001101
),
        .k6(32'b00111101001101111011100001010010
),
        .k7(32'b00111100110011101010010011011000
),
        .k8(32'b10111110000101001001010110111100
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
        .k0(32'b00111101101100110011101011111111
),
        .k1(32'b00111101110000110111101000011100
),
        .k2(32'b00111101100010010001000000101111
),
        .k3(32'b10111101110100100100010011101000
),
        .k4(32'b10111110000101100010011111011010
),
        .k5(32'b10111101101011011100000101100100
),
        .k6(32'b00111110000100100001000010101010
),
        .k7(32'b00111101100111001010010110100101
),
        .k8(32'b10111010000011110000100101100011
)  
)conv2D_inst_7(
        .data_in(data_in_channel7),
        .clk(clk), .rst(rst), .valid_in(~data_fifo_empty7),
        .valid_out(valid_in_adder), .rdreq(rdreq),
        .data_out(data_out_conv2d_channel7)
);

add_bias_8_channel #(
        .DATA_WIDTH(DATA_WIDTH),
        .bias(bias)
)add_bias_8_channel_inst(
        .data_out_conv2d_channel0(data_out_conv2d_channel0),
        .data_out_conv2d_channel1(data_out_conv2d_channel1),
        .data_out_conv2d_channel2(data_out_conv2d_channel2),
        .data_out_conv2d_channel3(data_out_conv2d_channel3),
        .data_out_conv2d_channel4(data_out_conv2d_channel4),
        .data_out_conv2d_channel5(data_out_conv2d_channel5),
        .data_out_conv2d_channel6(data_out_conv2d_channel6),
        .data_out_conv2d_channel7(data_out_conv2d_channel7),
        .valid_in_adder(valid_in_adder), .clk(clk), .rst(rst),
        .data_out(data_out),
        .valid_out(valid_out)
);

endmodule
////////////////////////////////////////// FILTER 6 //////////////////////////////////////////
module featuremap_conv2d_2_filter6
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b00111100111101011001001010000101
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
    
    input  data_fifo_empty0,
    input  data_fifo_empty1,
    input  data_fifo_empty2,
    input  data_fifo_empty3,
    input  data_fifo_empty4,
    input  data_fifo_empty5,
    input  data_fifo_empty6,
    input  data_fifo_empty7,

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

    wire valid_in_adder;

conv2D #(
        .DATA_WIDTH(DATA_WIDTH),
        .WIDTH(WIDTH+2),
        .k0(32'b10111101001001111011011101111011
),
        .k1(32'b10111101100101000111000111101011
),
        .k2(32'b00111110001001111111110010001000
),
        .k3(32'b10111110000010001110111000100000
),
        .k4(32'b10111101110110110010000010011111
),
        .k5(32'b00111101010001011111110100111010
),
        .k6(32'b00111110000000100111010111110111
),
        .k7(32'b10111100001100100010101011011000
),
        .k8(32'b00111100001011101110101100011001
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
        .k0(32'b00111110000011110111100010010010
),
        .k1(32'b10111101000100101000110011010101
),
        .k2(32'b00111011111000001111110100010010
),
        .k3(32'b10111101011010101110100010001100
),
        .k4(32'b00111110000110110000000001010001
),
        .k5(32'b00111101111010110111001101001101
),
        .k6(32'b10111110000001001100101000111000
),
        .k7(32'b10111101100011110100010101100000
),
        .k8(32'b10111101100010010101101101101100
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
        .k0(32'b00111101000010010010001001000010
),
        .k1(32'b00111101111101110001000000111001
),
        .k2(32'b00111110001011000000111011010001
),
        .k3(32'b00111110000101100000011011010110
),
        .k4(32'b10111101101010111011110010010110
),
        .k5(32'b10111110000000110100111111000110
),
        .k6(32'b00111101111110001010110111110111
),
        .k7(32'b00111110001000010011110011000011
),
        .k8(32'b10111101000010000110100001111010
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
        .k0(32'b10111110000010010000100101001100
),
        .k1(32'b10111110000000000010011011010110
),
        .k2(32'b10111101100111000111100111010110
),
        .k3(32'b10111010000001001111110000111010
),
        .k4(32'b00111110000000000110000011111010
),
        .k5(32'b00111101100001010001111011100101
),
        .k6(32'b10111101111111011100000010110100
),
        .k7(32'b10111101101010101110100100101100
),
        .k8(32'b10111101100111010010100111110011
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
        .k0(32'b10111110000100000101100011111010
),
        .k1(32'b10111101100000110100001111101100
),
        .k2(32'b00111100111011100001101100000010
),
        .k3(32'b00111101111101111010000011111000
),
        .k4(32'b10111101100111110010010110101100
),
        .k5(32'b10111101101010101110111100011111
),
        .k6(32'b10111101101010000001100000001000
),
        .k7(32'b10111101110001011110000000000100
),
        .k8(32'b10111101011100011001000011011111
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
        .k0(32'b10111101101110001100010111100100
),
        .k1(32'b10111101100111110011111010001101
),
        .k2(32'b10111101111011100010010010101100
),
        .k3(32'b10111100101010000001110001011001
),
        .k4(32'b00111110001011100001000111000001
),
        .k5(32'b10111100101010100010110111110000
),
        .k6(32'b00111110000110101110101000011000
),
        .k7(32'b10111101011111000001100010111101
),
        .k8(32'b00111101111010110110100101010011
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
        .k0(32'b00111101010001101011110110111010
),
        .k1(32'b10111101110110010010110110111011
),
        .k2(32'b10111110000011101101000000001001
),
        .k3(32'b10111110000011010101011001110010
),
        .k4(32'b10111101101110000111100011100100
),
        .k5(32'b00111011110111000011100000011110
),
        .k6(32'b00111101111000001111100101010101
),
        .k7(32'b10111101111011101111101100100111
),
        .k8(32'b00111100101001111000011100001110
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
        .k0(32'b10111100000100011001110111111010
),
        .k1(32'b00111101100111011111010111100111
),
        .k2(32'b10111100101110101000010000010111
),
        .k3(32'b10111011101101111110010001001000
),
        .k4(32'b00111110001010011000001000011010
),
        .k5(32'b10111101000001100101010100011001
),
        .k6(32'b00111101110001101000111100001111
),
        .k7(32'b00111101110100101100001011001001
),
        .k8(32'b00111110000010110000101100111101
)  
)conv2D_inst_7(
        .data_in(data_in_channel7),
        .clk(clk), .rst(rst), .valid_in(~data_fifo_empty7),
        .valid_out(valid_in_adder), .rdreq(rdreq),
        .data_out(data_out_conv2d_channel7)
);

add_bias_8_channel #(
        .DATA_WIDTH(DATA_WIDTH),
        .bias(bias)
)add_bias_8_channel_inst(
        .data_out_conv2d_channel0(data_out_conv2d_channel0),
        .data_out_conv2d_channel1(data_out_conv2d_channel1),
        .data_out_conv2d_channel2(data_out_conv2d_channel2),
        .data_out_conv2d_channel3(data_out_conv2d_channel3),
        .data_out_conv2d_channel4(data_out_conv2d_channel4),
        .data_out_conv2d_channel5(data_out_conv2d_channel5),
        .data_out_conv2d_channel6(data_out_conv2d_channel6),
        .data_out_conv2d_channel7(data_out_conv2d_channel7),
        .valid_in_adder(valid_in_adder), .clk(clk), .rst(rst),
        .data_out(data_out),
        .valid_out(valid_out)
);

endmodule
////////////////////////////////////////// FILTER 7 //////////////////////////////////////////
module featuremap_conv2d_2_filter7
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b10111100100010011111000000111000
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
    
    input  data_fifo_empty0,
    input  data_fifo_empty1,
    input  data_fifo_empty2,
    input  data_fifo_empty3,
    input  data_fifo_empty4,
    input  data_fifo_empty5,
    input  data_fifo_empty6,
    input  data_fifo_empty7,

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

    wire valid_in_adder;

conv2D #(
        .DATA_WIDTH(DATA_WIDTH),
        .WIDTH(WIDTH+2),
        .k0(32'b10111101010001111001001100111100
),
        .k1(32'b00111101111111111100111011011001
),
        .k2(32'b10111101111001101010101011101010
),
        .k3(32'b00111100110111110110011001000111
),
        .k4(32'b00111101110101010000110100010001
),
        .k5(32'b00111110000011101010100100111110
),
        .k6(32'b00111110000110110101101011111010
),
        .k7(32'b10111110001010010100100100011010
),
        .k8(32'b00111101100111011100100101001111
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
        .k0(32'b00111110000111100110111100101001
),
        .k1(32'b10111101101100001101101101011101
),
        .k2(32'b10111110000111011000110001100111
),
        .k3(32'b00111011100010000001010010010010
),
        .k4(32'b00111110000000001110010100110100
),
        .k5(32'b10111110000101111001010011010001
),
        .k6(32'b10111101100001110110101010101000
),
        .k7(32'b10111101101000100010011111111001
),
        .k8(32'b10111101011110110011110011011001
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
        .k0(32'b10111101000010111000100100001111
),
        .k1(32'b00111100000101011101010110010011
),
        .k2(32'b00111110000000110010010110010111
),
        .k3(32'b00111100001000011100010100111011
),
        .k4(32'b00111101010111010111001010111000
),
        .k5(32'b00111101100110011111011110100010
),
        .k6(32'b00111101110101000011000111010010
),
        .k7(32'b10111110001001110111111101111101
),
        .k8(32'b10111101011000111011100111000111
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
        .k0(32'b10111110000100010100011111111100
),
        .k1(32'b00111110001011011001110011101010
),
        .k2(32'b10111101100100100101001010000111
),
        .k3(32'b10111101111101101011101110101100
),
        .k4(32'b10111101001011010111110100001101
),
        .k5(32'b10111110000000001100101110011100
),
        .k6(32'b10111110000000101001000001111100
),
        .k7(32'b10111010110111101111010011010100
),
        .k8(32'b10111101101000101100100101111010
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
        .k0(32'b10111101100100010000010001011111
),
        .k1(32'b00111100001111000110010111111011
),
        .k2(32'b10111101011110000101001100111001
),
        .k3(32'b00111110000001001010010001011110
),
        .k4(32'b10111110000001110100101110100111
),
        .k5(32'b10111100100110001101101010010010
),
        .k6(32'b10111100111011111111011100100000
),
        .k7(32'b00111101000000110111011110000000
),
        .k8(32'b00111101010000011110001011111100
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
        .k0(32'b00111101101100101000000110110011
),
        .k1(32'b10111101101111111011001100111101
),
        .k2(32'b00111110000010100011011011100101
),
        .k3(32'b00111110000100011100101010011110
),
        .k4(32'b00111101111011011011011000000111
),
        .k5(32'b00111100111010111000111101100110
),
        .k6(32'b00111101100101001000100000001001
),
        .k7(32'b10111110001001001000111101101110
),
        .k8(32'b00111010110000011111010000010011
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
        .k0(32'b00111110000001011110000000011011
),
        .k1(32'b10111101011011110100111011111001
),
        .k2(32'b10111101011100110101100000010010
),
        .k3(32'b00111110000110110001011110101110
),
        .k4(32'b10111100111001010011110010001010
),
        .k5(32'b10111101010111001000111000100100
),
        .k6(32'b00111101111010001000101110111001
),
        .k7(32'b00111110000001010111001011010010
),
        .k8(32'b10111110001000000110101100110001
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
        .k0(32'b10111110000001000100010011110000
),
        .k1(32'b10111101111111100101000110111100
),
        .k2(32'b00111110001010110011011101001010
),
        .k3(32'b10111101111110010100001111011110
),
        .k4(32'b00111110000000101010000010100001
),
        .k5(32'b00111101100100100001101001110010
),
        .k6(32'b00111100101001010100010101101001
),
        .k7(32'b00111101000101101011001000100111
),
        .k8(32'b10111011100111000000010011001010
)  
)conv2D_inst_7(
        .data_in(data_in_channel7),
        .clk(clk), .rst(rst), .valid_in(~data_fifo_empty7),
        .valid_out(valid_in_adder), .rdreq(rdreq),
        .data_out(data_out_conv2d_channel7)
);

add_bias_8_channel #(
        .DATA_WIDTH(DATA_WIDTH),
        .bias(bias)
)add_bias_8_channel_inst(
        .data_out_conv2d_channel0(data_out_conv2d_channel0),
        .data_out_conv2d_channel1(data_out_conv2d_channel1),
        .data_out_conv2d_channel2(data_out_conv2d_channel2),
        .data_out_conv2d_channel3(data_out_conv2d_channel3),
        .data_out_conv2d_channel4(data_out_conv2d_channel4),
        .data_out_conv2d_channel5(data_out_conv2d_channel5),
        .data_out_conv2d_channel6(data_out_conv2d_channel6),
        .data_out_conv2d_channel7(data_out_conv2d_channel7),
        .valid_in_adder(valid_in_adder), .clk(clk), .rst(rst),
        .data_out(data_out),
        .valid_out(valid_out)
);

endmodule
////////////////////////////////////////// FILTER 8 //////////////////////////////////////////
module featuremap_conv2d_2_filter8
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b00111010111110010101101101100011
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
    
    input  data_fifo_empty0,
    input  data_fifo_empty1,
    input  data_fifo_empty2,
    input  data_fifo_empty3,
    input  data_fifo_empty4,
    input  data_fifo_empty5,
    input  data_fifo_empty6,
    input  data_fifo_empty7,

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

    wire valid_in_adder;

conv2D #(
        .DATA_WIDTH(DATA_WIDTH),
        .WIDTH(WIDTH+2),
        .k0(32'b00111110000001101100111111101010
),
        .k1(32'b00111101001000110101111111101101
),
        .k2(32'b10111101010000000001000011010010
),
        .k3(32'b10111101101101001000101011011101
),
        .k4(32'b10111101100010000110111100001010
),
        .k5(32'b00111101100111100101101010001110
),
        .k6(32'b10111110000001001000110010110000
),
        .k7(32'b00111101000011011101101010100100
),
        .k8(32'b00111110001101001001110111010010
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
        .k0(32'b00111110001010011110010100010011
),
        .k1(32'b10111101110001100000000101110110
),
        .k2(32'b00111110001010011011110101010101
),
        .k3(32'b10111100110100100011111100101111
),
        .k4(32'b10111101001110001010001010111110
),
        .k5(32'b10111101101011110100111110111011
),
        .k6(32'b00111110000010011110101000101110
),
        .k7(32'b00111110001000000100010110100000
),
        .k8(32'b10111101110110111010001110001100
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
        .k0(32'b10111110000110010010001000010011
),
        .k1(32'b00111101100011011001000101000101
),
        .k2(32'b10111100001011101011000011111001
),
        .k3(32'b00111101010001110010110100010100
),
        .k4(32'b00111011110110110100110111111010
),
        .k5(32'b00111110000010111011011001010111
),
        .k6(32'b00111101100011111001010111110101
),
        .k7(32'b00111101100001110000000100101101
),
        .k8(32'b10111100101000011011101001000011
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
        .k0(32'b00111110001101111111010000101100
),
        .k1(32'b00111101111011001101110010101111
),
        .k2(32'b10111101000000011101111000010011
),
        .k3(32'b00111101101111010110000100111100
),
        .k4(32'b00111010111100101001101100100110
),
        .k5(32'b00111101111111101110011001001100
),
        .k6(32'b00111101111101000001001110110011
),
        .k7(32'b00111110000110010001000100011000
),
        .k8(32'b10111101111010111010101101010000
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
        .k0(32'b10111101000110000110101110101000
),
        .k1(32'b00111110000101011110110101010101
),
        .k2(32'b10111011100110001101111001011001
),
        .k3(32'b10111110000110000000011011011010
),
        .k4(32'b10111101010101000110011101001011
),
        .k5(32'b10111010101100110001011000100111
),
        .k6(32'b10111101000111001101010110000101
),
        .k7(32'b00111101000101010000100110011110
),
        .k8(32'b00111110001101010110111101100011
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
        .k0(32'b00111101100100101110111100110011
),
        .k1(32'b10111101101011001101001100111100
),
        .k2(32'b10111101110101011110001100000110
),
        .k3(32'b00111101110011111011001110001110
),
        .k4(32'b00111110000011001001011001000101
),
        .k5(32'b10111100001100000000101010101101
),
        .k6(32'b10111101110000110111111111101111
),
        .k7(32'b10111110000110111110100011000110
),
        .k8(32'b00111101001101110100011010110110
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
        .k0(32'b10111101110010011111100101110111
),
        .k1(32'b00111101011110111100011001100010
),
        .k2(32'b10111110000000000111110000000011
),
        .k3(32'b00111101010000110111010111001111
),
        .k4(32'b00111110000000001100100011101000
),
        .k5(32'b00111110000101001011000011011111
),
        .k6(32'b10111101010100111001101110011010
),
        .k7(32'b10111101100010001111100110011110
),
        .k8(32'b10111100100010100101011010010101
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
        .k0(32'b00111110000111000101000011110011
),
        .k1(32'b10111110001000101010001000100011
),
        .k2(32'b10111101111010100000111001001000
),
        .k3(32'b10111101101100001011000110110011
),
        .k4(32'b00111110000110101000001110000110
),
        .k5(32'b10111110001010100101011110001010
),
        .k6(32'b00111101010001100100010100010011
),
        .k7(32'b10111101100111000101111000111010
),
        .k8(32'b10111100101101011011100100010001
)  
)conv2D_inst_7(
        .data_in(data_in_channel7),
        .clk(clk), .rst(rst), .valid_in(~data_fifo_empty7),
        .valid_out(valid_in_adder), .rdreq(rdreq),
        .data_out(data_out_conv2d_channel7)
);

add_bias_8_channel #(
        .DATA_WIDTH(DATA_WIDTH),
        .bias(bias)
)add_bias_8_channel_inst(
        .data_out_conv2d_channel0(data_out_conv2d_channel0),
        .data_out_conv2d_channel1(data_out_conv2d_channel1),
        .data_out_conv2d_channel2(data_out_conv2d_channel2),
        .data_out_conv2d_channel3(data_out_conv2d_channel3),
        .data_out_conv2d_channel4(data_out_conv2d_channel4),
        .data_out_conv2d_channel5(data_out_conv2d_channel5),
        .data_out_conv2d_channel6(data_out_conv2d_channel6),
        .data_out_conv2d_channel7(data_out_conv2d_channel7),
        .valid_in_adder(valid_in_adder), .clk(clk), .rst(rst),
        .data_out(data_out),
        .valid_out(valid_out)
);

endmodule
////////////////////////////////////////// FILTER 9 //////////////////////////////////////////
module featuremap_conv2d_2_filter9
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b00111010101010010100000011100100
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
    
    input  data_fifo_empty0,
    input  data_fifo_empty1,
    input  data_fifo_empty2,
    input  data_fifo_empty3,
    input  data_fifo_empty4,
    input  data_fifo_empty5,
    input  data_fifo_empty6,
    input  data_fifo_empty7,

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

    wire valid_in_adder;

conv2D #(
        .DATA_WIDTH(DATA_WIDTH),
        .WIDTH(WIDTH+2),
        .k0(32'b10111101000110111101001110100001
),
        .k1(32'b10111110000011100101010010000000
),
        .k2(32'b10111101110110100011110100110001
),
        .k3(32'b10111110000111100011110000000001
),
        .k4(32'b10111110000010111001000100100101
),
        .k5(32'b10111101101000100000000000100000
),
        .k6(32'b10111101111100000000001001111101
),
        .k7(32'b10111101101001100001100100000010
),
        .k8(32'b00111101101101101001011100011110
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
        .k0(32'b00111101110101000110001011111010
),
        .k1(32'b00111100000011011111110011111011
),
        .k2(32'b10111101010100100011010111110110
),
        .k3(32'b00111101111010010001001001000101
),
        .k4(32'b10111101100001010100011010001011
),
        .k5(32'b00111100110010111011101001001101
),
        .k6(32'b00111101111110101001100011110011
),
        .k7(32'b10111100101010101011011011100110
),
        .k8(32'b10111011010011101110011111010011
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
        .k0(32'b00111101110100010110010100111111
),
        .k1(32'b00111110001101100111000110011010
),
        .k2(32'b10111101101001010010101100001100
),
        .k3(32'b00111101011111000111101111010011
),
        .k4(32'b10111101110111101101000111111111
),
        .k5(32'b00111100111101110111000110000011
),
        .k6(32'b00111101101100101110001110001011
),
        .k7(32'b10111011111010111000001010000111
),
        .k8(32'b00111100110110110000100100010100
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
        .k0(32'b00111101100111011001010111001011
),
        .k1(32'b10111011100011011011111100110000
),
        .k2(32'b10111101001101100100001111111011
),
        .k3(32'b00111100100100111110001110111111
),
        .k4(32'b00111101001010000011100001110010
),
        .k5(32'b10111101110110111010011110010100
),
        .k6(32'b00111101111010010010101110101110
),
        .k7(32'b10111110000000110010011001100000
),
        .k8(32'b10111101001110011110001011000011
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
        .k0(32'b00111100110000101001111100101110
),
        .k1(32'b00111110000000111101111000101101
),
        .k2(32'b00111101011111010001100100011010
),
        .k3(32'b10111101111010010110110101011010
),
        .k4(32'b00111101000001100111101000100011
),
        .k5(32'b00111101111000011001001001001001
),
        .k6(32'b00111100011111010100010110111111
),
        .k7(32'b00111101111110100111100100110010
),
        .k8(32'b00111101101010000111100100001010
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
        .k0(32'b10111101100100001000110000111011
),
        .k1(32'b10111101101101110100101100011100
),
        .k2(32'b10111100010110111000010001101111
),
        .k3(32'b10111101010011011100111000110001
),
        .k4(32'b10111101001011001010001101100011
),
        .k5(32'b10111101001011000100101011111110
),
        .k6(32'b10111101101000010111000011110001
),
        .k7(32'b10111101101111111000111001100010
),
        .k8(32'b00111101000001011001111100010010
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
        .k0(32'b00111100101101100000111001110010
),
        .k1(32'b10111101011001010011101000110111
),
        .k2(32'b10111110001000011111111001100110
),
        .k3(32'b10111011100100010000000101100110
),
        .k4(32'b00111101100110000101110101101100
),
        .k5(32'b00111101110110010101000101111000
),
        .k6(32'b10111110001001100011001110111111
),
        .k7(32'b00111100110111001011100110010101
),
        .k8(32'b10111100001100110110101110000000
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
        .k0(32'b10111011111011100111000101110110
),
        .k1(32'b10111101001101010101110101111111
),
        .k2(32'b10111101101111010001101011100010
),
        .k3(32'b10111101111100010111001011010110
),
        .k4(32'b00111011011001111110010111010100
),
        .k5(32'b00111100111010011001110000110000
),
        .k6(32'b00111101011101100111010110100101
),
        .k7(32'b00111101110100011111110000001011
),
        .k8(32'b10111101100011110011110101001000
)  
)conv2D_inst_7(
        .data_in(data_in_channel7),
        .clk(clk), .rst(rst), .valid_in(~data_fifo_empty7),
        .valid_out(valid_in_adder), .rdreq(rdreq),
        .data_out(data_out_conv2d_channel7)
);

add_bias_8_channel #(
        .DATA_WIDTH(DATA_WIDTH),
        .bias(bias)
)add_bias_8_channel_inst(
        .data_out_conv2d_channel0(data_out_conv2d_channel0),
        .data_out_conv2d_channel1(data_out_conv2d_channel1),
        .data_out_conv2d_channel2(data_out_conv2d_channel2),
        .data_out_conv2d_channel3(data_out_conv2d_channel3),
        .data_out_conv2d_channel4(data_out_conv2d_channel4),
        .data_out_conv2d_channel5(data_out_conv2d_channel5),
        .data_out_conv2d_channel6(data_out_conv2d_channel6),
        .data_out_conv2d_channel7(data_out_conv2d_channel7),
        .valid_in_adder(valid_in_adder), .clk(clk), .rst(rst),
        .data_out(data_out),
        .valid_out(valid_out)
);

endmodule
////////////////////////////////////////// FILTER 10 //////////////////////////////////////////
module featuremap_conv2d_2_filter10
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b00111001011011101100101010101101
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
    
    input  data_fifo_empty0,
    input  data_fifo_empty1,
    input  data_fifo_empty2,
    input  data_fifo_empty3,
    input  data_fifo_empty4,
    input  data_fifo_empty5,
    input  data_fifo_empty6,
    input  data_fifo_empty7,

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

    wire valid_in_adder;

conv2D #(
        .DATA_WIDTH(DATA_WIDTH),
        .WIDTH(WIDTH+2),
        .k0(32'b00111101001000110000111111100110
),
        .k1(32'b00111101010110000011000000001001
),
        .k2(32'b10111101100010101011101110100111
),
        .k3(32'b00111101100010011010111010110100
),
        .k4(32'b10111101101001001011001001000100
),
        .k5(32'b10111101110100011110101110101000
),
        .k6(32'b00111110000100100100100010101101
),
        .k7(32'b10111011100010001011001101000001
),
        .k8(32'b10111101000110011101101000111101
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
        .k0(32'b00111101010110100110001111001010
),
        .k1(32'b00111101110000101110010000010101
),
        .k2(32'b00111100000110010110110101110111
),
        .k3(32'b00111110000110010001011110010000
),
        .k4(32'b00111101100110001011011001011101
),
        .k5(32'b10111101100010011111000000100101
),
        .k6(32'b00111110000111101100011101001001
),
        .k7(32'b10111110000100011000100110111010
),
        .k8(32'b00111100110011001000100110000101
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
        .k0(32'b00111101010001000111101111000101
),
        .k1(32'b10111110000011100001100101001100
),
        .k2(32'b10111101111010111010100011000101
),
        .k3(32'b10111101101011110010110010101000
),
        .k4(32'b10111110000101111110111010110010
),
        .k5(32'b10111110001000000010111011000110
),
        .k6(32'b10111101110011101011001101111001
),
        .k7(32'b10111110000111111110000110001101
),
        .k8(32'b10111110001010001100001011000000
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
        .k0(32'b00111101101100101000001110011011
),
        .k1(32'b00111101110010001101000001100101
),
        .k2(32'b00111101110011010111010110001110
),
        .k3(32'b00111101111110100110001101101100
),
        .k4(32'b10111110000110001010000111110111
),
        .k5(32'b00111110000000110000101101010101
),
        .k6(32'b10111101000011101000110010000111
),
        .k7(32'b10111101110010111000010001100100
),
        .k8(32'b10111101010001000111110111101111
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
        .k0(32'b10111100110000100110101010000110
),
        .k1(32'b00111110000000110011000101010001
),
        .k2(32'b10111101000111001001010011101011
),
        .k3(32'b00111100101101110110101000010101
),
        .k4(32'b10111101110010100000111110011001
),
        .k5(32'b00111110000001100000010101000010
),
        .k6(32'b10111110000011101110111101100101
),
        .k7(32'b10111100100110100100111100110101
),
        .k8(32'b10111110000001110000100010011010
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
        .k0(32'b10111101111100010000110110100000
),
        .k1(32'b10111110000010110101011110100101
),
        .k2(32'b10111100110101000000110100000110
),
        .k3(32'b10111101010011010100101000100010
),
        .k4(32'b00111101101001111001101011101100
),
        .k5(32'b10111101000111110001010010011111
),
        .k6(32'b00111101101000111010100010100011
),
        .k7(32'b00111101101110100001100010110011
),
        .k8(32'b00111101000011001101011000100001
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
        .k0(32'b00111101111000101010000011100011
),
        .k1(32'b00111011110011110000111100011111
),
        .k2(32'b00111101111001001001010011010011
),
        .k3(32'b00111110000010000110011100011110
),
        .k4(32'b10111100010011010100111010101011
),
        .k5(32'b00111100110111110010110100100000
),
        .k6(32'b00111101001100100101011111100110
),
        .k7(32'b00111101110001101001101011110010
),
        .k8(32'b00111100101000100111011010010000
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
        .k0(32'b00111101001100100001001001010011
),
        .k1(32'b10111110001110100000100011010011
),
        .k2(32'b00111101111010011111010011000110
),
        .k3(32'b10111101100110101001111110110111
),
        .k4(32'b00111101000101101110110010101111
),
        .k5(32'b10111101010010101011110101010010
),
        .k6(32'b10111110000010011001100111110100
),
        .k7(32'b00111110000111000010001101101101
),
        .k8(32'b10111101001110010001011000001000
)  
)conv2D_inst_7(
        .data_in(data_in_channel7),
        .clk(clk), .rst(rst), .valid_in(~data_fifo_empty7),
        .valid_out(valid_in_adder), .rdreq(rdreq),
        .data_out(data_out_conv2d_channel7)
);

add_bias_8_channel #(
        .DATA_WIDTH(DATA_WIDTH),
        .bias(bias)
)add_bias_8_channel_inst(
        .data_out_conv2d_channel0(data_out_conv2d_channel0),
        .data_out_conv2d_channel1(data_out_conv2d_channel1),
        .data_out_conv2d_channel2(data_out_conv2d_channel2),
        .data_out_conv2d_channel3(data_out_conv2d_channel3),
        .data_out_conv2d_channel4(data_out_conv2d_channel4),
        .data_out_conv2d_channel5(data_out_conv2d_channel5),
        .data_out_conv2d_channel6(data_out_conv2d_channel6),
        .data_out_conv2d_channel7(data_out_conv2d_channel7),
        .valid_in_adder(valid_in_adder), .clk(clk), .rst(rst),
        .data_out(data_out),
        .valid_out(valid_out)
);

endmodule
////////////////////////////////////////// FILTER 11 //////////////////////////////////////////
module featuremap_conv2d_2_filter11
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b00111100001001111000001001100100
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
    
    input  data_fifo_empty0,
    input  data_fifo_empty1,
    input  data_fifo_empty2,
    input  data_fifo_empty3,
    input  data_fifo_empty4,
    input  data_fifo_empty5,
    input  data_fifo_empty6,
    input  data_fifo_empty7,

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

    wire valid_in_adder;

conv2D #(
        .DATA_WIDTH(DATA_WIDTH),
        .WIDTH(WIDTH+2),
        .k0(32'b10111101101001011101111000110000
),
        .k1(32'b00111101001011111110011010110100
),
        .k2(32'b00111101101101010010011011010001
),
        .k3(32'b00111101000001101000101001101010
),
        .k4(32'b10111110000000010001110011000110
),
        .k5(32'b10111110000100011110111101010111
),
        .k6(32'b00111101100001000000001111000011
),
        .k7(32'b00111101101000010111101111001111
),
        .k8(32'b00111101100010100101000011010111
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
        .k0(32'b00111101101000010010110001101000
),
        .k1(32'b00111011000001111110001111011110
),
        .k2(32'b00111101001101100010001101010000
),
        .k3(32'b00111101100111001000110000011100
),
        .k4(32'b10111101010111110000100111110000
),
        .k5(32'b10111101010101110110011001100110
),
        .k6(32'b00111101110010111000010110011111
),
        .k7(32'b00111100111101000000001001000000
),
        .k8(32'b00111011111111001010100000000100
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
        .k0(32'b00111101100011111011111100001111
),
        .k1(32'b00111101111110001100111110000101
),
        .k2(32'b00111110000110111110000100111100
),
        .k3(32'b00111101110111101100111100101001
),
        .k4(32'b10111101000011000011001001011001
),
        .k5(32'b10111101110111001001011101011000
),
        .k6(32'b10111110000000111011000001001101
),
        .k7(32'b10111110000000000100110110110101
),
        .k8(32'b00111101111111010001101110110100
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
        .k0(32'b00111110000001011101010010001000
),
        .k1(32'b00111101100101101010100100010101
),
        .k2(32'b10111101111001000010111101111011
),
        .k3(32'b10111101111100111001111110000000
),
        .k4(32'b10111101100111111000010101111111
),
        .k5(32'b10111101101000110001001010100101
),
        .k6(32'b10111101111111000111111001001100
),
        .k7(32'b10111110000001101000011010100001
),
        .k8(32'b00111011101101111101001100110110
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
        .k0(32'b10111100011110100010010110010111
),
        .k1(32'b00111110000010100010001110000101
),
        .k2(32'b10111101011010110101000100111111
),
        .k3(32'b00111101110000111001101000100101
),
        .k4(32'b10111101011111010000001110110010
),
        .k5(32'b10111101110111010011001001110010
),
        .k6(32'b00111101010010110010101010111110
),
        .k7(32'b00111101100000001100111100001000
),
        .k8(32'b10111101001110011110110101111110
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
        .k0(32'b00111101100011001011010100001001
),
        .k1(32'b00111110000111011000101110111010
),
        .k2(32'b00111101101001001001111000001010
),
        .k3(32'b10111101010110101001001111100101
),
        .k4(32'b10111110001001110111100001011110
),
        .k5(32'b10111101001110111000101011011000
),
        .k6(32'b00111110000110101111111110000101
),
        .k7(32'b10111101101110000011111001110001
),
        .k8(32'b00111101100100011111110101110110
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
        .k0(32'b00111101011000000111001011110110
),
        .k1(32'b10111101111101110000011111101110
),
        .k2(32'b10111011110001110000100001101101
),
        .k3(32'b10111101011100001110000011100001
),
        .k4(32'b00111101000100011111000111010100
),
        .k5(32'b10111101011011001111000010010111
),
        .k6(32'b10111101101011110101000010110011
),
        .k7(32'b00111110000000000111110011001011
),
        .k8(32'b10111110000001000111101011001111
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
        .k0(32'b10111100010000100011011001000110
),
        .k1(32'b10111110000010101111000100101011
),
        .k2(32'b10111101011010110100100010100111
),
        .k3(32'b00111101010000011010000000001111
),
        .k4(32'b00111101111011011101101100110111
),
        .k5(32'b10111101111001110000000101101000
),
        .k6(32'b00111101000000001010101001000110
),
        .k7(32'b10111100000110011101000100001110
),
        .k8(32'b10111001111101111101011100010111
)  
)conv2D_inst_7(
        .data_in(data_in_channel7),
        .clk(clk), .rst(rst), .valid_in(~data_fifo_empty7),
        .valid_out(valid_in_adder), .rdreq(rdreq),
        .data_out(data_out_conv2d_channel7)
);

add_bias_8_channel #(
        .DATA_WIDTH(DATA_WIDTH),
        .bias(bias)
)add_bias_8_channel_inst(
        .data_out_conv2d_channel0(data_out_conv2d_channel0),
        .data_out_conv2d_channel1(data_out_conv2d_channel1),
        .data_out_conv2d_channel2(data_out_conv2d_channel2),
        .data_out_conv2d_channel3(data_out_conv2d_channel3),
        .data_out_conv2d_channel4(data_out_conv2d_channel4),
        .data_out_conv2d_channel5(data_out_conv2d_channel5),
        .data_out_conv2d_channel6(data_out_conv2d_channel6),
        .data_out_conv2d_channel7(data_out_conv2d_channel7),
        .valid_in_adder(valid_in_adder), .clk(clk), .rst(rst),
        .data_out(data_out),
        .valid_out(valid_out)
);

endmodule
////////////////////////////////////////// FILTER 12 //////////////////////////////////////////
module featuremap_conv2d_2_filter12
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b00111011101010000010110100101101
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
    
    input  data_fifo_empty0,
    input  data_fifo_empty1,
    input  data_fifo_empty2,
    input  data_fifo_empty3,
    input  data_fifo_empty4,
    input  data_fifo_empty5,
    input  data_fifo_empty6,
    input  data_fifo_empty7,

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

    wire valid_in_adder;

conv2D #(
        .DATA_WIDTH(DATA_WIDTH),
        .WIDTH(WIDTH+2),
        .k0(32'b10111101011101011011110000000110
),
        .k1(32'b10111101101001111000111100101101
),
        .k2(32'b10111101101110100001000111110111
),
        .k3(32'b00111101000000101000000110000000
),
        .k4(32'b10111101101000000011001101011101
),
        .k5(32'b00111101001010001101010110110110
),
        .k6(32'b10111101111011110101010101101101
),
        .k7(32'b00111101110011001000001101000010
),
        .k8(32'b10111101110000011101101000111011
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
        .k0(32'b00111100010000011001001000110011
),
        .k1(32'b00111101100100000010110110011100
),
        .k2(32'b00111101111100010001010010010010
),
        .k3(32'b00111101101010001001110000000000
),
        .k4(32'b10111110000011101101011001101001
),
        .k5(32'b10111110000010000100111010101010
),
        .k6(32'b00111101101110001011111111111011
),
        .k7(32'b10111110000010010100101011101110
),
        .k8(32'b10111101000110011010101110101101
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
        .k0(32'b00111110000000000011101001110111
),
        .k1(32'b00111101011100011000010010111010
),
        .k2(32'b10111100110011100110101111101111
),
        .k3(32'b00111110001001000001001001011101
),
        .k4(32'b10111101101101011110100110100101
),
        .k5(32'b00111101111110110110010011010110
),
        .k6(32'b10111101100110100101111100011001
),
        .k7(32'b00111110001010011100101001111010
),
        .k8(32'b00111110000001111000111010101101
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
        .k0(32'b00111101100010101000000000011100
),
        .k1(32'b00111100111001010110011100111111
),
        .k2(32'b00111100000010010100111110010011
),
        .k3(32'b10111101000110101100111011100111
),
        .k4(32'b10111101101010110010101000001011
),
        .k5(32'b00111101011000111110001001110100
),
        .k6(32'b10111101010010001001111111011011
),
        .k7(32'b00111110001010110010010101010111
),
        .k8(32'b00111100111110010110100101101001
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
        .k0(32'b10111101010010010011001000100100
),
        .k1(32'b10111101001010110000111111101000
),
        .k2(32'b00111101000001101011000100000101
),
        .k3(32'b00111110000111111010010111111111
),
        .k4(32'b00111101001000001000110110111110
),
        .k5(32'b10111101100110111010101110110010
),
        .k6(32'b10111100110010100010001110010001
),
        .k7(32'b00111110001001100000101010010101
),
        .k8(32'b10111110000001110110000011010101
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
        .k0(32'b10111101100000110001110101110001
),
        .k1(32'b00111101111100111110001010101101
),
        .k2(32'b00111110001000011111000011010101
),
        .k3(32'b00111101001111110110110100101010
),
        .k4(32'b10111101101100110011101001111100
),
        .k5(32'b00111110000100000000100101100001
),
        .k6(32'b00111101111000111000000011011000
),
        .k7(32'b10111101011111101101010101110101
),
        .k8(32'b10111101000101010011011001110111
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
        .k0(32'b10111101101101100110001010101101
),
        .k1(32'b00111110000001010111101111100100
),
        .k2(32'b00111011001001100101100010100011
),
        .k3(32'b10111101101111010001110111100000
),
        .k4(32'b00111100101111100001110101000101
),
        .k5(32'b10111101011000111010011100101100
),
        .k6(32'b10111101111111100111010101010011
),
        .k7(32'b10111101100001010110101011100111
),
        .k8(32'b00111100100111010001110011011010
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
        .k0(32'b10111110000111001011110110100001
),
        .k1(32'b10111100110111001010010010000100
),
        .k2(32'b10111100101101110000100100000011
),
        .k3(32'b10111110000100011010110101111001
),
        .k4(32'b00111100000110100111011001100000
),
        .k5(32'b10111110001000100110101111101011
),
        .k6(32'b00111110000111101110101101111010
),
        .k7(32'b00111101111011001111000000101110
),
        .k8(32'b00111101000111000001100000000110
)  
)conv2D_inst_7(
        .data_in(data_in_channel7),
        .clk(clk), .rst(rst), .valid_in(~data_fifo_empty7),
        .valid_out(valid_in_adder), .rdreq(rdreq),
        .data_out(data_out_conv2d_channel7)
);

add_bias_8_channel #(
        .DATA_WIDTH(DATA_WIDTH),
        .bias(bias)
)add_bias_8_channel_inst(
        .data_out_conv2d_channel0(data_out_conv2d_channel0),
        .data_out_conv2d_channel1(data_out_conv2d_channel1),
        .data_out_conv2d_channel2(data_out_conv2d_channel2),
        .data_out_conv2d_channel3(data_out_conv2d_channel3),
        .data_out_conv2d_channel4(data_out_conv2d_channel4),
        .data_out_conv2d_channel5(data_out_conv2d_channel5),
        .data_out_conv2d_channel6(data_out_conv2d_channel6),
        .data_out_conv2d_channel7(data_out_conv2d_channel7),
        .valid_in_adder(valid_in_adder), .clk(clk), .rst(rst),
        .data_out(data_out),
        .valid_out(valid_out)
);

endmodule
////////////////////////////////////////// FILTER 13 //////////////////////////////////////////
module featuremap_conv2d_2_filter13
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b00111001101101011000111001100100
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
    
    input  data_fifo_empty0,
    input  data_fifo_empty1,
    input  data_fifo_empty2,
    input  data_fifo_empty3,
    input  data_fifo_empty4,
    input  data_fifo_empty5,
    input  data_fifo_empty6,
    input  data_fifo_empty7,

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

    wire valid_in_adder;

conv2D #(
        .DATA_WIDTH(DATA_WIDTH),
        .WIDTH(WIDTH+2),
        .k0(32'b00111100101000100000101100111101
),
        .k1(32'b10111010100001111011101101010000
),
        .k2(32'b00111110001010011101111000110111
),
        .k3(32'b10111110000101001110100110101111
),
        .k4(32'b00111110000100110100101110100010
),
        .k5(32'b00111110000101100011011011010011
),
        .k6(32'b10111101101100010010011101000001
),
        .k7(32'b10111100100011110111101100101100
),
        .k8(32'b00111101110110011110010001001010
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
        .k0(32'b10111100101001000111101001100111
),
        .k1(32'b10111101100010010011111100100100
),
        .k2(32'b10111110000111011100010001111011
),
        .k3(32'b10111101110100100101001111011110
),
        .k4(32'b10111101000110101101011000001010
),
        .k5(32'b00111101010011001110011000100010
),
        .k6(32'b00111101011110011100101111100111
),
        .k7(32'b10111100001100000111011011000010
),
        .k8(32'b10111101101110010001011101000010
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
        .k0(32'b00111110001011111010001000110111
),
        .k1(32'b10111110000111101101001000111111
),
        .k2(32'b00111100000011000001111110000100
),
        .k3(32'b00111101111000100010010000111100
),
        .k4(32'b10111101001011001001101100000000
),
        .k5(32'b10111101010111000111001100110010
),
        .k6(32'b00111110000001010101000111000111
),
        .k7(32'b00111011000101001110111011010110
),
        .k8(32'b00111110001001110001001100010011
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
        .k0(32'b10111100010011101000110100010010
),
        .k1(32'b10111110000011001111001100110010
),
        .k2(32'b10111101100110010100100111101100
),
        .k3(32'b00111101111110010010011001101101
),
        .k4(32'b00111110000000100000110000110000
),
        .k5(32'b00111101110001110001000100100010
),
        .k6(32'b00111101110010100100101011111110
),
        .k7(32'b00111110001001000011100010100010
),
        .k8(32'b10111101000110101111100010100010
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
        .k0(32'b00111101101101110110101110010110
),
        .k1(32'b00111101010000010011100111110010
),
        .k2(32'b10111101000101101001101110000011
),
        .k3(32'b00111110001000010011000010001001
),
        .k4(32'b00111100111101111111001001110001
),
        .k5(32'b00111110000101111101001000010010
),
        .k6(32'b00111101100000001011011001110101
),
        .k7(32'b10111100110110100100100011110100
),
        .k8(32'b00111110000001101101001000101110
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
        .k0(32'b10111101111110010101000101001010
),
        .k1(32'b00111101101101001101001001001000
),
        .k2(32'b00111110000100110110011010111110
),
        .k3(32'b00111011010001000000110001100011
),
        .k4(32'b10111101110111011101111010110000
),
        .k5(32'b10111100001101011000010101101101
),
        .k6(32'b00111110001000100000001010010110
),
        .k7(32'b00111101110110000000000110001111
),
        .k8(32'b00111101110001110010010000110111
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
        .k0(32'b10111101111000001110000001101100
),
        .k1(32'b10111101110100000001000101100111
),
        .k2(32'b10111101111000010101100010010110
),
        .k3(32'b10111101111101101011100100100111
),
        .k4(32'b10111110000100100110101000101111
),
        .k5(32'b00111110000010011011000010111001
),
        .k6(32'b00111110000001100011100001111101
),
        .k7(32'b00111100001110100001001010011010
),
        .k8(32'b10111101111111100001010111001110
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
        .k0(32'b10111110001000000101101010011101
),
        .k1(32'b10111101010100101010001011011110
),
        .k2(32'b10111110000000011111001010100011
),
        .k3(32'b00111101111110111001100100101111
),
        .k4(32'b00111101101111001001001010101001
),
        .k5(32'b10111101000110010000010100001111
),
        .k6(32'b10111101111011000001111010010100
),
        .k7(32'b00111100010100011110010000001111
),
        .k8(32'b10111110000010001110101010001110
)  
)conv2D_inst_7(
        .data_in(data_in_channel7),
        .clk(clk), .rst(rst), .valid_in(~data_fifo_empty7),
        .valid_out(valid_in_adder), .rdreq(rdreq),
        .data_out(data_out_conv2d_channel7)
);

add_bias_8_channel #(
        .DATA_WIDTH(DATA_WIDTH),
        .bias(bias)
)add_bias_8_channel_inst(
        .data_out_conv2d_channel0(data_out_conv2d_channel0),
        .data_out_conv2d_channel1(data_out_conv2d_channel1),
        .data_out_conv2d_channel2(data_out_conv2d_channel2),
        .data_out_conv2d_channel3(data_out_conv2d_channel3),
        .data_out_conv2d_channel4(data_out_conv2d_channel4),
        .data_out_conv2d_channel5(data_out_conv2d_channel5),
        .data_out_conv2d_channel6(data_out_conv2d_channel6),
        .data_out_conv2d_channel7(data_out_conv2d_channel7),
        .valid_in_adder(valid_in_adder), .clk(clk), .rst(rst),
        .data_out(data_out),
        .valid_out(valid_out)
);

endmodule
////////////////////////////////////////// FILTER 14 //////////////////////////////////////////
module featuremap_conv2d_2_filter14
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b00111011001100101110110001100110
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
    
    input  data_fifo_empty0,
    input  data_fifo_empty1,
    input  data_fifo_empty2,
    input  data_fifo_empty3,
    input  data_fifo_empty4,
    input  data_fifo_empty5,
    input  data_fifo_empty6,
    input  data_fifo_empty7,

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

    wire valid_in_adder;

conv2D #(
        .DATA_WIDTH(DATA_WIDTH),
        .WIDTH(WIDTH+2),
        .k0(32'b00111110001001001110110110001001
),
        .k1(32'b00111100111001000100100001000111
),
        .k2(32'b10111110000100010000100100010101
),
        .k3(32'b00111011001111001110100101010011
),
        .k4(32'b00111110000001000011100110100111
),
        .k5(32'b00111101110010011101101100111110
),
        .k6(32'b10111101001011111110111110010100
),
        .k7(32'b10111101010000010110010100011111
),
        .k8(32'b00111101111011110101010000101101
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
        .k0(32'b10111110000011110100000001010000
),
        .k1(32'b00111010110000100001111000100100
),
        .k2(32'b00111101000100000100101110100000
),
        .k3(32'b10111101110000111001101001100011
),
        .k4(32'b10111101110011010110001001111011
),
        .k5(32'b00111100011011111000001111000110
),
        .k6(32'b10111101101000001110100110000101
),
        .k7(32'b00111101000110010101101100000011
),
        .k8(32'b10111101001101001011110010111100
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
        .k0(32'b10111101110010101000111011010011
),
        .k1(32'b00111110000000011111110111110001
),
        .k2(32'b10111101101001100111001001011001
),
        .k3(32'b00111101010101011111111110000011
),
        .k4(32'b10111110000000001011111101001010
),
        .k5(32'b00111110000101000010000001100000
),
        .k6(32'b10111100101000000001000001010110
),
        .k7(32'b00111101101100101110100100001011
),
        .k8(32'b00111101111110100000100001110100
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
        .k0(32'b00111100101110011111000010000010
),
        .k1(32'b10111110000010110000101100001011
),
        .k2(32'b00111110001000110010110000111100
),
        .k3(32'b10111101111111001001000001000111
),
        .k4(32'b00111110000011110000011100001101
),
        .k5(32'b00111101101111101000011100010000
),
        .k6(32'b00111101010111000011010110111011
),
        .k7(32'b00111110001010011011111000101010
),
        .k8(32'b10111101011111000111101101101000
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
        .k0(32'b10111110000001000010011001110110
),
        .k1(32'b10111101001100001000010100100110
),
        .k2(32'b00111101010011011110000001000101
),
        .k3(32'b00111101111000000000100010011001
),
        .k4(32'b10111101110001100011011000001100
),
        .k5(32'b00111101101001010110111011000110
),
        .k6(32'b10111110000001010110100011100000
),
        .k7(32'b10111110000001101001011001000000
),
        .k8(32'b10111100111010000000010101010010
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
        .k0(32'b10111100011000110100011100100000
),
        .k1(32'b10111100111110010110110111010001
),
        .k2(32'b10111101110110110110001110111101
),
        .k3(32'b10111101101111000100101100111001
),
        .k4(32'b00111110000011100000101011100000
),
        .k5(32'b10111101000000010010011011010111
),
        .k6(32'b00111101110011001000100100010000
),
        .k7(32'b10111011110111010100110000100110
),
        .k8(32'b10111101000000010010111101111001
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
        .k0(32'b00111011111111111111011100010011
),
        .k1(32'b00111101000010010010111010011001
),
        .k2(32'b00111101110000011011010101100111
),
        .k3(32'b00111110000111110111011100110001
),
        .k4(32'b10111101110011101111101011010111
),
        .k5(32'b00111101101001000110100111101000
),
        .k6(32'b00111101111001101001100101010111
),
        .k7(32'b00111101100110011110010110100100
),
        .k8(32'b10111011100000110111101010001000
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
        .k0(32'b00111011010111110001000000100001
),
        .k1(32'b10111110000001001110111001001011
),
        .k2(32'b00111101100001000001100101100010
),
        .k3(32'b00111101000111111101000000110100
),
        .k4(32'b10111101111110110101000011110111
),
        .k5(32'b10111011100001101000001011010001
),
        .k6(32'b10111101101010100000001101011001
),
        .k7(32'b10111101110010111000010111011000
),
        .k8(32'b00111101100001010010101111100101
)  
)conv2D_inst_7(
        .data_in(data_in_channel7),
        .clk(clk), .rst(rst), .valid_in(~data_fifo_empty7),
        .valid_out(valid_in_adder), .rdreq(rdreq),
        .data_out(data_out_conv2d_channel7)
);

add_bias_8_channel #(
        .DATA_WIDTH(DATA_WIDTH),
        .bias(bias)
)add_bias_8_channel_inst(
        .data_out_conv2d_channel0(data_out_conv2d_channel0),
        .data_out_conv2d_channel1(data_out_conv2d_channel1),
        .data_out_conv2d_channel2(data_out_conv2d_channel2),
        .data_out_conv2d_channel3(data_out_conv2d_channel3),
        .data_out_conv2d_channel4(data_out_conv2d_channel4),
        .data_out_conv2d_channel5(data_out_conv2d_channel5),
        .data_out_conv2d_channel6(data_out_conv2d_channel6),
        .data_out_conv2d_channel7(data_out_conv2d_channel7),
        .valid_in_adder(valid_in_adder), .clk(clk), .rst(rst),
        .data_out(data_out),
        .valid_out(valid_out)
);

endmodule
////////////////////////////////////////// FILTER 15 //////////////////////////////////////////
module featuremap_conv2d_2_filter15
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b00111100100001011001010010011110
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
    
    input  data_fifo_empty0,
    input  data_fifo_empty1,
    input  data_fifo_empty2,
    input  data_fifo_empty3,
    input  data_fifo_empty4,
    input  data_fifo_empty5,
    input  data_fifo_empty6,
    input  data_fifo_empty7,

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

    wire valid_in_adder;

conv2D #(
        .DATA_WIDTH(DATA_WIDTH),
        .WIDTH(WIDTH+2),
        .k0(32'b00111110000001100011011010101111
),
        .k1(32'b10111101100101000011101100111000
),
        .k2(32'b00111100110010000010001010101111
),
        .k3(32'b00111101101000100010001110101011
),
        .k4(32'b00111101100011001101101101000001
),
        .k5(32'b00111101111101110101111111101111
),
        .k6(32'b10111101111110100111110100011010
),
        .k7(32'b00111100100001100010010101100100
),
        .k8(32'b10111101111001010100010110111100
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
        .k0(32'b10111101110110101010010110101111
),
        .k1(32'b00111101001101110100110000111001
),
        .k2(32'b10111100001001110100111111010011
),
        .k3(32'b10111101110101100001001101000110
),
        .k4(32'b10111110000110011001010100110011
),
        .k5(32'b00111100101001011101100000111111
),
        .k6(32'b00111110001011001000110101100010
),
        .k7(32'b10111101000010011110110011011001
),
        .k8(32'b10111101111100010001101111001010
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
        .k0(32'b10111101100000000110111101101010
),
        .k1(32'b10111101100100100011110000010011
),
        .k2(32'b00111101101001111011011100100011
),
        .k3(32'b10111110000011110101100111100101
),
        .k4(32'b00111011110111011011110101011101
),
        .k5(32'b10111101101000100001000100011010
),
        .k6(32'b00111110001000110010111100011111
),
        .k7(32'b10111110001000110000000111010111
),
        .k8(32'b00111110000100111110000101111011
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
        .k0(32'b10111011111111000101010001000111
),
        .k1(32'b10111101011100010011111001100110
),
        .k2(32'b00111110000001000011111011001100
),
        .k3(32'b10111101100010111101011111010010
),
        .k4(32'b10111110000000001000100011110000
),
        .k5(32'b10111100110110110101101110001111
),
        .k6(32'b00111101000000000000000100000111
),
        .k7(32'b00111110000101111100101010011001
),
        .k8(32'b10111101011101000110010000101001
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
        .k0(32'b00111101010101111110011001100110
),
        .k1(32'b10111110001000101110111100011001
),
        .k2(32'b10111110001011010110011011101111
),
        .k3(32'b10111100110001001010000000110101
),
        .k4(32'b00111101010011000011001001110000
),
        .k5(32'b00111110000000110010010110001000
),
        .k6(32'b00111101111001111110000010000111
),
        .k7(32'b00111110000101101100000111110000
),
        .k8(32'b00111101110011011111010010101011
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
        .k0(32'b00111101100111000011101011100010
),
        .k1(32'b00111101010011110110010100001001
),
        .k2(32'b10111101100111010110101011001111
),
        .k3(32'b10111101001110101011111011100100
),
        .k4(32'b00111101110111111111110111010011
),
        .k5(32'b00111101100000000110110111100011
),
        .k6(32'b00111101100101101111110100000100
),
        .k7(32'b10111101101100110010101010011101
),
        .k8(32'b10111101010111100011000111011010
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
        .k0(32'b00111001010000001010110110000011
),
        .k1(32'b00111110000111011111001011010110
),
        .k2(32'b00111101100111101110010111000101
),
        .k3(32'b00111101110100111010111011001001
),
        .k4(32'b00111100100001100001000001010010
),
        .k5(32'b10111101110111110001000100001110
),
        .k6(32'b00111101011100011010101110001001
),
        .k7(32'b10111101000000111000011101111001
),
        .k8(32'b00111101000000010001101100101001
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
        .k0(32'b10111100101011001010111000100010
),
        .k1(32'b10111101110011011000000011011100
),
        .k2(32'b10111101111110100011110111111111
),
        .k3(32'b00111110000100010100010101101010
),
        .k4(32'b10111101110000001000111111100010
),
        .k5(32'b10111101110100100000000011000000
),
        .k6(32'b10111101100010111011101010100001
),
        .k7(32'b10111101011010111011100111001000
),
        .k8(32'b10111110000100011111101101010100
)  
)conv2D_inst_7(
        .data_in(data_in_channel7),
        .clk(clk), .rst(rst), .valid_in(~data_fifo_empty7),
        .valid_out(valid_in_adder), .rdreq(rdreq),
        .data_out(data_out_conv2d_channel7)
);

add_bias_8_channel #(
        .DATA_WIDTH(DATA_WIDTH),
        .bias(bias)
)add_bias_8_channel_inst(
        .data_out_conv2d_channel0(data_out_conv2d_channel0),
        .data_out_conv2d_channel1(data_out_conv2d_channel1),
        .data_out_conv2d_channel2(data_out_conv2d_channel2),
        .data_out_conv2d_channel3(data_out_conv2d_channel3),
        .data_out_conv2d_channel4(data_out_conv2d_channel4),
        .data_out_conv2d_channel5(data_out_conv2d_channel5),
        .data_out_conv2d_channel6(data_out_conv2d_channel6),
        .data_out_conv2d_channel7(data_out_conv2d_channel7),
        .valid_in_adder(valid_in_adder), .clk(clk), .rst(rst),
        .data_out(data_out),
        .valid_out(valid_out)
);

endmodule
