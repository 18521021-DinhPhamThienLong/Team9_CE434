module featuremap_conv2d_1_filter3
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b00111011100000000110011011010101
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
        .k0(32'b10111110000011000011101100000110
),
        .k1(32'b00111110000100101010100010000100
),
        .k2(32'b10111101101011001011101010111011
),
        .k3(32'b10111110001010010101100101101111
),
        .k4(32'b00111110000111001001001101100110
),
        .k5(32'b00111101001111110000000010111111
),
        .k6(32'b10111110011000010110001101110110
),
        .k7(32'b00111011011010001111101011000011
),
        .k8(32'b10111110011000111001001000110110
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
        .k0(32'b10111101110000011000100111110010
),
        .k1(32'b10111110000101011001001100100100
),
        .k2(32'b00111110000000000000100010001000
),
        .k3(32'b00111101111110010101111010101010
),
        .k4(32'b10111110001111010000100011011100
),
        .k5(32'b00111101110001011100111000101010
),
        .k6(32'b00111110000001000001000000100000
),
        .k7(32'b00111011100100100011001110000110
),
        .k8(32'b00111101110101110010001011011011
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
        .k0(32'b00111110000010011011010011001000
),
        .k1(32'b10111101100011100001100011110010
),
        .k2(32'b00111101010000011101101110001011
),
        .k3(32'b00111110001000010100001111110011
),
        .k4(32'b00111101101011001010000010111111
),
        .k5(32'b00111100010100100010010100010001
),
        .k6(32'b10111101110011110000001010110000
),
        .k7(32'b00111110001001010000100001101100
),
        .k8(32'b10111101101100110001100010011110
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
        .k0(32'b00111110000010001100000111000010
),
        .k1(32'b10111101111001001011110010010001
),
        .k2(32'b10111101110011000011111000110000
),
        .k3(32'b00111101001101101111110011110101
),
        .k4(32'b10111110001010000110011001011011
),
        .k5(32'b10111101110011010011000100000110
),
        .k6(32'b00111101110111100101000101111010
),
        .k7(32'b10111100010010011000100100101011
),
        .k8(32'b10111110010001011000111001100000
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
        .k0(32'b00111110010101000001110010011010
),
        .k1(32'b00111101100111110000100000110011
),
        .k2(32'b00111100001001111001100011100111
),
        .k3(32'b00111100011101011111011011001111
),
        .k4(32'b00111101100010010010010001111101
),
        .k5(32'b00111110001110111100101111111101
),
        .k6(32'b00111110010010100111110011111000
),
        .k7(32'b10111100101100110110011000011110
),
        .k8(32'b00111101111010001010111111110100
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
        .k0(32'b00111101101011011110011001011110
),
        .k1(32'b10111101110001100100010110110111
),
        .k2(32'b10111011100111111101100001111110
),
        .k3(32'b00111100011101110101000101110110
),
        .k4(32'b00111110011110100011001010011101
),
        .k5(32'b00111110011101001110100001011000
),
        .k6(32'b10111101000001100100101101011101
),
        .k7(32'b00111110011101000000101010110010
),
        .k8(32'b00111101100010100000101010010101
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
        .k0(32'b10111101010000101001110100010101
),
        .k1(32'b10111101100010011100110011100100
),
        .k2(32'b10111101001001100010000111100001
),
        .k3(32'b00111110000011001011101100010010
),
        .k4(32'b10111101110010000010000101001110
),
        .k5(32'b10111101011110110110111100110100
),
        .k6(32'b00111110010011011000101011001011
),
        .k7(32'b10111101101111110010100101111011
),
        .k8(32'b00111110000110111000011010010101
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
        .k0(32'b10111101100001100010111111110001
),
        .k1(32'b10111100101111110100000100001001
),
        .k2(32'b00111100011110100001000001111110
),
        .k3(32'b00111110010010101101111000101001
),
        .k4(32'b00111110001001100010001110000111
),
        .k5(32'b10111101000011001010110010001001
),
        .k6(32'b10111101100111001011101001010101
),
        .k7(32'b10111101100101000110011011101001
),
        .k8(32'b00111110010001001100111010010001
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