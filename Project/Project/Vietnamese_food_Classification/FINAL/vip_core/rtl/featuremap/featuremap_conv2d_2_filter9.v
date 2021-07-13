module featuremap_conv2d_2_filter9
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b00111010101010010100000011100100
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
        .k0(32'b10111101000110111101001110100001
),
        .k1(32'b10111110000011100101010010000000
),
        .k2(32'b10111101110110100011110100110001
),
        .k3(32'b10111110000111100011110000000001
),
        .k4(32'b10111110000010111001000100100101
),
        .k5(32'b10111101101000100000000000100000
),
        .k6(32'b10111101111100000000001001111101
),
        .k7(32'b10111101101001100001100100000010
),
        .k8(32'b00111101101101101001011100011110
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
        .k0(32'b00111101110101000110001011111010
),
        .k1(32'b00111100000011011111110011111011
),
        .k2(32'b10111101010100100011010111110110
),
        .k3(32'b00111101111010010001001001000101
),
        .k4(32'b10111101100001010100011010001011
),
        .k5(32'b00111100110010111011101001001101
),
        .k6(32'b00111101111110101001100011110011
),
        .k7(32'b10111100101010101011011011100110
),
        .k8(32'b10111011010011101110011111010011
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
        .k0(32'b00111101110100010110010100111111
),
        .k1(32'b00111110001101100111000110011010
),
        .k2(32'b10111101101001010010101100001100
),
        .k3(32'b00111101011111000111101111010011
),
        .k4(32'b10111101110111101101000111111111
),
        .k5(32'b00111100111101110111000110000011
),
        .k6(32'b00111101101100101110001110001011
),
        .k7(32'b10111011111010111000001010000111
),
        .k8(32'b00111100110110110000100100010100
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
        .k0(32'b00111101100111011001010111001011
),
        .k1(32'b10111011100011011011111100110000
),
        .k2(32'b10111101001101100100001111111011
),
        .k3(32'b00111100100100111110001110111111
),
        .k4(32'b00111101001010000011100001110010
),
        .k5(32'b10111101110110111010011110010100
),
        .k6(32'b00111101111010010010101110101110
),
        .k7(32'b10111110000000110010011001100000
),
        .k8(32'b10111101001110011110001011000011
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
        .k0(32'b00111100110000101001111100101110
),
        .k1(32'b00111110000000111101111000101101
),
        .k2(32'b00111101011111010001100100011010
),
        .k3(32'b10111101111010010110110101011010
),
        .k4(32'b00111101000001100111101000100011
),
        .k5(32'b00111101111000011001001001001001
),
        .k6(32'b00111100011111010100010110111111
),
        .k7(32'b00111101111110100111100100110010
),
        .k8(32'b00111101101010000111100100001010
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
        .k0(32'b10111101100100001000110000111011
),
        .k1(32'b10111101101101110100101100011100
),
        .k2(32'b10111100010110111000010001101111
),
        .k3(32'b10111101010011011100111000110001
),
        .k4(32'b10111101001011001010001101100011
),
        .k5(32'b10111101001011000100101011111110
),
        .k6(32'b10111101101000010111000011110001
),
        .k7(32'b10111101101111111000111001100010
),
        .k8(32'b00111101000001011001111100010010
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
        .k0(32'b00111100101101100000111001110010
),
        .k1(32'b10111101011001010011101000110111
),
        .k2(32'b10111110001000011111111001100110
),
        .k3(32'b10111011100100010000000101100110
),
        .k4(32'b00111101100110000101110101101100
),
        .k5(32'b00111101110110010101000101111000
),
        .k6(32'b10111110001001100011001110111111
),
        .k7(32'b00111100110111001011100110010101
),
        .k8(32'b10111100001100110110101110000000
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
        .k0(32'b10111011111011100111000101110110
),
        .k1(32'b10111101001101010101110101111111
),
        .k2(32'b10111101101111010001101011100010
),
        .k3(32'b10111101111100010111001011010110
),
        .k4(32'b00111011011001111110010111010100
),
        .k5(32'b00111100111010011001110000110000
),
        .k6(32'b00111101011101100111010110100101
),
        .k7(32'b00111101110100011111110000001011
),
        .k8(32'b10111101100011110011110101001000
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