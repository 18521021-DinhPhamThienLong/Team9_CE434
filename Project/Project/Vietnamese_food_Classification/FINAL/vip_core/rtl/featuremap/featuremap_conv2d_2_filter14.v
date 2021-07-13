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
        .valid_in_adder(valid_in_adder), .clk(clk), rst(rst),
        .data_out(data_out),
        .valid_out(valid_out)
);

endmodule