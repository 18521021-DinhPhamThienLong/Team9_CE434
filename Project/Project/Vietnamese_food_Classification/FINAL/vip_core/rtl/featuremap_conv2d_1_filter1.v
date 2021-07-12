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