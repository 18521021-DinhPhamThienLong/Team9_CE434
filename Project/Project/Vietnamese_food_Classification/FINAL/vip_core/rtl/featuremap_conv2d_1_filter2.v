module featuremap_conv2d_1_filter2
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b00111010010110000000011001100000
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
        .k0(32'b00111110001011110001111110001010
),
        .k1(32'b00111101111010010110101110000110
),
        .k2(32'b00111110001011000000011101100111
),
        .k3(32'b00111101110000011010110111111111
),
        .k4(32'b10111101111111101001111101011000
),
        .k5(32'b10111100101011100100110100111100
),
        .k6(32'b10111101110001111001111101110000
),
        .k7(32'b10111110000011010101110101001101
),
        .k8(32'b00111100110000011111111000000100
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
        .k0(32'b00111100111110100010011100110100
),
        .k1(32'b10111110001011010110100010101110
),
        .k2(32'b00111101111011101110101111111101
),
        .k3(32'b00111110001110001010101100111100
),
        .k4(32'b10111101111101101110100001111010
),
        .k5(32'b10111101010011110010101010101011
),
        .k6(32'b00111101111110000100111001010011
),
        .k7(32'b00111110001111110101000110111111
),
        .k8(32'b00111101101101100011011110111111
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
        .k0(32'b00111101010010110010110101111101
),
        .k1(32'b10111101011001110001011110111100
),
        .k2(32'b10111110001010100011011100010011
),
        .k3(32'b00111110010100101100100011010110
),
        .k4(32'b10111110001010111110110011000011
),
        .k5(32'b00111110001011010001000001010010
),
        .k6(32'b10111101001101011000110000100101
),
        .k7(32'b10111101100001110011000100011100
),
        .k8(32'b00111101101101000001001011100100
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
        .k0(32'b10111110000000101111010001000011
),
        .k1(32'b00111101111001110100010001001011
),
        .k2(32'b00111101011101001010011001001001
),
        .k3(32'b00111101011110100110000111110011
),
        .k4(32'b00111110001011000010100011100111
),
        .k5(32'b00111110000011111111101011101111
),
        .k6(32'b10111110001000000110011111100011
),
        .k7(32'b10111110000111110101011111001100
),
        .k8(32'b00111101001011011100010011110010
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
        .k0(32'b10111100110011011100101111001011
),
        .k1(32'b00111011111011010110100000001101
),
        .k2(32'b10111110010000001101000010000111
),
        .k3(32'b00111110000010111100110011000011
),
        .k4(32'b00111110001011010011001101000010
),
        .k5(32'b00111101100100000100010011011000
),
        .k6(32'b10111110000100101001001100111011
),
        .k7(32'b10111110010011001011111001110100
),
        .k8(32'b00111010110010100010011100111010
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
        .k0(32'b10111101011011111111100001001110
),
        .k1(32'b00111110000101011101010010001001
),
        .k2(32'b10111110011000001000000101101011
),
        .k3(32'b10111011111011011111000001110010
),
        .k4(32'b00111110001011110100111100000001
),
        .k5(32'b10111110001100101000101110010101
),
        .k6(32'b10111110001111000111111010011110
),
        .k7(32'b00111100110101010011011100001000
),
        .k8(32'b00111100100011100110010101000111
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
        .k0(32'b00111101111100100110110100101100
),
        .k1(32'b10111100101010110001010110010000
),
        .k2(32'b00111110000010000010100000100010
),
        .k3(32'b00111101110100011000100010001010
),
        .k4(32'b00111101101100011100001000101100
),
        .k5(32'b10111101100000100001000100100000
),
        .k6(32'b00111101110000101100110011111100
),
        .k7(32'b00111101010100100000000111010001
),
        .k8(32'b10111101000001111100100111111010
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
        .k0(32'b10111101100010111111110011110100
),
        .k1(32'b10111100100111010110101100111001
),
        .k2(32'b10111100100100001010101011101001
),
        .k3(32'b00111101001100001110011000110010
),
        .k4(32'b10111101101000100111011111001010
),
        .k5(32'b10111110001001000000111001011101
),
        .k6(32'b10111110000110100111101011001101
),
        .k7(32'b00111101000000100000100110111111
),
        .k8(32'b00111110001110011001001011010001
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