////////////////////////////////////////// FILTER 0 //////////////////////////////////////////
module featuremap_conv2d_1_filter0
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b00111011010010110101011101111000
,   
    parameter WIDTH = 112
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
        .k0(32'b00111101100110100001110111000101
),
        .k1(32'b00111110000010000000001001000110
),
        .k2(32'b00111011001010111110100101111111
),
        .k3(32'b00111101101011001011011101110110
),
        .k4(32'b10111101100001100011011010000000
),
        .k5(32'b10111101000110100011111111000011
),
        .k6(32'b00111110000100100001010000100011
),
        .k7(32'b00111110000110101110100001111010
),
        .k8(32'b00111101000101011001011110101100
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
        .k0(32'b10111101011011110011011111001100
),
        .k1(32'b00111101111000001011000000100100
),
        .k2(32'b10111110001111100101000011100011
),
        .k3(32'b10111101111101100111001101010011
),
        .k4(32'b10111101000111110010000011110110
),
        .k5(32'b10111100010001000010001011001001
),
        .k6(32'b10111100100000101010011100011010
),
        .k7(32'b10111101111000100100000001000010
),
        .k8(32'b00111101010011101010000001100001
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
        .k0(32'b10111101100101011100101001010010
),
        .k1(32'b00111110001001000000001100011111
),
        .k2(32'b00111110010001111100100101110001
),
        .k3(32'b00111110010010000100110010111111
),
        .k4(32'b10111101001110001000001111000010
),
        .k5(32'b10111101011101110101001110111101
),
        .k6(32'b10111110000100001110101101000100
),
        .k7(32'b10111110001101111100111011001011
),
        .k8(32'b10111110001000100011010000111001
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
        .k0(32'b10111101010100000010100001101111
),
        .k1(32'b10111101101111101110101010010001
),
        .k2(32'b10111110000010001101110010100111
),
        .k3(32'b10111110001001101100010110100111
),
        .k4(32'b10111110001011101010000010111001
),
        .k5(32'b00111101110000001101110110000110
),
        .k6(32'b10111110000011110100110100000100
),
        .k7(32'b10111101111001010001101001010100
),
        .k8(32'b00111110000101001100101011110110
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
        .k0(32'b00111110001001111111011011110101
),
        .k1(32'b10111110001010000000110010110100
),
        .k2(32'b00111110010000010110001101110011
),
        .k3(32'b00111101010001001000001111111101
),
        .k4(32'b10111101110010010101001101111001
),
        .k5(32'b00111110000101101011011000011000
),
        .k6(32'b10111110010010000011000111011101
),
        .k7(32'b10111110000001100000000101100000
),
        .k8(32'b00111101100001100111111111110111
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
        .k0(32'b00111101010000011011000011100110
),
        .k1(32'b10111110000011001100000001011001
),
        .k2(32'b00111101010110111001001111110110
),
        .k3(32'b00111110001100100011100100101000
),
        .k4(32'b10111101000000100011010011111011
),
        .k5(32'b10111101010001001100100100111100
),
        .k6(32'b00111110001010011000111000100011
),
        .k7(32'b00111110000110000110100001000101
),
        .k8(32'b00111110010000110001101011011011
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
        .k0(32'b00111110001011111000110010110100
),
        .k1(32'b10111101101111011010111001100111
),
        .k2(32'b00111110000011101110000010100000
),
        .k3(32'b00111101001101101101100011011011
),
        .k4(32'b10111101111101100000000110011101
),
        .k5(32'b00111101100111101001100010010110
),
        .k6(32'b00111101110100101111001000110101
),
        .k7(32'b00111101101101101101011100000101
),
        .k8(32'b00111101101101010101001001000111
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
        .k0(32'b00111101001111101000011100101110
),
        .k1(32'b00111100110101100110101011110101
),
        .k2(32'b00111110001101110101011111001001
),
        .k3(32'b00111101101000101100001100001111
),
        .k4(32'b10111101011011000100111111001110
),
        .k5(32'b10111101010010010011010000001000
),
        .k6(32'b10111101010010000010010100111010
),
        .k7(32'b00111100000010000001111011011000
),
        .k8(32'b00111110000011101010000101001101
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
module featuremap_conv2d_1_filter1
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b10111011100100111111011011101001
,   
    parameter WIDTH = 112
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
        .k0(32'b10111101111111100010011110101100
),
        .k1(32'b10111101100100000110110011100100
),
        .k2(32'b10111110001111111000011000001001
),
        .k3(32'b10111110010000110010001011000010
),
        .k4(32'b00111100000010001101000111110100
),
        .k5(32'b10111100100111110100011111100110
),
        .k6(32'b10111011110100101010101001011100
),
        .k7(32'b00111110001001000000111101001111
),
        .k8(32'b00111101001000000000100000111100
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
        .k0(32'b00111110001111101010001110111001
),
        .k1(32'b00111101001110100001101010111111
),
        .k2(32'b10111101111001011100100111010100
),
        .k3(32'b00111011110111001101100100110010
),
        .k4(32'b10111100100001110000001110111001
),
        .k5(32'b00111101010011000111001001100001
),
        .k6(32'b00111101111011011011011000101001
),
        .k7(32'b10111110001111010110000010101101
),
        .k8(32'b00111110010000110000001011000110
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
        .k0(32'b10111101100100001110111100010101
),
        .k1(32'b10111011110101100110111010101000
),
        .k2(32'b10111110001011100101111000100001
),
        .k3(32'b00111110001111110101100001011001
),
        .k4(32'b10111110001110111000100000111111
),
        .k5(32'b10111100011110101101100100101100
),
        .k6(32'b10111110001001001110010110111110
),
        .k7(32'b10111101100010100110011101000110
),
        .k8(32'b00111110001011010001110100001111
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
        .k0(32'b00111110000110111011100010110110
),
        .k1(32'b00111110000000101111100010001011
),
        .k2(32'b00111110010000110011111010100001
),
        .k3(32'b00111101011000000001001000110110
),
        .k4(32'b10111101100010001100011011110010
),
        .k5(32'b10111101110001010111101111001001
),
        .k6(32'b00111100111001001111100110101101
),
        .k7(32'b00111101110101000011110011010001
),
        .k8(32'b00111110001110110110001010001111
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
        .k0(32'b00111110001011110100000101000010
),
        .k1(32'b00111110001101111101110011010110
),
        .k2(32'b10111101111001100010100110111111
),
        .k3(32'b00111101111000111100010000010000
),
        .k4(32'b00111110000110111001010010101101
),
        .k5(32'b00111110000110010110101011010011
),
        .k6(32'b00111110001001100111110101001110
),
        .k7(32'b10111101000010011000000111111110
),
        .k8(32'b10111100111101001110010010010110
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
        .k0(32'b00111101011110010001100001110110
),
        .k1(32'b00111110001110101111100001101111
),
        .k2(32'b10111101110010110001111100011010
),
        .k3(32'b00111100110000101100110101100101
),
        .k4(32'b00111101110111111110011100101001
),
        .k5(32'b00111100100101111100010111101101
),
        .k6(32'b00111110000001001010100110000001
),
        .k7(32'b00111110001001101101100100110001
),
        .k8(32'b10111110000000011111111010010010
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
        .k0(32'b10111100111111000100100000101100
),
        .k1(32'b00111101000110111010000111011010
),
        .k2(32'b00111100110010010011101011100110
),
        .k3(32'b00111101010100011100011100110010
),
        .k4(32'b00111110000101011010110100101110
),
        .k5(32'b00111101111110011010011111110100
),
        .k6(32'b10111101010100010100001000111110
),
        .k7(32'b00111101101110100110100110001111
),
        .k8(32'b10111101011001101100010000001101
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
        .k0(32'b10111100111011011011001101111101
),
        .k1(32'b00111101110101111101110010001111
),
        .k2(32'b00111101011000100111000100001111
),
        .k3(32'b10111100100110000100101101000111
),
        .k4(32'b10111100101111110010101111110111
),
        .k5(32'b00111101111001001100001101111110
),
        .k6(32'b10111110001000111101010101011010
),
        .k7(32'b10111101000110110011000110011011
),
        .k8(32'b10111101111111100001010101011001
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
module featuremap_conv2d_1_filter2
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b00111010010110000000011001100000
,   
    parameter WIDTH = 112
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
        .k0(32'b00111110001011110001111110001010
),
        .k1(32'b00111101111010010110101110000110
),
        .k2(32'b00111110001011000000011101100111
),
        .k3(32'b00111101110000011010110111111111
),
        .k4(32'b10111101111111101001111101011000
),
        .k5(32'b10111100101011100100110100111100
),
        .k6(32'b10111101110001111001111101110000
),
        .k7(32'b10111110000011010101110101001101
),
        .k8(32'b00111100110000011111111000000100
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
        .k0(32'b00111100111110100010011100110100
),
        .k1(32'b10111110001011010110100010101110
),
        .k2(32'b00111101111011101110101111111101
),
        .k3(32'b00111110001110001010101100111100
),
        .k4(32'b10111101111101101110100001111010
),
        .k5(32'b10111101010011110010101010101011
),
        .k6(32'b00111101111110000100111001010011
),
        .k7(32'b00111110001111110101000110111111
),
        .k8(32'b00111101101101100011011110111111
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
        .k0(32'b00111101010010110010110101111101
),
        .k1(32'b10111101011001110001011110111100
),
        .k2(32'b10111110001010100011011100010011
),
        .k3(32'b00111110010100101100100011010110
),
        .k4(32'b10111110001010111110110011000011
),
        .k5(32'b00111110001011010001000001010010
),
        .k6(32'b10111101001101011000110000100101
),
        .k7(32'b10111101100001110011000100011100
),
        .k8(32'b00111101101101000001001011100100
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
        .k0(32'b10111110000000101111010001000011
),
        .k1(32'b00111101111001110100010001001011
),
        .k2(32'b00111101011101001010011001001001
),
        .k3(32'b00111101011110100110000111110011
),
        .k4(32'b00111110001011000010100011100111
),
        .k5(32'b00111110000011111111101011101111
),
        .k6(32'b10111110001000000110011111100011
),
        .k7(32'b10111110000111110101011111001100
),
        .k8(32'b00111101001011011100010011110010
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
        .k0(32'b10111100110011011100101111001011
),
        .k1(32'b00111011111011010110100000001101
),
        .k2(32'b10111110010000001101000010000111
),
        .k3(32'b00111110000010111100110011000011
),
        .k4(32'b00111110001011010011001101000010
),
        .k5(32'b00111101100100000100010011011000
),
        .k6(32'b10111110000100101001001100111011
),
        .k7(32'b10111110010011001011111001110100
),
        .k8(32'b00111010110010100010011100111010
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
        .k0(32'b10111101011011111111100001001110
),
        .k1(32'b00111110000101011101010010001001
),
        .k2(32'b10111110011000001000000101101011
),
        .k3(32'b10111011111011011111000001110010
),
        .k4(32'b00111110001011110100111100000001
),
        .k5(32'b10111110001100101000101110010101
),
        .k6(32'b10111110001111000111111010011110
),
        .k7(32'b00111100110101010011011100001000
),
        .k8(32'b00111100100011100110010101000111
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
        .k0(32'b00111101111100100110110100101100
),
        .k1(32'b10111100101010110001010110010000
),
        .k2(32'b00111110000010000010100000100010
),
        .k3(32'b00111101110100011000100010001010
),
        .k4(32'b00111101101100011100001000101100
),
        .k5(32'b10111101100000100001000100100000
),
        .k6(32'b00111101110000101100110011111100
),
        .k7(32'b00111101010100100000000111010001
),
        .k8(32'b10111101000001111100100111111010
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
        .k0(32'b10111101100010111111110011110100
),
        .k1(32'b10111100100111010110101100111001
),
        .k2(32'b10111100100100001010101011101001
),
        .k3(32'b00111101001100001110011000110010
),
        .k4(32'b10111101101000100111011111001010
),
        .k5(32'b10111110001001000000111001011101
),
        .k6(32'b10111110000110100111101011001101
),
        .k7(32'b00111101000000100000100110111111
),
        .k8(32'b00111110001110011001001011010001
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
module featuremap_conv2d_1_filter3
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b00111011100000000110011011010101
,   
    parameter WIDTH = 112
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
        .k0(32'b10111110000011000011101100000110
),
        .k1(32'b00111110000100101010100010000100
),
        .k2(32'b10111101101011001011101010111011
),
        .k3(32'b10111110001010010101100101101111
),
        .k4(32'b00111110000111001001001101100110
),
        .k5(32'b00111101001111110000000010111111
),
        .k6(32'b10111110011000010110001101110110
),
        .k7(32'b00111011011010001111101011000011
),
        .k8(32'b10111110011000111001001000110110
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
        .k0(32'b10111101110000011000100111110010
),
        .k1(32'b10111110000101011001001100100100
),
        .k2(32'b00111110000000000000100010001000
),
        .k3(32'b00111101111110010101111010101010
),
        .k4(32'b10111110001111010000100011011100
),
        .k5(32'b00111101110001011100111000101010
),
        .k6(32'b00111110000001000001000000100000
),
        .k7(32'b00111011100100100011001110000110
),
        .k8(32'b00111101110101110010001011011011
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
        .k0(32'b00111110000010011011010011001000
),
        .k1(32'b10111101100011100001100011110010
),
        .k2(32'b00111101010000011101101110001011
),
        .k3(32'b00111110001000010100001111110011
),
        .k4(32'b00111101101011001010000010111111
),
        .k5(32'b00111100010100100010010100010001
),
        .k6(32'b10111101110011110000001010110000
),
        .k7(32'b00111110001001010000100001101100
),
        .k8(32'b10111101101100110001100010011110
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
        .k0(32'b00111110000010001100000111000010
),
        .k1(32'b10111101111001001011110010010001
),
        .k2(32'b10111101110011000011111000110000
),
        .k3(32'b00111101001101101111110011110101
),
        .k4(32'b10111110001010000110011001011011
),
        .k5(32'b10111101110011010011000100000110
),
        .k6(32'b00111101110111100101000101111010
),
        .k7(32'b10111100010010011000100100101011
),
        .k8(32'b10111110010001011000111001100000
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
        .k0(32'b00111110010101000001110010011010
),
        .k1(32'b00111101100111110000100000110011
),
        .k2(32'b00111100001001111001100011100111
),
        .k3(32'b00111100011101011111011011001111
),
        .k4(32'b00111101100010010010010001111101
),
        .k5(32'b00111110001110111100101111111101
),
        .k6(32'b00111110010010100111110011111000
),
        .k7(32'b10111100101100110110011000011110
),
        .k8(32'b00111101111010001010111111110100
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
        .k0(32'b00111101101011011110011001011110
),
        .k1(32'b10111101110001100100010110110111
),
        .k2(32'b10111011100111111101100001111110
),
        .k3(32'b00111100011101110101000101110110
),
        .k4(32'b00111110011110100011001010011101
),
        .k5(32'b00111110011101001110100001011000
),
        .k6(32'b10111101000001100100101101011101
),
        .k7(32'b00111110011101000000101010110010
),
        .k8(32'b00111101100010100000101010010101
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
        .k0(32'b10111101010000101001110100010101
),
        .k1(32'b10111101100010011100110011100100
),
        .k2(32'b10111101001001100010000111100001
),
        .k3(32'b00111110000011001011101100010010
),
        .k4(32'b10111101110010000010000101001110
),
        .k5(32'b10111101011110110110111100110100
),
        .k6(32'b00111110010011011000101011001011
),
        .k7(32'b10111101101111110010100101111011
),
        .k8(32'b00111110000110111000011010010101
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
        .k0(32'b10111101100001100010111111110001
),
        .k1(32'b10111100101111110100000100001001
),
        .k2(32'b00111100011110100001000001111110
),
        .k3(32'b00111110010010101101111000101001
),
        .k4(32'b00111110001001100010001110000111
),
        .k5(32'b10111101000011001010110010001001
),
        .k6(32'b10111101100111001011101001010101
),
        .k7(32'b10111101100101000110011011101001
),
        .k8(32'b00111110010001001100111010010001
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
module featuremap_conv2d_1_filter4
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b10111011100100111110010110100101
,   
    parameter WIDTH = 112
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
        .k0(32'b10111110010000000101011001111000
),
        .k1(32'b00111101110011011001001000000001
),
        .k2(32'b10111101101101011010011011101100
),
        .k3(32'b00111110001111111001000101001101
),
        .k4(32'b10111101010001101010001111010100
),
        .k5(32'b00111100101101010010111001100011
),
        .k6(32'b00111101110110011010010100001010
),
        .k7(32'b10111101111110011100001101001101
),
        .k8(32'b10111101111010111010100110011010
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
        .k0(32'b10111101000101010011101010100101
),
        .k1(32'b10111110000011001100011100010101
),
        .k2(32'b00111101111000010000100111110101
),
        .k3(32'b00111110001010011011100101110111
),
        .k4(32'b10111101010001110011111000100011
),
        .k5(32'b10111110000111101010100000101101
),
        .k6(32'b00111101100010110100011111110010
),
        .k7(32'b00111101101011001010000101101111
),
        .k8(32'b10111101110001011111000010110000
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
        .k0(32'b10111101110110101010101010010101
),
        .k1(32'b10111011100010000010110100010111
),
        .k2(32'b10111011100101111000110111000011
),
        .k3(32'b00111101110110110000001010001000
),
        .k4(32'b00111101101110010101101101100010
),
        .k5(32'b10111101110011110000111001100111
),
        .k6(32'b10111101000001100100000000010110
),
        .k7(32'b10111110001100010001110000101100
),
        .k8(32'b00111101110100011101100111100011
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
        .k0(32'b10111101110111110111101001111010
),
        .k1(32'b00111110001111010000101000011000
),
        .k2(32'b10111101101000111100001110100001
),
        .k3(32'b00111110000010000101000001001101
),
        .k4(32'b10111100010011111001000101001010
),
        .k5(32'b00111100100110100010010101010000
),
        .k6(32'b10111101100101100000110101110100
),
        .k7(32'b00111101110110001110100001000111
),
        .k8(32'b00111110001110110011110101101001
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
        .k0(32'b10111100100110101101100100111101
),
        .k1(32'b00111110000011110110010111011010
),
        .k2(32'b00111101011000001101111100101000
),
        .k3(32'b10111101100001111001011111011100
),
        .k4(32'b00111110001101100011010100000111
),
        .k5(32'b10111101001100110101101011000011
),
        .k6(32'b00111110001100101111111011001011
),
        .k7(32'b00111101111000010010010100101000
),
        .k8(32'b10111101000011101010001110101001
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
        .k0(32'b10111101101101000011100011100100
),
        .k1(32'b00111110000010010111011100001010
),
        .k2(32'b10111100110101100000111000000111
),
        .k3(32'b10111110001001011101111011000111
),
        .k4(32'b00111110010110110001110111100010
),
        .k5(32'b00111110000010000011110101101001
),
        .k6(32'b10111110001000100001100100110000
),
        .k7(32'b10111101001000101111001101101010
),
        .k8(32'b10111101000001110010011001111110
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
        .k0(32'b10111101000000011001011000100000
),
        .k1(32'b00111101100110001100010001101101
),
        .k2(32'b10111110001101100101001110110101
),
        .k3(32'b00111101001111101000100111100001
),
        .k4(32'b00111101100000110001011010110011
),
        .k5(32'b00111110010001110110000101101101
),
        .k6(32'b00111110001001010110011000111011
),
        .k7(32'b00111110001010111110101111110010
),
        .k8(32'b10111010101000100100010010001101
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
        .k0(32'b10111101001111100100011100010111
),
        .k1(32'b10111110010100001100011111101011
),
        .k2(32'b10111110000101100001010011101010
),
        .k3(32'b00111110010000101011000001101010
),
        .k4(32'b10111101100000010111000010100111
),
        .k5(32'b00111101011011010000111010000111
),
        .k6(32'b10111100010110111000010011101010
),
        .k7(32'b00111101011110100000011110101011
),
        .k8(32'b10111110010100010110000010000100
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
module featuremap_conv2d_1_filter5
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b00111011110010001111011100000100
,   
    parameter WIDTH = 112
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
        .k0(32'b00111100110101000111001111110000
),
        .k1(32'b10111110000010100100101110011001
),
        .k2(32'b00111110010010101100110011011111
),
        .k3(32'b10111110010000110011011011101001
),
        .k4(32'b00111101000010011010111111001010
),
        .k5(32'b00111101111001111111011001111011
),
        .k6(32'b00111101000010010001011100000011
),
        .k7(32'b00111110000110010111100101011101
),
        .k8(32'b10111101010111011000000010010010
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
        .k0(32'b00111001111111010100101000110100
),
        .k1(32'b00111101101100101011010100001101
),
        .k2(32'b00111110000100000110011101011111
),
        .k3(32'b00111100111111001110101111101001
),
        .k4(32'b00111101111101010000000001001110
),
        .k5(32'b00111101010100100100010110000110
),
        .k6(32'b00111110001011000101111001010100
),
        .k7(32'b00111110010001000000001111010100
),
        .k8(32'b10111101110110101010000110010010
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
        .k0(32'b00111110000100100110101010011000
),
        .k1(32'b10111101100010110101010000111100
),
        .k2(32'b00111101111000011111101100111011
),
        .k3(32'b00111110010000000111000010100011
),
        .k4(32'b00111110001100111001100000110111
),
        .k5(32'b10111100001010101011111010000100
),
        .k6(32'b00111100111110101101110000100100
),
        .k7(32'b10111101101010011100011100000011
),
        .k8(32'b00111110011000010010110101010110
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
        .k0(32'b00111101101100000000110100110010
),
        .k1(32'b10111101011100000111110010010001
),
        .k2(32'b00111100101101101011010000001101
),
        .k3(32'b00111100101010100100010100001110
),
        .k4(32'b00111110000100111100100000011001
),
        .k5(32'b10111110000010100101101000010100
),
        .k6(32'b10111110000010110111000011001101
),
        .k7(32'b10111101010000101111001011101110
),
        .k8(32'b10111110010001011110100111101100
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
        .k0(32'b10111110000001001000001001110101
),
        .k1(32'b10111100111000100000000101010101
),
        .k2(32'b00111100000101010100110101101100
),
        .k3(32'b00111110000001111001011100111110
),
        .k4(32'b10111110010000111011011100111111
),
        .k5(32'b10111110000110010100011111011011
),
        .k6(32'b00111101101011010110001001011010
),
        .k7(32'b10111110001111001100001001111101
),
        .k8(32'b10111101101101011110110101010100
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
        .k0(32'b10111101101000111101111100100000
),
        .k1(32'b10111101110110010001111010010101
),
        .k2(32'b10111101000110000010010010100011
),
        .k3(32'b00111110010001011011110011001110
),
        .k4(32'b10111101101011111100100011111111
),
        .k5(32'b10111101101110101001101101111101
),
        .k6(32'b10111110000001010011100110110110
),
        .k7(32'b00111101011000000110011111111010
),
        .k8(32'b10111101000010001000111010110100
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
        .k0(32'b10111110001010001100110111111000
),
        .k1(32'b10111100111000011000111000110000
),
        .k2(32'b00111101101110101110011010110001
),
        .k3(32'b10111100110011100001110101000101
),
        .k4(32'b10111101110000110101100110110101
),
        .k5(32'b00111101111001010011111110101101
),
        .k6(32'b10111110010010001100010101100100
),
        .k7(32'b00111110000010001110110100011000
),
        .k8(32'b10111110001111100110000100111111
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
        .k0(32'b10111101001101100101011001000110
),
        .k1(32'b00111110000101101011111110001000
),
        .k2(32'b00111101100111000011010011101011
),
        .k3(32'b00111101101101100111011110111100
),
        .k4(32'b00111101001010000110100101100011
),
        .k5(32'b10111110001100010011010111111001
),
        .k6(32'b00111110000101101101010100000100
),
        .k7(32'b00111011111101110010011111010110
),
        .k8(32'b10111110001110011001010100111000
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
module featuremap_conv2d_1_filter6
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b00111100100010111000011101001001
,   
    parameter WIDTH = 112
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
        .k0(32'b10111011010011010111000110111001
),
        .k1(32'b10111110001011100010100101100001
),
        .k2(32'b00111110010000101110110100011100
),
        .k3(32'b00111110000001110000101010000110
),
        .k4(32'b00111110010010000011101011011001
),
        .k5(32'b10111110001001000100001110110000
),
        .k6(32'b10111101110001010111010110100110
),
        .k7(32'b00111110000010010000001100011101
),
        .k8(32'b00111101111010001111111011011000
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
        .k0(32'b00111110001001101001001111011111
),
        .k1(32'b10111101000110110110110000110011
),
        .k2(32'b00111101101001001011110000000101
),
        .k3(32'b10111101000111001100110010101110
),
        .k4(32'b00111110000111010001000011100110
),
        .k5(32'b00111101110010111100000001111110
),
        .k6(32'b00111101101101100101010100000000
),
        .k7(32'b10111110001110111100011011000001
),
        .k8(32'b00111100101001001011001111111000
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
        .k0(32'b00111011100000000111101110110000
),
        .k1(32'b00111101111011011010010111000111
),
        .k2(32'b10111101001101010000010100110110
),
        .k3(32'b10111110000110011100010000110110
),
        .k4(32'b10111101101110111101010001010111
),
        .k5(32'b00111101101010000010100000101110
),
        .k6(32'b10111101000111000011101111101001
),
        .k7(32'b00111101111000001011101110110010
),
        .k8(32'b00111101000011100011100101100011
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
        .k0(32'b10111011010011100011101000111001
),
        .k1(32'b10111101110011100101000101010110
),
        .k2(32'b10111101111001111111110010011011
),
        .k3(32'b00111101101011011100111010110110
),
        .k4(32'b10111101101000001100110101000110
),
        .k5(32'b00111110001101001000111100011000
),
        .k6(32'b10111101010100101110100110111001
),
        .k7(32'b00111101101010110011000000000100
),
        .k8(32'b10111110000110010011100010110011
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
        .k0(32'b10111110001010000001110100111110
),
        .k1(32'b00111101110100101000011001100010
),
        .k2(32'b10111110001001000010010001100001
),
        .k3(32'b00111101010010100001100010010110
),
        .k4(32'b10111110001100001001011110000101
),
        .k5(32'b00111110001100101000011111100101
),
        .k6(32'b10111110001010110100100001110100
),
        .k7(32'b00111100100011100000001100001111
),
        .k8(32'b10111110010100110101011111010110
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
        .k0(32'b00111110000110101111100011001100
),
        .k1(32'b00111110000110111010011000110100
),
        .k2(32'b00111101101011111111110001010010
),
        .k3(32'b10111011101000000010111010100010
),
        .k4(32'b00111110001011111001111000001011
),
        .k5(32'b00111101101000011100011011100011
),
        .k6(32'b00111110010100101001000010000001
),
        .k7(32'b00111101100101101111001110000100
),
        .k8(32'b00111110001111001100111110000011
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
        .k0(32'b00111110001101011010011011001001
),
        .k1(32'b00111100100110010100111101101100
),
        .k2(32'b10111101111011001101011000110001
),
        .k3(32'b10111100101001000101011010000000
),
        .k4(32'b00111110010001000010110111010001
),
        .k5(32'b10111101001110001011111000000110
),
        .k6(32'b00111100111110100100010101111111
),
        .k7(32'b00111110001100000010010110001011
),
        .k8(32'b10111110000101101110101001110001
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
        .k0(32'b00111011101111110101100100111100
),
        .k1(32'b00111101110010000001011110000000
),
        .k2(32'b10111101011001100110010011011101
),
        .k3(32'b00111100100100010011001000011011
),
        .k4(32'b10111110001010010000001010000000
),
        .k5(32'b10111101001001100011110110101000
),
        .k6(32'b10111110010010100010110111101111
),
        .k7(32'b10111110001110001010100111010000
),
        .k8(32'b00111110000110011001101000001010
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
module featuremap_conv2d_1_filter7
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b00111011100100110011110110001000
,   
    parameter WIDTH = 112
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
        .k0(32'b00111101000100111011100100101111
),
        .k1(32'b10111101110001000010011001111110
),
        .k2(32'b00111101011100111000011001101010
),
        .k3(32'b10111110000001111110001101000000
),
        .k4(32'b10111100001001111000011000100101
),
        .k5(32'b10111100011110001100010110001001
),
        .k6(32'b00111101101111011110011101101000
),
        .k7(32'b00111100110100111010011100110110
),
        .k8(32'b10111110001000101001110001000111
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
        .k0(32'b00111110000010100100010101110101
),
        .k1(32'b10111101100100010011100011100000
),
        .k2(32'b00111101111000110000101111001001
),
        .k3(32'b00111110000001101000101001101010
),
        .k4(32'b00111110010100100101011101000000
),
        .k5(32'b10111101100000101100001001110111
),
        .k6(32'b10111100110100101011000110110000
),
        .k7(32'b00111110010000100011001111110000
),
        .k8(32'b00111110010111000111001001101111
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
        .k0(32'b10111101110010111001101011001101
),
        .k1(32'b10111110010100101010101011000111
),
        .k2(32'b00111110001100000000100000000111
),
        .k3(32'b10111101001000010100101101111001
),
        .k4(32'b00111110000111000001101000000100
),
        .k5(32'b00111101111110010011111001011011
),
        .k6(32'b00111101010000001001101100011001
),
        .k7(32'b00111101110110101011111010010110
),
        .k8(32'b10111101111111010101000100000110
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
        .k0(32'b00111110001001110011011001010011
),
        .k1(32'b00111010111010100110101111010101
),
        .k2(32'b10111110001001010100110110010001
),
        .k3(32'b10111110000101111011001010010000
),
        .k4(32'b00111100010000010011111001000111
),
        .k5(32'b10111100110000011101101111111010
),
        .k6(32'b00111110000010101011111111000100
),
        .k7(32'b10111101000101001110000000111111
),
        .k8(32'b00111110010010110011110100011001
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
        .k0(32'b10111101011101010000010010110111
),
        .k1(32'b10111100111101110010010001101110
),
        .k2(32'b10111110010001011011011110110100
),
        .k3(32'b10111011001111110110111100101101
),
        .k4(32'b10111110001101001000011100111110
),
        .k5(32'b10111101101001110110010101011100
),
        .k6(32'b00111011101101000011101001110101
),
        .k7(32'b10111110000111011111100011100101
),
        .k8(32'b10111101101011010011000111001110
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
        .k0(32'b00111110001000100100111111011111
),
        .k1(32'b10111101100110001110011011001101
),
        .k2(32'b10111110001110100100101001000001
),
        .k3(32'b00111101111110011111110100110110
),
        .k4(32'b00111101101111011000000000110101
),
        .k5(32'b10111110000011101011000111011110
),
        .k6(32'b10111101101010000100000011000001
),
        .k7(32'b10111100001000011100101101111011
),
        .k8(32'b10111110000000010000111001100011
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
        .k0(32'b00111101111111011010101001010001
),
        .k1(32'b10111110000110001100000000010001
),
        .k2(32'b10111101100111010010111001001111
),
        .k3(32'b10111110001011100101100011111001
),
        .k4(32'b00111101101111010100011001010010
),
        .k5(32'b00111100101111000011011010010101
),
        .k6(32'b10111110000011101111000001001011
),
        .k7(32'b10111110000101100011000100101001
),
        .k8(32'b00111110001100111111001011001010
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
        .k0(32'b00111100111111100100111010010001
),
        .k1(32'b10111110010011100111101100000001
),
        .k2(32'b10111100101100111001110011100000
),
        .k3(32'b10111110000101100100001110011011
),
        .k4(32'b10111101000111110011010000101011
),
        .k5(32'b00111101101101010011001011101011
),
        .k6(32'b10111110000111111110000001101111
),
        .k7(32'b10111101100110101000101000110100
),
        .k8(32'b00111101101000101110011111110001
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