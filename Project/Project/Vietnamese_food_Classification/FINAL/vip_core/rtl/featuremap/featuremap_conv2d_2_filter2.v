module featuremap_conv2d_2_filter2
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b00111011111000111010000011000011
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
        .k0(32'b10111100010011000000000010100111
),
        .k1(32'b00111011000011010101001100110110
),
        .k2(32'b00111110001010101101100001110001
),
        .k3(32'b10111101110001000111111010000010
),
        .k4(32'b10111101110010011011010001010010
),
        .k5(32'b10111100011000101011000111110000
),
        .k6(32'b00111110001010100011110011100100
),
        .k7(32'b10111101001101010111110110011000
),
        .k8(32'b10111100111100011101110000000011
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
        .k0(32'b00111010101010000111010110000011
),
        .k1(32'b00111110000010010001001100111001
),
        .k2(32'b10111100101100101010001011000101
),
        .k3(32'b10111110000000001110100010001111
),
        .k4(32'b10111101001010010000011110101010
),
        .k5(32'b10111101100111010111011100111001
),
        .k6(32'b10111101110001000111100110111001
),
        .k7(32'b00111110000111011101000101101110
),
        .k8(32'b10111100011100010101010011001111
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
        .k0(32'b00111101101001010000110111010001
),
        .k1(32'b00111100101011111000010100101001
),
        .k2(32'b10111101100101011010110100110100
),
        .k3(32'b00111110000111011110100100101010
),
        .k4(32'b00111110000000001000100010011100
),
        .k5(32'b10111101111111010100110101011001
),
        .k6(32'b00111011101001100010101100010111
),
        .k7(32'b10111110000000001110110011101111
),
        .k8(32'b00111101010011011010011001000010
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
        .k0(32'b10111101101101111000000101010111
),
        .k1(32'b10111101111001111000111011111010
),
        .k2(32'b00111101100010110100111001011001
),
        .k3(32'b10111101100101000010000011110000
),
        .k4(32'b10111101001010011011011101011001
),
        .k5(32'b10111101101010000111001001000000
),
        .k6(32'b10111101110101010111011111011001
),
        .k7(32'b10111101100100111001110110000110
),
        .k8(32'b00111101001110010001110100001111
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
        .k0(32'b10111101111110010101111000010100
),
        .k1(32'b10111101010100010010101001101000
),
        .k2(32'b00111110001110000111111011100001
),
        .k3(32'b10111101100011011000100110000010
),
        .k4(32'b10111101010001010010011000000011
),
        .k5(32'b10111101101110001100011001010001
),
        .k6(32'b10111101110001010100101000010010
),
        .k7(32'b10111110000000010000110101000101
),
        .k8(32'b00111101001101011010000010011011
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
        .k0(32'b10111101010110110100110000110010
),
        .k1(32'b00111110001111010000000101111110
),
        .k2(32'b00111011101101000101100000101001
),
        .k3(32'b00111101100001110101111010010001
),
        .k4(32'b10111101011010101101110111110000
),
        .k5(32'b10111101000111111000000111000111
),
        .k6(32'b00111100101110111011011010110010
),
        .k7(32'b10111101111101010110000110101001
),
        .k8(32'b10111101100100111110110100111101
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
        .k0(32'b10111100001110100101000100111001
),
        .k1(32'b10111110000100100101110100011010
),
        .k2(32'b10111101000000110000011101100101
),
        .k3(32'b00111101010000010011000000000111
),
        .k4(32'b00111101111101101100111100101111
),
        .k5(32'b00111101110000011111000001001001
),
        .k6(32'b10111101010001100101000000110100
),
        .k7(32'b00111100111010001001101010110110
),
        .k8(32'b00111101011111100110010101001001
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
        .k0(32'b10111100101001000101011110001110
),
        .k1(32'b10111101010010001100110111101011
),
        .k2(32'b00111101100001001100010010011010
),
        .k3(32'b00111110000101000110001011110110
),
        .k4(32'b10111101111111101100111001011010
),
        .k5(32'b10111101111010110011010101110101
),
        .k6(32'b00111110000110011101110010100001
),
        .k7(32'b00111100101101111110011110110110
),
        .k8(32'b10111100110010100011100000001110
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