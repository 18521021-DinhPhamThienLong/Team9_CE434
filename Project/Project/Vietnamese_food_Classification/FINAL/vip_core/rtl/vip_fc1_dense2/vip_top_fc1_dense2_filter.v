module vip_top_fc1_dense2_filter0(
    clock,
    reset,
    //
    fifo_in_data0 ,
    fifo_in_data1 ,
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
input [DWIDTH-1:0]	fifo_in_data0,
                    fifo_in_data1;
input               fifo_in_wrreq;
output              fifo_in_full;  
//
output [DWIDTH-1:0]         fifo_out_data  ;     
input    					fifo_out_rdreq ;  
output    					fifo_out_empty;
//------------------------------------------------------------------
wire [DWIDTH-1:0]               data_din0,
                                data_din1;

wire 							data_in_empty0, 
                                data_in_empty1;

wire 							data_rdreq;
//------- write result to FIFO-----------------------------
wire [DWIDTH-1:0]               data_out;
wire 							data_out_full;
wire 							data_out_wrreq;

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(32)
)fifo_in_inst0(
    .data_out(data_din0),
    .empty(data_in_empty0), .full(fifo_in_full),
    .data_in(fifo_in_data0),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(32)
)fifo_in_inst1(
    .data_out(data_din1),
    .empty(data_in_empty1), .full(fifo_in_full),
    .data_in(fifo_in_data1),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

core_fc1_dense2_filter0 core_inst0(
    .clock(clock),
    .reset(reset),
    // FIFO READ
    .ff_rdata0(data_din0),
    .ff_rdata1(data_din1),

    .ff_empty0(data_in_empty0),
    .ff_empty1(data_in_empty1),

    .ff_rdreq(data_rdreq),
    
    // FIFO WRITE
    .ff_wdata(data_out),
    .ff_wrreq(data_out_wrreq),
    .ff_full(data_out_full)
);

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

module vip_top_fc1_dense2_filter1(
    clock,
    reset,
    //
    fifo_in_data0 ,
    fifo_in_data1 ,
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
input [DWIDTH-1:0]	fifo_in_data0,
                    fifo_in_data1;
input               fifo_in_wrreq;
output              fifo_in_full;  
//
output [DWIDTH-1:0]         fifo_out_data  ;     
input    					fifo_out_rdreq ;  
output    					fifo_out_empty;
//------------------------------------------------------------------
wire [DWIDTH-1:0]               data_din0,
                                data_din1;

wire 							data_in_empty0, 
                                data_in_empty1;

wire 							data_rdreq;
//------- write result to FIFO-----------------------------
wire [DWIDTH-1:0]               data_out;
wire 							data_out_full;
wire 							data_out_wrreq;

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(32)
)fifo_in_inst0(
    .data_out(data_din0),
    .empty(data_in_empty0), .full(fifo_in_full),
    .data_in(fifo_in_data0),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(32)
)fifo_in_inst1(
    .data_out(data_din1),
    .empty(data_in_empty1), .full(fifo_in_full),
    .data_in(fifo_in_data1),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

core_fc1_dense2_filter1 core_inst1(
    .clock(clock),
    .reset(reset),
    // FIFO READ
    .ff_rdata0(data_din0),
    .ff_rdata1(data_din1),

    .ff_empty0(data_in_empty0),
    .ff_empty1(data_in_empty1),

    .ff_rdreq(data_rdreq),
    
    // FIFO WRITE
    .ff_wdata(data_out),
    .ff_wrreq(data_out_wrreq),
    .ff_full(data_out_full)
);

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
