module top_tb_conv2d_3;

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
wire [DWIDTH-1:0] data_in8;
wire [DWIDTH-1:0] data_in9;
wire [DWIDTH-1:0] data_in10;
wire [DWIDTH-1:0] data_in11;
wire [DWIDTH-1:0] data_in12;
wire [DWIDTH-1:0] data_in13;
wire [DWIDTH-1:0] data_in14;
wire [DWIDTH-1:0] data_in15;

wire data_wrreq;
wire data_full;

//
wire [DWIDTH-1:0] data_out0;
wire [DWIDTH-1:0] data_out1;
wire [DWIDTH-1:0] data_out2;
wire [DWIDTH-1:0] data_out3;
wire [DWIDTH-1:0] data_out4;
wire [DWIDTH-1:0] data_out5;
wire [DWIDTH-1:0] data_out6;
wire [DWIDTH-1:0] data_out7;
wire [DWIDTH-1:0] data_out8;
wire [DWIDTH-1:0] data_out9;
wire [DWIDTH-1:0] data_out10;
wire [DWIDTH-1:0] data_out11;
wire [DWIDTH-1:0] data_out12;
wire [DWIDTH-1:0] data_out13;
wire [DWIDTH-1:0] data_out14;
wire [DWIDTH-1:0] data_out15;

wire data_rdreq0;
wire data_rdreq1;
wire data_rdreq2;
wire data_rdreq3;
wire data_rdreq4;
wire data_rdreq5;
wire data_rdreq6;
wire data_rdreq7;
wire data_rdreq8;
wire data_rdreq9;
wire data_rdreq10;
wire data_rdreq11;
wire data_rdreq12;
wire data_rdreq13;
wire data_rdreq14;
wire data_rdreq15;

wire data_empty0;
wire data_empty1;
wire data_empty2;
wire data_empty3;
wire data_empty4;
wire data_empty5;
wire data_empty6;
wire data_empty7;
wire data_empty8;
wire data_empty9;
wire data_empty10;
wire data_empty11;
wire data_empty12;
wire data_empty13;
wire data_empty14;
wire data_empty15;

// DATA GENERATOR / READ AND TEXT IMAGE FILE
ImageGenerator_new_channel #(
    .input_file("/home/thienlong/Exercise/VIPUsingFPGA/OpenIP/data/tb_results/output_featuremap_conv2d_2_filter0.txt")
    )
     image_read_inst0 (
    .clock(clock),
    .reset(reset),
    //
    .num_data(num_data),
    .fifo_full(data_full),
    .fifo_data(data_in0),
    .fifo_wrreq(data_wrreq)
);

ImageGenerator_new_channel #(
    .input_file("/home/thienlong/Exercise/VIPUsingFPGA/OpenIP/data/tb_results/output_featuremap_conv2d_2_filter1.txt")
    )
     image_read_inst1 (
    .clock(clock),
    .reset(reset),
    //
    .num_data(num_data),
    .fifo_full(data_full),
    .fifo_data(data_in1),
    .fifo_wrreq(data_wrreq)
);

ImageGenerator_new_channel #(
    .input_file("/home/thienlong/Exercise/VIPUsingFPGA/OpenIP/data/tb_results/output_featuremap_conv2d_2_filter2.txt")
    )
     image_read_inst2 (
    .clock(clock),
    .reset(reset),
    //
    .num_data(num_data),
    .fifo_full(data_full),
    .fifo_data(data_in2),
    .fifo_wrreq(data_wrreq)
);

ImageGenerator_new_channel #(
    .input_file("/home/thienlong/Exercise/VIPUsingFPGA/OpenIP/data/tb_results/output_featuremap_conv2d_2_filter3.txt")
    )
     image_read_inst3 (
    .clock(clock),
    .reset(reset),
    //
    .num_data(num_data),
    .fifo_full(data_full),
    .fifo_data(data_in3),
    .fifo_wrreq(data_wrreq)
);

ImageGenerator_new_channel #(
    .input_file("/home/thienlong/Exercise/VIPUsingFPGA/OpenIP/data/tb_results/output_featuremap_conv2d_2_filter4.txt")
    )
     image_read_inst4 (
    .clock(clock),
    .reset(reset),
    //
    .num_data(num_data),
    .fifo_full(data_full),
    .fifo_data(data_in4),
    .fifo_wrreq(data_wrreq)
);

ImageGenerator_new_channel #(
    .input_file("/home/thienlong/Exercise/VIPUsingFPGA/OpenIP/data/tb_results/output_featuremap_conv2d_2_filter5.txt")
    )
     image_read_inst5 (
    .clock(clock),
    .reset(reset),
    //
    .num_data(num_data),
    .fifo_full(data_full),
    .fifo_data(data_in5),
    .fifo_wrreq(data_wrreq)
);

ImageGenerator_new_channel #(
    .input_file("/home/thienlong/Exercise/VIPUsingFPGA/OpenIP/data/tb_results/output_featuremap_conv2d_2_filter6.txt")
    )
     image_read_inst6 (
    .clock(clock),
    .reset(reset),
    //
    .num_data(num_data),
    .fifo_full(data_full),
    .fifo_data(data_in6),
    .fifo_wrreq(data_wrreq)
);

ImageGenerator_new_channel #(
    .input_file("/home/thienlong/Exercise/VIPUsingFPGA/OpenIP/data/tb_results/output_featuremap_conv2d_2_filter7.txt")
    )
     image_read_inst7 (
    .clock(clock),
    .reset(reset),
    //
    .num_data(num_data),
    .fifo_full(data_full),
    .fifo_data(data_in7),
    .fifo_wrreq(data_wrreq)
);

ImageGenerator_new_channel #(
    .input_file("/home/thienlong/Exercise/VIPUsingFPGA/OpenIP/data/tb_results/output_featuremap_conv2d_2_filter8.txt")
    )
     image_read_inst8 (
    .clock(clock),
    .reset(reset),
    //
    .num_data(num_data),
    .fifo_full(data_full),
    .fifo_data(data_in8),
    .fifo_wrreq(data_wrreq)
);

ImageGenerator_new_channel #(
    .input_file("/home/thienlong/Exercise/VIPUsingFPGA/OpenIP/data/tb_results/output_featuremap_conv2d_2_filter9.txt")
    )
     image_read_inst9 (
    .clock(clock),
    .reset(reset),
    //
    .num_data(num_data),
    .fifo_full(data_full),
    .fifo_data(data_in9),
    .fifo_wrreq(data_wrreq)
);

ImageGenerator_new_channel #(
    .input_file("/home/thienlong/Exercise/VIPUsingFPGA/OpenIP/data/tb_results/output_featuremap_conv2d_2_filter10.txt")
    )
     image_read_inst10 (
    .clock(clock),
    .reset(reset),
    //
    .num_data(num_data),
    .fifo_full(data_full),
    .fifo_data(data_in10),
    .fifo_wrreq(data_wrreq)
);

ImageGenerator_new_channel #(
    .input_file("/home/thienlong/Exercise/VIPUsingFPGA/OpenIP/data/tb_results/output_featuremap_conv2d_2_filter11.txt")
    )
     image_read_inst11 (
    .clock(clock),
    .reset(reset),
    //
    .num_data(num_data),
    .fifo_full(data_full),
    .fifo_data(data_in11),
    .fifo_wrreq(data_wrreq)
);

ImageGenerator_new_channel #(
    .input_file("/home/thienlong/Exercise/VIPUsingFPGA/OpenIP/data/tb_results/output_featuremap_conv2d_2_filter12.txt")
    )
     image_read_inst12 (
    .clock(clock),
    .reset(reset),
    //
    .num_data(num_data),
    .fifo_full(data_full),
    .fifo_data(data_in12),
    .fifo_wrreq(data_wrreq)
);

ImageGenerator_new_channel #(
    .input_file("/home/thienlong/Exercise/VIPUsingFPGA/OpenIP/data/tb_results/output_featuremap_conv2d_2_filter13.txt")
    )
     image_read_inst13 (
    .clock(clock),
    .reset(reset),
    //
    .num_data(num_data),
    .fifo_full(data_full),
    .fifo_data(data_in13),
    .fifo_wrreq(data_wrreq)
);

ImageGenerator_new_channel #(
    .input_file("/home/thienlong/Exercise/VIPUsingFPGA/OpenIP/data/tb_results/output_featuremap_conv2d_2_filter14.txt")
    )
     image_read_inst14 (
    .clock(clock),
    .reset(reset),
    //
    .num_data(num_data),
    .fifo_full(data_full),
    .fifo_data(data_in14),
    .fifo_wrreq(data_wrreq)
);

ImageGenerator_new_channel #(
    .input_file("/home/thienlong/Exercise/VIPUsingFPGA/OpenIP/data/tb_results/output_featuremap_conv2d_2_filter15.txt")
    )
     image_read_inst15 (
    .clock(clock),
    .reset(reset),
    //
    .num_data(num_data),
    .fifo_full(data_full),
    .fifo_data(data_in15),
    .fifo_wrreq(data_wrreq)
);
//VIP FEATUREMAP CONV2D_3
vip_top_featuremap_conv2d_3_filter0 conv2d_3_inst0(
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
    .fifo_in_data8(data_in8),
    .fifo_in_data9(data_in9),
    .fifo_in_data10(data_in10),
    .fifo_in_data11(data_in11),
    .fifo_in_data12(data_in12),
    .fifo_in_data13(data_in13),
    .fifo_in_data14(data_in14),
    .fifo_in_data15(data_in15),

    .fifo_in_wrreq(data_wrreq), 
    .fifo_in_full(data_full),  
    //
    .fifo_out_data(data_out0),     
    .fifo_out_rdreq(data_rdreq0),    
    .fifo_out_empty(data_empty0) 
);

vip_top_featuremap_conv2d_3_filter1 conv2d_3_inst1(
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
    .fifo_in_data8(data_in8),
    .fifo_in_data9(data_in9),
    .fifo_in_data10(data_in10),
    .fifo_in_data11(data_in11),
    .fifo_in_data12(data_in12),
    .fifo_in_data13(data_in13),
    .fifo_in_data14(data_in14),
    .fifo_in_data15(data_in15),

    .fifo_in_wrreq(data_wrreq), 
    .fifo_in_full(data_full),  
    //
    .fifo_out_data(data_out1),     
    .fifo_out_rdreq(data_rdreq1),    
    .fifo_out_empty(data_empty1) 
);

vip_top_featuremap_conv2d_3_filter2 conv2d_3_inst2(
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
    .fifo_in_data8(data_in8),
    .fifo_in_data9(data_in9),
    .fifo_in_data10(data_in10),
    .fifo_in_data11(data_in11),
    .fifo_in_data12(data_in12),
    .fifo_in_data13(data_in13),
    .fifo_in_data14(data_in14),
    .fifo_in_data15(data_in15),

    .fifo_in_wrreq(data_wrreq), 
    .fifo_in_full(data_full),  
    //
    .fifo_out_data(data_out2),     
    .fifo_out_rdreq(data_rdreq2),    
    .fifo_out_empty(data_empty2) 
);

vip_top_featuremap_conv2d_3_filter3 conv2d_3_inst3(
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
    .fifo_in_data8(data_in8),
    .fifo_in_data9(data_in9),
    .fifo_in_data10(data_in10),
    .fifo_in_data11(data_in11),
    .fifo_in_data12(data_in12),
    .fifo_in_data13(data_in13),
    .fifo_in_data14(data_in14),
    .fifo_in_data15(data_in15),

    .fifo_in_wrreq(data_wrreq), 
    .fifo_in_full(data_full),  
    //
    .fifo_out_data(data_out3),     
    .fifo_out_rdreq(data_rdreq3),    
    .fifo_out_empty(data_empty3) 
);

vip_top_featuremap_conv2d_3_filter4 conv2d_3_inst4(
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
    .fifo_in_data8(data_in8),
    .fifo_in_data9(data_in9),
    .fifo_in_data10(data_in10),
    .fifo_in_data11(data_in11),
    .fifo_in_data12(data_in12),
    .fifo_in_data13(data_in13),
    .fifo_in_data14(data_in14),
    .fifo_in_data15(data_in15),

    .fifo_in_wrreq(data_wrreq), 
    .fifo_in_full(data_full),  
    //
    .fifo_out_data(data_out4),     
    .fifo_out_rdreq(data_rdreq4),    
    .fifo_out_empty(data_empty4) 
);

vip_top_featuremap_conv2d_3_filter5 conv2d_3_inst5(
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
    .fifo_in_data8(data_in8),
    .fifo_in_data9(data_in9),
    .fifo_in_data10(data_in10),
    .fifo_in_data11(data_in11),
    .fifo_in_data12(data_in12),
    .fifo_in_data13(data_in13),
    .fifo_in_data14(data_in14),
    .fifo_in_data15(data_in15),

    .fifo_in_wrreq(data_wrreq), 
    .fifo_in_full(data_full),  
    //
    .fifo_out_data(data_out5),     
    .fifo_out_rdreq(data_rdreq5),    
    .fifo_out_empty(data_empty5) 
);

vip_top_featuremap_conv2d_3_filter6 conv2d_3_inst6(
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
    .fifo_in_data8(data_in8),
    .fifo_in_data9(data_in9),
    .fifo_in_data10(data_in10),
    .fifo_in_data11(data_in11),
    .fifo_in_data12(data_in12),
    .fifo_in_data13(data_in13),
    .fifo_in_data14(data_in14),
    .fifo_in_data15(data_in15),

    .fifo_in_wrreq(data_wrreq), 
    .fifo_in_full(data_full),  
    //
    .fifo_out_data(data_out6),     
    .fifo_out_rdreq(data_rdreq6),    
    .fifo_out_empty(data_empty6) 
);

vip_top_featuremap_conv2d_3_filter7 conv2d_3_inst7(
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
    .fifo_in_data8(data_in8),
    .fifo_in_data9(data_in9),
    .fifo_in_data10(data_in10),
    .fifo_in_data11(data_in11),
    .fifo_in_data12(data_in12),
    .fifo_in_data13(data_in13),
    .fifo_in_data14(data_in14),
    .fifo_in_data15(data_in15),

    .fifo_in_wrreq(data_wrreq), 
    .fifo_in_full(data_full),  
    //
    .fifo_out_data(data_out7),     
    .fifo_out_rdreq(data_rdreq7),    
    .fifo_out_empty(data_empty7) 
);

vip_top_featuremap_conv2d_3_filter8 conv2d_3_inst8(
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
    .fifo_in_data8(data_in8),
    .fifo_in_data9(data_in9),
    .fifo_in_data10(data_in10),
    .fifo_in_data11(data_in11),
    .fifo_in_data12(data_in12),
    .fifo_in_data13(data_in13),
    .fifo_in_data14(data_in14),
    .fifo_in_data15(data_in15),

    .fifo_in_wrreq(data_wrreq), 
    .fifo_in_full(data_full),  
    //
    .fifo_out_data(data_out8),     
    .fifo_out_rdreq(data_rdreq8),    
    .fifo_out_empty(data_empty8) 
);

vip_top_featuremap_conv2d_3_filter9 conv2d_3_inst9(
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
    .fifo_in_data8(data_in8),
    .fifo_in_data9(data_in9),
    .fifo_in_data10(data_in10),
    .fifo_in_data11(data_in11),
    .fifo_in_data12(data_in12),
    .fifo_in_data13(data_in13),
    .fifo_in_data14(data_in14),
    .fifo_in_data15(data_in15),

    .fifo_in_wrreq(data_wrreq), 
    .fifo_in_full(data_full),  
    //
    .fifo_out_data(data_out9),     
    .fifo_out_rdreq(data_rdreq9),    
    .fifo_out_empty(data_empty9) 
);

vip_top_featuremap_conv2d_3_filter10 conv2d_3_inst10(
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
    .fifo_in_data8(data_in8),
    .fifo_in_data9(data_in9),
    .fifo_in_data10(data_in10),
    .fifo_in_data11(data_in11),
    .fifo_in_data12(data_in12),
    .fifo_in_data13(data_in13),
    .fifo_in_data14(data_in14),
    .fifo_in_data15(data_in15),

    .fifo_in_wrreq(data_wrreq), 
    .fifo_in_full(data_full),  
    //
    .fifo_out_data(data_out10),     
    .fifo_out_rdreq(data_rdreq10),    
    .fifo_out_empty(data_empty10) 
);

vip_top_featuremap_conv2d_3_filter11 conv2d_3_inst11(
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
    .fifo_in_data8(data_in8),
    .fifo_in_data9(data_in9),
    .fifo_in_data10(data_in10),
    .fifo_in_data11(data_in11),
    .fifo_in_data12(data_in12),
    .fifo_in_data13(data_in13),
    .fifo_in_data14(data_in14),
    .fifo_in_data15(data_in15),

    .fifo_in_wrreq(data_wrreq), 
    .fifo_in_full(data_full),  
    //
    .fifo_out_data(data_out11),     
    .fifo_out_rdreq(data_rdreq11),    
    .fifo_out_empty(data_empty11) 
);

vip_top_featuremap_conv2d_3_filter12 conv2d_3_inst12(
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
    .fifo_in_data8(data_in8),
    .fifo_in_data9(data_in9),
    .fifo_in_data10(data_in10),
    .fifo_in_data11(data_in11),
    .fifo_in_data12(data_in12),
    .fifo_in_data13(data_in13),
    .fifo_in_data14(data_in14),
    .fifo_in_data15(data_in15),

    .fifo_in_wrreq(data_wrreq), 
    .fifo_in_full(data_full),  
    //
    .fifo_out_data(data_out12),     
    .fifo_out_rdreq(data_rdreq12),    
    .fifo_out_empty(data_empty12) 
);

vip_top_featuremap_conv2d_3_filter13 conv2d_3_inst13(
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
    .fifo_in_data8(data_in8),
    .fifo_in_data9(data_in9),
    .fifo_in_data10(data_in10),
    .fifo_in_data11(data_in11),
    .fifo_in_data12(data_in12),
    .fifo_in_data13(data_in13),
    .fifo_in_data14(data_in14),
    .fifo_in_data15(data_in15),

    .fifo_in_wrreq(data_wrreq), 
    .fifo_in_full(data_full),  
    //
    .fifo_out_data(data_out13),     
    .fifo_out_rdreq(data_rdreq13),    
    .fifo_out_empty(data_empty13) 
);

vip_top_featuremap_conv2d_3_filter14 conv2d_3_inst14(
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
    .fifo_in_data8(data_in8),
    .fifo_in_data9(data_in9),
    .fifo_in_data10(data_in10),
    .fifo_in_data11(data_in11),
    .fifo_in_data12(data_in12),
    .fifo_in_data13(data_in13),
    .fifo_in_data14(data_in14),
    .fifo_in_data15(data_in15),

    .fifo_in_wrreq(data_wrreq), 
    .fifo_in_full(data_full),  
    //
    .fifo_out_data(data_out14),     
    .fifo_out_rdreq(data_rdreq14),    
    .fifo_out_empty(data_empty14) 
);

vip_top_featuremap_conv2d_3_filter15 conv2d_3_inst15(
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
    .fifo_in_data8(data_in8),
    .fifo_in_data9(data_in9),
    .fifo_in_data10(data_in10),
    .fifo_in_data11(data_in11),
    .fifo_in_data12(data_in12),
    .fifo_in_data13(data_in13),
    .fifo_in_data14(data_in14),
    .fifo_in_data15(data_in15),

    .fifo_in_wrreq(data_wrreq), 
    .fifo_in_full(data_full),  
    //
    .fifo_out_data(data_out15),     
    .fifo_out_rdreq(data_rdreq15),    
    .fifo_out_empty(data_empty15) 
);
//

// ImageGenerator image_read_inst
ImageWriter_new #(
    .DWIDTH(DWIDTH),
    .output_file("/home/thienlong/Exercise/VIPUsingFPGA/OpenIP/data/tb_results/output_featuremap_conv2d_3_filter0.txt")

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
    .output_file("/home/thienlong/Exercise/VIPUsingFPGA/OpenIP/data/tb_results/output_featuremap_conv2d_3_filter1.txt")

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
    .output_file("/home/thienlong/Exercise/VIPUsingFPGA/OpenIP/data/tb_results/output_featuremap_conv2d_3_filter2.txt")

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
    .output_file("/home/thienlong/Exercise/VIPUsingFPGA/OpenIP/data/tb_results/output_featuremap_conv2d_3_filter3.txt")

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
    .output_file("/home/thienlong/Exercise/VIPUsingFPGA/OpenIP/data/tb_results/output_featuremap_conv2d_3_filter4.txt")

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
    .output_file("/home/thienlong/Exercise/VIPUsingFPGA/OpenIP/data/tb_results/output_featuremap_conv2d_3_filter5.txt")

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
    .output_file("/home/thienlong/Exercise/VIPUsingFPGA/OpenIP/data/tb_results/output_featuremap_conv2d_3_filter6.txt")

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
    .output_file("/home/thienlong/Exercise/VIPUsingFPGA/OpenIP/data/tb_results/output_featuremap_conv2d_3_filter7.txt")

) ImageWriter_inst7  (
    .clock(clock),
    .reset(reset),    
    .num_data(num_data),
    .fifo_rdreq(data_rdreq7),
    .fifo_data(data_out7),
    .fifo_empty(data_empty7)
);

ImageWriter_new #(
    .DWIDTH(DWIDTH),
    .output_file("/home/thienlong/Exercise/VIPUsingFPGA/OpenIP/data/tb_results/output_featuremap_conv2d_3_filter8.txt")

) ImageWriter_inst8  (
    .clock(clock),
    .reset(reset),    
    .num_data(num_data),
    .fifo_rdreq(data_rdreq8),
    .fifo_data(data_out8),
    .fifo_empty(data_empty8)
);

ImageWriter_new #(
    .DWIDTH(DWIDTH),
    .output_file("/home/thienlong/Exercise/VIPUsingFPGA/OpenIP/data/tb_results/output_featuremap_conv2d_3_filter9.txt")

) ImageWriter_inst9  (
    .clock(clock),
    .reset(reset),    
    .num_data(num_data),
    .fifo_rdreq(data_rdreq9),
    .fifo_data(data_out9),
    .fifo_empty(data_empty9)
);

ImageWriter_new #(
    .DWIDTH(DWIDTH),
    .output_file("/home/thienlong/Exercise/VIPUsingFPGA/OpenIP/data/tb_results/output_featuremap_conv2d_3_filter10.txt")

) ImageWriter_inst10  (
    .clock(clock),
    .reset(reset),    
    .num_data(num_data),
    .fifo_rdreq(data_rdreq10),
    .fifo_data(data_out10),
    .fifo_empty(data_empty10)
);

ImageWriter_new #(
    .DWIDTH(DWIDTH),
    .output_file("/home/thienlong/Exercise/VIPUsingFPGA/OpenIP/data/tb_results/output_featuremap_conv2d_3_filter11.txt")

) ImageWriter_inst11  (
    .clock(clock),
    .reset(reset),    
    .num_data(num_data),
    .fifo_rdreq(data_rdreq11),
    .fifo_data(data_out11),
    .fifo_empty(data_empty11)
);

ImageWriter_new #(
    .DWIDTH(DWIDTH),
    .output_file("/home/thienlong/Exercise/VIPUsingFPGA/OpenIP/data/tb_results/output_featuremap_conv2d_3_filter12.txt")

) ImageWriter_inst12 (
    .clock(clock),
    .reset(reset),    
    .num_data(num_data),
    .fifo_rdreq(data_rdreq12),
    .fifo_data(data_out12),
    .fifo_empty(data_empty12)
);

ImageWriter_new #(
    .DWIDTH(DWIDTH),
    .output_file("/home/thienlong/Exercise/VIPUsingFPGA/OpenIP/data/tb_results/output_featuremap_conv2d_3_filter13.txt")

) ImageWriter_inst13  (
    .clock(clock),
    .reset(reset),    
    .num_data(num_data),
    .fifo_rdreq(data_rdreq13),
    .fifo_data(data_out13),
    .fifo_empty(data_empty13)
);

ImageWriter_new #(
    .DWIDTH(DWIDTH),
    .output_file("/home/thienlong/Exercise/VIPUsingFPGA/OpenIP/data/tb_results/output_featuremap_conv2d_3_filter14.txt")

) ImageWriter_inst14  (
    .clock(clock),
    .reset(reset),    
    .num_data(num_data),
    .fifo_rdreq(data_rdreq14),
    .fifo_data(data_out14),
    .fifo_empty(data_empty14)
);

ImageWriter_new #(
    .DWIDTH(DWIDTH),
    .output_file("/home/thienlong/Exercise/VIPUsingFPGA/OpenIP/data/tb_results/output_featuremap_conv2d_3_filter15.txt")

) ImageWriter_inst15  (
    .clock(clock),
    .reset(reset),    
    .num_data(num_data),
    .fifo_rdreq(data_rdreq15),
    .fifo_data(data_out15),
    .fifo_empty(data_empty15)
);

endmodule