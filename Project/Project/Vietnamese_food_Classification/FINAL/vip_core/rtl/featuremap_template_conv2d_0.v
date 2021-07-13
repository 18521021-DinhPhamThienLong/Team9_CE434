module featuremap_conv2d_0_filter
#(
    parameter DATA_WIDTH = 32,
    parameter bias = {{bias}},    
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
        .data_in(data_in[DATA_WIDTH*3-1:DATA_WIDTH*2]),
        .clk(clk), .rst(rst), .valid_in(~data_fifo_empty),
        .valid_out(), .rdreq(rdreq),
        .data_out(data_out_conv_B)
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
        .data_in(data_in[DATA_WIDTH*2-1:DATA_WIDTH]),
        .clk(clk), .rst(rst), .valid_in(~data_fifo_empty),
        .valid_out(), .rdreq(rdreq),
        .data_out(data_out_conv_G)
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