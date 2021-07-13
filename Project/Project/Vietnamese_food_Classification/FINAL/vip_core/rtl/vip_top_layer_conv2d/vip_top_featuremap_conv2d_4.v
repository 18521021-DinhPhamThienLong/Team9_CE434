////////////////////////////////////////// FILTER 0 //////////////////////////////////////////
module vip_top_featuremap_conv2d_4_filter0 (
    clock,
    reset,
    //
    fifo_in_data0  ,
    fifo_in_data1  ,
    fifo_in_data2  ,
    fifo_in_data3  ,
    fifo_in_data4  ,
    fifo_in_data5  ,
    fifo_in_data6  ,
    fifo_in_data7  ,
    fifo_in_data8  ,
    fifo_in_data9  ,
    fifo_in_data10  ,
    fifo_in_data11  ,
    fifo_in_data12  ,
    fifo_in_data13  ,
    fifo_in_data14  ,
    fifo_in_data15  ,

    fifo_in_wrreq , 
    fifo_in_full  ,  
    //
    fifo_out_data  ,     
    fifo_out_rdreq ,    
    fifo_out_empty 
);
parameter DWIDTH = 32;
//parameter DEPTH_WIDTH = 64;
//
input    clock;
input    reset;
//
input [DWIDTH-1:0]	    fifo_in_data0;
input [DWIDTH-1:0]	    fifo_in_data1;
input [DWIDTH-1:0]	    fifo_in_data2;
input [DWIDTH-1:0]	    fifo_in_data3;
input [DWIDTH-1:0]	    fifo_in_data4;
input [DWIDTH-1:0]	    fifo_in_data5;
input [DWIDTH-1:0]	    fifo_in_data6;
input [DWIDTH-1:0]	    fifo_in_data7;
input [DWIDTH-1:0]	    fifo_in_data8;
input [DWIDTH-1:0]	    fifo_in_data9;
input [DWIDTH-1:0]	    fifo_in_data10;
input [DWIDTH-1:0]	    fifo_in_data11;
input [DWIDTH-1:0]	    fifo_in_data12;
input [DWIDTH-1:0]	    fifo_in_data13;
input [DWIDTH-1:0]	    fifo_in_data14;
input [DWIDTH-1:0]	    fifo_in_data15;

input                   fifo_in_wrreq;
output                  fifo_in_full;  
//
output [DWIDTH-1:0]     fifo_out_data  ;     
input    				fifo_out_rdreq ;  
output    				fifo_out_empty;
//------------------------------------------------------------------
wire [DWIDTH-1:0]       data_din0;
wire [DWIDTH-1:0]       data_din1;
wire [DWIDTH-1:0]       data_din2;
wire [DWIDTH-1:0]       data_din3;
wire [DWIDTH-1:0]       data_din4;
wire [DWIDTH-1:0]       data_din5;
wire [DWIDTH-1:0]       data_din6;
wire [DWIDTH-1:0]       data_din7;
wire [DWIDTH-1:0]       data_din8;
wire [DWIDTH-1:0]       data_din9;
wire [DWIDTH-1:0]       data_din10;
wire [DWIDTH-1:0]       data_din11;
wire [DWIDTH-1:0]       data_din12;
wire [DWIDTH-1:0]       data_din13;
wire [DWIDTH-1:0]       data_din14;
wire [DWIDTH-1:0]       data_din15;

wire 					data_in_empty0;
wire 					data_in_empty1;
wire 					data_in_empty2;
wire 					data_in_empty3;
wire 					data_in_empty4;
wire 					data_in_empty5;
wire 					data_in_empty6;
wire 					data_in_empty7;
wire 					data_in_empty8;
wire 					data_in_empty9;
wire 					data_in_empty10;
wire 					data_in_empty11;
wire 					data_in_empty12;
wire 					data_in_empty13;
wire 					data_in_empty14;
wire 					data_in_empty15;

wire 					data_rdreq;
//------- write result to FIFO-----------------------------
wire [DWIDTH-1:0]       data_out;
wire 					data_out_full;
wire 					data_out_wrreq;

//
fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel0(
    .data_out(data_din0),
    .empty(data_in_empty0), .full(fifo_in_full),
    .data_in(fifo_in_data0),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel1(
    .data_out(data_din1),
    .empty(data_in_empty1), .full(fifo_in_full),
    .data_in(fifo_in_data1),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel2(
    .data_out(data_din2),
    .empty(data_in_empty2), .full(fifo_in_full),
    .data_in(fifo_in_data2),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel3(
    .data_out(data_din3),
    .empty(data_in_empty3), .full(fifo_in_full),
    .data_in(fifo_in_data3),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel4(
    .data_out(data_din4),
    .empty(data_in_empty4), .full(fifo_in_full),
    .data_in(fifo_in_data4),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel5(
    .data_out(data_din5),
    .empty(data_in_empty5), .full(fifo_in_full),
    .data_in(fifo_in_data5),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel6(
    .data_out(data_din6),
    .empty(data_in_empty6), .full(fifo_in_full),
    .data_in(fifo_in_data6),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel7(
    .data_out(data_din7),
    .empty(data_in_empty7), .full(fifo_in_full),
    .data_in(fifo_in_data7),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel8(
    .data_out(data_din8),
    .empty(data_in_empty8), .full(fifo_in_full),
    .data_in(fifo_in_data8),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel9(
    .data_out(data_din9),
    .empty(data_in_empty9), .full(fifo_in_full),
    .data_in(fifo_in_data9),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel10(
    .data_out(data_din10),
    .empty(data_in_empty10), .full(fifo_in_full),
    .data_in(fifo_in_data10),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel11(
    .data_out(data_din11),
    .empty(data_in_empty11), .full(fifo_in_full),
    .data_in(fifo_in_data11),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel12(
    .data_out(data_din12),
    .empty(data_in_empty12), .full(fifo_in_full),
    .data_in(fifo_in_data12),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel13(
    .data_out(data_din13),
    .empty(data_in_empty13), .full(fifo_in_full),
    .data_in(fifo_in_data13),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel14(
    .data_out(data_din14),
    .empty(data_in_empty14), .full(fifo_in_full),
    .data_in(fifo_in_data14),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel15(
    .data_out(data_din15),
    .empty(data_in_empty15), .full(fifo_in_full),
    .data_in(fifo_in_data15),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

//
core_featuremap_conv2d_4_filter0 core_inst(
    .clock(clock),
    .reset(reset),
    // FIFO READ
    .ff_rdata0(data_din0),
    .ff_rdata1(data_din1),
    .ff_rdata2(data_din2),
    .ff_rdata3(data_din3),
    .ff_rdata4(data_din4),
    .ff_rdata5(data_din5),
    .ff_rdata6(data_din6),
    .ff_rdata7(data_din7),
    .ff_rdata8(data_din8),
    .ff_rdata9(data_din9),
    .ff_rdata10(data_din10),
    .ff_rdata11(data_din11),
    .ff_rdata12(data_din12),
    .ff_rdata13(data_din13),
    .ff_rdata14(data_din14),
    .ff_rdata15(data_din15),

    .ff_empty0(data_in_empty0),
    .ff_empty1(data_in_empty1),
    .ff_empty2(data_in_empty2),
    .ff_empty3(data_in_empty3),
    .ff_empty4(data_in_empty4),
    .ff_empty5(data_in_empty5),
    .ff_empty6(data_in_empty6),
    .ff_empty7(data_in_empty7),
    .ff_empty8(data_in_empty8),
    .ff_empty9(data_in_empty9),
    .ff_empty10(data_in_empty10),
    .ff_empty11(data_in_empty11),
    .ff_empty12(data_in_empty12),
    .ff_empty13(data_in_empty13),
    .ff_empty14(data_in_empty14),
    .ff_empty15(data_in_empty15),

    .ff_rdreq(data_rdreq),
    // FIFO WRITE
    .ff_wdata(data_out),
    .ff_wrreq(data_out_wrreq),
    .ff_full(data_out_full)
);
//
fifo_32b fifo_out_inst(
	.clock(clock),
	.data(data_out),
	.wrreq(data_out_wrreq),
	.almost_full(data_out_full),
	.rdreq(fifo_out_rdreq),	
	.almost_empty(fifo_out_empty),
	.q(fifo_out_data)
	);
endmodule
////////////////////////////////////////// FILTER 1 //////////////////////////////////////////
module vip_top_featuremap_conv2d_4_filter1 (
    clock,
    reset,
    //
    fifo_in_data0  ,
    fifo_in_data1  ,
    fifo_in_data2  ,
    fifo_in_data3  ,
    fifo_in_data4  ,
    fifo_in_data5  ,
    fifo_in_data6  ,
    fifo_in_data7  ,
    fifo_in_data8  ,
    fifo_in_data9  ,
    fifo_in_data10  ,
    fifo_in_data11  ,
    fifo_in_data12  ,
    fifo_in_data13  ,
    fifo_in_data14  ,
    fifo_in_data15  ,

    fifo_in_wrreq , 
    fifo_in_full  ,  
    //
    fifo_out_data  ,     
    fifo_out_rdreq ,    
    fifo_out_empty 
);
parameter DWIDTH = 32;
//parameter DEPTH_WIDTH = 64;
//
input    clock;
input    reset;
//
input [DWIDTH-1:0]	    fifo_in_data0;
input [DWIDTH-1:0]	    fifo_in_data1;
input [DWIDTH-1:0]	    fifo_in_data2;
input [DWIDTH-1:0]	    fifo_in_data3;
input [DWIDTH-1:0]	    fifo_in_data4;
input [DWIDTH-1:0]	    fifo_in_data5;
input [DWIDTH-1:0]	    fifo_in_data6;
input [DWIDTH-1:0]	    fifo_in_data7;
input [DWIDTH-1:0]	    fifo_in_data8;
input [DWIDTH-1:0]	    fifo_in_data9;
input [DWIDTH-1:0]	    fifo_in_data10;
input [DWIDTH-1:0]	    fifo_in_data11;
input [DWIDTH-1:0]	    fifo_in_data12;
input [DWIDTH-1:0]	    fifo_in_data13;
input [DWIDTH-1:0]	    fifo_in_data14;
input [DWIDTH-1:0]	    fifo_in_data15;

input                   fifo_in_wrreq;
output                  fifo_in_full;  
//
output [DWIDTH-1:0]     fifo_out_data  ;     
input    				fifo_out_rdreq ;  
output    				fifo_out_empty;
//------------------------------------------------------------------
wire [DWIDTH-1:0]       data_din0;
wire [DWIDTH-1:0]       data_din1;
wire [DWIDTH-1:0]       data_din2;
wire [DWIDTH-1:0]       data_din3;
wire [DWIDTH-1:0]       data_din4;
wire [DWIDTH-1:0]       data_din5;
wire [DWIDTH-1:0]       data_din6;
wire [DWIDTH-1:0]       data_din7;
wire [DWIDTH-1:0]       data_din8;
wire [DWIDTH-1:0]       data_din9;
wire [DWIDTH-1:0]       data_din10;
wire [DWIDTH-1:0]       data_din11;
wire [DWIDTH-1:0]       data_din12;
wire [DWIDTH-1:0]       data_din13;
wire [DWIDTH-1:0]       data_din14;
wire [DWIDTH-1:0]       data_din15;

wire 					data_in_empty0;
wire 					data_in_empty1;
wire 					data_in_empty2;
wire 					data_in_empty3;
wire 					data_in_empty4;
wire 					data_in_empty5;
wire 					data_in_empty6;
wire 					data_in_empty7;
wire 					data_in_empty8;
wire 					data_in_empty9;
wire 					data_in_empty10;
wire 					data_in_empty11;
wire 					data_in_empty12;
wire 					data_in_empty13;
wire 					data_in_empty14;
wire 					data_in_empty15;

wire 					data_rdreq;
//------- write result to FIFO-----------------------------
wire [DWIDTH-1:0]       data_out;
wire 					data_out_full;
wire 					data_out_wrreq;

//
fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel0(
    .data_out(data_din0),
    .empty(data_in_empty0), .full(fifo_in_full),
    .data_in(fifo_in_data0),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel1(
    .data_out(data_din1),
    .empty(data_in_empty1), .full(fifo_in_full),
    .data_in(fifo_in_data1),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel2(
    .data_out(data_din2),
    .empty(data_in_empty2), .full(fifo_in_full),
    .data_in(fifo_in_data2),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel3(
    .data_out(data_din3),
    .empty(data_in_empty3), .full(fifo_in_full),
    .data_in(fifo_in_data3),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel4(
    .data_out(data_din4),
    .empty(data_in_empty4), .full(fifo_in_full),
    .data_in(fifo_in_data4),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel5(
    .data_out(data_din5),
    .empty(data_in_empty5), .full(fifo_in_full),
    .data_in(fifo_in_data5),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel6(
    .data_out(data_din6),
    .empty(data_in_empty6), .full(fifo_in_full),
    .data_in(fifo_in_data6),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel7(
    .data_out(data_din7),
    .empty(data_in_empty7), .full(fifo_in_full),
    .data_in(fifo_in_data7),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel8(
    .data_out(data_din8),
    .empty(data_in_empty8), .full(fifo_in_full),
    .data_in(fifo_in_data8),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel9(
    .data_out(data_din9),
    .empty(data_in_empty9), .full(fifo_in_full),
    .data_in(fifo_in_data9),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel10(
    .data_out(data_din10),
    .empty(data_in_empty10), .full(fifo_in_full),
    .data_in(fifo_in_data10),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel11(
    .data_out(data_din11),
    .empty(data_in_empty11), .full(fifo_in_full),
    .data_in(fifo_in_data11),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel12(
    .data_out(data_din12),
    .empty(data_in_empty12), .full(fifo_in_full),
    .data_in(fifo_in_data12),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel13(
    .data_out(data_din13),
    .empty(data_in_empty13), .full(fifo_in_full),
    .data_in(fifo_in_data13),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel14(
    .data_out(data_din14),
    .empty(data_in_empty14), .full(fifo_in_full),
    .data_in(fifo_in_data14),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel15(
    .data_out(data_din15),
    .empty(data_in_empty15), .full(fifo_in_full),
    .data_in(fifo_in_data15),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

//
core_featuremap_conv2d_4_filter1 core_inst(
    .clock(clock),
    .reset(reset),
    // FIFO READ
    .ff_rdata0(data_din0),
    .ff_rdata1(data_din1),
    .ff_rdata2(data_din2),
    .ff_rdata3(data_din3),
    .ff_rdata4(data_din4),
    .ff_rdata5(data_din5),
    .ff_rdata6(data_din6),
    .ff_rdata7(data_din7),
    .ff_rdata8(data_din8),
    .ff_rdata9(data_din9),
    .ff_rdata10(data_din10),
    .ff_rdata11(data_din11),
    .ff_rdata12(data_din12),
    .ff_rdata13(data_din13),
    .ff_rdata14(data_din14),
    .ff_rdata15(data_din15),

    .ff_empty0(data_in_empty0),
    .ff_empty1(data_in_empty1),
    .ff_empty2(data_in_empty2),
    .ff_empty3(data_in_empty3),
    .ff_empty4(data_in_empty4),
    .ff_empty5(data_in_empty5),
    .ff_empty6(data_in_empty6),
    .ff_empty7(data_in_empty7),
    .ff_empty8(data_in_empty8),
    .ff_empty9(data_in_empty9),
    .ff_empty10(data_in_empty10),
    .ff_empty11(data_in_empty11),
    .ff_empty12(data_in_empty12),
    .ff_empty13(data_in_empty13),
    .ff_empty14(data_in_empty14),
    .ff_empty15(data_in_empty15),

    .ff_rdreq(data_rdreq),
    // FIFO WRITE
    .ff_wdata(data_out),
    .ff_wrreq(data_out_wrreq),
    .ff_full(data_out_full)
);
//
fifo_32b fifo_out_inst(
	.clock(clock),
	.data(data_out),
	.wrreq(data_out_wrreq),
	.almost_full(data_out_full),
	.rdreq(fifo_out_rdreq),	
	.almost_empty(fifo_out_empty),
	.q(fifo_out_data)
	);
endmodule
////////////////////////////////////////// FILTER 2 //////////////////////////////////////////
module vip_top_featuremap_conv2d_4_filter2 (
    clock,
    reset,
    //
    fifo_in_data0  ,
    fifo_in_data1  ,
    fifo_in_data2  ,
    fifo_in_data3  ,
    fifo_in_data4  ,
    fifo_in_data5  ,
    fifo_in_data6  ,
    fifo_in_data7  ,
    fifo_in_data8  ,
    fifo_in_data9  ,
    fifo_in_data10  ,
    fifo_in_data11  ,
    fifo_in_data12  ,
    fifo_in_data13  ,
    fifo_in_data14  ,
    fifo_in_data15  ,

    fifo_in_wrreq , 
    fifo_in_full  ,  
    //
    fifo_out_data  ,     
    fifo_out_rdreq ,    
    fifo_out_empty 
);
parameter DWIDTH = 32;
//parameter DEPTH_WIDTH = 64;
//
input    clock;
input    reset;
//
input [DWIDTH-1:0]	    fifo_in_data0;
input [DWIDTH-1:0]	    fifo_in_data1;
input [DWIDTH-1:0]	    fifo_in_data2;
input [DWIDTH-1:0]	    fifo_in_data3;
input [DWIDTH-1:0]	    fifo_in_data4;
input [DWIDTH-1:0]	    fifo_in_data5;
input [DWIDTH-1:0]	    fifo_in_data6;
input [DWIDTH-1:0]	    fifo_in_data7;
input [DWIDTH-1:0]	    fifo_in_data8;
input [DWIDTH-1:0]	    fifo_in_data9;
input [DWIDTH-1:0]	    fifo_in_data10;
input [DWIDTH-1:0]	    fifo_in_data11;
input [DWIDTH-1:0]	    fifo_in_data12;
input [DWIDTH-1:0]	    fifo_in_data13;
input [DWIDTH-1:0]	    fifo_in_data14;
input [DWIDTH-1:0]	    fifo_in_data15;

input                   fifo_in_wrreq;
output                  fifo_in_full;  
//
output [DWIDTH-1:0]     fifo_out_data  ;     
input    				fifo_out_rdreq ;  
output    				fifo_out_empty;
//------------------------------------------------------------------
wire [DWIDTH-1:0]       data_din0;
wire [DWIDTH-1:0]       data_din1;
wire [DWIDTH-1:0]       data_din2;
wire [DWIDTH-1:0]       data_din3;
wire [DWIDTH-1:0]       data_din4;
wire [DWIDTH-1:0]       data_din5;
wire [DWIDTH-1:0]       data_din6;
wire [DWIDTH-1:0]       data_din7;
wire [DWIDTH-1:0]       data_din8;
wire [DWIDTH-1:0]       data_din9;
wire [DWIDTH-1:0]       data_din10;
wire [DWIDTH-1:0]       data_din11;
wire [DWIDTH-1:0]       data_din12;
wire [DWIDTH-1:0]       data_din13;
wire [DWIDTH-1:0]       data_din14;
wire [DWIDTH-1:0]       data_din15;

wire 					data_in_empty0;
wire 					data_in_empty1;
wire 					data_in_empty2;
wire 					data_in_empty3;
wire 					data_in_empty4;
wire 					data_in_empty5;
wire 					data_in_empty6;
wire 					data_in_empty7;
wire 					data_in_empty8;
wire 					data_in_empty9;
wire 					data_in_empty10;
wire 					data_in_empty11;
wire 					data_in_empty12;
wire 					data_in_empty13;
wire 					data_in_empty14;
wire 					data_in_empty15;

wire 					data_rdreq;
//------- write result to FIFO-----------------------------
wire [DWIDTH-1:0]       data_out;
wire 					data_out_full;
wire 					data_out_wrreq;

//
fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel0(
    .data_out(data_din0),
    .empty(data_in_empty0), .full(fifo_in_full),
    .data_in(fifo_in_data0),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel1(
    .data_out(data_din1),
    .empty(data_in_empty1), .full(fifo_in_full),
    .data_in(fifo_in_data1),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel2(
    .data_out(data_din2),
    .empty(data_in_empty2), .full(fifo_in_full),
    .data_in(fifo_in_data2),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel3(
    .data_out(data_din3),
    .empty(data_in_empty3), .full(fifo_in_full),
    .data_in(fifo_in_data3),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel4(
    .data_out(data_din4),
    .empty(data_in_empty4), .full(fifo_in_full),
    .data_in(fifo_in_data4),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel5(
    .data_out(data_din5),
    .empty(data_in_empty5), .full(fifo_in_full),
    .data_in(fifo_in_data5),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel6(
    .data_out(data_din6),
    .empty(data_in_empty6), .full(fifo_in_full),
    .data_in(fifo_in_data6),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel7(
    .data_out(data_din7),
    .empty(data_in_empty7), .full(fifo_in_full),
    .data_in(fifo_in_data7),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel8(
    .data_out(data_din8),
    .empty(data_in_empty8), .full(fifo_in_full),
    .data_in(fifo_in_data8),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel9(
    .data_out(data_din9),
    .empty(data_in_empty9), .full(fifo_in_full),
    .data_in(fifo_in_data9),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel10(
    .data_out(data_din10),
    .empty(data_in_empty10), .full(fifo_in_full),
    .data_in(fifo_in_data10),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel11(
    .data_out(data_din11),
    .empty(data_in_empty11), .full(fifo_in_full),
    .data_in(fifo_in_data11),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel12(
    .data_out(data_din12),
    .empty(data_in_empty12), .full(fifo_in_full),
    .data_in(fifo_in_data12),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel13(
    .data_out(data_din13),
    .empty(data_in_empty13), .full(fifo_in_full),
    .data_in(fifo_in_data13),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel14(
    .data_out(data_din14),
    .empty(data_in_empty14), .full(fifo_in_full),
    .data_in(fifo_in_data14),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel15(
    .data_out(data_din15),
    .empty(data_in_empty15), .full(fifo_in_full),
    .data_in(fifo_in_data15),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

//
core_featuremap_conv2d_4_filter2 core_inst(
    .clock(clock),
    .reset(reset),
    // FIFO READ
    .ff_rdata0(data_din0),
    .ff_rdata1(data_din1),
    .ff_rdata2(data_din2),
    .ff_rdata3(data_din3),
    .ff_rdata4(data_din4),
    .ff_rdata5(data_din5),
    .ff_rdata6(data_din6),
    .ff_rdata7(data_din7),
    .ff_rdata8(data_din8),
    .ff_rdata9(data_din9),
    .ff_rdata10(data_din10),
    .ff_rdata11(data_din11),
    .ff_rdata12(data_din12),
    .ff_rdata13(data_din13),
    .ff_rdata14(data_din14),
    .ff_rdata15(data_din15),

    .ff_empty0(data_in_empty0),
    .ff_empty1(data_in_empty1),
    .ff_empty2(data_in_empty2),
    .ff_empty3(data_in_empty3),
    .ff_empty4(data_in_empty4),
    .ff_empty5(data_in_empty5),
    .ff_empty6(data_in_empty6),
    .ff_empty7(data_in_empty7),
    .ff_empty8(data_in_empty8),
    .ff_empty9(data_in_empty9),
    .ff_empty10(data_in_empty10),
    .ff_empty11(data_in_empty11),
    .ff_empty12(data_in_empty12),
    .ff_empty13(data_in_empty13),
    .ff_empty14(data_in_empty14),
    .ff_empty15(data_in_empty15),

    .ff_rdreq(data_rdreq),
    // FIFO WRITE
    .ff_wdata(data_out),
    .ff_wrreq(data_out_wrreq),
    .ff_full(data_out_full)
);
//
fifo_32b fifo_out_inst(
	.clock(clock),
	.data(data_out),
	.wrreq(data_out_wrreq),
	.almost_full(data_out_full),
	.rdreq(fifo_out_rdreq),	
	.almost_empty(fifo_out_empty),
	.q(fifo_out_data)
	);
endmodule
////////////////////////////////////////// FILTER 3 //////////////////////////////////////////
module vip_top_featuremap_conv2d_4_filter3 (
    clock,
    reset,
    //
    fifo_in_data0  ,
    fifo_in_data1  ,
    fifo_in_data2  ,
    fifo_in_data3  ,
    fifo_in_data4  ,
    fifo_in_data5  ,
    fifo_in_data6  ,
    fifo_in_data7  ,
    fifo_in_data8  ,
    fifo_in_data9  ,
    fifo_in_data10  ,
    fifo_in_data11  ,
    fifo_in_data12  ,
    fifo_in_data13  ,
    fifo_in_data14  ,
    fifo_in_data15  ,

    fifo_in_wrreq , 
    fifo_in_full  ,  
    //
    fifo_out_data  ,     
    fifo_out_rdreq ,    
    fifo_out_empty 
);
parameter DWIDTH = 32;
//parameter DEPTH_WIDTH = 64;
//
input    clock;
input    reset;
//
input [DWIDTH-1:0]	    fifo_in_data0;
input [DWIDTH-1:0]	    fifo_in_data1;
input [DWIDTH-1:0]	    fifo_in_data2;
input [DWIDTH-1:0]	    fifo_in_data3;
input [DWIDTH-1:0]	    fifo_in_data4;
input [DWIDTH-1:0]	    fifo_in_data5;
input [DWIDTH-1:0]	    fifo_in_data6;
input [DWIDTH-1:0]	    fifo_in_data7;
input [DWIDTH-1:0]	    fifo_in_data8;
input [DWIDTH-1:0]	    fifo_in_data9;
input [DWIDTH-1:0]	    fifo_in_data10;
input [DWIDTH-1:0]	    fifo_in_data11;
input [DWIDTH-1:0]	    fifo_in_data12;
input [DWIDTH-1:0]	    fifo_in_data13;
input [DWIDTH-1:0]	    fifo_in_data14;
input [DWIDTH-1:0]	    fifo_in_data15;

input                   fifo_in_wrreq;
output                  fifo_in_full;  
//
output [DWIDTH-1:0]     fifo_out_data  ;     
input    				fifo_out_rdreq ;  
output    				fifo_out_empty;
//------------------------------------------------------------------
wire [DWIDTH-1:0]       data_din0;
wire [DWIDTH-1:0]       data_din1;
wire [DWIDTH-1:0]       data_din2;
wire [DWIDTH-1:0]       data_din3;
wire [DWIDTH-1:0]       data_din4;
wire [DWIDTH-1:0]       data_din5;
wire [DWIDTH-1:0]       data_din6;
wire [DWIDTH-1:0]       data_din7;
wire [DWIDTH-1:0]       data_din8;
wire [DWIDTH-1:0]       data_din9;
wire [DWIDTH-1:0]       data_din10;
wire [DWIDTH-1:0]       data_din11;
wire [DWIDTH-1:0]       data_din12;
wire [DWIDTH-1:0]       data_din13;
wire [DWIDTH-1:0]       data_din14;
wire [DWIDTH-1:0]       data_din15;

wire 					data_in_empty0;
wire 					data_in_empty1;
wire 					data_in_empty2;
wire 					data_in_empty3;
wire 					data_in_empty4;
wire 					data_in_empty5;
wire 					data_in_empty6;
wire 					data_in_empty7;
wire 					data_in_empty8;
wire 					data_in_empty9;
wire 					data_in_empty10;
wire 					data_in_empty11;
wire 					data_in_empty12;
wire 					data_in_empty13;
wire 					data_in_empty14;
wire 					data_in_empty15;

wire 					data_rdreq;
//------- write result to FIFO-----------------------------
wire [DWIDTH-1:0]       data_out;
wire 					data_out_full;
wire 					data_out_wrreq;

//
fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel0(
    .data_out(data_din0),
    .empty(data_in_empty0), .full(fifo_in_full),
    .data_in(fifo_in_data0),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel1(
    .data_out(data_din1),
    .empty(data_in_empty1), .full(fifo_in_full),
    .data_in(fifo_in_data1),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel2(
    .data_out(data_din2),
    .empty(data_in_empty2), .full(fifo_in_full),
    .data_in(fifo_in_data2),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel3(
    .data_out(data_din3),
    .empty(data_in_empty3), .full(fifo_in_full),
    .data_in(fifo_in_data3),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel4(
    .data_out(data_din4),
    .empty(data_in_empty4), .full(fifo_in_full),
    .data_in(fifo_in_data4),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel5(
    .data_out(data_din5),
    .empty(data_in_empty5), .full(fifo_in_full),
    .data_in(fifo_in_data5),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel6(
    .data_out(data_din6),
    .empty(data_in_empty6), .full(fifo_in_full),
    .data_in(fifo_in_data6),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel7(
    .data_out(data_din7),
    .empty(data_in_empty7), .full(fifo_in_full),
    .data_in(fifo_in_data7),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel8(
    .data_out(data_din8),
    .empty(data_in_empty8), .full(fifo_in_full),
    .data_in(fifo_in_data8),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel9(
    .data_out(data_din9),
    .empty(data_in_empty9), .full(fifo_in_full),
    .data_in(fifo_in_data9),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel10(
    .data_out(data_din10),
    .empty(data_in_empty10), .full(fifo_in_full),
    .data_in(fifo_in_data10),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel11(
    .data_out(data_din11),
    .empty(data_in_empty11), .full(fifo_in_full),
    .data_in(fifo_in_data11),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel12(
    .data_out(data_din12),
    .empty(data_in_empty12), .full(fifo_in_full),
    .data_in(fifo_in_data12),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel13(
    .data_out(data_din13),
    .empty(data_in_empty13), .full(fifo_in_full),
    .data_in(fifo_in_data13),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel14(
    .data_out(data_din14),
    .empty(data_in_empty14), .full(fifo_in_full),
    .data_in(fifo_in_data14),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel15(
    .data_out(data_din15),
    .empty(data_in_empty15), .full(fifo_in_full),
    .data_in(fifo_in_data15),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

//
core_featuremap_conv2d_4_filter3 core_inst(
    .clock(clock),
    .reset(reset),
    // FIFO READ
    .ff_rdata0(data_din0),
    .ff_rdata1(data_din1),
    .ff_rdata2(data_din2),
    .ff_rdata3(data_din3),
    .ff_rdata4(data_din4),
    .ff_rdata5(data_din5),
    .ff_rdata6(data_din6),
    .ff_rdata7(data_din7),
    .ff_rdata8(data_din8),
    .ff_rdata9(data_din9),
    .ff_rdata10(data_din10),
    .ff_rdata11(data_din11),
    .ff_rdata12(data_din12),
    .ff_rdata13(data_din13),
    .ff_rdata14(data_din14),
    .ff_rdata15(data_din15),

    .ff_empty0(data_in_empty0),
    .ff_empty1(data_in_empty1),
    .ff_empty2(data_in_empty2),
    .ff_empty3(data_in_empty3),
    .ff_empty4(data_in_empty4),
    .ff_empty5(data_in_empty5),
    .ff_empty6(data_in_empty6),
    .ff_empty7(data_in_empty7),
    .ff_empty8(data_in_empty8),
    .ff_empty9(data_in_empty9),
    .ff_empty10(data_in_empty10),
    .ff_empty11(data_in_empty11),
    .ff_empty12(data_in_empty12),
    .ff_empty13(data_in_empty13),
    .ff_empty14(data_in_empty14),
    .ff_empty15(data_in_empty15),

    .ff_rdreq(data_rdreq),
    // FIFO WRITE
    .ff_wdata(data_out),
    .ff_wrreq(data_out_wrreq),
    .ff_full(data_out_full)
);
//
fifo_32b fifo_out_inst(
	.clock(clock),
	.data(data_out),
	.wrreq(data_out_wrreq),
	.almost_full(data_out_full),
	.rdreq(fifo_out_rdreq),	
	.almost_empty(fifo_out_empty),
	.q(fifo_out_data)
	);
endmodule
////////////////////////////////////////// FILTER 4 //////////////////////////////////////////
module vip_top_featuremap_conv2d_4_filter4 (
    clock,
    reset,
    //
    fifo_in_data0  ,
    fifo_in_data1  ,
    fifo_in_data2  ,
    fifo_in_data3  ,
    fifo_in_data4  ,
    fifo_in_data5  ,
    fifo_in_data6  ,
    fifo_in_data7  ,
    fifo_in_data8  ,
    fifo_in_data9  ,
    fifo_in_data10  ,
    fifo_in_data11  ,
    fifo_in_data12  ,
    fifo_in_data13  ,
    fifo_in_data14  ,
    fifo_in_data15  ,

    fifo_in_wrreq , 
    fifo_in_full  ,  
    //
    fifo_out_data  ,     
    fifo_out_rdreq ,    
    fifo_out_empty 
);
parameter DWIDTH = 32;
//parameter DEPTH_WIDTH = 64;
//
input    clock;
input    reset;
//
input [DWIDTH-1:0]	    fifo_in_data0;
input [DWIDTH-1:0]	    fifo_in_data1;
input [DWIDTH-1:0]	    fifo_in_data2;
input [DWIDTH-1:0]	    fifo_in_data3;
input [DWIDTH-1:0]	    fifo_in_data4;
input [DWIDTH-1:0]	    fifo_in_data5;
input [DWIDTH-1:0]	    fifo_in_data6;
input [DWIDTH-1:0]	    fifo_in_data7;
input [DWIDTH-1:0]	    fifo_in_data8;
input [DWIDTH-1:0]	    fifo_in_data9;
input [DWIDTH-1:0]	    fifo_in_data10;
input [DWIDTH-1:0]	    fifo_in_data11;
input [DWIDTH-1:0]	    fifo_in_data12;
input [DWIDTH-1:0]	    fifo_in_data13;
input [DWIDTH-1:0]	    fifo_in_data14;
input [DWIDTH-1:0]	    fifo_in_data15;

input                   fifo_in_wrreq;
output                  fifo_in_full;  
//
output [DWIDTH-1:0]     fifo_out_data  ;     
input    				fifo_out_rdreq ;  
output    				fifo_out_empty;
//------------------------------------------------------------------
wire [DWIDTH-1:0]       data_din0;
wire [DWIDTH-1:0]       data_din1;
wire [DWIDTH-1:0]       data_din2;
wire [DWIDTH-1:0]       data_din3;
wire [DWIDTH-1:0]       data_din4;
wire [DWIDTH-1:0]       data_din5;
wire [DWIDTH-1:0]       data_din6;
wire [DWIDTH-1:0]       data_din7;
wire [DWIDTH-1:0]       data_din8;
wire [DWIDTH-1:0]       data_din9;
wire [DWIDTH-1:0]       data_din10;
wire [DWIDTH-1:0]       data_din11;
wire [DWIDTH-1:0]       data_din12;
wire [DWIDTH-1:0]       data_din13;
wire [DWIDTH-1:0]       data_din14;
wire [DWIDTH-1:0]       data_din15;

wire 					data_in_empty0;
wire 					data_in_empty1;
wire 					data_in_empty2;
wire 					data_in_empty3;
wire 					data_in_empty4;
wire 					data_in_empty5;
wire 					data_in_empty6;
wire 					data_in_empty7;
wire 					data_in_empty8;
wire 					data_in_empty9;
wire 					data_in_empty10;
wire 					data_in_empty11;
wire 					data_in_empty12;
wire 					data_in_empty13;
wire 					data_in_empty14;
wire 					data_in_empty15;

wire 					data_rdreq;
//------- write result to FIFO-----------------------------
wire [DWIDTH-1:0]       data_out;
wire 					data_out_full;
wire 					data_out_wrreq;

//
fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel0(
    .data_out(data_din0),
    .empty(data_in_empty0), .full(fifo_in_full),
    .data_in(fifo_in_data0),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel1(
    .data_out(data_din1),
    .empty(data_in_empty1), .full(fifo_in_full),
    .data_in(fifo_in_data1),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel2(
    .data_out(data_din2),
    .empty(data_in_empty2), .full(fifo_in_full),
    .data_in(fifo_in_data2),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel3(
    .data_out(data_din3),
    .empty(data_in_empty3), .full(fifo_in_full),
    .data_in(fifo_in_data3),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel4(
    .data_out(data_din4),
    .empty(data_in_empty4), .full(fifo_in_full),
    .data_in(fifo_in_data4),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel5(
    .data_out(data_din5),
    .empty(data_in_empty5), .full(fifo_in_full),
    .data_in(fifo_in_data5),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel6(
    .data_out(data_din6),
    .empty(data_in_empty6), .full(fifo_in_full),
    .data_in(fifo_in_data6),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel7(
    .data_out(data_din7),
    .empty(data_in_empty7), .full(fifo_in_full),
    .data_in(fifo_in_data7),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel8(
    .data_out(data_din8),
    .empty(data_in_empty8), .full(fifo_in_full),
    .data_in(fifo_in_data8),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel9(
    .data_out(data_din9),
    .empty(data_in_empty9), .full(fifo_in_full),
    .data_in(fifo_in_data9),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel10(
    .data_out(data_din10),
    .empty(data_in_empty10), .full(fifo_in_full),
    .data_in(fifo_in_data10),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel11(
    .data_out(data_din11),
    .empty(data_in_empty11), .full(fifo_in_full),
    .data_in(fifo_in_data11),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel12(
    .data_out(data_din12),
    .empty(data_in_empty12), .full(fifo_in_full),
    .data_in(fifo_in_data12),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel13(
    .data_out(data_din13),
    .empty(data_in_empty13), .full(fifo_in_full),
    .data_in(fifo_in_data13),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel14(
    .data_out(data_din14),
    .empty(data_in_empty14), .full(fifo_in_full),
    .data_in(fifo_in_data14),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel15(
    .data_out(data_din15),
    .empty(data_in_empty15), .full(fifo_in_full),
    .data_in(fifo_in_data15),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

//
core_featuremap_conv2d_4_filter4 core_inst(
    .clock(clock),
    .reset(reset),
    // FIFO READ
    .ff_rdata0(data_din0),
    .ff_rdata1(data_din1),
    .ff_rdata2(data_din2),
    .ff_rdata3(data_din3),
    .ff_rdata4(data_din4),
    .ff_rdata5(data_din5),
    .ff_rdata6(data_din6),
    .ff_rdata7(data_din7),
    .ff_rdata8(data_din8),
    .ff_rdata9(data_din9),
    .ff_rdata10(data_din10),
    .ff_rdata11(data_din11),
    .ff_rdata12(data_din12),
    .ff_rdata13(data_din13),
    .ff_rdata14(data_din14),
    .ff_rdata15(data_din15),

    .ff_empty0(data_in_empty0),
    .ff_empty1(data_in_empty1),
    .ff_empty2(data_in_empty2),
    .ff_empty3(data_in_empty3),
    .ff_empty4(data_in_empty4),
    .ff_empty5(data_in_empty5),
    .ff_empty6(data_in_empty6),
    .ff_empty7(data_in_empty7),
    .ff_empty8(data_in_empty8),
    .ff_empty9(data_in_empty9),
    .ff_empty10(data_in_empty10),
    .ff_empty11(data_in_empty11),
    .ff_empty12(data_in_empty12),
    .ff_empty13(data_in_empty13),
    .ff_empty14(data_in_empty14),
    .ff_empty15(data_in_empty15),

    .ff_rdreq(data_rdreq),
    // FIFO WRITE
    .ff_wdata(data_out),
    .ff_wrreq(data_out_wrreq),
    .ff_full(data_out_full)
);
//
fifo_32b fifo_out_inst(
	.clock(clock),
	.data(data_out),
	.wrreq(data_out_wrreq),
	.almost_full(data_out_full),
	.rdreq(fifo_out_rdreq),	
	.almost_empty(fifo_out_empty),
	.q(fifo_out_data)
	);
endmodule
////////////////////////////////////////// FILTER 5 //////////////////////////////////////////
module vip_top_featuremap_conv2d_4_filter5 (
    clock,
    reset,
    //
    fifo_in_data0  ,
    fifo_in_data1  ,
    fifo_in_data2  ,
    fifo_in_data3  ,
    fifo_in_data4  ,
    fifo_in_data5  ,
    fifo_in_data6  ,
    fifo_in_data7  ,
    fifo_in_data8  ,
    fifo_in_data9  ,
    fifo_in_data10  ,
    fifo_in_data11  ,
    fifo_in_data12  ,
    fifo_in_data13  ,
    fifo_in_data14  ,
    fifo_in_data15  ,

    fifo_in_wrreq , 
    fifo_in_full  ,  
    //
    fifo_out_data  ,     
    fifo_out_rdreq ,    
    fifo_out_empty 
);
parameter DWIDTH = 32;
//parameter DEPTH_WIDTH = 64;
//
input    clock;
input    reset;
//
input [DWIDTH-1:0]	    fifo_in_data0;
input [DWIDTH-1:0]	    fifo_in_data1;
input [DWIDTH-1:0]	    fifo_in_data2;
input [DWIDTH-1:0]	    fifo_in_data3;
input [DWIDTH-1:0]	    fifo_in_data4;
input [DWIDTH-1:0]	    fifo_in_data5;
input [DWIDTH-1:0]	    fifo_in_data6;
input [DWIDTH-1:0]	    fifo_in_data7;
input [DWIDTH-1:0]	    fifo_in_data8;
input [DWIDTH-1:0]	    fifo_in_data9;
input [DWIDTH-1:0]	    fifo_in_data10;
input [DWIDTH-1:0]	    fifo_in_data11;
input [DWIDTH-1:0]	    fifo_in_data12;
input [DWIDTH-1:0]	    fifo_in_data13;
input [DWIDTH-1:0]	    fifo_in_data14;
input [DWIDTH-1:0]	    fifo_in_data15;

input                   fifo_in_wrreq;
output                  fifo_in_full;  
//
output [DWIDTH-1:0]     fifo_out_data  ;     
input    				fifo_out_rdreq ;  
output    				fifo_out_empty;
//------------------------------------------------------------------
wire [DWIDTH-1:0]       data_din0;
wire [DWIDTH-1:0]       data_din1;
wire [DWIDTH-1:0]       data_din2;
wire [DWIDTH-1:0]       data_din3;
wire [DWIDTH-1:0]       data_din4;
wire [DWIDTH-1:0]       data_din5;
wire [DWIDTH-1:0]       data_din6;
wire [DWIDTH-1:0]       data_din7;
wire [DWIDTH-1:0]       data_din8;
wire [DWIDTH-1:0]       data_din9;
wire [DWIDTH-1:0]       data_din10;
wire [DWIDTH-1:0]       data_din11;
wire [DWIDTH-1:0]       data_din12;
wire [DWIDTH-1:0]       data_din13;
wire [DWIDTH-1:0]       data_din14;
wire [DWIDTH-1:0]       data_din15;

wire 					data_in_empty0;
wire 					data_in_empty1;
wire 					data_in_empty2;
wire 					data_in_empty3;
wire 					data_in_empty4;
wire 					data_in_empty5;
wire 					data_in_empty6;
wire 					data_in_empty7;
wire 					data_in_empty8;
wire 					data_in_empty9;
wire 					data_in_empty10;
wire 					data_in_empty11;
wire 					data_in_empty12;
wire 					data_in_empty13;
wire 					data_in_empty14;
wire 					data_in_empty15;

wire 					data_rdreq;
//------- write result to FIFO-----------------------------
wire [DWIDTH-1:0]       data_out;
wire 					data_out_full;
wire 					data_out_wrreq;

//
fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel0(
    .data_out(data_din0),
    .empty(data_in_empty0), .full(fifo_in_full),
    .data_in(fifo_in_data0),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel1(
    .data_out(data_din1),
    .empty(data_in_empty1), .full(fifo_in_full),
    .data_in(fifo_in_data1),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel2(
    .data_out(data_din2),
    .empty(data_in_empty2), .full(fifo_in_full),
    .data_in(fifo_in_data2),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel3(
    .data_out(data_din3),
    .empty(data_in_empty3), .full(fifo_in_full),
    .data_in(fifo_in_data3),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel4(
    .data_out(data_din4),
    .empty(data_in_empty4), .full(fifo_in_full),
    .data_in(fifo_in_data4),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel5(
    .data_out(data_din5),
    .empty(data_in_empty5), .full(fifo_in_full),
    .data_in(fifo_in_data5),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel6(
    .data_out(data_din6),
    .empty(data_in_empty6), .full(fifo_in_full),
    .data_in(fifo_in_data6),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel7(
    .data_out(data_din7),
    .empty(data_in_empty7), .full(fifo_in_full),
    .data_in(fifo_in_data7),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel8(
    .data_out(data_din8),
    .empty(data_in_empty8), .full(fifo_in_full),
    .data_in(fifo_in_data8),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel9(
    .data_out(data_din9),
    .empty(data_in_empty9), .full(fifo_in_full),
    .data_in(fifo_in_data9),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel10(
    .data_out(data_din10),
    .empty(data_in_empty10), .full(fifo_in_full),
    .data_in(fifo_in_data10),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel11(
    .data_out(data_din11),
    .empty(data_in_empty11), .full(fifo_in_full),
    .data_in(fifo_in_data11),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel12(
    .data_out(data_din12),
    .empty(data_in_empty12), .full(fifo_in_full),
    .data_in(fifo_in_data12),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel13(
    .data_out(data_din13),
    .empty(data_in_empty13), .full(fifo_in_full),
    .data_in(fifo_in_data13),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel14(
    .data_out(data_din14),
    .empty(data_in_empty14), .full(fifo_in_full),
    .data_in(fifo_in_data14),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel15(
    .data_out(data_din15),
    .empty(data_in_empty15), .full(fifo_in_full),
    .data_in(fifo_in_data15),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

//
core_featuremap_conv2d_4_filter5 core_inst(
    .clock(clock),
    .reset(reset),
    // FIFO READ
    .ff_rdata0(data_din0),
    .ff_rdata1(data_din1),
    .ff_rdata2(data_din2),
    .ff_rdata3(data_din3),
    .ff_rdata4(data_din4),
    .ff_rdata5(data_din5),
    .ff_rdata6(data_din6),
    .ff_rdata7(data_din7),
    .ff_rdata8(data_din8),
    .ff_rdata9(data_din9),
    .ff_rdata10(data_din10),
    .ff_rdata11(data_din11),
    .ff_rdata12(data_din12),
    .ff_rdata13(data_din13),
    .ff_rdata14(data_din14),
    .ff_rdata15(data_din15),

    .ff_empty0(data_in_empty0),
    .ff_empty1(data_in_empty1),
    .ff_empty2(data_in_empty2),
    .ff_empty3(data_in_empty3),
    .ff_empty4(data_in_empty4),
    .ff_empty5(data_in_empty5),
    .ff_empty6(data_in_empty6),
    .ff_empty7(data_in_empty7),
    .ff_empty8(data_in_empty8),
    .ff_empty9(data_in_empty9),
    .ff_empty10(data_in_empty10),
    .ff_empty11(data_in_empty11),
    .ff_empty12(data_in_empty12),
    .ff_empty13(data_in_empty13),
    .ff_empty14(data_in_empty14),
    .ff_empty15(data_in_empty15),

    .ff_rdreq(data_rdreq),
    // FIFO WRITE
    .ff_wdata(data_out),
    .ff_wrreq(data_out_wrreq),
    .ff_full(data_out_full)
);
//
fifo_32b fifo_out_inst(
	.clock(clock),
	.data(data_out),
	.wrreq(data_out_wrreq),
	.almost_full(data_out_full),
	.rdreq(fifo_out_rdreq),	
	.almost_empty(fifo_out_empty),
	.q(fifo_out_data)
	);
endmodule
////////////////////////////////////////// FILTER 6 //////////////////////////////////////////
module vip_top_featuremap_conv2d_4_filter6 (
    clock,
    reset,
    //
    fifo_in_data0  ,
    fifo_in_data1  ,
    fifo_in_data2  ,
    fifo_in_data3  ,
    fifo_in_data4  ,
    fifo_in_data5  ,
    fifo_in_data6  ,
    fifo_in_data7  ,
    fifo_in_data8  ,
    fifo_in_data9  ,
    fifo_in_data10  ,
    fifo_in_data11  ,
    fifo_in_data12  ,
    fifo_in_data13  ,
    fifo_in_data14  ,
    fifo_in_data15  ,

    fifo_in_wrreq , 
    fifo_in_full  ,  
    //
    fifo_out_data  ,     
    fifo_out_rdreq ,    
    fifo_out_empty 
);
parameter DWIDTH = 32;
//parameter DEPTH_WIDTH = 64;
//
input    clock;
input    reset;
//
input [DWIDTH-1:0]	    fifo_in_data0;
input [DWIDTH-1:0]	    fifo_in_data1;
input [DWIDTH-1:0]	    fifo_in_data2;
input [DWIDTH-1:0]	    fifo_in_data3;
input [DWIDTH-1:0]	    fifo_in_data4;
input [DWIDTH-1:0]	    fifo_in_data5;
input [DWIDTH-1:0]	    fifo_in_data6;
input [DWIDTH-1:0]	    fifo_in_data7;
input [DWIDTH-1:0]	    fifo_in_data8;
input [DWIDTH-1:0]	    fifo_in_data9;
input [DWIDTH-1:0]	    fifo_in_data10;
input [DWIDTH-1:0]	    fifo_in_data11;
input [DWIDTH-1:0]	    fifo_in_data12;
input [DWIDTH-1:0]	    fifo_in_data13;
input [DWIDTH-1:0]	    fifo_in_data14;
input [DWIDTH-1:0]	    fifo_in_data15;

input                   fifo_in_wrreq;
output                  fifo_in_full;  
//
output [DWIDTH-1:0]     fifo_out_data  ;     
input    				fifo_out_rdreq ;  
output    				fifo_out_empty;
//------------------------------------------------------------------
wire [DWIDTH-1:0]       data_din0;
wire [DWIDTH-1:0]       data_din1;
wire [DWIDTH-1:0]       data_din2;
wire [DWIDTH-1:0]       data_din3;
wire [DWIDTH-1:0]       data_din4;
wire [DWIDTH-1:0]       data_din5;
wire [DWIDTH-1:0]       data_din6;
wire [DWIDTH-1:0]       data_din7;
wire [DWIDTH-1:0]       data_din8;
wire [DWIDTH-1:0]       data_din9;
wire [DWIDTH-1:0]       data_din10;
wire [DWIDTH-1:0]       data_din11;
wire [DWIDTH-1:0]       data_din12;
wire [DWIDTH-1:0]       data_din13;
wire [DWIDTH-1:0]       data_din14;
wire [DWIDTH-1:0]       data_din15;

wire 					data_in_empty0;
wire 					data_in_empty1;
wire 					data_in_empty2;
wire 					data_in_empty3;
wire 					data_in_empty4;
wire 					data_in_empty5;
wire 					data_in_empty6;
wire 					data_in_empty7;
wire 					data_in_empty8;
wire 					data_in_empty9;
wire 					data_in_empty10;
wire 					data_in_empty11;
wire 					data_in_empty12;
wire 					data_in_empty13;
wire 					data_in_empty14;
wire 					data_in_empty15;

wire 					data_rdreq;
//------- write result to FIFO-----------------------------
wire [DWIDTH-1:0]       data_out;
wire 					data_out_full;
wire 					data_out_wrreq;

//
fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel0(
    .data_out(data_din0),
    .empty(data_in_empty0), .full(fifo_in_full),
    .data_in(fifo_in_data0),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel1(
    .data_out(data_din1),
    .empty(data_in_empty1), .full(fifo_in_full),
    .data_in(fifo_in_data1),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel2(
    .data_out(data_din2),
    .empty(data_in_empty2), .full(fifo_in_full),
    .data_in(fifo_in_data2),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel3(
    .data_out(data_din3),
    .empty(data_in_empty3), .full(fifo_in_full),
    .data_in(fifo_in_data3),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel4(
    .data_out(data_din4),
    .empty(data_in_empty4), .full(fifo_in_full),
    .data_in(fifo_in_data4),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel5(
    .data_out(data_din5),
    .empty(data_in_empty5), .full(fifo_in_full),
    .data_in(fifo_in_data5),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel6(
    .data_out(data_din6),
    .empty(data_in_empty6), .full(fifo_in_full),
    .data_in(fifo_in_data6),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel7(
    .data_out(data_din7),
    .empty(data_in_empty7), .full(fifo_in_full),
    .data_in(fifo_in_data7),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel8(
    .data_out(data_din8),
    .empty(data_in_empty8), .full(fifo_in_full),
    .data_in(fifo_in_data8),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel9(
    .data_out(data_din9),
    .empty(data_in_empty9), .full(fifo_in_full),
    .data_in(fifo_in_data9),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel10(
    .data_out(data_din10),
    .empty(data_in_empty10), .full(fifo_in_full),
    .data_in(fifo_in_data10),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel11(
    .data_out(data_din11),
    .empty(data_in_empty11), .full(fifo_in_full),
    .data_in(fifo_in_data11),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel12(
    .data_out(data_din12),
    .empty(data_in_empty12), .full(fifo_in_full),
    .data_in(fifo_in_data12),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel13(
    .data_out(data_din13),
    .empty(data_in_empty13), .full(fifo_in_full),
    .data_in(fifo_in_data13),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel14(
    .data_out(data_din14),
    .empty(data_in_empty14), .full(fifo_in_full),
    .data_in(fifo_in_data14),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel15(
    .data_out(data_din15),
    .empty(data_in_empty15), .full(fifo_in_full),
    .data_in(fifo_in_data15),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

//
core_featuremap_conv2d_4_filter6 core_inst(
    .clock(clock),
    .reset(reset),
    // FIFO READ
    .ff_rdata0(data_din0),
    .ff_rdata1(data_din1),
    .ff_rdata2(data_din2),
    .ff_rdata3(data_din3),
    .ff_rdata4(data_din4),
    .ff_rdata5(data_din5),
    .ff_rdata6(data_din6),
    .ff_rdata7(data_din7),
    .ff_rdata8(data_din8),
    .ff_rdata9(data_din9),
    .ff_rdata10(data_din10),
    .ff_rdata11(data_din11),
    .ff_rdata12(data_din12),
    .ff_rdata13(data_din13),
    .ff_rdata14(data_din14),
    .ff_rdata15(data_din15),

    .ff_empty0(data_in_empty0),
    .ff_empty1(data_in_empty1),
    .ff_empty2(data_in_empty2),
    .ff_empty3(data_in_empty3),
    .ff_empty4(data_in_empty4),
    .ff_empty5(data_in_empty5),
    .ff_empty6(data_in_empty6),
    .ff_empty7(data_in_empty7),
    .ff_empty8(data_in_empty8),
    .ff_empty9(data_in_empty9),
    .ff_empty10(data_in_empty10),
    .ff_empty11(data_in_empty11),
    .ff_empty12(data_in_empty12),
    .ff_empty13(data_in_empty13),
    .ff_empty14(data_in_empty14),
    .ff_empty15(data_in_empty15),

    .ff_rdreq(data_rdreq),
    // FIFO WRITE
    .ff_wdata(data_out),
    .ff_wrreq(data_out_wrreq),
    .ff_full(data_out_full)
);
//
fifo_32b fifo_out_inst(
	.clock(clock),
	.data(data_out),
	.wrreq(data_out_wrreq),
	.almost_full(data_out_full),
	.rdreq(fifo_out_rdreq),	
	.almost_empty(fifo_out_empty),
	.q(fifo_out_data)
	);
endmodule
////////////////////////////////////////// FILTER 7 //////////////////////////////////////////
module vip_top_featuremap_conv2d_4_filter7 (
    clock,
    reset,
    //
    fifo_in_data0  ,
    fifo_in_data1  ,
    fifo_in_data2  ,
    fifo_in_data3  ,
    fifo_in_data4  ,
    fifo_in_data5  ,
    fifo_in_data6  ,
    fifo_in_data7  ,
    fifo_in_data8  ,
    fifo_in_data9  ,
    fifo_in_data10  ,
    fifo_in_data11  ,
    fifo_in_data12  ,
    fifo_in_data13  ,
    fifo_in_data14  ,
    fifo_in_data15  ,

    fifo_in_wrreq , 
    fifo_in_full  ,  
    //
    fifo_out_data  ,     
    fifo_out_rdreq ,    
    fifo_out_empty 
);
parameter DWIDTH = 32;
//parameter DEPTH_WIDTH = 64;
//
input    clock;
input    reset;
//
input [DWIDTH-1:0]	    fifo_in_data0;
input [DWIDTH-1:0]	    fifo_in_data1;
input [DWIDTH-1:0]	    fifo_in_data2;
input [DWIDTH-1:0]	    fifo_in_data3;
input [DWIDTH-1:0]	    fifo_in_data4;
input [DWIDTH-1:0]	    fifo_in_data5;
input [DWIDTH-1:0]	    fifo_in_data6;
input [DWIDTH-1:0]	    fifo_in_data7;
input [DWIDTH-1:0]	    fifo_in_data8;
input [DWIDTH-1:0]	    fifo_in_data9;
input [DWIDTH-1:0]	    fifo_in_data10;
input [DWIDTH-1:0]	    fifo_in_data11;
input [DWIDTH-1:0]	    fifo_in_data12;
input [DWIDTH-1:0]	    fifo_in_data13;
input [DWIDTH-1:0]	    fifo_in_data14;
input [DWIDTH-1:0]	    fifo_in_data15;

input                   fifo_in_wrreq;
output                  fifo_in_full;  
//
output [DWIDTH-1:0]     fifo_out_data  ;     
input    				fifo_out_rdreq ;  
output    				fifo_out_empty;
//------------------------------------------------------------------
wire [DWIDTH-1:0]       data_din0;
wire [DWIDTH-1:0]       data_din1;
wire [DWIDTH-1:0]       data_din2;
wire [DWIDTH-1:0]       data_din3;
wire [DWIDTH-1:0]       data_din4;
wire [DWIDTH-1:0]       data_din5;
wire [DWIDTH-1:0]       data_din6;
wire [DWIDTH-1:0]       data_din7;
wire [DWIDTH-1:0]       data_din8;
wire [DWIDTH-1:0]       data_din9;
wire [DWIDTH-1:0]       data_din10;
wire [DWIDTH-1:0]       data_din11;
wire [DWIDTH-1:0]       data_din12;
wire [DWIDTH-1:0]       data_din13;
wire [DWIDTH-1:0]       data_din14;
wire [DWIDTH-1:0]       data_din15;

wire 					data_in_empty0;
wire 					data_in_empty1;
wire 					data_in_empty2;
wire 					data_in_empty3;
wire 					data_in_empty4;
wire 					data_in_empty5;
wire 					data_in_empty6;
wire 					data_in_empty7;
wire 					data_in_empty8;
wire 					data_in_empty9;
wire 					data_in_empty10;
wire 					data_in_empty11;
wire 					data_in_empty12;
wire 					data_in_empty13;
wire 					data_in_empty14;
wire 					data_in_empty15;

wire 					data_rdreq;
//------- write result to FIFO-----------------------------
wire [DWIDTH-1:0]       data_out;
wire 					data_out_full;
wire 					data_out_wrreq;

//
fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel0(
    .data_out(data_din0),
    .empty(data_in_empty0), .full(fifo_in_full),
    .data_in(fifo_in_data0),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel1(
    .data_out(data_din1),
    .empty(data_in_empty1), .full(fifo_in_full),
    .data_in(fifo_in_data1),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel2(
    .data_out(data_din2),
    .empty(data_in_empty2), .full(fifo_in_full),
    .data_in(fifo_in_data2),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel3(
    .data_out(data_din3),
    .empty(data_in_empty3), .full(fifo_in_full),
    .data_in(fifo_in_data3),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel4(
    .data_out(data_din4),
    .empty(data_in_empty4), .full(fifo_in_full),
    .data_in(fifo_in_data4),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel5(
    .data_out(data_din5),
    .empty(data_in_empty5), .full(fifo_in_full),
    .data_in(fifo_in_data5),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel6(
    .data_out(data_din6),
    .empty(data_in_empty6), .full(fifo_in_full),
    .data_in(fifo_in_data6),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel7(
    .data_out(data_din7),
    .empty(data_in_empty7), .full(fifo_in_full),
    .data_in(fifo_in_data7),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel8(
    .data_out(data_din8),
    .empty(data_in_empty8), .full(fifo_in_full),
    .data_in(fifo_in_data8),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel9(
    .data_out(data_din9),
    .empty(data_in_empty9), .full(fifo_in_full),
    .data_in(fifo_in_data9),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel10(
    .data_out(data_din10),
    .empty(data_in_empty10), .full(fifo_in_full),
    .data_in(fifo_in_data10),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel11(
    .data_out(data_din11),
    .empty(data_in_empty11), .full(fifo_in_full),
    .data_in(fifo_in_data11),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel12(
    .data_out(data_din12),
    .empty(data_in_empty12), .full(fifo_in_full),
    .data_in(fifo_in_data12),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel13(
    .data_out(data_din13),
    .empty(data_in_empty13), .full(fifo_in_full),
    .data_in(fifo_in_data13),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel14(
    .data_out(data_din14),
    .empty(data_in_empty14), .full(fifo_in_full),
    .data_in(fifo_in_data14),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel15(
    .data_out(data_din15),
    .empty(data_in_empty15), .full(fifo_in_full),
    .data_in(fifo_in_data15),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

//
core_featuremap_conv2d_4_filter7 core_inst(
    .clock(clock),
    .reset(reset),
    // FIFO READ
    .ff_rdata0(data_din0),
    .ff_rdata1(data_din1),
    .ff_rdata2(data_din2),
    .ff_rdata3(data_din3),
    .ff_rdata4(data_din4),
    .ff_rdata5(data_din5),
    .ff_rdata6(data_din6),
    .ff_rdata7(data_din7),
    .ff_rdata8(data_din8),
    .ff_rdata9(data_din9),
    .ff_rdata10(data_din10),
    .ff_rdata11(data_din11),
    .ff_rdata12(data_din12),
    .ff_rdata13(data_din13),
    .ff_rdata14(data_din14),
    .ff_rdata15(data_din15),

    .ff_empty0(data_in_empty0),
    .ff_empty1(data_in_empty1),
    .ff_empty2(data_in_empty2),
    .ff_empty3(data_in_empty3),
    .ff_empty4(data_in_empty4),
    .ff_empty5(data_in_empty5),
    .ff_empty6(data_in_empty6),
    .ff_empty7(data_in_empty7),
    .ff_empty8(data_in_empty8),
    .ff_empty9(data_in_empty9),
    .ff_empty10(data_in_empty10),
    .ff_empty11(data_in_empty11),
    .ff_empty12(data_in_empty12),
    .ff_empty13(data_in_empty13),
    .ff_empty14(data_in_empty14),
    .ff_empty15(data_in_empty15),

    .ff_rdreq(data_rdreq),
    // FIFO WRITE
    .ff_wdata(data_out),
    .ff_wrreq(data_out_wrreq),
    .ff_full(data_out_full)
);
//
fifo_32b fifo_out_inst(
	.clock(clock),
	.data(data_out),
	.wrreq(data_out_wrreq),
	.almost_full(data_out_full),
	.rdreq(fifo_out_rdreq),	
	.almost_empty(fifo_out_empty),
	.q(fifo_out_data)
	);
endmodule
////////////////////////////////////////// FILTER 8 //////////////////////////////////////////
module vip_top_featuremap_conv2d_4_filter8 (
    clock,
    reset,
    //
    fifo_in_data0  ,
    fifo_in_data1  ,
    fifo_in_data2  ,
    fifo_in_data3  ,
    fifo_in_data4  ,
    fifo_in_data5  ,
    fifo_in_data6  ,
    fifo_in_data7  ,
    fifo_in_data8  ,
    fifo_in_data9  ,
    fifo_in_data10  ,
    fifo_in_data11  ,
    fifo_in_data12  ,
    fifo_in_data13  ,
    fifo_in_data14  ,
    fifo_in_data15  ,

    fifo_in_wrreq , 
    fifo_in_full  ,  
    //
    fifo_out_data  ,     
    fifo_out_rdreq ,    
    fifo_out_empty 
);
parameter DWIDTH = 32;
//parameter DEPTH_WIDTH = 64;
//
input    clock;
input    reset;
//
input [DWIDTH-1:0]	    fifo_in_data0;
input [DWIDTH-1:0]	    fifo_in_data1;
input [DWIDTH-1:0]	    fifo_in_data2;
input [DWIDTH-1:0]	    fifo_in_data3;
input [DWIDTH-1:0]	    fifo_in_data4;
input [DWIDTH-1:0]	    fifo_in_data5;
input [DWIDTH-1:0]	    fifo_in_data6;
input [DWIDTH-1:0]	    fifo_in_data7;
input [DWIDTH-1:0]	    fifo_in_data8;
input [DWIDTH-1:0]	    fifo_in_data9;
input [DWIDTH-1:0]	    fifo_in_data10;
input [DWIDTH-1:0]	    fifo_in_data11;
input [DWIDTH-1:0]	    fifo_in_data12;
input [DWIDTH-1:0]	    fifo_in_data13;
input [DWIDTH-1:0]	    fifo_in_data14;
input [DWIDTH-1:0]	    fifo_in_data15;

input                   fifo_in_wrreq;
output                  fifo_in_full;  
//
output [DWIDTH-1:0]     fifo_out_data  ;     
input    				fifo_out_rdreq ;  
output    				fifo_out_empty;
//------------------------------------------------------------------
wire [DWIDTH-1:0]       data_din0;
wire [DWIDTH-1:0]       data_din1;
wire [DWIDTH-1:0]       data_din2;
wire [DWIDTH-1:0]       data_din3;
wire [DWIDTH-1:0]       data_din4;
wire [DWIDTH-1:0]       data_din5;
wire [DWIDTH-1:0]       data_din6;
wire [DWIDTH-1:0]       data_din7;
wire [DWIDTH-1:0]       data_din8;
wire [DWIDTH-1:0]       data_din9;
wire [DWIDTH-1:0]       data_din10;
wire [DWIDTH-1:0]       data_din11;
wire [DWIDTH-1:0]       data_din12;
wire [DWIDTH-1:0]       data_din13;
wire [DWIDTH-1:0]       data_din14;
wire [DWIDTH-1:0]       data_din15;

wire 					data_in_empty0;
wire 					data_in_empty1;
wire 					data_in_empty2;
wire 					data_in_empty3;
wire 					data_in_empty4;
wire 					data_in_empty5;
wire 					data_in_empty6;
wire 					data_in_empty7;
wire 					data_in_empty8;
wire 					data_in_empty9;
wire 					data_in_empty10;
wire 					data_in_empty11;
wire 					data_in_empty12;
wire 					data_in_empty13;
wire 					data_in_empty14;
wire 					data_in_empty15;

wire 					data_rdreq;
//------- write result to FIFO-----------------------------
wire [DWIDTH-1:0]       data_out;
wire 					data_out_full;
wire 					data_out_wrreq;

//
fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel0(
    .data_out(data_din0),
    .empty(data_in_empty0), .full(fifo_in_full),
    .data_in(fifo_in_data0),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel1(
    .data_out(data_din1),
    .empty(data_in_empty1), .full(fifo_in_full),
    .data_in(fifo_in_data1),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel2(
    .data_out(data_din2),
    .empty(data_in_empty2), .full(fifo_in_full),
    .data_in(fifo_in_data2),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel3(
    .data_out(data_din3),
    .empty(data_in_empty3), .full(fifo_in_full),
    .data_in(fifo_in_data3),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel4(
    .data_out(data_din4),
    .empty(data_in_empty4), .full(fifo_in_full),
    .data_in(fifo_in_data4),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel5(
    .data_out(data_din5),
    .empty(data_in_empty5), .full(fifo_in_full),
    .data_in(fifo_in_data5),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel6(
    .data_out(data_din6),
    .empty(data_in_empty6), .full(fifo_in_full),
    .data_in(fifo_in_data6),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel7(
    .data_out(data_din7),
    .empty(data_in_empty7), .full(fifo_in_full),
    .data_in(fifo_in_data7),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel8(
    .data_out(data_din8),
    .empty(data_in_empty8), .full(fifo_in_full),
    .data_in(fifo_in_data8),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel9(
    .data_out(data_din9),
    .empty(data_in_empty9), .full(fifo_in_full),
    .data_in(fifo_in_data9),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel10(
    .data_out(data_din10),
    .empty(data_in_empty10), .full(fifo_in_full),
    .data_in(fifo_in_data10),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel11(
    .data_out(data_din11),
    .empty(data_in_empty11), .full(fifo_in_full),
    .data_in(fifo_in_data11),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel12(
    .data_out(data_din12),
    .empty(data_in_empty12), .full(fifo_in_full),
    .data_in(fifo_in_data12),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel13(
    .data_out(data_din13),
    .empty(data_in_empty13), .full(fifo_in_full),
    .data_in(fifo_in_data13),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel14(
    .data_out(data_din14),
    .empty(data_in_empty14), .full(fifo_in_full),
    .data_in(fifo_in_data14),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel15(
    .data_out(data_din15),
    .empty(data_in_empty15), .full(fifo_in_full),
    .data_in(fifo_in_data15),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

//
core_featuremap_conv2d_4_filter8 core_inst(
    .clock(clock),
    .reset(reset),
    // FIFO READ
    .ff_rdata0(data_din0),
    .ff_rdata1(data_din1),
    .ff_rdata2(data_din2),
    .ff_rdata3(data_din3),
    .ff_rdata4(data_din4),
    .ff_rdata5(data_din5),
    .ff_rdata6(data_din6),
    .ff_rdata7(data_din7),
    .ff_rdata8(data_din8),
    .ff_rdata9(data_din9),
    .ff_rdata10(data_din10),
    .ff_rdata11(data_din11),
    .ff_rdata12(data_din12),
    .ff_rdata13(data_din13),
    .ff_rdata14(data_din14),
    .ff_rdata15(data_din15),

    .ff_empty0(data_in_empty0),
    .ff_empty1(data_in_empty1),
    .ff_empty2(data_in_empty2),
    .ff_empty3(data_in_empty3),
    .ff_empty4(data_in_empty4),
    .ff_empty5(data_in_empty5),
    .ff_empty6(data_in_empty6),
    .ff_empty7(data_in_empty7),
    .ff_empty8(data_in_empty8),
    .ff_empty9(data_in_empty9),
    .ff_empty10(data_in_empty10),
    .ff_empty11(data_in_empty11),
    .ff_empty12(data_in_empty12),
    .ff_empty13(data_in_empty13),
    .ff_empty14(data_in_empty14),
    .ff_empty15(data_in_empty15),

    .ff_rdreq(data_rdreq),
    // FIFO WRITE
    .ff_wdata(data_out),
    .ff_wrreq(data_out_wrreq),
    .ff_full(data_out_full)
);
//
fifo_32b fifo_out_inst(
	.clock(clock),
	.data(data_out),
	.wrreq(data_out_wrreq),
	.almost_full(data_out_full),
	.rdreq(fifo_out_rdreq),	
	.almost_empty(fifo_out_empty),
	.q(fifo_out_data)
	);
endmodule
////////////////////////////////////////// FILTER 9 //////////////////////////////////////////
module vip_top_featuremap_conv2d_4_filter9 (
    clock,
    reset,
    //
    fifo_in_data0  ,
    fifo_in_data1  ,
    fifo_in_data2  ,
    fifo_in_data3  ,
    fifo_in_data4  ,
    fifo_in_data5  ,
    fifo_in_data6  ,
    fifo_in_data7  ,
    fifo_in_data8  ,
    fifo_in_data9  ,
    fifo_in_data10  ,
    fifo_in_data11  ,
    fifo_in_data12  ,
    fifo_in_data13  ,
    fifo_in_data14  ,
    fifo_in_data15  ,

    fifo_in_wrreq , 
    fifo_in_full  ,  
    //
    fifo_out_data  ,     
    fifo_out_rdreq ,    
    fifo_out_empty 
);
parameter DWIDTH = 32;
//parameter DEPTH_WIDTH = 64;
//
input    clock;
input    reset;
//
input [DWIDTH-1:0]	    fifo_in_data0;
input [DWIDTH-1:0]	    fifo_in_data1;
input [DWIDTH-1:0]	    fifo_in_data2;
input [DWIDTH-1:0]	    fifo_in_data3;
input [DWIDTH-1:0]	    fifo_in_data4;
input [DWIDTH-1:0]	    fifo_in_data5;
input [DWIDTH-1:0]	    fifo_in_data6;
input [DWIDTH-1:0]	    fifo_in_data7;
input [DWIDTH-1:0]	    fifo_in_data8;
input [DWIDTH-1:0]	    fifo_in_data9;
input [DWIDTH-1:0]	    fifo_in_data10;
input [DWIDTH-1:0]	    fifo_in_data11;
input [DWIDTH-1:0]	    fifo_in_data12;
input [DWIDTH-1:0]	    fifo_in_data13;
input [DWIDTH-1:0]	    fifo_in_data14;
input [DWIDTH-1:0]	    fifo_in_data15;

input                   fifo_in_wrreq;
output                  fifo_in_full;  
//
output [DWIDTH-1:0]     fifo_out_data  ;     
input    				fifo_out_rdreq ;  
output    				fifo_out_empty;
//------------------------------------------------------------------
wire [DWIDTH-1:0]       data_din0;
wire [DWIDTH-1:0]       data_din1;
wire [DWIDTH-1:0]       data_din2;
wire [DWIDTH-1:0]       data_din3;
wire [DWIDTH-1:0]       data_din4;
wire [DWIDTH-1:0]       data_din5;
wire [DWIDTH-1:0]       data_din6;
wire [DWIDTH-1:0]       data_din7;
wire [DWIDTH-1:0]       data_din8;
wire [DWIDTH-1:0]       data_din9;
wire [DWIDTH-1:0]       data_din10;
wire [DWIDTH-1:0]       data_din11;
wire [DWIDTH-1:0]       data_din12;
wire [DWIDTH-1:0]       data_din13;
wire [DWIDTH-1:0]       data_din14;
wire [DWIDTH-1:0]       data_din15;

wire 					data_in_empty0;
wire 					data_in_empty1;
wire 					data_in_empty2;
wire 					data_in_empty3;
wire 					data_in_empty4;
wire 					data_in_empty5;
wire 					data_in_empty6;
wire 					data_in_empty7;
wire 					data_in_empty8;
wire 					data_in_empty9;
wire 					data_in_empty10;
wire 					data_in_empty11;
wire 					data_in_empty12;
wire 					data_in_empty13;
wire 					data_in_empty14;
wire 					data_in_empty15;

wire 					data_rdreq;
//------- write result to FIFO-----------------------------
wire [DWIDTH-1:0]       data_out;
wire 					data_out_full;
wire 					data_out_wrreq;

//
fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel0(
    .data_out(data_din0),
    .empty(data_in_empty0), .full(fifo_in_full),
    .data_in(fifo_in_data0),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel1(
    .data_out(data_din1),
    .empty(data_in_empty1), .full(fifo_in_full),
    .data_in(fifo_in_data1),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel2(
    .data_out(data_din2),
    .empty(data_in_empty2), .full(fifo_in_full),
    .data_in(fifo_in_data2),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel3(
    .data_out(data_din3),
    .empty(data_in_empty3), .full(fifo_in_full),
    .data_in(fifo_in_data3),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel4(
    .data_out(data_din4),
    .empty(data_in_empty4), .full(fifo_in_full),
    .data_in(fifo_in_data4),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel5(
    .data_out(data_din5),
    .empty(data_in_empty5), .full(fifo_in_full),
    .data_in(fifo_in_data5),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel6(
    .data_out(data_din6),
    .empty(data_in_empty6), .full(fifo_in_full),
    .data_in(fifo_in_data6),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel7(
    .data_out(data_din7),
    .empty(data_in_empty7), .full(fifo_in_full),
    .data_in(fifo_in_data7),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel8(
    .data_out(data_din8),
    .empty(data_in_empty8), .full(fifo_in_full),
    .data_in(fifo_in_data8),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel9(
    .data_out(data_din9),
    .empty(data_in_empty9), .full(fifo_in_full),
    .data_in(fifo_in_data9),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel10(
    .data_out(data_din10),
    .empty(data_in_empty10), .full(fifo_in_full),
    .data_in(fifo_in_data10),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel11(
    .data_out(data_din11),
    .empty(data_in_empty11), .full(fifo_in_full),
    .data_in(fifo_in_data11),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel12(
    .data_out(data_din12),
    .empty(data_in_empty12), .full(fifo_in_full),
    .data_in(fifo_in_data12),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel13(
    .data_out(data_din13),
    .empty(data_in_empty13), .full(fifo_in_full),
    .data_in(fifo_in_data13),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel14(
    .data_out(data_din14),
    .empty(data_in_empty14), .full(fifo_in_full),
    .data_in(fifo_in_data14),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel15(
    .data_out(data_din15),
    .empty(data_in_empty15), .full(fifo_in_full),
    .data_in(fifo_in_data15),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

//
core_featuremap_conv2d_4_filter9 core_inst(
    .clock(clock),
    .reset(reset),
    // FIFO READ
    .ff_rdata0(data_din0),
    .ff_rdata1(data_din1),
    .ff_rdata2(data_din2),
    .ff_rdata3(data_din3),
    .ff_rdata4(data_din4),
    .ff_rdata5(data_din5),
    .ff_rdata6(data_din6),
    .ff_rdata7(data_din7),
    .ff_rdata8(data_din8),
    .ff_rdata9(data_din9),
    .ff_rdata10(data_din10),
    .ff_rdata11(data_din11),
    .ff_rdata12(data_din12),
    .ff_rdata13(data_din13),
    .ff_rdata14(data_din14),
    .ff_rdata15(data_din15),

    .ff_empty0(data_in_empty0),
    .ff_empty1(data_in_empty1),
    .ff_empty2(data_in_empty2),
    .ff_empty3(data_in_empty3),
    .ff_empty4(data_in_empty4),
    .ff_empty5(data_in_empty5),
    .ff_empty6(data_in_empty6),
    .ff_empty7(data_in_empty7),
    .ff_empty8(data_in_empty8),
    .ff_empty9(data_in_empty9),
    .ff_empty10(data_in_empty10),
    .ff_empty11(data_in_empty11),
    .ff_empty12(data_in_empty12),
    .ff_empty13(data_in_empty13),
    .ff_empty14(data_in_empty14),
    .ff_empty15(data_in_empty15),

    .ff_rdreq(data_rdreq),
    // FIFO WRITE
    .ff_wdata(data_out),
    .ff_wrreq(data_out_wrreq),
    .ff_full(data_out_full)
);
//
fifo_32b fifo_out_inst(
	.clock(clock),
	.data(data_out),
	.wrreq(data_out_wrreq),
	.almost_full(data_out_full),
	.rdreq(fifo_out_rdreq),	
	.almost_empty(fifo_out_empty),
	.q(fifo_out_data)
	);
endmodule
////////////////////////////////////////// FILTER 10 //////////////////////////////////////////
module vip_top_featuremap_conv2d_4_filter10 (
    clock,
    reset,
    //
    fifo_in_data0  ,
    fifo_in_data1  ,
    fifo_in_data2  ,
    fifo_in_data3  ,
    fifo_in_data4  ,
    fifo_in_data5  ,
    fifo_in_data6  ,
    fifo_in_data7  ,
    fifo_in_data8  ,
    fifo_in_data9  ,
    fifo_in_data10  ,
    fifo_in_data11  ,
    fifo_in_data12  ,
    fifo_in_data13  ,
    fifo_in_data14  ,
    fifo_in_data15  ,

    fifo_in_wrreq , 
    fifo_in_full  ,  
    //
    fifo_out_data  ,     
    fifo_out_rdreq ,    
    fifo_out_empty 
);
parameter DWIDTH = 32;
//parameter DEPTH_WIDTH = 64;
//
input    clock;
input    reset;
//
input [DWIDTH-1:0]	    fifo_in_data0;
input [DWIDTH-1:0]	    fifo_in_data1;
input [DWIDTH-1:0]	    fifo_in_data2;
input [DWIDTH-1:0]	    fifo_in_data3;
input [DWIDTH-1:0]	    fifo_in_data4;
input [DWIDTH-1:0]	    fifo_in_data5;
input [DWIDTH-1:0]	    fifo_in_data6;
input [DWIDTH-1:0]	    fifo_in_data7;
input [DWIDTH-1:0]	    fifo_in_data8;
input [DWIDTH-1:0]	    fifo_in_data9;
input [DWIDTH-1:0]	    fifo_in_data10;
input [DWIDTH-1:0]	    fifo_in_data11;
input [DWIDTH-1:0]	    fifo_in_data12;
input [DWIDTH-1:0]	    fifo_in_data13;
input [DWIDTH-1:0]	    fifo_in_data14;
input [DWIDTH-1:0]	    fifo_in_data15;

input                   fifo_in_wrreq;
output                  fifo_in_full;  
//
output [DWIDTH-1:0]     fifo_out_data  ;     
input    				fifo_out_rdreq ;  
output    				fifo_out_empty;
//------------------------------------------------------------------
wire [DWIDTH-1:0]       data_din0;
wire [DWIDTH-1:0]       data_din1;
wire [DWIDTH-1:0]       data_din2;
wire [DWIDTH-1:0]       data_din3;
wire [DWIDTH-1:0]       data_din4;
wire [DWIDTH-1:0]       data_din5;
wire [DWIDTH-1:0]       data_din6;
wire [DWIDTH-1:0]       data_din7;
wire [DWIDTH-1:0]       data_din8;
wire [DWIDTH-1:0]       data_din9;
wire [DWIDTH-1:0]       data_din10;
wire [DWIDTH-1:0]       data_din11;
wire [DWIDTH-1:0]       data_din12;
wire [DWIDTH-1:0]       data_din13;
wire [DWIDTH-1:0]       data_din14;
wire [DWIDTH-1:0]       data_din15;

wire 					data_in_empty0;
wire 					data_in_empty1;
wire 					data_in_empty2;
wire 					data_in_empty3;
wire 					data_in_empty4;
wire 					data_in_empty5;
wire 					data_in_empty6;
wire 					data_in_empty7;
wire 					data_in_empty8;
wire 					data_in_empty9;
wire 					data_in_empty10;
wire 					data_in_empty11;
wire 					data_in_empty12;
wire 					data_in_empty13;
wire 					data_in_empty14;
wire 					data_in_empty15;

wire 					data_rdreq;
//------- write result to FIFO-----------------------------
wire [DWIDTH-1:0]       data_out;
wire 					data_out_full;
wire 					data_out_wrreq;

//
fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel0(
    .data_out(data_din0),
    .empty(data_in_empty0), .full(fifo_in_full),
    .data_in(fifo_in_data0),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel1(
    .data_out(data_din1),
    .empty(data_in_empty1), .full(fifo_in_full),
    .data_in(fifo_in_data1),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel2(
    .data_out(data_din2),
    .empty(data_in_empty2), .full(fifo_in_full),
    .data_in(fifo_in_data2),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel3(
    .data_out(data_din3),
    .empty(data_in_empty3), .full(fifo_in_full),
    .data_in(fifo_in_data3),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel4(
    .data_out(data_din4),
    .empty(data_in_empty4), .full(fifo_in_full),
    .data_in(fifo_in_data4),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel5(
    .data_out(data_din5),
    .empty(data_in_empty5), .full(fifo_in_full),
    .data_in(fifo_in_data5),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel6(
    .data_out(data_din6),
    .empty(data_in_empty6), .full(fifo_in_full),
    .data_in(fifo_in_data6),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel7(
    .data_out(data_din7),
    .empty(data_in_empty7), .full(fifo_in_full),
    .data_in(fifo_in_data7),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel8(
    .data_out(data_din8),
    .empty(data_in_empty8), .full(fifo_in_full),
    .data_in(fifo_in_data8),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel9(
    .data_out(data_din9),
    .empty(data_in_empty9), .full(fifo_in_full),
    .data_in(fifo_in_data9),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel10(
    .data_out(data_din10),
    .empty(data_in_empty10), .full(fifo_in_full),
    .data_in(fifo_in_data10),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel11(
    .data_out(data_din11),
    .empty(data_in_empty11), .full(fifo_in_full),
    .data_in(fifo_in_data11),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel12(
    .data_out(data_din12),
    .empty(data_in_empty12), .full(fifo_in_full),
    .data_in(fifo_in_data12),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel13(
    .data_out(data_din13),
    .empty(data_in_empty13), .full(fifo_in_full),
    .data_in(fifo_in_data13),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel14(
    .data_out(data_din14),
    .empty(data_in_empty14), .full(fifo_in_full),
    .data_in(fifo_in_data14),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel15(
    .data_out(data_din15),
    .empty(data_in_empty15), .full(fifo_in_full),
    .data_in(fifo_in_data15),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

//
core_featuremap_conv2d_4_filter10 core_inst(
    .clock(clock),
    .reset(reset),
    // FIFO READ
    .ff_rdata0(data_din0),
    .ff_rdata1(data_din1),
    .ff_rdata2(data_din2),
    .ff_rdata3(data_din3),
    .ff_rdata4(data_din4),
    .ff_rdata5(data_din5),
    .ff_rdata6(data_din6),
    .ff_rdata7(data_din7),
    .ff_rdata8(data_din8),
    .ff_rdata9(data_din9),
    .ff_rdata10(data_din10),
    .ff_rdata11(data_din11),
    .ff_rdata12(data_din12),
    .ff_rdata13(data_din13),
    .ff_rdata14(data_din14),
    .ff_rdata15(data_din15),

    .ff_empty0(data_in_empty0),
    .ff_empty1(data_in_empty1),
    .ff_empty2(data_in_empty2),
    .ff_empty3(data_in_empty3),
    .ff_empty4(data_in_empty4),
    .ff_empty5(data_in_empty5),
    .ff_empty6(data_in_empty6),
    .ff_empty7(data_in_empty7),
    .ff_empty8(data_in_empty8),
    .ff_empty9(data_in_empty9),
    .ff_empty10(data_in_empty10),
    .ff_empty11(data_in_empty11),
    .ff_empty12(data_in_empty12),
    .ff_empty13(data_in_empty13),
    .ff_empty14(data_in_empty14),
    .ff_empty15(data_in_empty15),

    .ff_rdreq(data_rdreq),
    // FIFO WRITE
    .ff_wdata(data_out),
    .ff_wrreq(data_out_wrreq),
    .ff_full(data_out_full)
);
//
fifo_32b fifo_out_inst(
	.clock(clock),
	.data(data_out),
	.wrreq(data_out_wrreq),
	.almost_full(data_out_full),
	.rdreq(fifo_out_rdreq),	
	.almost_empty(fifo_out_empty),
	.q(fifo_out_data)
	);
endmodule
////////////////////////////////////////// FILTER 11 //////////////////////////////////////////
module vip_top_featuremap_conv2d_4_filter11 (
    clock,
    reset,
    //
    fifo_in_data0  ,
    fifo_in_data1  ,
    fifo_in_data2  ,
    fifo_in_data3  ,
    fifo_in_data4  ,
    fifo_in_data5  ,
    fifo_in_data6  ,
    fifo_in_data7  ,
    fifo_in_data8  ,
    fifo_in_data9  ,
    fifo_in_data10  ,
    fifo_in_data11  ,
    fifo_in_data12  ,
    fifo_in_data13  ,
    fifo_in_data14  ,
    fifo_in_data15  ,

    fifo_in_wrreq , 
    fifo_in_full  ,  
    //
    fifo_out_data  ,     
    fifo_out_rdreq ,    
    fifo_out_empty 
);
parameter DWIDTH = 32;
//parameter DEPTH_WIDTH = 64;
//
input    clock;
input    reset;
//
input [DWIDTH-1:0]	    fifo_in_data0;
input [DWIDTH-1:0]	    fifo_in_data1;
input [DWIDTH-1:0]	    fifo_in_data2;
input [DWIDTH-1:0]	    fifo_in_data3;
input [DWIDTH-1:0]	    fifo_in_data4;
input [DWIDTH-1:0]	    fifo_in_data5;
input [DWIDTH-1:0]	    fifo_in_data6;
input [DWIDTH-1:0]	    fifo_in_data7;
input [DWIDTH-1:0]	    fifo_in_data8;
input [DWIDTH-1:0]	    fifo_in_data9;
input [DWIDTH-1:0]	    fifo_in_data10;
input [DWIDTH-1:0]	    fifo_in_data11;
input [DWIDTH-1:0]	    fifo_in_data12;
input [DWIDTH-1:0]	    fifo_in_data13;
input [DWIDTH-1:0]	    fifo_in_data14;
input [DWIDTH-1:0]	    fifo_in_data15;

input                   fifo_in_wrreq;
output                  fifo_in_full;  
//
output [DWIDTH-1:0]     fifo_out_data  ;     
input    				fifo_out_rdreq ;  
output    				fifo_out_empty;
//------------------------------------------------------------------
wire [DWIDTH-1:0]       data_din0;
wire [DWIDTH-1:0]       data_din1;
wire [DWIDTH-1:0]       data_din2;
wire [DWIDTH-1:0]       data_din3;
wire [DWIDTH-1:0]       data_din4;
wire [DWIDTH-1:0]       data_din5;
wire [DWIDTH-1:0]       data_din6;
wire [DWIDTH-1:0]       data_din7;
wire [DWIDTH-1:0]       data_din8;
wire [DWIDTH-1:0]       data_din9;
wire [DWIDTH-1:0]       data_din10;
wire [DWIDTH-1:0]       data_din11;
wire [DWIDTH-1:0]       data_din12;
wire [DWIDTH-1:0]       data_din13;
wire [DWIDTH-1:0]       data_din14;
wire [DWIDTH-1:0]       data_din15;

wire 					data_in_empty0;
wire 					data_in_empty1;
wire 					data_in_empty2;
wire 					data_in_empty3;
wire 					data_in_empty4;
wire 					data_in_empty5;
wire 					data_in_empty6;
wire 					data_in_empty7;
wire 					data_in_empty8;
wire 					data_in_empty9;
wire 					data_in_empty10;
wire 					data_in_empty11;
wire 					data_in_empty12;
wire 					data_in_empty13;
wire 					data_in_empty14;
wire 					data_in_empty15;

wire 					data_rdreq;
//------- write result to FIFO-----------------------------
wire [DWIDTH-1:0]       data_out;
wire 					data_out_full;
wire 					data_out_wrreq;

//
fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel0(
    .data_out(data_din0),
    .empty(data_in_empty0), .full(fifo_in_full),
    .data_in(fifo_in_data0),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel1(
    .data_out(data_din1),
    .empty(data_in_empty1), .full(fifo_in_full),
    .data_in(fifo_in_data1),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel2(
    .data_out(data_din2),
    .empty(data_in_empty2), .full(fifo_in_full),
    .data_in(fifo_in_data2),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel3(
    .data_out(data_din3),
    .empty(data_in_empty3), .full(fifo_in_full),
    .data_in(fifo_in_data3),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel4(
    .data_out(data_din4),
    .empty(data_in_empty4), .full(fifo_in_full),
    .data_in(fifo_in_data4),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel5(
    .data_out(data_din5),
    .empty(data_in_empty5), .full(fifo_in_full),
    .data_in(fifo_in_data5),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel6(
    .data_out(data_din6),
    .empty(data_in_empty6), .full(fifo_in_full),
    .data_in(fifo_in_data6),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel7(
    .data_out(data_din7),
    .empty(data_in_empty7), .full(fifo_in_full),
    .data_in(fifo_in_data7),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel8(
    .data_out(data_din8),
    .empty(data_in_empty8), .full(fifo_in_full),
    .data_in(fifo_in_data8),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel9(
    .data_out(data_din9),
    .empty(data_in_empty9), .full(fifo_in_full),
    .data_in(fifo_in_data9),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel10(
    .data_out(data_din10),
    .empty(data_in_empty10), .full(fifo_in_full),
    .data_in(fifo_in_data10),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel11(
    .data_out(data_din11),
    .empty(data_in_empty11), .full(fifo_in_full),
    .data_in(fifo_in_data11),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel12(
    .data_out(data_din12),
    .empty(data_in_empty12), .full(fifo_in_full),
    .data_in(fifo_in_data12),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel13(
    .data_out(data_din13),
    .empty(data_in_empty13), .full(fifo_in_full),
    .data_in(fifo_in_data13),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel14(
    .data_out(data_din14),
    .empty(data_in_empty14), .full(fifo_in_full),
    .data_in(fifo_in_data14),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel15(
    .data_out(data_din15),
    .empty(data_in_empty15), .full(fifo_in_full),
    .data_in(fifo_in_data15),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

//
core_featuremap_conv2d_4_filter11 core_inst(
    .clock(clock),
    .reset(reset),
    // FIFO READ
    .ff_rdata0(data_din0),
    .ff_rdata1(data_din1),
    .ff_rdata2(data_din2),
    .ff_rdata3(data_din3),
    .ff_rdata4(data_din4),
    .ff_rdata5(data_din5),
    .ff_rdata6(data_din6),
    .ff_rdata7(data_din7),
    .ff_rdata8(data_din8),
    .ff_rdata9(data_din9),
    .ff_rdata10(data_din10),
    .ff_rdata11(data_din11),
    .ff_rdata12(data_din12),
    .ff_rdata13(data_din13),
    .ff_rdata14(data_din14),
    .ff_rdata15(data_din15),

    .ff_empty0(data_in_empty0),
    .ff_empty1(data_in_empty1),
    .ff_empty2(data_in_empty2),
    .ff_empty3(data_in_empty3),
    .ff_empty4(data_in_empty4),
    .ff_empty5(data_in_empty5),
    .ff_empty6(data_in_empty6),
    .ff_empty7(data_in_empty7),
    .ff_empty8(data_in_empty8),
    .ff_empty9(data_in_empty9),
    .ff_empty10(data_in_empty10),
    .ff_empty11(data_in_empty11),
    .ff_empty12(data_in_empty12),
    .ff_empty13(data_in_empty13),
    .ff_empty14(data_in_empty14),
    .ff_empty15(data_in_empty15),

    .ff_rdreq(data_rdreq),
    // FIFO WRITE
    .ff_wdata(data_out),
    .ff_wrreq(data_out_wrreq),
    .ff_full(data_out_full)
);
//
fifo_32b fifo_out_inst(
	.clock(clock),
	.data(data_out),
	.wrreq(data_out_wrreq),
	.almost_full(data_out_full),
	.rdreq(fifo_out_rdreq),	
	.almost_empty(fifo_out_empty),
	.q(fifo_out_data)
	);
endmodule
////////////////////////////////////////// FILTER 12 //////////////////////////////////////////
module vip_top_featuremap_conv2d_4_filter12 (
    clock,
    reset,
    //
    fifo_in_data0  ,
    fifo_in_data1  ,
    fifo_in_data2  ,
    fifo_in_data3  ,
    fifo_in_data4  ,
    fifo_in_data5  ,
    fifo_in_data6  ,
    fifo_in_data7  ,
    fifo_in_data8  ,
    fifo_in_data9  ,
    fifo_in_data10  ,
    fifo_in_data11  ,
    fifo_in_data12  ,
    fifo_in_data13  ,
    fifo_in_data14  ,
    fifo_in_data15  ,

    fifo_in_wrreq , 
    fifo_in_full  ,  
    //
    fifo_out_data  ,     
    fifo_out_rdreq ,    
    fifo_out_empty 
);
parameter DWIDTH = 32;
//parameter DEPTH_WIDTH = 64;
//
input    clock;
input    reset;
//
input [DWIDTH-1:0]	    fifo_in_data0;
input [DWIDTH-1:0]	    fifo_in_data1;
input [DWIDTH-1:0]	    fifo_in_data2;
input [DWIDTH-1:0]	    fifo_in_data3;
input [DWIDTH-1:0]	    fifo_in_data4;
input [DWIDTH-1:0]	    fifo_in_data5;
input [DWIDTH-1:0]	    fifo_in_data6;
input [DWIDTH-1:0]	    fifo_in_data7;
input [DWIDTH-1:0]	    fifo_in_data8;
input [DWIDTH-1:0]	    fifo_in_data9;
input [DWIDTH-1:0]	    fifo_in_data10;
input [DWIDTH-1:0]	    fifo_in_data11;
input [DWIDTH-1:0]	    fifo_in_data12;
input [DWIDTH-1:0]	    fifo_in_data13;
input [DWIDTH-1:0]	    fifo_in_data14;
input [DWIDTH-1:0]	    fifo_in_data15;

input                   fifo_in_wrreq;
output                  fifo_in_full;  
//
output [DWIDTH-1:0]     fifo_out_data  ;     
input    				fifo_out_rdreq ;  
output    				fifo_out_empty;
//------------------------------------------------------------------
wire [DWIDTH-1:0]       data_din0;
wire [DWIDTH-1:0]       data_din1;
wire [DWIDTH-1:0]       data_din2;
wire [DWIDTH-1:0]       data_din3;
wire [DWIDTH-1:0]       data_din4;
wire [DWIDTH-1:0]       data_din5;
wire [DWIDTH-1:0]       data_din6;
wire [DWIDTH-1:0]       data_din7;
wire [DWIDTH-1:0]       data_din8;
wire [DWIDTH-1:0]       data_din9;
wire [DWIDTH-1:0]       data_din10;
wire [DWIDTH-1:0]       data_din11;
wire [DWIDTH-1:0]       data_din12;
wire [DWIDTH-1:0]       data_din13;
wire [DWIDTH-1:0]       data_din14;
wire [DWIDTH-1:0]       data_din15;

wire 					data_in_empty0;
wire 					data_in_empty1;
wire 					data_in_empty2;
wire 					data_in_empty3;
wire 					data_in_empty4;
wire 					data_in_empty5;
wire 					data_in_empty6;
wire 					data_in_empty7;
wire 					data_in_empty8;
wire 					data_in_empty9;
wire 					data_in_empty10;
wire 					data_in_empty11;
wire 					data_in_empty12;
wire 					data_in_empty13;
wire 					data_in_empty14;
wire 					data_in_empty15;

wire 					data_rdreq;
//------- write result to FIFO-----------------------------
wire [DWIDTH-1:0]       data_out;
wire 					data_out_full;
wire 					data_out_wrreq;

//
fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel0(
    .data_out(data_din0),
    .empty(data_in_empty0), .full(fifo_in_full),
    .data_in(fifo_in_data0),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel1(
    .data_out(data_din1),
    .empty(data_in_empty1), .full(fifo_in_full),
    .data_in(fifo_in_data1),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel2(
    .data_out(data_din2),
    .empty(data_in_empty2), .full(fifo_in_full),
    .data_in(fifo_in_data2),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel3(
    .data_out(data_din3),
    .empty(data_in_empty3), .full(fifo_in_full),
    .data_in(fifo_in_data3),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel4(
    .data_out(data_din4),
    .empty(data_in_empty4), .full(fifo_in_full),
    .data_in(fifo_in_data4),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel5(
    .data_out(data_din5),
    .empty(data_in_empty5), .full(fifo_in_full),
    .data_in(fifo_in_data5),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel6(
    .data_out(data_din6),
    .empty(data_in_empty6), .full(fifo_in_full),
    .data_in(fifo_in_data6),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel7(
    .data_out(data_din7),
    .empty(data_in_empty7), .full(fifo_in_full),
    .data_in(fifo_in_data7),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel8(
    .data_out(data_din8),
    .empty(data_in_empty8), .full(fifo_in_full),
    .data_in(fifo_in_data8),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel9(
    .data_out(data_din9),
    .empty(data_in_empty9), .full(fifo_in_full),
    .data_in(fifo_in_data9),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel10(
    .data_out(data_din10),
    .empty(data_in_empty10), .full(fifo_in_full),
    .data_in(fifo_in_data10),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel11(
    .data_out(data_din11),
    .empty(data_in_empty11), .full(fifo_in_full),
    .data_in(fifo_in_data11),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel12(
    .data_out(data_din12),
    .empty(data_in_empty12), .full(fifo_in_full),
    .data_in(fifo_in_data12),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel13(
    .data_out(data_din13),
    .empty(data_in_empty13), .full(fifo_in_full),
    .data_in(fifo_in_data13),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel14(
    .data_out(data_din14),
    .empty(data_in_empty14), .full(fifo_in_full),
    .data_in(fifo_in_data14),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel15(
    .data_out(data_din15),
    .empty(data_in_empty15), .full(fifo_in_full),
    .data_in(fifo_in_data15),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

//
core_featuremap_conv2d_4_filter12 core_inst(
    .clock(clock),
    .reset(reset),
    // FIFO READ
    .ff_rdata0(data_din0),
    .ff_rdata1(data_din1),
    .ff_rdata2(data_din2),
    .ff_rdata3(data_din3),
    .ff_rdata4(data_din4),
    .ff_rdata5(data_din5),
    .ff_rdata6(data_din6),
    .ff_rdata7(data_din7),
    .ff_rdata8(data_din8),
    .ff_rdata9(data_din9),
    .ff_rdata10(data_din10),
    .ff_rdata11(data_din11),
    .ff_rdata12(data_din12),
    .ff_rdata13(data_din13),
    .ff_rdata14(data_din14),
    .ff_rdata15(data_din15),

    .ff_empty0(data_in_empty0),
    .ff_empty1(data_in_empty1),
    .ff_empty2(data_in_empty2),
    .ff_empty3(data_in_empty3),
    .ff_empty4(data_in_empty4),
    .ff_empty5(data_in_empty5),
    .ff_empty6(data_in_empty6),
    .ff_empty7(data_in_empty7),
    .ff_empty8(data_in_empty8),
    .ff_empty9(data_in_empty9),
    .ff_empty10(data_in_empty10),
    .ff_empty11(data_in_empty11),
    .ff_empty12(data_in_empty12),
    .ff_empty13(data_in_empty13),
    .ff_empty14(data_in_empty14),
    .ff_empty15(data_in_empty15),

    .ff_rdreq(data_rdreq),
    // FIFO WRITE
    .ff_wdata(data_out),
    .ff_wrreq(data_out_wrreq),
    .ff_full(data_out_full)
);
//
fifo_32b fifo_out_inst(
	.clock(clock),
	.data(data_out),
	.wrreq(data_out_wrreq),
	.almost_full(data_out_full),
	.rdreq(fifo_out_rdreq),	
	.almost_empty(fifo_out_empty),
	.q(fifo_out_data)
	);
endmodule
////////////////////////////////////////// FILTER 13 //////////////////////////////////////////
module vip_top_featuremap_conv2d_4_filter13 (
    clock,
    reset,
    //
    fifo_in_data0  ,
    fifo_in_data1  ,
    fifo_in_data2  ,
    fifo_in_data3  ,
    fifo_in_data4  ,
    fifo_in_data5  ,
    fifo_in_data6  ,
    fifo_in_data7  ,
    fifo_in_data8  ,
    fifo_in_data9  ,
    fifo_in_data10  ,
    fifo_in_data11  ,
    fifo_in_data12  ,
    fifo_in_data13  ,
    fifo_in_data14  ,
    fifo_in_data15  ,

    fifo_in_wrreq , 
    fifo_in_full  ,  
    //
    fifo_out_data  ,     
    fifo_out_rdreq ,    
    fifo_out_empty 
);
parameter DWIDTH = 32;
//parameter DEPTH_WIDTH = 64;
//
input    clock;
input    reset;
//
input [DWIDTH-1:0]	    fifo_in_data0;
input [DWIDTH-1:0]	    fifo_in_data1;
input [DWIDTH-1:0]	    fifo_in_data2;
input [DWIDTH-1:0]	    fifo_in_data3;
input [DWIDTH-1:0]	    fifo_in_data4;
input [DWIDTH-1:0]	    fifo_in_data5;
input [DWIDTH-1:0]	    fifo_in_data6;
input [DWIDTH-1:0]	    fifo_in_data7;
input [DWIDTH-1:0]	    fifo_in_data8;
input [DWIDTH-1:0]	    fifo_in_data9;
input [DWIDTH-1:0]	    fifo_in_data10;
input [DWIDTH-1:0]	    fifo_in_data11;
input [DWIDTH-1:0]	    fifo_in_data12;
input [DWIDTH-1:0]	    fifo_in_data13;
input [DWIDTH-1:0]	    fifo_in_data14;
input [DWIDTH-1:0]	    fifo_in_data15;

input                   fifo_in_wrreq;
output                  fifo_in_full;  
//
output [DWIDTH-1:0]     fifo_out_data  ;     
input    				fifo_out_rdreq ;  
output    				fifo_out_empty;
//------------------------------------------------------------------
wire [DWIDTH-1:0]       data_din0;
wire [DWIDTH-1:0]       data_din1;
wire [DWIDTH-1:0]       data_din2;
wire [DWIDTH-1:0]       data_din3;
wire [DWIDTH-1:0]       data_din4;
wire [DWIDTH-1:0]       data_din5;
wire [DWIDTH-1:0]       data_din6;
wire [DWIDTH-1:0]       data_din7;
wire [DWIDTH-1:0]       data_din8;
wire [DWIDTH-1:0]       data_din9;
wire [DWIDTH-1:0]       data_din10;
wire [DWIDTH-1:0]       data_din11;
wire [DWIDTH-1:0]       data_din12;
wire [DWIDTH-1:0]       data_din13;
wire [DWIDTH-1:0]       data_din14;
wire [DWIDTH-1:0]       data_din15;

wire 					data_in_empty0;
wire 					data_in_empty1;
wire 					data_in_empty2;
wire 					data_in_empty3;
wire 					data_in_empty4;
wire 					data_in_empty5;
wire 					data_in_empty6;
wire 					data_in_empty7;
wire 					data_in_empty8;
wire 					data_in_empty9;
wire 					data_in_empty10;
wire 					data_in_empty11;
wire 					data_in_empty12;
wire 					data_in_empty13;
wire 					data_in_empty14;
wire 					data_in_empty15;

wire 					data_rdreq;
//------- write result to FIFO-----------------------------
wire [DWIDTH-1:0]       data_out;
wire 					data_out_full;
wire 					data_out_wrreq;

//
fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel0(
    .data_out(data_din0),
    .empty(data_in_empty0), .full(fifo_in_full),
    .data_in(fifo_in_data0),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel1(
    .data_out(data_din1),
    .empty(data_in_empty1), .full(fifo_in_full),
    .data_in(fifo_in_data1),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel2(
    .data_out(data_din2),
    .empty(data_in_empty2), .full(fifo_in_full),
    .data_in(fifo_in_data2),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel3(
    .data_out(data_din3),
    .empty(data_in_empty3), .full(fifo_in_full),
    .data_in(fifo_in_data3),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel4(
    .data_out(data_din4),
    .empty(data_in_empty4), .full(fifo_in_full),
    .data_in(fifo_in_data4),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel5(
    .data_out(data_din5),
    .empty(data_in_empty5), .full(fifo_in_full),
    .data_in(fifo_in_data5),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel6(
    .data_out(data_din6),
    .empty(data_in_empty6), .full(fifo_in_full),
    .data_in(fifo_in_data6),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel7(
    .data_out(data_din7),
    .empty(data_in_empty7), .full(fifo_in_full),
    .data_in(fifo_in_data7),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel8(
    .data_out(data_din8),
    .empty(data_in_empty8), .full(fifo_in_full),
    .data_in(fifo_in_data8),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel9(
    .data_out(data_din9),
    .empty(data_in_empty9), .full(fifo_in_full),
    .data_in(fifo_in_data9),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel10(
    .data_out(data_din10),
    .empty(data_in_empty10), .full(fifo_in_full),
    .data_in(fifo_in_data10),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel11(
    .data_out(data_din11),
    .empty(data_in_empty11), .full(fifo_in_full),
    .data_in(fifo_in_data11),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel12(
    .data_out(data_din12),
    .empty(data_in_empty12), .full(fifo_in_full),
    .data_in(fifo_in_data12),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel13(
    .data_out(data_din13),
    .empty(data_in_empty13), .full(fifo_in_full),
    .data_in(fifo_in_data13),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel14(
    .data_out(data_din14),
    .empty(data_in_empty14), .full(fifo_in_full),
    .data_in(fifo_in_data14),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel15(
    .data_out(data_din15),
    .empty(data_in_empty15), .full(fifo_in_full),
    .data_in(fifo_in_data15),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

//
core_featuremap_conv2d_4_filter13 core_inst(
    .clock(clock),
    .reset(reset),
    // FIFO READ
    .ff_rdata0(data_din0),
    .ff_rdata1(data_din1),
    .ff_rdata2(data_din2),
    .ff_rdata3(data_din3),
    .ff_rdata4(data_din4),
    .ff_rdata5(data_din5),
    .ff_rdata6(data_din6),
    .ff_rdata7(data_din7),
    .ff_rdata8(data_din8),
    .ff_rdata9(data_din9),
    .ff_rdata10(data_din10),
    .ff_rdata11(data_din11),
    .ff_rdata12(data_din12),
    .ff_rdata13(data_din13),
    .ff_rdata14(data_din14),
    .ff_rdata15(data_din15),

    .ff_empty0(data_in_empty0),
    .ff_empty1(data_in_empty1),
    .ff_empty2(data_in_empty2),
    .ff_empty3(data_in_empty3),
    .ff_empty4(data_in_empty4),
    .ff_empty5(data_in_empty5),
    .ff_empty6(data_in_empty6),
    .ff_empty7(data_in_empty7),
    .ff_empty8(data_in_empty8),
    .ff_empty9(data_in_empty9),
    .ff_empty10(data_in_empty10),
    .ff_empty11(data_in_empty11),
    .ff_empty12(data_in_empty12),
    .ff_empty13(data_in_empty13),
    .ff_empty14(data_in_empty14),
    .ff_empty15(data_in_empty15),

    .ff_rdreq(data_rdreq),
    // FIFO WRITE
    .ff_wdata(data_out),
    .ff_wrreq(data_out_wrreq),
    .ff_full(data_out_full)
);
//
fifo_32b fifo_out_inst(
	.clock(clock),
	.data(data_out),
	.wrreq(data_out_wrreq),
	.almost_full(data_out_full),
	.rdreq(fifo_out_rdreq),	
	.almost_empty(fifo_out_empty),
	.q(fifo_out_data)
	);
endmodule
////////////////////////////////////////// FILTER 14 //////////////////////////////////////////
module vip_top_featuremap_conv2d_4_filter14 (
    clock,
    reset,
    //
    fifo_in_data0  ,
    fifo_in_data1  ,
    fifo_in_data2  ,
    fifo_in_data3  ,
    fifo_in_data4  ,
    fifo_in_data5  ,
    fifo_in_data6  ,
    fifo_in_data7  ,
    fifo_in_data8  ,
    fifo_in_data9  ,
    fifo_in_data10  ,
    fifo_in_data11  ,
    fifo_in_data12  ,
    fifo_in_data13  ,
    fifo_in_data14  ,
    fifo_in_data15  ,

    fifo_in_wrreq , 
    fifo_in_full  ,  
    //
    fifo_out_data  ,     
    fifo_out_rdreq ,    
    fifo_out_empty 
);
parameter DWIDTH = 32;
//parameter DEPTH_WIDTH = 64;
//
input    clock;
input    reset;
//
input [DWIDTH-1:0]	    fifo_in_data0;
input [DWIDTH-1:0]	    fifo_in_data1;
input [DWIDTH-1:0]	    fifo_in_data2;
input [DWIDTH-1:0]	    fifo_in_data3;
input [DWIDTH-1:0]	    fifo_in_data4;
input [DWIDTH-1:0]	    fifo_in_data5;
input [DWIDTH-1:0]	    fifo_in_data6;
input [DWIDTH-1:0]	    fifo_in_data7;
input [DWIDTH-1:0]	    fifo_in_data8;
input [DWIDTH-1:0]	    fifo_in_data9;
input [DWIDTH-1:0]	    fifo_in_data10;
input [DWIDTH-1:0]	    fifo_in_data11;
input [DWIDTH-1:0]	    fifo_in_data12;
input [DWIDTH-1:0]	    fifo_in_data13;
input [DWIDTH-1:0]	    fifo_in_data14;
input [DWIDTH-1:0]	    fifo_in_data15;

input                   fifo_in_wrreq;
output                  fifo_in_full;  
//
output [DWIDTH-1:0]     fifo_out_data  ;     
input    				fifo_out_rdreq ;  
output    				fifo_out_empty;
//------------------------------------------------------------------
wire [DWIDTH-1:0]       data_din0;
wire [DWIDTH-1:0]       data_din1;
wire [DWIDTH-1:0]       data_din2;
wire [DWIDTH-1:0]       data_din3;
wire [DWIDTH-1:0]       data_din4;
wire [DWIDTH-1:0]       data_din5;
wire [DWIDTH-1:0]       data_din6;
wire [DWIDTH-1:0]       data_din7;
wire [DWIDTH-1:0]       data_din8;
wire [DWIDTH-1:0]       data_din9;
wire [DWIDTH-1:0]       data_din10;
wire [DWIDTH-1:0]       data_din11;
wire [DWIDTH-1:0]       data_din12;
wire [DWIDTH-1:0]       data_din13;
wire [DWIDTH-1:0]       data_din14;
wire [DWIDTH-1:0]       data_din15;

wire 					data_in_empty0;
wire 					data_in_empty1;
wire 					data_in_empty2;
wire 					data_in_empty3;
wire 					data_in_empty4;
wire 					data_in_empty5;
wire 					data_in_empty6;
wire 					data_in_empty7;
wire 					data_in_empty8;
wire 					data_in_empty9;
wire 					data_in_empty10;
wire 					data_in_empty11;
wire 					data_in_empty12;
wire 					data_in_empty13;
wire 					data_in_empty14;
wire 					data_in_empty15;

wire 					data_rdreq;
//------- write result to FIFO-----------------------------
wire [DWIDTH-1:0]       data_out;
wire 					data_out_full;
wire 					data_out_wrreq;

//
fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel0(
    .data_out(data_din0),
    .empty(data_in_empty0), .full(fifo_in_full),
    .data_in(fifo_in_data0),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel1(
    .data_out(data_din1),
    .empty(data_in_empty1), .full(fifo_in_full),
    .data_in(fifo_in_data1),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel2(
    .data_out(data_din2),
    .empty(data_in_empty2), .full(fifo_in_full),
    .data_in(fifo_in_data2),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel3(
    .data_out(data_din3),
    .empty(data_in_empty3), .full(fifo_in_full),
    .data_in(fifo_in_data3),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel4(
    .data_out(data_din4),
    .empty(data_in_empty4), .full(fifo_in_full),
    .data_in(fifo_in_data4),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel5(
    .data_out(data_din5),
    .empty(data_in_empty5), .full(fifo_in_full),
    .data_in(fifo_in_data5),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel6(
    .data_out(data_din6),
    .empty(data_in_empty6), .full(fifo_in_full),
    .data_in(fifo_in_data6),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel7(
    .data_out(data_din7),
    .empty(data_in_empty7), .full(fifo_in_full),
    .data_in(fifo_in_data7),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel8(
    .data_out(data_din8),
    .empty(data_in_empty8), .full(fifo_in_full),
    .data_in(fifo_in_data8),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel9(
    .data_out(data_din9),
    .empty(data_in_empty9), .full(fifo_in_full),
    .data_in(fifo_in_data9),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel10(
    .data_out(data_din10),
    .empty(data_in_empty10), .full(fifo_in_full),
    .data_in(fifo_in_data10),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel11(
    .data_out(data_din11),
    .empty(data_in_empty11), .full(fifo_in_full),
    .data_in(fifo_in_data11),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel12(
    .data_out(data_din12),
    .empty(data_in_empty12), .full(fifo_in_full),
    .data_in(fifo_in_data12),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel13(
    .data_out(data_din13),
    .empty(data_in_empty13), .full(fifo_in_full),
    .data_in(fifo_in_data13),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel14(
    .data_out(data_din14),
    .empty(data_in_empty14), .full(fifo_in_full),
    .data_in(fifo_in_data14),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel15(
    .data_out(data_din15),
    .empty(data_in_empty15), .full(fifo_in_full),
    .data_in(fifo_in_data15),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

//
core_featuremap_conv2d_4_filter14 core_inst(
    .clock(clock),
    .reset(reset),
    // FIFO READ
    .ff_rdata0(data_din0),
    .ff_rdata1(data_din1),
    .ff_rdata2(data_din2),
    .ff_rdata3(data_din3),
    .ff_rdata4(data_din4),
    .ff_rdata5(data_din5),
    .ff_rdata6(data_din6),
    .ff_rdata7(data_din7),
    .ff_rdata8(data_din8),
    .ff_rdata9(data_din9),
    .ff_rdata10(data_din10),
    .ff_rdata11(data_din11),
    .ff_rdata12(data_din12),
    .ff_rdata13(data_din13),
    .ff_rdata14(data_din14),
    .ff_rdata15(data_din15),

    .ff_empty0(data_in_empty0),
    .ff_empty1(data_in_empty1),
    .ff_empty2(data_in_empty2),
    .ff_empty3(data_in_empty3),
    .ff_empty4(data_in_empty4),
    .ff_empty5(data_in_empty5),
    .ff_empty6(data_in_empty6),
    .ff_empty7(data_in_empty7),
    .ff_empty8(data_in_empty8),
    .ff_empty9(data_in_empty9),
    .ff_empty10(data_in_empty10),
    .ff_empty11(data_in_empty11),
    .ff_empty12(data_in_empty12),
    .ff_empty13(data_in_empty13),
    .ff_empty14(data_in_empty14),
    .ff_empty15(data_in_empty15),

    .ff_rdreq(data_rdreq),
    // FIFO WRITE
    .ff_wdata(data_out),
    .ff_wrreq(data_out_wrreq),
    .ff_full(data_out_full)
);
//
fifo_32b fifo_out_inst(
	.clock(clock),
	.data(data_out),
	.wrreq(data_out_wrreq),
	.almost_full(data_out_full),
	.rdreq(fifo_out_rdreq),	
	.almost_empty(fifo_out_empty),
	.q(fifo_out_data)
	);
endmodule
////////////////////////////////////////// FILTER 15 //////////////////////////////////////////
module vip_top_featuremap_conv2d_4_filter15 (
    clock,
    reset,
    //
    fifo_in_data0  ,
    fifo_in_data1  ,
    fifo_in_data2  ,
    fifo_in_data3  ,
    fifo_in_data4  ,
    fifo_in_data5  ,
    fifo_in_data6  ,
    fifo_in_data7  ,
    fifo_in_data8  ,
    fifo_in_data9  ,
    fifo_in_data10  ,
    fifo_in_data11  ,
    fifo_in_data12  ,
    fifo_in_data13  ,
    fifo_in_data14  ,
    fifo_in_data15  ,

    fifo_in_wrreq , 
    fifo_in_full  ,  
    //
    fifo_out_data  ,     
    fifo_out_rdreq ,    
    fifo_out_empty 
);
parameter DWIDTH = 32;
//parameter DEPTH_WIDTH = 64;
//
input    clock;
input    reset;
//
input [DWIDTH-1:0]	    fifo_in_data0;
input [DWIDTH-1:0]	    fifo_in_data1;
input [DWIDTH-1:0]	    fifo_in_data2;
input [DWIDTH-1:0]	    fifo_in_data3;
input [DWIDTH-1:0]	    fifo_in_data4;
input [DWIDTH-1:0]	    fifo_in_data5;
input [DWIDTH-1:0]	    fifo_in_data6;
input [DWIDTH-1:0]	    fifo_in_data7;
input [DWIDTH-1:0]	    fifo_in_data8;
input [DWIDTH-1:0]	    fifo_in_data9;
input [DWIDTH-1:0]	    fifo_in_data10;
input [DWIDTH-1:0]	    fifo_in_data11;
input [DWIDTH-1:0]	    fifo_in_data12;
input [DWIDTH-1:0]	    fifo_in_data13;
input [DWIDTH-1:0]	    fifo_in_data14;
input [DWIDTH-1:0]	    fifo_in_data15;

input                   fifo_in_wrreq;
output                  fifo_in_full;  
//
output [DWIDTH-1:0]     fifo_out_data  ;     
input    				fifo_out_rdreq ;  
output    				fifo_out_empty;
//------------------------------------------------------------------
wire [DWIDTH-1:0]       data_din0;
wire [DWIDTH-1:0]       data_din1;
wire [DWIDTH-1:0]       data_din2;
wire [DWIDTH-1:0]       data_din3;
wire [DWIDTH-1:0]       data_din4;
wire [DWIDTH-1:0]       data_din5;
wire [DWIDTH-1:0]       data_din6;
wire [DWIDTH-1:0]       data_din7;
wire [DWIDTH-1:0]       data_din8;
wire [DWIDTH-1:0]       data_din9;
wire [DWIDTH-1:0]       data_din10;
wire [DWIDTH-1:0]       data_din11;
wire [DWIDTH-1:0]       data_din12;
wire [DWIDTH-1:0]       data_din13;
wire [DWIDTH-1:0]       data_din14;
wire [DWIDTH-1:0]       data_din15;

wire 					data_in_empty0;
wire 					data_in_empty1;
wire 					data_in_empty2;
wire 					data_in_empty3;
wire 					data_in_empty4;
wire 					data_in_empty5;
wire 					data_in_empty6;
wire 					data_in_empty7;
wire 					data_in_empty8;
wire 					data_in_empty9;
wire 					data_in_empty10;
wire 					data_in_empty11;
wire 					data_in_empty12;
wire 					data_in_empty13;
wire 					data_in_empty14;
wire 					data_in_empty15;

wire 					data_rdreq;
//------- write result to FIFO-----------------------------
wire [DWIDTH-1:0]       data_out;
wire 					data_out_full;
wire 					data_out_wrreq;

//
fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel0(
    .data_out(data_din0),
    .empty(data_in_empty0), .full(fifo_in_full),
    .data_in(fifo_in_data0),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel1(
    .data_out(data_din1),
    .empty(data_in_empty1), .full(fifo_in_full),
    .data_in(fifo_in_data1),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel2(
    .data_out(data_din2),
    .empty(data_in_empty2), .full(fifo_in_full),
    .data_in(fifo_in_data2),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel3(
    .data_out(data_din3),
    .empty(data_in_empty3), .full(fifo_in_full),
    .data_in(fifo_in_data3),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel4(
    .data_out(data_din4),
    .empty(data_in_empty4), .full(fifo_in_full),
    .data_in(fifo_in_data4),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel5(
    .data_out(data_din5),
    .empty(data_in_empty5), .full(fifo_in_full),
    .data_in(fifo_in_data5),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel6(
    .data_out(data_din6),
    .empty(data_in_empty6), .full(fifo_in_full),
    .data_in(fifo_in_data6),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel7(
    .data_out(data_din7),
    .empty(data_in_empty7), .full(fifo_in_full),
    .data_in(fifo_in_data7),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel8(
    .data_out(data_din8),
    .empty(data_in_empty8), .full(fifo_in_full),
    .data_in(fifo_in_data8),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel9(
    .data_out(data_din9),
    .empty(data_in_empty9), .full(fifo_in_full),
    .data_in(fifo_in_data9),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel10(
    .data_out(data_din10),
    .empty(data_in_empty10), .full(fifo_in_full),
    .data_in(fifo_in_data10),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel11(
    .data_out(data_din11),
    .empty(data_in_empty11), .full(fifo_in_full),
    .data_in(fifo_in_data11),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel12(
    .data_out(data_din12),
    .empty(data_in_empty12), .full(fifo_in_full),
    .data_in(fifo_in_data12),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel13(
    .data_out(data_din13),
    .empty(data_in_empty13), .full(fifo_in_full),
    .data_in(fifo_in_data13),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel14(
    .data_out(data_din14),
    .empty(data_in_empty14), .full(fifo_in_full),
    .data_in(fifo_in_data14),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(6272)
)fifo_in_channel15(
    .data_out(data_din15),
    .empty(data_in_empty15), .full(fifo_in_full),
    .data_in(fifo_in_data15),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

//
core_featuremap_conv2d_4_filter15 core_inst(
    .clock(clock),
    .reset(reset),
    // FIFO READ
    .ff_rdata0(data_din0),
    .ff_rdata1(data_din1),
    .ff_rdata2(data_din2),
    .ff_rdata3(data_din3),
    .ff_rdata4(data_din4),
    .ff_rdata5(data_din5),
    .ff_rdata6(data_din6),
    .ff_rdata7(data_din7),
    .ff_rdata8(data_din8),
    .ff_rdata9(data_din9),
    .ff_rdata10(data_din10),
    .ff_rdata11(data_din11),
    .ff_rdata12(data_din12),
    .ff_rdata13(data_din13),
    .ff_rdata14(data_din14),
    .ff_rdata15(data_din15),

    .ff_empty0(data_in_empty0),
    .ff_empty1(data_in_empty1),
    .ff_empty2(data_in_empty2),
    .ff_empty3(data_in_empty3),
    .ff_empty4(data_in_empty4),
    .ff_empty5(data_in_empty5),
    .ff_empty6(data_in_empty6),
    .ff_empty7(data_in_empty7),
    .ff_empty8(data_in_empty8),
    .ff_empty9(data_in_empty9),
    .ff_empty10(data_in_empty10),
    .ff_empty11(data_in_empty11),
    .ff_empty12(data_in_empty12),
    .ff_empty13(data_in_empty13),
    .ff_empty14(data_in_empty14),
    .ff_empty15(data_in_empty15),

    .ff_rdreq(data_rdreq),
    // FIFO WRITE
    .ff_wdata(data_out),
    .ff_wrreq(data_out_wrreq),
    .ff_full(data_out_full)
);
//
fifo_32b fifo_out_inst(
	.clock(clock),
	.data(data_out),
	.wrreq(data_out_wrreq),
	.almost_full(data_out_full),
	.rdreq(fifo_out_rdreq),	
	.almost_empty(fifo_out_empty),
	.q(fifo_out_data)
	);
endmodule