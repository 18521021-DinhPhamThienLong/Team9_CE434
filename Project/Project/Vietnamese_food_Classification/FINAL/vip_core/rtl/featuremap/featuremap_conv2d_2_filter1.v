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
        .valid_in_adder(valid_in_adder), .clk(clk), rst(rst),
        .data_out(data_out),
        .valid_out(valid_out)
);

endmodule