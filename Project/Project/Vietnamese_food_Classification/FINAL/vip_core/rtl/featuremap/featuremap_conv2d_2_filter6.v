module featuremap_conv2d_2_filter6
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b00111100111101011001001010000101
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
        .k0(32'b10111101001001111011011101111011
),
        .k1(32'b10111101100101000111000111101011
),
        .k2(32'b00111110001001111111110010001000
),
        .k3(32'b10111110000010001110111000100000
),
        .k4(32'b10111101110110110010000010011111
),
        .k5(32'b00111101010001011111110100111010
),
        .k6(32'b00111110000000100111010111110111
),
        .k7(32'b10111100001100100010101011011000
),
        .k8(32'b00111100001011101110101100011001
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
        .k0(32'b00111110000011110111100010010010
),
        .k1(32'b10111101000100101000110011010101
),
        .k2(32'b00111011111000001111110100010010
),
        .k3(32'b10111101011010101110100010001100
),
        .k4(32'b00111110000110110000000001010001
),
        .k5(32'b00111101111010110111001101001101
),
        .k6(32'b10111110000001001100101000111000
),
        .k7(32'b10111101100011110100010101100000
),
        .k8(32'b10111101100010010101101101101100
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
        .k0(32'b00111101000010010010001001000010
),
        .k1(32'b00111101111101110001000000111001
),
        .k2(32'b00111110001011000000111011010001
),
        .k3(32'b00111110000101100000011011010110
),
        .k4(32'b10111101101010111011110010010110
),
        .k5(32'b10111110000000110100111111000110
),
        .k6(32'b00111101111110001010110111110111
),
        .k7(32'b00111110001000010011110011000011
),
        .k8(32'b10111101000010000110100001111010
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
        .k0(32'b10111110000010010000100101001100
),
        .k1(32'b10111110000000000010011011010110
),
        .k2(32'b10111101100111000111100111010110
),
        .k3(32'b10111010000001001111110000111010
),
        .k4(32'b00111110000000000110000011111010
),
        .k5(32'b00111101100001010001111011100101
),
        .k6(32'b10111101111111011100000010110100
),
        .k7(32'b10111101101010101110100100101100
),
        .k8(32'b10111101100111010010100111110011
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
        .k0(32'b10111110000100000101100011111010
),
        .k1(32'b10111101100000110100001111101100
),
        .k2(32'b00111100111011100001101100000010
),
        .k3(32'b00111101111101111010000011111000
),
        .k4(32'b10111101100111110010010110101100
),
        .k5(32'b10111101101010101110111100011111
),
        .k6(32'b10111101101010000001100000001000
),
        .k7(32'b10111101110001011110000000000100
),
        .k8(32'b10111101011100011001000011011111
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
        .k0(32'b10111101101110001100010111100100
),
        .k1(32'b10111101100111110011111010001101
),
        .k2(32'b10111101111011100010010010101100
),
        .k3(32'b10111100101010000001110001011001
),
        .k4(32'b00111110001011100001000111000001
),
        .k5(32'b10111100101010100010110111110000
),
        .k6(32'b00111110000110101110101000011000
),
        .k7(32'b10111101011111000001100010111101
),
        .k8(32'b00111101111010110110100101010011
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
        .k0(32'b00111101010001101011110110111010
),
        .k1(32'b10111101110110010010110110111011
),
        .k2(32'b10111110000011101101000000001001
),
        .k3(32'b10111110000011010101011001110010
),
        .k4(32'b10111101101110000111100011100100
),
        .k5(32'b00111011110111000011100000011110
),
        .k6(32'b00111101111000001111100101010101
),
        .k7(32'b10111101111011101111101100100111
),
        .k8(32'b00111100101001111000011100001110
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
        .k0(32'b10111100000100011001110111111010
),
        .k1(32'b00111101100111011111010111100111
),
        .k2(32'b10111100101110101000010000010111
),
        .k3(32'b10111011101101111110010001001000
),
        .k4(32'b00111110001010011000001000011010
),
        .k5(32'b10111101000001100101010100011001
),
        .k6(32'b00111101110001101000111100001111
),
        .k7(32'b00111101110100101100001011001001
),
        .k8(32'b00111110000010110000101100111101
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