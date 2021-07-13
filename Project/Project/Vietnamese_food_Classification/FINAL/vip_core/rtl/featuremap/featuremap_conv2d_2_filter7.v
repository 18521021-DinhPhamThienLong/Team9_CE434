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
        .valid_in_adder(valid_in_adder), .clk(clk), rst(rst),
        .data_out(data_out),
        .valid_out(valid_out)
);

endmodule