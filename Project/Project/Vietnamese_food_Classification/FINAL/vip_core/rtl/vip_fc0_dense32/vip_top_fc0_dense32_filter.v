module vip_top_fc0_dense32_filter0(
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
    .DEPTH(12544)
)fifo_in_inst0(
    .data_out(data_din0),
    .empty(data_in_empty0), .full(fifo_in_full),
    .data_in(fifo_in_data0),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(12544)
)fifo_in_inst1(
    .data_out(data_din1),
    .empty(data_in_empty1), .full(fifo_in_full),
    .data_in(fifo_in_data1),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

core_fc0_dense32_filter0 core_inst0(
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

module vip_top_fc0_dense32_filter1(
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
    .DEPTH(12544)
)fifo_in_inst0(
    .data_out(data_din0),
    .empty(data_in_empty0), .full(fifo_in_full),
    .data_in(fifo_in_data0),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(12544)
)fifo_in_inst1(
    .data_out(data_din1),
    .empty(data_in_empty1), .full(fifo_in_full),
    .data_in(fifo_in_data1),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

core_fc0_dense32_filter1 core_inst1(
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

module vip_top_fc0_dense32_filter2(
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
    .DEPTH(12544)
)fifo_in_inst0(
    .data_out(data_din0),
    .empty(data_in_empty0), .full(fifo_in_full),
    .data_in(fifo_in_data0),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(12544)
)fifo_in_inst1(
    .data_out(data_din1),
    .empty(data_in_empty1), .full(fifo_in_full),
    .data_in(fifo_in_data1),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

core_fc0_dense32_filter2 core_inst2(
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

module vip_top_fc0_dense32_filter3(
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
    .DEPTH(12544)
)fifo_in_inst0(
    .data_out(data_din0),
    .empty(data_in_empty0), .full(fifo_in_full),
    .data_in(fifo_in_data0),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(12544)
)fifo_in_inst1(
    .data_out(data_din1),
    .empty(data_in_empty1), .full(fifo_in_full),
    .data_in(fifo_in_data1),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

core_fc0_dense32_filter3 core_inst3(
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

module vip_top_fc0_dense32_filter4(
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
    .DEPTH(12544)
)fifo_in_inst0(
    .data_out(data_din0),
    .empty(data_in_empty0), .full(fifo_in_full),
    .data_in(fifo_in_data0),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(12544)
)fifo_in_inst1(
    .data_out(data_din1),
    .empty(data_in_empty1), .full(fifo_in_full),
    .data_in(fifo_in_data1),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

core_fc0_dense32_filter4 core_inst4(
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

module vip_top_fc0_dense32_filter5(
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
    .DEPTH(12544)
)fifo_in_inst0(
    .data_out(data_din0),
    .empty(data_in_empty0), .full(fifo_in_full),
    .data_in(fifo_in_data0),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(12544)
)fifo_in_inst1(
    .data_out(data_din1),
    .empty(data_in_empty1), .full(fifo_in_full),
    .data_in(fifo_in_data1),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

core_fc0_dense32_filter5 core_inst5(
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

module vip_top_fc0_dense32_filter6(
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
    .DEPTH(12544)
)fifo_in_inst0(
    .data_out(data_din0),
    .empty(data_in_empty0), .full(fifo_in_full),
    .data_in(fifo_in_data0),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(12544)
)fifo_in_inst1(
    .data_out(data_din1),
    .empty(data_in_empty1), .full(fifo_in_full),
    .data_in(fifo_in_data1),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

core_fc0_dense32_filter6 core_inst6(
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

module vip_top_fc0_dense32_filter7(
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
    .DEPTH(12544)
)fifo_in_inst0(
    .data_out(data_din0),
    .empty(data_in_empty0), .full(fifo_in_full),
    .data_in(fifo_in_data0),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(12544)
)fifo_in_inst1(
    .data_out(data_din1),
    .empty(data_in_empty1), .full(fifo_in_full),
    .data_in(fifo_in_data1),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

core_fc0_dense32_filter7 core_inst7(
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

module vip_top_fc0_dense32_filter8(
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
    .DEPTH(12544)
)fifo_in_inst0(
    .data_out(data_din0),
    .empty(data_in_empty0), .full(fifo_in_full),
    .data_in(fifo_in_data0),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(12544)
)fifo_in_inst1(
    .data_out(data_din1),
    .empty(data_in_empty1), .full(fifo_in_full),
    .data_in(fifo_in_data1),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

core_fc0_dense32_filter8 core_inst8(
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

module vip_top_fc0_dense32_filter9(
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
    .DEPTH(12544)
)fifo_in_inst0(
    .data_out(data_din0),
    .empty(data_in_empty0), .full(fifo_in_full),
    .data_in(fifo_in_data0),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(12544)
)fifo_in_inst1(
    .data_out(data_din1),
    .empty(data_in_empty1), .full(fifo_in_full),
    .data_in(fifo_in_data1),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

core_fc0_dense32_filter9 core_inst9(
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

module vip_top_fc0_dense32_filter10(
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
    .DEPTH(12544)
)fifo_in_inst0(
    .data_out(data_din0),
    .empty(data_in_empty0), .full(fifo_in_full),
    .data_in(fifo_in_data0),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(12544)
)fifo_in_inst1(
    .data_out(data_din1),
    .empty(data_in_empty1), .full(fifo_in_full),
    .data_in(fifo_in_data1),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

core_fc0_dense32_filter10 core_inst10(
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

module vip_top_fc0_dense32_filter11(
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
    .DEPTH(12544)
)fifo_in_inst0(
    .data_out(data_din0),
    .empty(data_in_empty0), .full(fifo_in_full),
    .data_in(fifo_in_data0),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(12544)
)fifo_in_inst1(
    .data_out(data_din1),
    .empty(data_in_empty1), .full(fifo_in_full),
    .data_in(fifo_in_data1),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

core_fc0_dense32_filter11 core_inst11(
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

module vip_top_fc0_dense32_filter12(
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
    .DEPTH(12544)
)fifo_in_inst0(
    .data_out(data_din0),
    .empty(data_in_empty0), .full(fifo_in_full),
    .data_in(fifo_in_data0),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(12544)
)fifo_in_inst1(
    .data_out(data_din1),
    .empty(data_in_empty1), .full(fifo_in_full),
    .data_in(fifo_in_data1),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

core_fc0_dense32_filter12 core_inst12(
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

module vip_top_fc0_dense32_filter13(
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
    .DEPTH(12544)
)fifo_in_inst0(
    .data_out(data_din0),
    .empty(data_in_empty0), .full(fifo_in_full),
    .data_in(fifo_in_data0),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(12544)
)fifo_in_inst1(
    .data_out(data_din1),
    .empty(data_in_empty1), .full(fifo_in_full),
    .data_in(fifo_in_data1),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

core_fc0_dense32_filter13 core_inst13(
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

module vip_top_fc0_dense32_filter14(
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
    .DEPTH(12544)
)fifo_in_inst0(
    .data_out(data_din0),
    .empty(data_in_empty0), .full(fifo_in_full),
    .data_in(fifo_in_data0),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(12544)
)fifo_in_inst1(
    .data_out(data_din1),
    .empty(data_in_empty1), .full(fifo_in_full),
    .data_in(fifo_in_data1),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

core_fc0_dense32_filter14 core_inst14(
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

module vip_top_fc0_dense32_filter15(
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
    .DEPTH(12544)
)fifo_in_inst0(
    .data_out(data_din0),
    .empty(data_in_empty0), .full(fifo_in_full),
    .data_in(fifo_in_data0),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(12544)
)fifo_in_inst1(
    .data_out(data_din1),
    .empty(data_in_empty1), .full(fifo_in_full),
    .data_in(fifo_in_data1),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

core_fc0_dense32_filter15 core_inst15(
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

module vip_top_fc0_dense32_filter16(
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
    .DEPTH(12544)
)fifo_in_inst0(
    .data_out(data_din0),
    .empty(data_in_empty0), .full(fifo_in_full),
    .data_in(fifo_in_data0),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(12544)
)fifo_in_inst1(
    .data_out(data_din1),
    .empty(data_in_empty1), .full(fifo_in_full),
    .data_in(fifo_in_data1),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

core_fc0_dense32_filter16 core_inst16(
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

module vip_top_fc0_dense32_filter17(
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
    .DEPTH(12544)
)fifo_in_inst0(
    .data_out(data_din0),
    .empty(data_in_empty0), .full(fifo_in_full),
    .data_in(fifo_in_data0),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(12544)
)fifo_in_inst1(
    .data_out(data_din1),
    .empty(data_in_empty1), .full(fifo_in_full),
    .data_in(fifo_in_data1),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

core_fc0_dense32_filter17 core_inst17(
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

module vip_top_fc0_dense32_filter18(
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
    .DEPTH(12544)
)fifo_in_inst0(
    .data_out(data_din0),
    .empty(data_in_empty0), .full(fifo_in_full),
    .data_in(fifo_in_data0),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(12544)
)fifo_in_inst1(
    .data_out(data_din1),
    .empty(data_in_empty1), .full(fifo_in_full),
    .data_in(fifo_in_data1),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

core_fc0_dense32_filter18 core_inst18(
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

module vip_top_fc0_dense32_filter19(
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
    .DEPTH(12544)
)fifo_in_inst0(
    .data_out(data_din0),
    .empty(data_in_empty0), .full(fifo_in_full),
    .data_in(fifo_in_data0),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(12544)
)fifo_in_inst1(
    .data_out(data_din1),
    .empty(data_in_empty1), .full(fifo_in_full),
    .data_in(fifo_in_data1),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

core_fc0_dense32_filter19 core_inst19(
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

module vip_top_fc0_dense32_filter20(
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
    .DEPTH(12544)
)fifo_in_inst0(
    .data_out(data_din0),
    .empty(data_in_empty0), .full(fifo_in_full),
    .data_in(fifo_in_data0),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(12544)
)fifo_in_inst1(
    .data_out(data_din1),
    .empty(data_in_empty1), .full(fifo_in_full),
    .data_in(fifo_in_data1),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

core_fc0_dense32_filter20 core_inst20(
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

module vip_top_fc0_dense32_filter21(
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
    .DEPTH(12544)
)fifo_in_inst0(
    .data_out(data_din0),
    .empty(data_in_empty0), .full(fifo_in_full),
    .data_in(fifo_in_data0),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(12544)
)fifo_in_inst1(
    .data_out(data_din1),
    .empty(data_in_empty1), .full(fifo_in_full),
    .data_in(fifo_in_data1),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

core_fc0_dense32_filter21 core_inst21(
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

module vip_top_fc0_dense32_filter22(
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
    .DEPTH(12544)
)fifo_in_inst0(
    .data_out(data_din0),
    .empty(data_in_empty0), .full(fifo_in_full),
    .data_in(fifo_in_data0),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(12544)
)fifo_in_inst1(
    .data_out(data_din1),
    .empty(data_in_empty1), .full(fifo_in_full),
    .data_in(fifo_in_data1),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

core_fc0_dense32_filter22 core_inst22(
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

module vip_top_fc0_dense32_filter23(
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
    .DEPTH(12544)
)fifo_in_inst0(
    .data_out(data_din0),
    .empty(data_in_empty0), .full(fifo_in_full),
    .data_in(fifo_in_data0),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(12544)
)fifo_in_inst1(
    .data_out(data_din1),
    .empty(data_in_empty1), .full(fifo_in_full),
    .data_in(fifo_in_data1),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

core_fc0_dense32_filter23 core_inst23(
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

module vip_top_fc0_dense32_filter24(
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
    .DEPTH(12544)
)fifo_in_inst0(
    .data_out(data_din0),
    .empty(data_in_empty0), .full(fifo_in_full),
    .data_in(fifo_in_data0),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(12544)
)fifo_in_inst1(
    .data_out(data_din1),
    .empty(data_in_empty1), .full(fifo_in_full),
    .data_in(fifo_in_data1),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

core_fc0_dense32_filter24 core_inst24(
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

module vip_top_fc0_dense32_filter25(
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
    .DEPTH(12544)
)fifo_in_inst0(
    .data_out(data_din0),
    .empty(data_in_empty0), .full(fifo_in_full),
    .data_in(fifo_in_data0),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(12544)
)fifo_in_inst1(
    .data_out(data_din1),
    .empty(data_in_empty1), .full(fifo_in_full),
    .data_in(fifo_in_data1),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

core_fc0_dense32_filter25 core_inst25(
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

module vip_top_fc0_dense32_filter26(
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
    .DEPTH(12544)
)fifo_in_inst0(
    .data_out(data_din0),
    .empty(data_in_empty0), .full(fifo_in_full),
    .data_in(fifo_in_data0),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(12544)
)fifo_in_inst1(
    .data_out(data_din1),
    .empty(data_in_empty1), .full(fifo_in_full),
    .data_in(fifo_in_data1),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

core_fc0_dense32_filter26 core_inst26(
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

module vip_top_fc0_dense32_filter27(
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
    .DEPTH(12544)
)fifo_in_inst0(
    .data_out(data_din0),
    .empty(data_in_empty0), .full(fifo_in_full),
    .data_in(fifo_in_data0),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(12544)
)fifo_in_inst1(
    .data_out(data_din1),
    .empty(data_in_empty1), .full(fifo_in_full),
    .data_in(fifo_in_data1),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

core_fc0_dense32_filter27 core_inst27(
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

module vip_top_fc0_dense32_filter28(
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
    .DEPTH(12544)
)fifo_in_inst0(
    .data_out(data_din0),
    .empty(data_in_empty0), .full(fifo_in_full),
    .data_in(fifo_in_data0),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(12544)
)fifo_in_inst1(
    .data_out(data_din1),
    .empty(data_in_empty1), .full(fifo_in_full),
    .data_in(fifo_in_data1),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

core_fc0_dense32_filter28 core_inst28(
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

module vip_top_fc0_dense32_filter29(
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
    .DEPTH(12544)
)fifo_in_inst0(
    .data_out(data_din0),
    .empty(data_in_empty0), .full(fifo_in_full),
    .data_in(fifo_in_data0),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(12544)
)fifo_in_inst1(
    .data_out(data_din1),
    .empty(data_in_empty1), .full(fifo_in_full),
    .data_in(fifo_in_data1),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

core_fc0_dense32_filter29 core_inst29(
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

module vip_top_fc0_dense32_filter30(
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
    .DEPTH(12544)
)fifo_in_inst0(
    .data_out(data_din0),
    .empty(data_in_empty0), .full(fifo_in_full),
    .data_in(fifo_in_data0),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(12544)
)fifo_in_inst1(
    .data_out(data_din1),
    .empty(data_in_empty1), .full(fifo_in_full),
    .data_in(fifo_in_data1),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

core_fc0_dense32_filter30 core_inst30(
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

module vip_top_fc0_dense32_filter31(
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
    .DEPTH(12544)
)fifo_in_inst0(
    .data_out(data_din0),
    .empty(data_in_empty0), .full(fifo_in_full),
    .data_in(fifo_in_data0),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

fifo_32b_channel #(
    .DATA_WIDTH(DWIDTH),
    .DEPTH(12544)
)fifo_in_inst1(
    .data_out(data_din1),
    .empty(data_in_empty1), .full(fifo_in_full),
    .data_in(fifo_in_data1),
    .wr_req(fifo_in_wrreq), .rd_req(data_rdreq), .rst(reset), .clk(clock)
);

core_fc0_dense32_filter31 core_inst31(
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