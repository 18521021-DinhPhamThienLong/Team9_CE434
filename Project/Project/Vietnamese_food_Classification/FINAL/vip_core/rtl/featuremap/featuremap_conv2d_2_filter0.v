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
        .valid_in_adder(valid_in_adder), .clk(clk), rst(rst),
        .data_out(data_out),
        .valid_out(valid_out)
);

endmodule