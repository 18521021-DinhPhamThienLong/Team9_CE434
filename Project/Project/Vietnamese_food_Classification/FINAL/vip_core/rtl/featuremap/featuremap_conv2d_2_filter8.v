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
        .valid_in_adder(valid_in_adder), .clk(clk), rst(rst),
        .data_out(data_out),
        .valid_out(valid_out)
);

endmodule