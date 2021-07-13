module featuremap_conv2d_2_filter13
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b00111001101101011000111001100100
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
        .k0(32'b00111100101000100000101100111101
),
        .k1(32'b10111010100001111011101101010000
),
        .k2(32'b00111110001010011101111000110111
),
        .k3(32'b10111110000101001110100110101111
),
        .k4(32'b00111110000100110100101110100010
),
        .k5(32'b00111110000101100011011011010011
),
        .k6(32'b10111101101100010010011101000001
),
        .k7(32'b10111100100011110111101100101100
),
        .k8(32'b00111101110110011110010001001010
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
        .k0(32'b10111100101001000111101001100111
),
        .k1(32'b10111101100010010011111100100100
),
        .k2(32'b10111110000111011100010001111011
),
        .k3(32'b10111101110100100101001111011110
),
        .k4(32'b10111101000110101101011000001010
),
        .k5(32'b00111101010011001110011000100010
),
        .k6(32'b00111101011110011100101111100111
),
        .k7(32'b10111100001100000111011011000010
),
        .k8(32'b10111101101110010001011101000010
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
        .k0(32'b00111110001011111010001000110111
),
        .k1(32'b10111110000111101101001000111111
),
        .k2(32'b00111100000011000001111110000100
),
        .k3(32'b00111101111000100010010000111100
),
        .k4(32'b10111101001011001001101100000000
),
        .k5(32'b10111101010111000111001100110010
),
        .k6(32'b00111110000001010101000111000111
),
        .k7(32'b00111011000101001110111011010110
),
        .k8(32'b00111110001001110001001100010011
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
        .k0(32'b10111100010011101000110100010010
),
        .k1(32'b10111110000011001111001100110010
),
        .k2(32'b10111101100110010100100111101100
),
        .k3(32'b00111101111110010010011001101101
),
        .k4(32'b00111110000000100000110000110000
),
        .k5(32'b00111101110001110001000100100010
),
        .k6(32'b00111101110010100100101011111110
),
        .k7(32'b00111110001001000011100010100010
),
        .k8(32'b10111101000110101111100010100010
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
        .k0(32'b00111101101101110110101110010110
),
        .k1(32'b00111101010000010011100111110010
),
        .k2(32'b10111101000101101001101110000011
),
        .k3(32'b00111110001000010011000010001001
),
        .k4(32'b00111100111101111111001001110001
),
        .k5(32'b00111110000101111101001000010010
),
        .k6(32'b00111101100000001011011001110101
),
        .k7(32'b10111100110110100100100011110100
),
        .k8(32'b00111110000001101101001000101110
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
        .k0(32'b10111101111110010101000101001010
),
        .k1(32'b00111101101101001101001001001000
),
        .k2(32'b00111110000100110110011010111110
),
        .k3(32'b00111011010001000000110001100011
),
        .k4(32'b10111101110111011101111010110000
),
        .k5(32'b10111100001101011000010101101101
),
        .k6(32'b00111110001000100000001010010110
),
        .k7(32'b00111101110110000000000110001111
),
        .k8(32'b00111101110001110010010000110111
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
        .k0(32'b10111101111000001110000001101100
),
        .k1(32'b10111101110100000001000101100111
),
        .k2(32'b10111101111000010101100010010110
),
        .k3(32'b10111101111101101011100100100111
),
        .k4(32'b10111110000100100110101000101111
),
        .k5(32'b00111110000010011011000010111001
),
        .k6(32'b00111110000001100011100001111101
),
        .k7(32'b00111100001110100001001010011010
),
        .k8(32'b10111101111111100001010111001110
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
        .k0(32'b10111110001000000101101010011101
),
        .k1(32'b10111101010100101010001011011110
),
        .k2(32'b10111110000000011111001010100011
),
        .k3(32'b00111101111110111001100100101111
),
        .k4(32'b00111101101111001001001010101001
),
        .k5(32'b10111101000110010000010100001111
),
        .k6(32'b10111101111011000001111010010100
),
        .k7(32'b00111100010100011110010000001111
),
        .k8(32'b10111110000010001110101010001110
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