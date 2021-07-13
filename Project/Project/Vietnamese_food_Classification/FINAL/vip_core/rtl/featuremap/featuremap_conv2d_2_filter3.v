module featuremap_conv2d_2_filter3
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b10111011100110000011100101000000
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
        .k0(32'b00111110000011010000000101011100
),
        .k1(32'b10111100111001101110010111110111
),
        .k2(32'b10111110000011001000101010111010
),
        .k3(32'b00111101111111000110100010111010
),
        .k4(32'b10111110001010101000111100001011
),
        .k5(32'b10111101100010011100000100100001
),
        .k6(32'b10111011100111001011010110001110
),
        .k7(32'b00111101000011000000110110011101
),
        .k8(32'b10111100100011011110100000010111
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
        .k0(32'b10111101101110001000101101001110
),
        .k1(32'b00111101101101111111000011111010
),
        .k2(32'b10111101000110100111000101011110
),
        .k3(32'b10111101010110110001000100111011
),
        .k4(32'b00111101111110011101000010011000
),
        .k5(32'b00111101100011000010010011111010
),
        .k6(32'b00111100100011011110000100000111
),
        .k7(32'b10111101011100010010011001110001
),
        .k8(32'b00111101011001011100101000011100
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
        .k0(32'b00111101001110111001101010010001
),
        .k1(32'b00111100100000000110110000110011
),
        .k2(32'b00111101011011000010101101010111
),
        .k3(32'b00111100100110101011101001000001
),
        .k4(32'b00111101101110000110000000001010
),
        .k5(32'b00111101100000010011110000011011
),
        .k6(32'b10111100011100111000101110001110
),
        .k7(32'b00111101110111100101110101111110
),
        .k8(32'b00111101110101101000001010001101
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
        .k0(32'b00111110000000100110001110010011
),
        .k1(32'b10111110001010111001011001101001
),
        .k2(32'b10111110000110110100110000110100
),
        .k3(32'b00111110000111000011111101011001
),
        .k4(32'b00111101100110010100110000110010
),
        .k5(32'b10111110000101111100000001011010
),
        .k6(32'b10111101100100010101101001011110
),
        .k7(32'b10111100101110000101011100101001
),
        .k8(32'b00111101100110100011001011010101
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
        .k0(32'b10111011101101010100011001111110
),
        .k1(32'b10111101111001010110010110110100
),
        .k2(32'b00111101110100101111101100111100
),
        .k3(32'b10111101110110101100101011111001
),
        .k4(32'b00111101111010011011100101110111
),
        .k5(32'b00111101010110110001010011101011
),
        .k6(32'b00111101001100110110110010011001
),
        .k7(32'b00111101111010111010001101011000
),
        .k8(32'b00111101010011011100100001000000
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
        .k0(32'b10111101001100110101011111001011
),
        .k1(32'b00111101111010000001110010010000
),
        .k2(32'b00111101101110010010010100110001
),
        .k3(32'b10111101000101000001011110111001
),
        .k4(32'b00111101000011111011100001011011
),
        .k5(32'b00111101100000110000011111111000
),
        .k6(32'b00111100001010000011110000010110
),
        .k7(32'b10111101101011110000001101011100
),
        .k8(32'b00111101011000000110010010011000
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
        .k0(32'b10111101111000111011001011100000
),
        .k1(32'b00111110000110100001101100100111
),
        .k2(32'b10111101110010110101010001110100
),
        .k3(32'b10111101011110010000001000011010
),
        .k4(32'b10111101001001111110100111110010
),
        .k5(32'b00111101010001000110101001101001
),
        .k6(32'b10111101110010011111111011010101
),
        .k7(32'b00111101010001110111011010000111
),
        .k8(32'b00111100110010110110101011110001
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
        .k0(32'b10111110000010000111011000110101
),
        .k1(32'b10111101100100000001111001101001
),
        .k2(32'b10111101001011111110100100000100
),
        .k3(32'b10111100100000100101010011110111
),
        .k4(32'b00111100001011100000101001000100
),
        .k5(32'b00111101101101100010001000011111
),
        .k6(32'b10111101111011001110001000111000
),
        .k7(32'b00111101101011001001100011010101
),
        .k8(32'b00111100111111101111110101011101
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