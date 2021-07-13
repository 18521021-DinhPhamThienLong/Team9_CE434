module featuremap_conv2d_2_filter4
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b00111100101101101101111001100010
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
        .k0(32'b00111110000110010110011000001011
),
        .k1(32'b00111110000110111010011010110010
),
        .k2(32'b10111110000000101000000111010010
),
        .k3(32'b00111101101110100001011101101000
),
        .k4(32'b10111101110110111101000101000111
),
        .k5(32'b10111101100010011001110001010000
),
        .k6(32'b10111101100110011110110001000100
),
        .k7(32'b00111011100111100000110101111010
),
        .k8(32'b00111101101110111111100110110011
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
        .k0(32'b10111011101101001011011000001101
),
        .k1(32'b00111110001100000011110101100000
),
        .k2(32'b10111110000110110101000111101100
),
        .k3(32'b10111101100101011101010011011011
),
        .k4(32'b00111101001000010111010101010011
),
        .k5(32'b00111110000101000010000010001001
),
        .k6(32'b10111110000001100010000101110101
),
        .k7(32'b00111101100111100110101111011110
),
        .k8(32'b00111101111000111100001100110110
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
        .k0(32'b10111110000100100010111110100011
),
        .k1(32'b10111101001110001100001011100010
),
        .k2(32'b00111100110001011000011100010110
),
        .k3(32'b10111010000001011111000011111111
),
        .k4(32'b10111100010011011101001000001111
),
        .k5(32'b10111101110000011001100010111111
),
        .k6(32'b00111101000100001110010100000101
),
        .k7(32'b10111101101001000111101111010010
),
        .k8(32'b00111110000101101110010010011011
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
        .k0(32'b00111100111111001101110010000111
),
        .k1(32'b10111101101001000011011110111000
),
        .k2(32'b10111110000100101110000101000000
),
        .k3(32'b10111101000001011101110001011111
),
        .k4(32'b00111101011111000111011011101000
),
        .k5(32'b10111101101111110001111011100111
),
        .k6(32'b10111101101010100001011111011001
),
        .k7(32'b00111101110100101001100000000110
),
        .k8(32'b10111101100001010000011011001111
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
        .k0(32'b00111101101110001000001010111111
),
        .k1(32'b10111110000100110011100101110010
),
        .k2(32'b10111101110100100101010111110101
),
        .k3(32'b10111101111110111001001001011110
),
        .k4(32'b00111110001000101001010111100010
),
        .k5(32'b00111100011101111011101111011000
),
        .k6(32'b10111110000101000000100011110000
),
        .k7(32'b00111101111000110101111111001001
),
        .k8(32'b00111101101111101001000000101111
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
        .k0(32'b10111011100111100001101101011100
),
        .k1(32'b00111110001101000001000010011000
),
        .k2(32'b10111101000101100101100101100100
),
        .k3(32'b00111101100000010110100010110100
),
        .k4(32'b00111101110001101100111001111000
),
        .k5(32'b10111101001111010101110101111010
),
        .k6(32'b00111101000001100100011000100101
),
        .k7(32'b00111101101010011001100100101001
),
        .k8(32'b00111101000000100001001001101011
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
        .k0(32'b00111101100010001010110010110010
),
        .k1(32'b00111110001101100000101101010110
),
        .k2(32'b00111110000001110100000001110111
),
        .k3(32'b00111101110101111011101001110110
),
        .k4(32'b10111110000000010011011100000000
),
        .k5(32'b00111011000110010000110110011010
),
        .k6(32'b10111011001011111110011101110010
),
        .k7(32'b00111101100111110001101001000001
),
        .k8(32'b10111101101101101001111100000011
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
        .k0(32'b00111101101011100001111100000100
),
        .k1(32'b00111110000001010110011111101000
),
        .k2(32'b00111101011111100000010011100100
),
        .k3(32'b10111101011110001011101011010101
),
        .k4(32'b10111101100010100010110001101001
),
        .k5(32'b00111110000010000110111010100100
),
        .k6(32'b00111101110101011000010100111110
),
        .k7(32'b10111101100100110000101101111000
),
        .k8(32'b10111101111101101101000111001001
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