module featuremap_conv2d_1_filter
#(
    parameter DATA_WIDTH = 32,
    parameter bias = {{bias}},   
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
        .k0({{k0}}),
        .k1({{k1}}),
        .k2({{k2}}),
        .k3({{k3}}),
        .k4({{k4}}),
        .k5({{k5}}),
        .k6({{k6}}),
        .k7({{k7}}),
        .k8({{k8}})    
)conv2D_inst_0(
        .data_in(data_in_channel0),
        .clk(clk), .rst(rst), .valid_in(~data_fifo_empty0),
        .valid_out(), .rdreq(rdreq),
        .data_out(data_out_conv2d_channel0)
);

conv2D #(
        .DATA_WIDTH(DATA_WIDTH),
        .WIDTH(WIDTH+2),
        .k0({{k10}}),
        .k1({{k11}}),
        .k2({{k12}}),
        .k3({{k13}}),
        .k4({{k14}}),
        .k5({{k15}}),
        .k6({{k16}}),
        .k7({{k17}}),
        .k8({{k18}})  
)conv2D_inst_1(
        .data_in(data_in_channel1),
        .clk(clk), .rst(rst), .valid_in(~data_fifo_empty1),
        .valid_out(), .rdreq(rdreq),
        .data_out(data_out_conv2d_channel1)
);

conv2D #(
        .DATA_WIDTH(DATA_WIDTH),
        .WIDTH(WIDTH+2),
        .k0({{k20}}),
        .k1({{k21}}),
        .k2({{k22}}),
        .k3({{k23}}),
        .k4({{k24}}),
        .k5({{k25}}),
        .k6({{k26}}),
        .k7({{k27}}),
        .k8({{k28}})  
)conv2D_inst_2(
        .data_in(data_in_channel2),
        .clk(clk), .rst(rst), .valid_in(~data_fifo_empty2),
        .valid_out(valid_in_adder), .rdreq(rdreq),
        .data_out(data_out_conv2d_channel2)
);

conv2D #(
        .DATA_WIDTH(DATA_WIDTH),
        .WIDTH(WIDTH+2),
        .k0({{k30}}),
        .k1({{k31}}),
        .k2({{k32}}),
        .k3({{k33}}),
        .k4({{k34}}),
        .k5({{k35}}),
        .k6({{k36}}),
        .k7({{k37}}),
        .k8({{k38}})  
)conv2D_inst_3(
        .data_in(data_in_channel3),
        .clk(clk), .rst(rst), .valid_in(~data_fifo_empty3),
        .valid_out(valid_in_adder), .rdreq(rdreq),
        .data_out(data_out_conv2d_channel3)
);

conv2D #(
        .DATA_WIDTH(DATA_WIDTH),
        .WIDTH(WIDTH+2),
        .k0({{k40}}),
        .k1({{k41}}),
        .k2({{k42}}),
        .k3({{k43}}),
        .k4({{k44}}),
        .k5({{k45}}),
        .k6({{k46}}),
        .k7({{k47}}),
        .k8({{k48}})  
)conv2D_inst_4(
        .data_in(data_in_channel4),
        .clk(clk), .rst(rst), .valid_in(~data_fifo_empty4),
        .valid_out(valid_in_adder), .rdreq(rdreq),
        .data_out(data_out_conv2d_channel4)
);

conv2D #(
        .DATA_WIDTH(DATA_WIDTH),
        .WIDTH(WIDTH+2),
        .k0({{k50}}),
        .k1({{k51}}),
        .k2({{k52}}),
        .k3({{k53}}),
        .k4({{k54}}),
        .k5({{k55}}),
        .k6({{k56}}),
        .k7({{k57}}),
        .k8({{k58}})  
)conv2D_inst_5(
        .data_in(data_in_channel5),
        .clk(clk), .rst(rst), .valid_in(~data_fifo_empty5),
        .valid_out(valid_in_adder), .rdreq(rdreq),
        .data_out(data_out_conv2d_channel5)
);

conv2D #(
        .DATA_WIDTH(DATA_WIDTH),
        .WIDTH(WIDTH+2),
        .k0({{k60}}),
        .k1({{k61}}),
        .k2({{k62}}),
        .k3({{k63}}),
        .k4({{k64}}),
        .k5({{k65}}),
        .k6({{k66}}),
        .k7({{k67}}),
        .k8({{k68}})  
)conv2D_inst_6(
        .data_in(data_in_channel6),
        .clk(clk), .rst(rst), .valid_in(~data_fifo_empty6),
        .valid_out(valid_in_adder), .rdreq(rdreq),
        .data_out(data_out_conv2d_channel6)
);

conv2D #(
        .DATA_WIDTH(DATA_WIDTH),
        .WIDTH(WIDTH+2),
        .k0({{k70}}),
        .k1({{k71}}),
        .k2({{k72}}),
        .k3({{k73}}),
        .k4({{k74}}),
        .k5({{k75}}),
        .k6({{k76}}),
        .k7({{k77}}),
        .k8({{k78}})  
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