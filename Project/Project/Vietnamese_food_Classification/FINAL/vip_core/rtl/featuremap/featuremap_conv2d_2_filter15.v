module featuremap_conv2d_2_filter15
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b00111100100001011001010010011110
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
        .k0(32'b00111110000001100011011010101111
),
        .k1(32'b10111101100101000011101100111000
),
        .k2(32'b00111100110010000010001010101111
),
        .k3(32'b00111101101000100010001110101011
),
        .k4(32'b00111101100011001101101101000001
),
        .k5(32'b00111101111101110101111111101111
),
        .k6(32'b10111101111110100111110100011010
),
        .k7(32'b00111100100001100010010101100100
),
        .k8(32'b10111101111001010100010110111100
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
        .k0(32'b10111101110110101010010110101111
),
        .k1(32'b00111101001101110100110000111001
),
        .k2(32'b10111100001001110100111111010011
),
        .k3(32'b10111101110101100001001101000110
),
        .k4(32'b10111110000110011001010100110011
),
        .k5(32'b00111100101001011101100000111111
),
        .k6(32'b00111110001011001000110101100010
),
        .k7(32'b10111101000010011110110011011001
),
        .k8(32'b10111101111100010001101111001010
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
        .k0(32'b10111101100000000110111101101010
),
        .k1(32'b10111101100100100011110000010011
),
        .k2(32'b00111101101001111011011100100011
),
        .k3(32'b10111110000011110101100111100101
),
        .k4(32'b00111011110111011011110101011101
),
        .k5(32'b10111101101000100001000100011010
),
        .k6(32'b00111110001000110010111100011111
),
        .k7(32'b10111110001000110000000111010111
),
        .k8(32'b00111110000100111110000101111011
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
        .k0(32'b10111011111111000101010001000111
),
        .k1(32'b10111101011100010011111001100110
),
        .k2(32'b00111110000001000011111011001100
),
        .k3(32'b10111101100010111101011111010010
),
        .k4(32'b10111110000000001000100011110000
),
        .k5(32'b10111100110110110101101110001111
),
        .k6(32'b00111101000000000000000100000111
),
        .k7(32'b00111110000101111100101010011001
),
        .k8(32'b10111101011101000110010000101001
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
        .k0(32'b00111101010101111110011001100110
),
        .k1(32'b10111110001000101110111100011001
),
        .k2(32'b10111110001011010110011011101111
),
        .k3(32'b10111100110001001010000000110101
),
        .k4(32'b00111101010011000011001001110000
),
        .k5(32'b00111110000000110010010110001000
),
        .k6(32'b00111101111001111110000010000111
),
        .k7(32'b00111110000101101100000111110000
),
        .k8(32'b00111101110011011111010010101011
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
        .k0(32'b00111101100111000011101011100010
),
        .k1(32'b00111101010011110110010100001001
),
        .k2(32'b10111101100111010110101011001111
),
        .k3(32'b10111101001110101011111011100100
),
        .k4(32'b00111101110111111111110111010011
),
        .k5(32'b00111101100000000110110111100011
),
        .k6(32'b00111101100101101111110100000100
),
        .k7(32'b10111101101100110010101010011101
),
        .k8(32'b10111101010111100011000111011010
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
        .k0(32'b00111001010000001010110110000011
),
        .k1(32'b00111110000111011111001011010110
),
        .k2(32'b00111101100111101110010111000101
),
        .k3(32'b00111101110100111010111011001001
),
        .k4(32'b00111100100001100001000001010010
),
        .k5(32'b10111101110111110001000100001110
),
        .k6(32'b00111101011100011010101110001001
),
        .k7(32'b10111101000000111000011101111001
),
        .k8(32'b00111101000000010001101100101001
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
        .k0(32'b10111100101011001010111000100010
),
        .k1(32'b10111101110011011000000011011100
),
        .k2(32'b10111101111110100011110111111111
),
        .k3(32'b00111110000100010100010101101010
),
        .k4(32'b10111101110000001000111111100010
),
        .k5(32'b10111101110100100000000011000000
),
        .k6(32'b10111101100010111011101010100001
),
        .k7(32'b10111101011010111011100111001000
),
        .k8(32'b10111110000100011111101101010100
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