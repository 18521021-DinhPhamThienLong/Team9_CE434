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
        .valid_in_adder(valid_in_adder), .clk(clk), rst(rst),
        .data_out(data_out),
        .valid_out(valid_out)
);

endmodule