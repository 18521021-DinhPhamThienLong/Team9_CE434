////////////////////////////////////////// FILTER 0 //////////////////////////////////////////
module featuremap_conv2d_0_filter0
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b00111100000010001000111111010110,   
    parameter WIDTH = 112
)(
    input clk,
    input rst, 

    input [DATA_WIDTH*3-1:0] data_in,
    input  data_fifo_empty,

    output valid_out, rdreq,
    output [DATA_WIDTH-1:0] data_out
    
);
    wire [DATA_WIDTH-1:0] data_out_conv_R, data_out_conv_G, data_out_conv_B;
    wire valid_in_adder;

conv2D #(
        .DATA_WIDTH(DATA_WIDTH),
        .WIDTH(WIDTH+2),
        .k0(32'b10111110000110011111101111110001

),
        .k1(32'b10111110001010011110001110000110

),
        .k2(32'b00111101001100110100000001110100

),
        .k3(32'b00111100000111000001010110010100

),
        .k4(32'b10111101100101010011111110100000

),
        .k5(32'b00111110010001110000001111011011

),
        .k6(32'b10111110010111000000111011101110

),
        .k7(32'b00111110000001110000100100110010

),
        .k8(32'b10111110000010001110001111100110

)    
)conv2D_inst_0(
        .data_in(data_in[DATA_WIDTH*3-1:DATA_WIDTH*2]),
        .clk(clk), .rst(rst), .valid_in(~data_fifo_empty),
        .valid_out(), .rdreq(rdreq),
        .data_out(data_out_conv_B)
);

conv2D #(
        .DATA_WIDTH(DATA_WIDTH),
        .WIDTH(WIDTH+2),
        .k0(32'b00111010111000011011100001101101

),
        .k1(32'b00111101110101100010101111110111

),
        .k2(32'b10111101100100011110110011100110

),
        .k3(32'b00111101111100011001110001001111

),
        .k4(32'b10111110000000000001101010100010

),
        .k5(32'b00111101100110010010000111011010

),
        .k6(32'b00111101110000011111110010100000

),
        .k7(32'b00111101001100110110000010011110

),
        .k8(32'b00111101111111100110111000001100

)  
)conv2D_inst_1(
        .data_in(data_in[DATA_WIDTH*2-1:DATA_WIDTH]),
        .clk(clk), .rst(rst), .valid_in(~data_fifo_empty),
        .valid_out(), .rdreq(rdreq),
        .data_out(data_out_conv_G)
);

conv2D #(
        .DATA_WIDTH(DATA_WIDTH),
        .WIDTH(WIDTH+2),
        .k0(32'b00111101110001111001101010011100

),
        .k1(32'b10111110010010100001011101001010

),
        .k2(32'b00111110011111101011100001110101

),
        .k3(32'b10111101000000010100010100001011

),
        .k4(32'b10111101001110111011000101010111

),
        .k5(32'b00111100101011000101000111110010

),
        .k6(32'b10111010001101011110001101001110

),
        .k7(32'b00111110010110101001111000000100

),
        .k8(32'b10111110001111101111101000000100

)  
)conv2D_inst_2(
        .data_in(data_in[DATA_WIDTH-1:0]),
        .clk(clk), .rst(rst), .valid_in(~data_fifo_empty),
        .valid_out(valid_in_adder), .rdreq(rdreq),
        .data_out(data_out_conv_R)
);

add_bias #(
    .DATA_WIDTH(DATA_WIDTH),
    .bias(bias)
)add_bias_inst(
    .data_out_conv_R(data_out_conv_R), .data_out_conv_G(data_out_conv_G), .data_out_conv_B(data_out_conv_B),
    .valid_in_adder(valid_in_adder), .clk(clk), .rst(rst),
    .data_out(data_out),
    .valid_out(valid_out)
);

endmodule
////////////////////////////////////////// FILTER 1 //////////////////////////////////////////
module featuremap_conv2d_0_filter1
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b00111100011101011001010110100000,   
    parameter WIDTH = 112
)(
    input clk,
    input rst, 

    input [DATA_WIDTH*3-1:0] data_in,
    input  data_fifo_empty,

    output valid_out, rdreq,
    output [DATA_WIDTH-1:0] data_out
    
);
    wire [DATA_WIDTH-1:0] data_out_conv_R, data_out_conv_G, data_out_conv_B;
    wire valid_in_adder;

conv2D #(
        .DATA_WIDTH(DATA_WIDTH),
        .WIDTH(WIDTH+2),
        .k0(32'b00111101001011100110100111010111

),
        .k1(32'b10111101101111101100011000000111

),
        .k2(32'b10111101111110100100101101110100

),
        .k3(32'b00111110011110101100100110000111

),
        .k4(32'b10111110000110100000000110101110

),
        .k5(32'b10111110000110110110100010000110

),
        .k6(32'b00111011111110001101111010111110

),
        .k7(32'b10111101100001000010111010110000

),
        .k8(32'b10111101111101000100111010011010

)    
)conv2D_inst_0(
        .data_in(data_in[DATA_WIDTH*3-1:DATA_WIDTH*2]),
        .clk(clk), .rst(rst), .valid_in(~data_fifo_empty),
        .valid_out(), .rdreq(rdreq),
        .data_out(data_out_conv_B)
);

conv2D #(
        .DATA_WIDTH(DATA_WIDTH),
        .WIDTH(WIDTH+2),
        .k0(32'b00111101101110001111101101001111

),
        .k1(32'b00111101110100110001110111010100

),
        .k2(32'b00111110011011111000101111001111

),
        .k3(32'b10111110000010011000111100100010

),
        .k4(32'b00111110001000111100111101000000

),
        .k5(32'b10111101010110001011111101001101

),
        .k6(32'b10111110001010111100011111110001

),
        .k7(32'b00111110011001010101110011010100

),
        .k8(32'b00111110000000111100110011001011

)  
)conv2D_inst_1(
        .data_in(data_in[DATA_WIDTH*2-1:DATA_WIDTH]),
        .clk(clk), .rst(rst), .valid_in(~data_fifo_empty),
        .valid_out(), .rdreq(rdreq),
        .data_out(data_out_conv_G)
);

conv2D #(
        .DATA_WIDTH(DATA_WIDTH),
        .WIDTH(WIDTH+2),
        .k0(32'b00111110010000111010000101011111

),
        .k1(32'b00111101001110001010000111011011

),
        .k2(32'b10111100110011001001011110110001

),
        .k3(32'b00111101100101101010101110111110

),
        .k4(32'b10111100010010100110110111010111

),
        .k5(32'b10111110010100001100001000100110

),
        .k6(32'b10111101111100000011111001100001

),
        .k7(32'b10111101101100011100100100110010

),
        .k8(32'b10111101100110011111100101100000

)  
)conv2D_inst_2(
        .data_in(data_in[DATA_WIDTH-1:0]),
        .clk(clk), .rst(rst), .valid_in(~data_fifo_empty),
        .valid_out(valid_in_adder), .rdreq(rdreq),
        .data_out(data_out_conv_R)
);

add_bias #(
    .DATA_WIDTH(DATA_WIDTH),
    .bias(bias)
)add_bias_inst(
    .data_out_conv_R(data_out_conv_R), .data_out_conv_G(data_out_conv_G), .data_out_conv_B(data_out_conv_B),
    .valid_in_adder(valid_in_adder), .clk(clk), .rst(rst),
    .data_out(data_out),
    .valid_out(valid_out)
);

endmodule
////////////////////////////////////////// FILTER 2 //////////////////////////////////////////
module featuremap_conv2d_0_filter2
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b10111011000001101101100000011011,   
    parameter WIDTH = 112
)(
    input clk,
    input rst, 

    input [DATA_WIDTH*3-1:0] data_in,
    input  data_fifo_empty,

    output valid_out, rdreq,
    output [DATA_WIDTH-1:0] data_out
    
);
    wire [DATA_WIDTH-1:0] data_out_conv_R, data_out_conv_G, data_out_conv_B;
    wire valid_in_adder;

conv2D #(
        .DATA_WIDTH(DATA_WIDTH),
        .WIDTH(WIDTH+2),
        .k0(32'b00111101000100011001101100001110

),
        .k1(32'b10111101000000100000101000111001

),
        .k2(32'b00111100100011111000110111000001

),
        .k3(32'b10111110000101010010110111010100

),
        .k4(32'b00111110010000001100000000101101

),
        .k5(32'b10111110001110100100001001110010

),
        .k6(32'b00111100101011010000000010001011

),
        .k7(32'b10111101101001001101001110110000

),
        .k8(32'b10111100101110100011011101111001

)    
)conv2D_inst_0(
        .data_in(data_in[DATA_WIDTH*3-1:DATA_WIDTH*2]),
        .clk(clk), .rst(rst), .valid_in(~data_fifo_empty),
        .valid_out(), .rdreq(rdreq),
        .data_out(data_out_conv_B)
);

conv2D #(
        .DATA_WIDTH(DATA_WIDTH),
        .WIDTH(WIDTH+2),
        .k0(32'b00111100100011001111101000001100

),
        .k1(32'b10111110010001011011110110011110

),
        .k2(32'b10111100011010011111001000010010

),
        .k3(32'b10111110001000101111001110111111

),
        .k4(32'b10111110001001000100010000001110

),
        .k5(32'b10111110010111111111011101000000

),
        .k6(32'b10111110011100011010011010000110

),
        .k7(32'b00111110010000100011100111100010

),
        .k8(32'b10111110000101110011101100000010

)  
)conv2D_inst_1(
        .data_in(data_in[DATA_WIDTH*2-1:DATA_WIDTH]),
        .clk(clk), .rst(rst), .valid_in(~data_fifo_empty),
        .valid_out(), .rdreq(rdreq),
        .data_out(data_out_conv_G)
);

conv2D #(
        .DATA_WIDTH(DATA_WIDTH),
        .WIDTH(WIDTH+2),
        .k0(32'b00111110000100000011110100101001

),
        .k1(32'b00111101110101001001001001000110

),
        .k2(32'b10111110000101000010100111011001

),
        .k3(32'b00111100011100010001000101000111

),
        .k4(32'b10111100000110101111000101000100

),
        .k5(32'b10111110001100011010101111110111

),
        .k6(32'b10111110000101111110000011010101

),
        .k7(32'b10111100010000100100110000100100

),
        .k8(32'b00111101100110001000101011101110

)  
)conv2D_inst_2(
        .data_in(data_in[DATA_WIDTH-1:0]),
        .clk(clk), .rst(rst), .valid_in(~data_fifo_empty),
        .valid_out(valid_in_adder), .rdreq(rdreq),
        .data_out(data_out_conv_R)
);

add_bias #(
    .DATA_WIDTH(DATA_WIDTH),
    .bias(bias)
)add_bias_inst(
    .data_out_conv_R(data_out_conv_R), .data_out_conv_G(data_out_conv_G), .data_out_conv_B(data_out_conv_B),
    .valid_in_adder(valid_in_adder), .clk(clk), .rst(rst),
    .data_out(data_out),
    .valid_out(valid_out)
);

endmodule
////////////////////////////////////////// FILTER 3 //////////////////////////////////////////
module featuremap_conv2d_0_filter3
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b00111100000101000001010001010111,   
    parameter WIDTH = 112
)(
    input clk,
    input rst, 

    input [DATA_WIDTH*3-1:0] data_in,
    input  data_fifo_empty,

    output valid_out, rdreq,
    output [DATA_WIDTH-1:0] data_out
    
);
    wire [DATA_WIDTH-1:0] data_out_conv_R, data_out_conv_G, data_out_conv_B;
    wire valid_in_adder;

conv2D #(
        .DATA_WIDTH(DATA_WIDTH),
        .WIDTH(WIDTH+2),
        .k0(32'b10111110001010110011100010101111

),
        .k1(32'b10111110010101001100100010000010

),
        .k2(32'b10111110001100011111101010111110

),
        .k3(32'b10111101011110001001111011110100

),
        .k4(32'b10111110000001000111100111101010

),
        .k5(32'b00111110011011001011000010111111

),
        .k6(32'b10111101111110000110011010001000

),
        .k7(32'b00111101110011110110101011001000

),
        .k8(32'b00111110010101001010010111110011

)    
)conv2D_inst_0(
        .data_in(data_in[DATA_WIDTH*3-1:DATA_WIDTH*2]),
        .clk(clk), .rst(rst), .valid_in(~data_fifo_empty),
        .valid_out(), .rdreq(rdreq),
        .data_out(data_out_conv_B)
);

conv2D #(
        .DATA_WIDTH(DATA_WIDTH),
        .WIDTH(WIDTH+2),
        .k0(32'b10111101110110010001110001010110

),
        .k1(32'b00111110010110101000001000010010

),
        .k2(32'b00111101001001111110010011101011

),
        .k3(32'b00111110010010001111010011001000

),
        .k4(32'b00111110001110001010010101111011

),
        .k5(32'b00111101110101101101110101101111

),
        .k6(32'b00111100110011111110011100010010

),
        .k7(32'b00111101000110011100010001111010

),
        .k8(32'b00111101000111111010111100111000

)  
)conv2D_inst_1(
        .data_in(data_in[DATA_WIDTH*2-1:DATA_WIDTH]),
        .clk(clk), .rst(rst), .valid_in(~data_fifo_empty),
        .valid_out(), .rdreq(rdreq),
        .data_out(data_out_conv_G)
);

conv2D #(
        .DATA_WIDTH(DATA_WIDTH),
        .WIDTH(WIDTH+2),
        .k0(32'b10111011011101010100001000101000

),
        .k1(32'b10111100001010000100110011101101

),
        .k2(32'b00111110001001111000110110011000

),
        .k3(32'b00111110000011010000110000010110

),
        .k4(32'b10111110000111110101110111111100

),
        .k5(32'b10111001110101110000001101110000

),
        .k6(32'b10111110000101010101100001101010

),
        .k7(32'b10111100110011110000010001000100

),
        .k8(32'b10111110000110010100101010100111

)  
)conv2D_inst_2(
        .data_in(data_in[DATA_WIDTH-1:0]),
        .clk(clk), .rst(rst), .valid_in(~data_fifo_empty),
        .valid_out(valid_in_adder), .rdreq(rdreq),
        .data_out(data_out_conv_R)
);

add_bias #(
    .DATA_WIDTH(DATA_WIDTH),
    .bias(bias)
)add_bias_inst(
    .data_out_conv_R(data_out_conv_R), .data_out_conv_G(data_out_conv_G), .data_out_conv_B(data_out_conv_B),
    .valid_in_adder(valid_in_adder), .clk(clk), .rst(rst),
    .data_out(data_out),
    .valid_out(valid_out)
);

endmodule
////////////////////////////////////////// FILTER 4 //////////////////////////////////////////
module featuremap_conv2d_0_filter4
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b10111001101111001110110110000111,   
    parameter WIDTH = 112
)(
    input clk,
    input rst, 

    input [DATA_WIDTH*3-1:0] data_in,
    input  data_fifo_empty,

    output valid_out, rdreq,
    output [DATA_WIDTH-1:0] data_out
    
);
    wire [DATA_WIDTH-1:0] data_out_conv_R, data_out_conv_G, data_out_conv_B;
    wire valid_in_adder;

conv2D #(
        .DATA_WIDTH(DATA_WIDTH),
        .WIDTH(WIDTH+2),
        .k0(32'b00111100100001001000001110001100

),
        .k1(32'b10111101011011100110100010100000

),
        .k2(32'b00111110001111100011110001100011

),
        .k3(32'b10111110010011000001100010000100

),
        .k4(32'b00111101110010101110100000001110

),
        .k5(32'b00111101101110010111000110000111

),
        .k6(32'b10111101010001001110110010100111

),
        .k7(32'b00111110010100110110011001001010

),
        .k8(32'b00111110011111100010111111000010

)    
)conv2D_inst_0(
        .data_in(data_in[DATA_WIDTH*3-1:DATA_WIDTH*2]),
        .clk(clk), .rst(rst), .valid_in(~data_fifo_empty),
        .valid_out(), .rdreq(rdreq),
        .data_out(data_out_conv_B)
);

conv2D #(
        .DATA_WIDTH(DATA_WIDTH),
        .WIDTH(WIDTH+2),
        .k0(32'b10111101010010011101001101100111

),
        .k1(32'b10111110011101011100001011000111

),
        .k2(32'b10111100101011100001010010010110

),
        .k3(32'b00111110010100110100100011000110

),
        .k4(32'b10111110001001101101010110100111

),
        .k5(32'b10111110000010001101000111110001

),
        .k6(32'b00111110011101001010000101010111

),
        .k7(32'b10111100110010011010011001100000

),
        .k8(32'b00111110010001011000101111011101

)  
)conv2D_inst_1(
        .data_in(data_in[DATA_WIDTH*2-1:DATA_WIDTH]),
        .clk(clk), .rst(rst), .valid_in(~data_fifo_empty),
        .valid_out(), .rdreq(rdreq),
        .data_out(data_out_conv_G)
);

conv2D #(
        .DATA_WIDTH(DATA_WIDTH),
        .WIDTH(WIDTH+2),
        .k0(32'b00111110010000101100110011011101

),
        .k1(32'b10111010111111000110011010110001

),
        .k2(32'b10111110011110101010001000110010

),
        .k3(32'b10111101100100111010010100101011

),
        .k4(32'b10111110010000111001000000100101

),
        .k5(32'b10111101010110001000111100111110

),
        .k6(32'b10111110000100000011000101110100

),
        .k7(32'b00111101100000001010011011011011

),
        .k8(32'b10111101001001001100011001011100

)  
)conv2D_inst_2(
        .data_in(data_in[DATA_WIDTH-1:0]),
        .clk(clk), .rst(rst), .valid_in(~data_fifo_empty),
        .valid_out(valid_in_adder), .rdreq(rdreq),
        .data_out(data_out_conv_R)
);

add_bias #(
    .DATA_WIDTH(DATA_WIDTH),
    .bias(bias)
)add_bias_inst(
    .data_out_conv_R(data_out_conv_R), .data_out_conv_G(data_out_conv_G), .data_out_conv_B(data_out_conv_B),
    .valid_in_adder(valid_in_adder), .clk(clk), .rst(rst),
    .data_out(data_out),
    .valid_out(valid_out)
);

endmodule
////////////////////////////////////////// FILTER 5 //////////////////////////////////////////
module featuremap_conv2d_0_filter5
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b00111101000010001010001011000101,   
    parameter WIDTH = 112
)(
    input clk,
    input rst, 

    input [DATA_WIDTH*3-1:0] data_in,
    input  data_fifo_empty,

    output valid_out, rdreq,
    output [DATA_WIDTH-1:0] data_out
    
);
    wire [DATA_WIDTH-1:0] data_out_conv_R, data_out_conv_G, data_out_conv_B;
    wire valid_in_adder;

conv2D #(
        .DATA_WIDTH(DATA_WIDTH),
        .WIDTH(WIDTH+2),
        .k0(32'b10111101101011010010011001110010

),
        .k1(32'b00111101110001000111101001011100

),
        .k2(32'b10111101101100000011011000000100

),
        .k3(32'b10111110010101010010100111110011

),
        .k4(32'b00111110100000101001100110111000

),
        .k5(32'b10111110001110110110100001010100

),
        .k6(32'b00111101101011001011110101111110

),
        .k7(32'b10111100110101100001001110001011

),
        .k8(32'b00111110000100110011100011101011

)    
)conv2D_inst_0(
        .data_in(data_in[DATA_WIDTH*3-1:DATA_WIDTH*2]),
        .clk(clk), .rst(rst), .valid_in(~data_fifo_empty),
        .valid_out(), .rdreq(rdreq),
        .data_out(data_out_conv_B)
);

conv2D #(
        .DATA_WIDTH(DATA_WIDTH),
        .WIDTH(WIDTH+2),
        .k0(32'b10111101100001100100010011000110

),
        .k1(32'b00111110010011101101000000011010

),
        .k2(32'b00111100111111011100111000010011

),
        .k3(32'b10111110000101100010110001000111

),
        .k4(32'b10111110010010000010001000010001

),
        .k5(32'b00111101100010001110101101101011

),
        .k6(32'b00111100100111010111010100100101

),
        .k7(32'b10111101110011101000010001100100

),
        .k8(32'b00111110000011111010010010010011

)  
)conv2D_inst_1(
        .data_in(data_in[DATA_WIDTH*2-1:DATA_WIDTH]),
        .clk(clk), .rst(rst), .valid_in(~data_fifo_empty),
        .valid_out(), .rdreq(rdreq),
        .data_out(data_out_conv_G)
);

conv2D #(
        .DATA_WIDTH(DATA_WIDTH),
        .WIDTH(WIDTH+2),
        .k0(32'b10111110001010011011100010000111

),
        .k1(32'b00111101111110010111100000101111

),
        .k2(32'b10111101011100001000001101100110

),
        .k3(32'b00111101100110000000111001001011

),
        .k4(32'b00111100101011111001011110010100

),
        .k5(32'b10111110001011110000111010000110

),
        .k6(32'b10111101110100110000001001011001

),
        .k7(32'b00111101010100000101000100011110

),
        .k8(32'b00111101001011001011111001110110

)  
)conv2D_inst_2(
        .data_in(data_in[DATA_WIDTH-1:0]),
        .clk(clk), .rst(rst), .valid_in(~data_fifo_empty),
        .valid_out(valid_in_adder), .rdreq(rdreq),
        .data_out(data_out_conv_R)
);

add_bias #(
    .DATA_WIDTH(DATA_WIDTH),
    .bias(bias)
)add_bias_inst(
    .data_out_conv_R(data_out_conv_R), .data_out_conv_G(data_out_conv_G), .data_out_conv_B(data_out_conv_B),
    .valid_in_adder(valid_in_adder), .clk(clk), .rst(rst),
    .data_out(data_out),
    .valid_out(valid_out)
);

endmodule
////////////////////////////////////////// FILTER 6 //////////////////////////////////////////
module featuremap_conv2d_0_filter6
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b10111000100000001000100000111110,   
    parameter WIDTH = 112
)(
    input clk,
    input rst, 

    input [DATA_WIDTH*3-1:0] data_in,
    input  data_fifo_empty,

    output valid_out, rdreq,
    output [DATA_WIDTH-1:0] data_out
    
);
    wire [DATA_WIDTH-1:0] data_out_conv_R, data_out_conv_G, data_out_conv_B;
    wire valid_in_adder;

conv2D #(
        .DATA_WIDTH(DATA_WIDTH),
        .WIDTH(WIDTH+2),
        .k0(32'b00111101101011111101010011001011

),
        .k1(32'b10111101110010110111101111001111

),
        .k2(32'b10111110000001010011110001001011

),
        .k3(32'b00111110000110111110000010111100

),
        .k4(32'b00111101111110000110011000111001

),
        .k5(32'b10111110001011101110000110101100

),
        .k6(32'b00111110000011010110011000010011

),
        .k7(32'b10111110001110000100010011101101

),
        .k8(32'b00111110000001000011001011000111

)    
)conv2D_inst_0(
        .data_in(data_in[DATA_WIDTH*3-1:DATA_WIDTH*2]),
        .clk(clk), .rst(rst), .valid_in(~data_fifo_empty),
        .valid_out(), .rdreq(rdreq),
        .data_out(data_out_conv_B)
);

conv2D #(
        .DATA_WIDTH(DATA_WIDTH),
        .WIDTH(WIDTH+2),
        .k0(32'b00111110001001001101100110100010

),
        .k1(32'b00111110001100000110100111010101

),
        .k2(32'b10111110010110110010101001000110

),
        .k3(32'b00111110001111010110111100110001

),
        .k4(32'b10111110000011001011101000010110

),
        .k5(32'b00111110001011010111001010110011

),
        .k6(32'b00111110001011101000010000011100

),
        .k7(32'b00111100110001111111011001011101

),
        .k8(32'b10111101011000001011011101101011

)  
)conv2D_inst_1(
        .data_in(data_in[DATA_WIDTH*2-1:DATA_WIDTH]),
        .clk(clk), .rst(rst), .valid_in(~data_fifo_empty),
        .valid_out(), .rdreq(rdreq),
        .data_out(data_out_conv_G)
);

conv2D #(
        .DATA_WIDTH(DATA_WIDTH),
        .WIDTH(WIDTH+2),
        .k0(32'b10111101110100010000000001101110

),
        .k1(32'b00111110001101010101011110110001

),
        .k2(32'b10111110010111110101110010001111

),
        .k3(32'b00111110000110001000101101000001

),
        .k4(32'b10111110000100110010111000001110

),
        .k5(32'b10111101011110011110000011010010

),
        .k6(32'b00111101101000111100000010010111

),
        .k7(32'b10111101110000010100110001100101

),
        .k8(32'b10111101010110100100001001110110

)  
)conv2D_inst_2(
        .data_in(data_in[DATA_WIDTH-1:0]),
        .clk(clk), .rst(rst), .valid_in(~data_fifo_empty),
        .valid_out(valid_in_adder), .rdreq(rdreq),
        .data_out(data_out_conv_R)
);

add_bias #(
    .DATA_WIDTH(DATA_WIDTH),
    .bias(bias)
)add_bias_inst(
    .data_out_conv_R(data_out_conv_R), .data_out_conv_G(data_out_conv_G), .data_out_conv_B(data_out_conv_B),
    .valid_in_adder(valid_in_adder), .clk(clk), .rst(rst),
    .data_out(data_out),
    .valid_out(valid_out)
);

endmodule
////////////////////////////////////////// FILTER 7 //////////////////////////////////////////
module featuremap_conv2d_0_filter7
#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b10111011001010010010100111001011,   
    parameter WIDTH = 112
)(
    input clk,
    input rst, 

    input [DATA_WIDTH*3-1:0] data_in,
    input  data_fifo_empty,

    output valid_out, rdreq,
    output [DATA_WIDTH-1:0] data_out
    
);
    wire [DATA_WIDTH-1:0] data_out_conv_R, data_out_conv_G, data_out_conv_B;
    wire valid_in_adder;

conv2D #(
        .DATA_WIDTH(DATA_WIDTH),
        .WIDTH(WIDTH+2),
        .k0(32'b10111100011001011010111101101000

),
        .k1(32'b00111101110011110110101100000101

),
        .k2(32'b10111110011000001000011101111110

),
        .k3(32'b00111110011100100010101100100000

),
        .k4(32'b00111110001001100111011111000011

),
        .k5(32'b00111100111101101101001111100101

),
        .k6(32'b00111110001111100100011000110110

),
        .k7(32'b10111110010110110000110100011001

),
        .k8(32'b00111110000101110110000100100111

)    
)conv2D_inst_0(
        .data_in(data_in[DATA_WIDTH*3-1:DATA_WIDTH*2]),
        .clk(clk), .rst(rst), .valid_in(~data_fifo_empty),
        .valid_out(), .rdreq(rdreq),
        .data_out(data_out_conv_B)
);

conv2D #(
        .DATA_WIDTH(DATA_WIDTH),
        .WIDTH(WIDTH+2),
        .k0(32'b00111101001111111111111010101100

),
        .k1(32'b10111110011000011001111101011011

),
        .k2(32'b10111101111101001010000001111010

),
        .k3(32'b00111101100001001000110101011101

),
        .k4(32'b00111110001100110110000011010001

),
        .k5(32'b00111100111111010100010101101110

),
        .k6(32'b00111101100110010110101011110101

),
        .k7(32'b10111100101110001100111100110100

),
        .k8(32'b10111101110111111101011001111110

)  
)conv2D_inst_1(
        .data_in(data_in[DATA_WIDTH*2-1:DATA_WIDTH]),
        .clk(clk), .rst(rst), .valid_in(~data_fifo_empty),
        .valid_out(), .rdreq(rdreq),
        .data_out(data_out_conv_G)
);

conv2D #(
        .DATA_WIDTH(DATA_WIDTH),
        .WIDTH(WIDTH+2),
        .k0(32'b00111101101110100100010101110111

),
        .k1(32'b00111100111000110101001110111101

),
        .k2(32'b00111101011011000111101111111100

),
        .k3(32'b00111100000010010000110011111101

),
        .k4(32'b10111101011000011000110001010011

),
        .k5(32'b10111100101011111101001010101111

),
        .k6(32'b00111101101011011110110101000010

),
        .k7(32'b10111101110010010111010101101011

),
        .k8(32'b10111101101100010100000010000100

)  
)conv2D_inst_2(
        .data_in(data_in[DATA_WIDTH-1:0]),
        .clk(clk), .rst(rst), .valid_in(~data_fifo_empty),
        .valid_out(valid_in_adder), .rdreq(rdreq),
        .data_out(data_out_conv_R)
);

add_bias #(
    .DATA_WIDTH(DATA_WIDTH),
    .bias(bias)
)add_bias_inst(
    .data_out_conv_R(data_out_conv_R), .data_out_conv_G(data_out_conv_G), .data_out_conv_B(data_out_conv_B),
    .valid_in_adder(valid_in_adder), .clk(clk), .rst(rst),
    .data_out(data_out),
    .valid_out(valid_out)
);

endmodule
