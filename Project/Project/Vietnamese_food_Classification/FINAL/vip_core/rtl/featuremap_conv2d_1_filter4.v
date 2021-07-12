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