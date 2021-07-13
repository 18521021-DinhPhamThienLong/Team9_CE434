module featuremap_conv2d_2_filter10
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b00111001011011101100101010101101
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
        .k0(32'b00111101001000110000111111100110
),
        .k1(32'b00111101010110000011000000001001
),
        .k2(32'b10111101100010101011101110100111
),
        .k3(32'b00111101100010011010111010110100
),
        .k4(32'b10111101101001001011001001000100
),
        .k5(32'b10111101110100011110101110101000
),
        .k6(32'b00111110000100100100100010101101
),
        .k7(32'b10111011100010001011001101000001
),
        .k8(32'b10111101000110011101101000111101
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
        .k0(32'b00111101010110100110001111001010
),
        .k1(32'b00111101110000101110010000010101
),
        .k2(32'b00111100000110010110110101110111
),
        .k3(32'b00111110000110010001011110010000
),
        .k4(32'b00111101100110001011011001011101
),
        .k5(32'b10111101100010011111000000100101
),
        .k6(32'b00111110000111101100011101001001
),
        .k7(32'b10111110000100011000100110111010
),
        .k8(32'b00111100110011001000100110000101
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
        .k0(32'b00111101010001000111101111000101
),
        .k1(32'b10111110000011100001100101001100
),
        .k2(32'b10111101111010111010100011000101
),
        .k3(32'b10111101101011110010110010101000
),
        .k4(32'b10111110000101111110111010110010
),
        .k5(32'b10111110001000000010111011000110
),
        .k6(32'b10111101110011101011001101111001
),
        .k7(32'b10111110000111111110000110001101
),
        .k8(32'b10111110001010001100001011000000
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
        .k0(32'b00111101101100101000001110011011
),
        .k1(32'b00111101110010001101000001100101
),
        .k2(32'b00111101110011010111010110001110
),
        .k3(32'b00111101111110100110001101101100
),
        .k4(32'b10111110000110001010000111110111
),
        .k5(32'b00111110000000110000101101010101
),
        .k6(32'b10111101000011101000110010000111
),
        .k7(32'b10111101110010111000010001100100
),
        .k8(32'b10111101010001000111110111101111
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
        .k0(32'b10111100110000100110101010000110
),
        .k1(32'b00111110000000110011000101010001
),
        .k2(32'b10111101000111001001010011101011
),
        .k3(32'b00111100101101110110101000010101
),
        .k4(32'b10111101110010100000111110011001
),
        .k5(32'b00111110000001100000010101000010
),
        .k6(32'b10111110000011101110111101100101
),
        .k7(32'b10111100100110100100111100110101
),
        .k8(32'b10111110000001110000100010011010
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
        .k0(32'b10111101111100010000110110100000
),
        .k1(32'b10111110000010110101011110100101
),
        .k2(32'b10111100110101000000110100000110
),
        .k3(32'b10111101010011010100101000100010
),
        .k4(32'b00111101101001111001101011101100
),
        .k5(32'b10111101000111110001010010011111
),
        .k6(32'b00111101101000111010100010100011
),
        .k7(32'b00111101101110100001100010110011
),
        .k8(32'b00111101000011001101011000100001
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
        .k0(32'b00111101111000101010000011100011
),
        .k1(32'b00111011110011110000111100011111
),
        .k2(32'b00111101111001001001010011010011
),
        .k3(32'b00111110000010000110011100011110
),
        .k4(32'b10111100010011010100111010101011
),
        .k5(32'b00111100110111110010110100100000
),
        .k6(32'b00111101001100100101011111100110
),
        .k7(32'b00111101110001101001101011110010
),
        .k8(32'b00111100101000100111011010010000
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
        .k0(32'b00111101001100100001001001010011
),
        .k1(32'b10111110001110100000100011010011
),
        .k2(32'b00111101111010011111010011000110
),
        .k3(32'b10111101100110101001111110110111
),
        .k4(32'b00111101000101101110110010101111
),
        .k5(32'b10111101010010101011110101010010
),
        .k6(32'b10111110000010011001100111110100
),
        .k7(32'b00111110000111000010001101101101
),
        .k8(32'b10111101001110010001011000001000
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