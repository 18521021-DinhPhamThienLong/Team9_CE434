module top_tb_conv2d_1;

parameter DWIDTH = 32;

reg clock;
reg reset;
/*------------- clock generator --------------------*/
initial begin
    #5 clock =1;
    #1 forever #1 clock = !clock;
end
/*---------------- RESET --------------------------*/
initial begin
  #4 reset = 0;
  #5 reset = 1;
  #8 reset = 0;  
end
//

wire [31:0] num_data;

wire [DWIDTH-1:0] data_in0;
wire [DWIDTH-1:0] data_in1;
wire [DWIDTH-1:0] data_in2;
wire [DWIDTH-1:0] data_in3;
wire [DWIDTH-1:0] data_in4;
wire [DWIDTH-1:0] data_in5;
wire [DWIDTH-1:0] data_in6;
wire [DWIDTH-1:0] data_in7;

wire data_wrreq0;
wire data_wrreq1;
wire data_wrreq2;
wire data_wrreq3;
wire data_wrreq4;
wire data_wrreq5;
wire data_wrreq6;
wire data_wrreq7;

wire data_full0;
wire data_full1;
wire data_full2;
wire data_full3;
wire data_full4;
wire data_full5;
wire data_full6;
wire data_full7;
//
wire [DWIDTH-1:0] data_out0;
wire [DWIDTH-1:0] data_out1;
wire [DWIDTH-1:0] data_out2;
wire [DWIDTH-1:0] data_out3;
wire [DWIDTH-1:0] data_out4;
wire [DWIDTH-1:0] data_out5;
wire [DWIDTH-1:0] data_out6;
wire [DWIDTH-1:0] data_out7;

wire data_rdreq0;
wire data_rdreq1;
wire data_rdreq2;
wire data_rdreq3;
wire data_rdreq4;
wire data_rdreq5;
wire data_rdreq6;
wire data_rdreq7;

wire data_empty0;
wire data_empty1;
wire data_empty2;
wire data_empty3;
wire data_empty4;
wire data_empty5;
wire data_empty6;
wire data_empty7;

// DATA GENERATOR / READ AND TEXT IMAGE FILE
ImageGenerator_new_channel #(
    .input_file("/home/thienlong/Exercise/VIPUsingFPGA/OpenIP/data/tb_results/output_featuremap_conv2d_0_filter0.txt")
    )
     image_read_inst0 (
    .clock(clock),
    .reset(reset),
    //
    .num_data(num_data),
    .fifo_full(data_full0),
    .fifo_data(data_in0),
    .fifo_wrreq(data_wrreq0)
);

ImageGenerator_new_channel #(
    .input_file("/home/thienlong/Exercise/VIPUsingFPGA/OpenIP/data/tb_results/output_featuremap_conv2d_0_filter1.txt")
    )
     image_read_inst1 (
    .clock(clock),
    .reset(reset),
    //
    .num_data(num_data),
    .fifo_full(data_full1),
    .fifo_data(data_in1),
    .fifo_wrreq(data_wrreq1)
);

ImageGenerator_new_channel #(
    .input_file("/home/thienlong/Exercise/VIPUsingFPGA/OpenIP/data/tb_results/output_featuremap_conv2d_0_filter2.txt")
    )
     image_read_inst2 (
    .clock(clock),
    .reset(reset),
    //
    .num_data(num_data),
    .fifo_full(data_full2),
    .fifo_data(data_in2),
    .fifo_wrreq(data_wrreq2)
);

ImageGenerator_new_channel #(
    .input_file("/home/thienlong/Exercise/VIPUsingFPGA/OpenIP/data/tb_results/output_featuremap_conv2d_0_filter3.txt")
    )
     image_read_inst3 (
    .clock(clock),
    .reset(reset),
    //
    .num_data(num_data),
    .fifo_full(data_full3),
    .fifo_data(data_in3),
    .fifo_wrreq(data_wrreq3)
);

ImageGenerator_new_channel #(
    .input_file("/home/thienlong/Exercise/VIPUsingFPGA/OpenIP/data/tb_results/output_featuremap_conv2d_0_filter4.txt")
    )
     image_read_inst4 (
    .clock(clock),
    .reset(reset),
    //
    .num_data(num_data),
    .fifo_full(data_full4),
    .fifo_data(data_in4),
    .fifo_wrreq(data_wrreq4)
);

ImageGenerator_new_channel #(
    .input_file("/home/thienlong/Exercise/VIPUsingFPGA/OpenIP/data/tb_results/output_featuremap_conv2d_0_filter5.txt")
    )
     image_read_inst5 (
    .clock(clock),
    .reset(reset),
    //
    .num_data(num_data),
    .fifo_full(data_full5),
    .fifo_data(data_in5),
    .fifo_wrreq(data_wrreq5)
);

ImageGenerator_new_channel #(
    .input_file("/home/thienlong/Exercise/VIPUsingFPGA/OpenIP/data/tb_results/output_featuremap_conv2d_0_filter6.txt")
    )
     image_read_inst6 (
    .clock(clock),
    .reset(reset),
    //
    .num_data(num_data),
    .fifo_full(data_full6),
    .fifo_data(data_in6),
    .fifo_wrreq(data_wrreq6)
);

ImageGenerator_new_channel #(
    .input_file("/home/thienlong/Exercise/VIPUsingFPGA/OpenIP/data/tb_results/output_featuremap_conv2d_0_filter7.txt")
    )
     image_read_inst7 (
    .clock(clock),
    .reset(reset),
    //
    .num_data(num_data),
    .fifo_full(data_full7),
    .fifo_data(data_in7),
    .fifo_wrreq(data_wrreq7)
);
//VIP FEATUREMAP CONV2D_1
vip_top_featuremap_conv2d_1_filter0 conv2d_1_inst0(
    .clock(clock),
    .reset(reset),
    //
    .fifo_in_data0(data_in0),
    .fifo_in_data1(data_in1),
    .fifo_in_data2(data_in2),
    .fifo_in_data3(data_in3),
    .fifo_in_data4(data_in4),
    .fifo_in_data5(data_in5),
    .fifo_in_data6(data_in6),
    .fifo_in_data7(data_in7),

    .fifo_in_wrreq(data_wrreq0), 
    .fifo_in_full(data_full0),  
    //
    .fifo_out_data(data_out0),     
    .fifo_out_rdreq(data_rdreq0),    
    .fifo_out_empty(data_empty0) 
);

vip_top_featuremap_conv2d_1_filter1 conv2d_1_inst1(
    .clock(clock),
    .reset(reset),
    //
    .fifo_in_data0(data_in0),
    .fifo_in_data1(data_in1),
    .fifo_in_data2(data_in2),
    .fifo_in_data3(data_in3),
    .fifo_in_data4(data_in4),
    .fifo_in_data5(data_in5),
    .fifo_in_data6(data_in6),
    .fifo_in_data7(data_in7),

    .fifo_in_wrreq(data_wrreq1), 
    .fifo_in_full(data_full1),  
    //
    .fifo_out_data(data_out1),     
    .fifo_out_rdreq(data_rdreq1),    
    .fifo_out_empty(data_empty1) 
);

vip_top_featuremap_conv2d_1_filter2 conv2d_1_inst2(
    .clock(clock),
    .reset(reset),
    //
    .fifo_in_data0(data_in0),
    .fifo_in_data1(data_in1),
    .fifo_in_data2(data_in2),
    .fifo_in_data3(data_in3),
    .fifo_in_data4(data_in4),
    .fifo_in_data5(data_in5),
    .fifo_in_data6(data_in6),
    .fifo_in_data7(data_in7),

    .fifo_in_wrreq(data_wrreq2), 
    .fifo_in_full(data_full2),  
    //
    .fifo_out_data(data_out2),     
    .fifo_out_rdreq(data_rdreq2),    
    .fifo_out_empty(data_empty2) 
);

vip_top_featuremap_conv2d_1_filter3 conv2d_1_inst3(
    .clock(clock),
    .reset(reset),
    //
    .fifo_in_data0(data_in0),
    .fifo_in_data1(data_in1),
    .fifo_in_data2(data_in2),
    .fifo_in_data3(data_in3),
    .fifo_in_data4(data_in4),
    .fifo_in_data5(data_in5),
    .fifo_in_data6(data_in6),
    .fifo_in_data7(data_in7),

    .fifo_in_wrreq(data_wrreq3), 
    .fifo_in_full(data_full3),  
    //
    .fifo_out_data(data_out3),     
    .fifo_out_rdreq(data_rdreq3),    
    .fifo_out_empty(data_empty3) 
);

vip_top_featuremap_conv2d_1_filter4 conv2d_1_inst4(
    .clock(clock),
    .reset(reset),
    //
    .fifo_in_data0(data_in0),
    .fifo_in_data1(data_in1),
    .fifo_in_data2(data_in2),
    .fifo_in_data3(data_in3),
    .fifo_in_data4(data_in4),
    .fifo_in_data5(data_in5),
    .fifo_in_data6(data_in6),
    .fifo_in_data7(data_in7),

    .fifo_in_wrreq(data_wrreq4), 
    .fifo_in_full(data_full4),  
    //
    .fifo_out_data(data_out4),     
    .fifo_out_rdreq(data_rdreq4),    
    .fifo_out_empty(data_empty4) 
);

vip_top_featuremap_conv2d_1_filter5 conv2d_1_inst5(
    .clock(clock),
    .reset(reset),
    //
    .fifo_in_data0(data_in0),
    .fifo_in_data1(data_in1),
    .fifo_in_data2(data_in2),
    .fifo_in_data3(data_in3),
    .fifo_in_data4(data_in4),
    .fifo_in_data5(data_in5),
    .fifo_in_data6(data_in6),
    .fifo_in_data7(data_in7),

    .fifo_in_wrreq(data_wrreq5), 
    .fifo_in_full(data_full5),  
    //
    .fifo_out_data(data_out5),     
    .fifo_out_rdreq(data_rdreq5),    
    .fifo_out_empty(data_empty5) 
);

vip_top_featuremap_conv2d_1_filter6 conv2d_1_inst6(
    .clock(clock),
    .reset(reset),
    //
    .fifo_in_data0(data_in0),
    .fifo_in_data1(data_in1),
    .fifo_in_data2(data_in2),
    .fifo_in_data3(data_in3),
    .fifo_in_data4(data_in4),
    .fifo_in_data5(data_in5),
    .fifo_in_data6(data_in6),
    .fifo_in_data7(data_in7),

    .fifo_in_wrreq(data_wrreq6), 
    .fifo_in_full(data_full6),  
    //
    .fifo_out_data(data_out6),     
    .fifo_out_rdreq(data_rdreq6),    
    .fifo_out_empty(data_empty6) 
);

vip_top_featuremap_conv2d_1_filter7 conv2d_1_inst7(
    .clock(clock),
    .reset(reset),
    //
    .fifo_in_data0(data_in0),
    .fifo_in_data1(data_in1),
    .fifo_in_data2(data_in2),
    .fifo_in_data3(data_in3),
    .fifo_in_data4(data_in4),
    .fifo_in_data5(data_in5),
    .fifo_in_data6(data_in6),
    .fifo_in_data7(data_in7),

    .fifo_in_wrreq(data_wrreq7), 
    .fifo_in_full(data_full7),  
    //
    .fifo_out_data(data_out7),     
    .fifo_out_rdreq(data_rdreq7),    
    .fifo_out_empty(data_empty7) 
);
//

// ImageGenerator image_read_inst
ImageWriter_new #(
    .DWIDTH(DWIDTH),
    .output_file("/home/thienlong/Exercise/VIPUsingFPGA/OpenIP/data/tb_results/output_featuremap_conv2d_1_filter0.txt")

) ImageWriter_inst0  (
    .clock(clock),
    .reset(reset),    
    .num_data(num_data),
    .fifo_rdreq(data_rdreq0),
    .fifo_data(data_out0),
    .fifo_empty(data_empty0)
);

ImageWriter_new #(
    .DWIDTH(DWIDTH),
    .output_file("/home/thienlong/Exercise/VIPUsingFPGA/OpenIP/data/tb_results/output_featuremap_conv2d_1_filter1.txt")

) ImageWriter_inst1  (
    .clock(clock),
    .reset(reset),    
    .num_data(num_data),
    .fifo_rdreq(data_rdreq1),
    .fifo_data(data_out1),
    .fifo_empty(data_empty1)
);

ImageWriter_new #(
    .DWIDTH(DWIDTH),
    .output_file("/home/thienlong/Exercise/VIPUsingFPGA/OpenIP/data/tb_results/output_featuremap_conv2d_1_filter2.txt")

) ImageWriter_inst2  (
    .clock(clock),
    .reset(reset),    
    .num_data(num_data),
    .fifo_rdreq(data_rdreq2),
    .fifo_data(data_out2),
    .fifo_empty(data_empty2)
);

ImageWriter_new #(
    .DWIDTH(DWIDTH),
    .output_file("/home/thienlong/Exercise/VIPUsingFPGA/OpenIP/data/tb_results/output_featuremap_conv2d_1_filter3.txt")

) ImageWriter_inst3  (
    .clock(clock),
    .reset(reset),    
    .num_data(num_data),
    .fifo_rdreq(data_rdreq3),
    .fifo_data(data_out3),
    .fifo_empty(data_empty3)
);

ImageWriter_new #(
    .DWIDTH(DWIDTH),
    .output_file("/home/thienlong/Exercise/VIPUsingFPGA/OpenIP/data/tb_results/output_featuremap_conv2d_1_filter4.txt")

) ImageWriter_inst4  (
    .clock(clock),
    .reset(reset),    
    .num_data(num_data),
    .fifo_rdreq(data_rdreq4),
    .fifo_data(data_out4),
    .fifo_empty(data_empty4)
);

ImageWriter_new #(
    .DWIDTH(DWIDTH),
    .output_file("/home/thienlong/Exercise/VIPUsingFPGA/OpenIP/data/tb_results/output_featuremap_conv2d_1_filter5.txt")

) ImageWriter_inst5  (
    .clock(clock),
    .reset(reset),    
    .num_data(num_data),
    .fifo_rdreq(data_rdreq5),
    .fifo_data(data_out5),
    .fifo_empty(data_empty5)
);

ImageWriter_new #(
    .DWIDTH(DWIDTH),
    .output_file("/home/thienlong/Exercise/VIPUsingFPGA/OpenIP/data/tb_results/output_featuremap_conv2d_1_filter6.txt")

) ImageWriter_inst6  (
    .clock(clock),
    .reset(reset),    
    .num_data(num_data),
    .fifo_rdreq(data_rdreq6),
    .fifo_data(data_out6),
    .fifo_empty(data_empty6)
);

ImageWriter_new #(
    .DWIDTH(DWIDTH),
    .output_file("/home/thienlong/Exercise/VIPUsingFPGA/OpenIP/data/tb_results/output_featuremap_conv2d_1_filter7.txt")

) ImageWriter_inst7  (
    .clock(clock),
    .reset(reset),    
    .num_data(num_data),
    .fifo_rdreq(data_rdreq7),
    .fifo_data(data_out7),
    .fifo_empty(data_empty7)
);

endmodule