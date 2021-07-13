module featuremap_conv2d_2_filter12
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b00111011101010000010110100101101
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
        .k0(32'b10111101011101011011110000000110
),
        .k1(32'b10111101101001111000111100101101
),
        .k2(32'b10111101101110100001000111110111
),
        .k3(32'b00111101000000101000000110000000
),
        .k4(32'b10111101101000000011001101011101
),
        .k5(32'b00111101001010001101010110110110
),
        .k6(32'b10111101111011110101010101101101
),
        .k7(32'b00111101110011001000001101000010
),
        .k8(32'b10111101110000011101101000111011
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
        .k0(32'b00111100010000011001001000110011
),
        .k1(32'b00111101100100000010110110011100
),
        .k2(32'b00111101111100010001010010010010
),
        .k3(32'b00111101101010001001110000000000
),
        .k4(32'b10111110000011101101011001101001
),
        .k5(32'b10111110000010000100111010101010
),
        .k6(32'b00111101101110001011111111111011
),
        .k7(32'b10111110000010010100101011101110
),
        .k8(32'b10111101000110011010101110101101
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
        .k0(32'b00111110000000000011101001110111
),
        .k1(32'b00111101011100011000010010111010
),
        .k2(32'b10111100110011100110101111101111
),
        .k3(32'b00111110001001000001001001011101
),
        .k4(32'b10111101101101011110100110100101
),
        .k5(32'b00111101111110110110010011010110
),
        .k6(32'b10111101100110100101111100011001
),
        .k7(32'b00111110001010011100101001111010
),
        .k8(32'b00111110000001111000111010101101
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
        .k0(32'b00111101100010101000000000011100
),
        .k1(32'b00111100111001010110011100111111
),
        .k2(32'b00111100000010010100111110010011
),
        .k3(32'b10111101000110101100111011100111
),
        .k4(32'b10111101101010110010101000001011
),
        .k5(32'b00111101011000111110001001110100
),
        .k6(32'b10111101010010001001111111011011
),
        .k7(32'b00111110001010110010010101010111
),
        .k8(32'b00111100111110010110100101101001
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
        .k0(32'b10111101010010010011001000100100
),
        .k1(32'b10111101001010110000111111101000
),
        .k2(32'b00111101000001101011000100000101
),
        .k3(32'b00111110000111111010010111111111
),
        .k4(32'b00111101001000001000110110111110
),
        .k5(32'b10111101100110111010101110110010
),
        .k6(32'b10111100110010100010001110010001
),
        .k7(32'b00111110001001100000101010010101
),
        .k8(32'b10111110000001110110000011010101
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
        .k0(32'b10111101100000110001110101110001
),
        .k1(32'b00111101111100111110001010101101
),
        .k2(32'b00111110001000011111000011010101
),
        .k3(32'b00111101001111110110110100101010
),
        .k4(32'b10111101101100110011101001111100
),
        .k5(32'b00111110000100000000100101100001
),
        .k6(32'b00111101111000111000000011011000
),
        .k7(32'b10111101011111101101010101110101
),
        .k8(32'b10111101000101010011011001110111
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
        .k0(32'b10111101101101100110001010101101
),
        .k1(32'b00111110000001010111101111100100
),
        .k2(32'b00111011001001100101100010100011
),
        .k3(32'b10111101101111010001110111100000
),
        .k4(32'b00111100101111100001110101000101
),
        .k5(32'b10111101011000111010011100101100
),
        .k6(32'b10111101111111100111010101010011
),
        .k7(32'b10111101100001010110101011100111
),
        .k8(32'b00111100100111010001110011011010
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
        .k0(32'b10111110000111001011110110100001
),
        .k1(32'b10111100110111001010010010000100
),
        .k2(32'b10111100101101110000100100000011
),
        .k3(32'b10111110000100011010110101111001
),
        .k4(32'b00111100000110100111011001100000
),
        .k5(32'b10111110001000100110101111101011
),
        .k6(32'b00111110000111101110101101111010
),
        .k7(32'b00111101111011001111000000101110
),
        .k8(32'b00111101000111000001100000000110
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