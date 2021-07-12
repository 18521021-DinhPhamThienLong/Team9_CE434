module featuremap_conv2d_1_filter5
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b00111011110010001111011100000100
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
        .k0(32'b00111100110101000111001111110000
),
        .k1(32'b10111110000010100100101110011001
),
        .k2(32'b00111110010010101100110011011111
),
        .k3(32'b10111110010000110011011011101001
),
        .k4(32'b00111101000010011010111111001010
),
        .k5(32'b00111101111001111111011001111011
),
        .k6(32'b00111101000010010001011100000011
),
        .k7(32'b00111110000110010111100101011101
),
        .k8(32'b10111101010111011000000010010010
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
        .k0(32'b00111001111111010100101000110100
),
        .k1(32'b00111101101100101011010100001101
),
        .k2(32'b00111110000100000110011101011111
),
        .k3(32'b00111100111111001110101111101001
),
        .k4(32'b00111101111101010000000001001110
),
        .k5(32'b00111101010100100100010110000110
),
        .k6(32'b00111110001011000101111001010100
),
        .k7(32'b00111110010001000000001111010100
),
        .k8(32'b10111101110110101010000110010010
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
        .k0(32'b00111110000100100110101010011000
),
        .k1(32'b10111101100010110101010000111100
),
        .k2(32'b00111101111000011111101100111011
),
        .k3(32'b00111110010000000111000010100011
),
        .k4(32'b00111110001100111001100000110111
),
        .k5(32'b10111100001010101011111010000100
),
        .k6(32'b00111100111110101101110000100100
),
        .k7(32'b10111101101010011100011100000011
),
        .k8(32'b00111110011000010010110101010110
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
        .k0(32'b00111101101100000000110100110010
),
        .k1(32'b10111101011100000111110010010001
),
        .k2(32'b00111100101101101011010000001101
),
        .k3(32'b00111100101010100100010100001110
),
        .k4(32'b00111110000100111100100000011001
),
        .k5(32'b10111110000010100101101000010100
),
        .k6(32'b10111110000010110111000011001101
),
        .k7(32'b10111101010000101111001011101110
),
        .k8(32'b10111110010001011110100111101100
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
        .k0(32'b10111110000001001000001001110101
),
        .k1(32'b10111100111000100000000101010101
),
        .k2(32'b00111100000101010100110101101100
),
        .k3(32'b00111110000001111001011100111110
),
        .k4(32'b10111110010000111011011100111111
),
        .k5(32'b10111110000110010100011111011011
),
        .k6(32'b00111101101011010110001001011010
),
        .k7(32'b10111110001111001100001001111101
),
        .k8(32'b10111101101101011110110101010100
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
        .k0(32'b10111101101000111101111100100000
),
        .k1(32'b10111101110110010001111010010101
),
        .k2(32'b10111101000110000010010010100011
),
        .k3(32'b00111110010001011011110011001110
),
        .k4(32'b10111101101011111100100011111111
),
        .k5(32'b10111101101110101001101101111101
),
        .k6(32'b10111110000001010011100110110110
),
        .k7(32'b00111101011000000110011111111010
),
        .k8(32'b10111101000010001000111010110100
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
        .k0(32'b10111110001010001100110111111000
),
        .k1(32'b10111100111000011000111000110000
),
        .k2(32'b00111101101110101110011010110001
),
        .k3(32'b10111100110011100001110101000101
),
        .k4(32'b10111101110000110101100110110101
),
        .k5(32'b00111101111001010011111110101101
),
        .k6(32'b10111110010010001100010101100100
),
        .k7(32'b00111110000010001110110100011000
),
        .k8(32'b10111110001111100110000100111111
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
        .k0(32'b10111101001101100101011001000110
),
        .k1(32'b00111110000101101011111110001000
),
        .k2(32'b00111101100111000011010011101011
),
        .k3(32'b00111101101101100111011110111100
),
        .k4(32'b00111101001010000110100101100011
),
        .k5(32'b10111110001100010011010111111001
),
        .k6(32'b00111110000101101101010100000100
),
        .k7(32'b00111011111101110010011111010110
),
        .k8(32'b10111110001110011001010100111000
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