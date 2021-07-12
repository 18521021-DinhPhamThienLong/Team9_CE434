module vip_top_featuremap_conv2d_0_filter1 (
    clock,
    reset,
    //
    fifo_in_data  ,
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
input [DWIDTH*3-1:0]	fifo_in_data;
input               fifo_in_wrreq;
output              fifo_in_full;  
//
output [DWIDTH-1:0] fifo_out_data  ;     
input    						fifo_out_rdreq ;  
output    					fifo_out_empty;
//------------------------------------------------------------------
wire [DWIDTH*3-1:0] data_din;
wire 							data_in_empty;
wire 							data_rdreq;
//------- write result to FIFO-----------------------------
wire [DWIDTH-1:0] data_out;
wire 							data_out_full;
wire 							data_out_wrreq;

//
fifo #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(12544)
)fifo_in_inst(
    .data_out(data_din),
    .empty(data_in_empty), .full(fifo_in_full),
    .data_in(fifo_in_data),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

//
core_featuremap_conv2d_0_filter1 core_inst(
    .clock(clock),
    .reset(reset),
    // FIFO READ
    .ff_rdata(data_din),
    .ff_rdreq(data_rdreq),
    .ff_empty(data_in_empty),
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
