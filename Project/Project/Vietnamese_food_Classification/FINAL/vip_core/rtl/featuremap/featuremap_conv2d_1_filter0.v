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
        .valid_in_adder(valid_in_adder), .clk(clk), rst(rst),
        .data_out(data_out),
        .valid_out(valid_out)
);

endmodule