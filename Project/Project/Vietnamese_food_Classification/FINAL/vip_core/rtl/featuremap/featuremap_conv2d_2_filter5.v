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
        .valid_in_adder(valid_in_adder), .clk(clk), rst(rst),
        .data_out(data_out),
        .valid_out(valid_out)
);

endmodule