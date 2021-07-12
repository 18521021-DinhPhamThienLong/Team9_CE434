module featuremap_conv2d_1_filter6
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b00111100100010111000011101001001
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
        .k0(32'b10111011010011010111000110111001
),
        .k1(32'b10111110001011100010100101100001
),
        .k2(32'b00111110010000101110110100011100
),
        .k3(32'b00111110000001110000101010000110
),
        .k4(32'b00111110010010000011101011011001
),
        .k5(32'b10111110001001000100001110110000
),
        .k6(32'b10111101110001010111010110100110
),
        .k7(32'b00111110000010010000001100011101
),
        .k8(32'b00111101111010001111111011011000
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
        .k0(32'b00111110001001101001001111011111
),
        .k1(32'b10111101000110110110110000110011
),
        .k2(32'b00111101101001001011110000000101
),
        .k3(32'b10111101000111001100110010101110
),
        .k4(32'b00111110000111010001000011100110
),
        .k5(32'b00111101110010111100000001111110
),
        .k6(32'b00111101101101100101010100000000
),
        .k7(32'b10111110001110111100011011000001
),
        .k8(32'b00111100101001001011001111111000
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
        .k0(32'b00111011100000000111101110110000
),
        .k1(32'b00111101111011011010010111000111
),
        .k2(32'b10111101001101010000010100110110
),
        .k3(32'b10111110000110011100010000110110
),
        .k4(32'b10111101101110111101010001010111
),
        .k5(32'b00111101101010000010100000101110
),
        .k6(32'b10111101000111000011101111101001
),
        .k7(32'b00111101111000001011101110110010
),
        .k8(32'b00111101000011100011100101100011
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
        .k0(32'b10111011010011100011101000111001
),
        .k1(32'b10111101110011100101000101010110
),
        .k2(32'b10111101111001111111110010011011
),
        .k3(32'b00111101101011011100111010110110
),
        .k4(32'b10111101101000001100110101000110
),
        .k5(32'b00111110001101001000111100011000
),
        .k6(32'b10111101010100101110100110111001
),
        .k7(32'b00111101101010110011000000000100
),
        .k8(32'b10111110000110010011100010110011
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
        .k0(32'b10111110001010000001110100111110
),
        .k1(32'b00111101110100101000011001100010
),
        .k2(32'b10111110001001000010010001100001
),
        .k3(32'b00111101010010100001100010010110
),
        .k4(32'b10111110001100001001011110000101
),
        .k5(32'b00111110001100101000011111100101
),
        .k6(32'b10111110001010110100100001110100
),
        .k7(32'b00111100100011100000001100001111
),
        .k8(32'b10111110010100110101011111010110
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
        .k0(32'b00111110000110101111100011001100
),
        .k1(32'b00111110000110111010011000110100
),
        .k2(32'b00111101101011111111110001010010
),
        .k3(32'b10111011101000000010111010100010
),
        .k4(32'b00111110001011111001111000001011
),
        .k5(32'b00111101101000011100011011100011
),
        .k6(32'b00111110010100101001000010000001
),
        .k7(32'b00111101100101101111001110000100
),
        .k8(32'b00111110001111001100111110000011
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
        .k0(32'b00111110001101011010011011001001
),
        .k1(32'b00111100100110010100111101101100
),
        .k2(32'b10111101111011001101011000110001
),
        .k3(32'b10111100101001000101011010000000
),
        .k4(32'b00111110010001000010110111010001
),
        .k5(32'b10111101001110001011111000000110
),
        .k6(32'b00111100111110100100010101111111
),
        .k7(32'b00111110001100000010010110001011
),
        .k8(32'b10111110000101101110101001110001
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
        .k0(32'b00111011101111110101100100111100
),
        .k1(32'b00111101110010000001011110000000
),
        .k2(32'b10111101011001100110010011011101
),
        .k3(32'b00111100100100010011001000011011
),
        .k4(32'b10111110001010010000001010000000
),
        .k5(32'b10111101001001100011110110101000
),
        .k6(32'b10111110010010100010110111101111
),
        .k7(32'b10111110001110001010100111010000
),
        .k8(32'b00111110000110011001101000001010
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