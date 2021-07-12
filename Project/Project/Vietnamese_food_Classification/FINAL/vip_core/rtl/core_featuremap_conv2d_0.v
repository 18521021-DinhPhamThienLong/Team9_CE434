////////////////////////////////////////// FILTER 0 //////////////////////////////////////////
module core_featuremap_conv2d_0_filter0 (
    clock,
    reset,
    // FIFO READ
    ff_rdata,
    ff_rdreq,
    ff_empty,
    // FIFO WRITE
    ff_wdata,
    ff_wrreq,
    ff_full
);
//
parameter  DWIDTH = 32;
//
input   clock;
input   reset;
// FIFO READ
input [DWIDTH*3-1:0] ff_rdata;
output               ff_rdreq;
input                ff_empty;
// FIFO WRITE
output [DWIDTH-1:0]   ff_wdata;
output                ff_wrreq;
input                 ff_full;
//

featuremap_conv2d_0_filter0 inst(
    .clk(clock),
    .rst(reset), 

    .data_in(ff_rdata),
    .data_fifo_empty(ff_empty),

    .data_out(ff_wdata),
    .valid_out(ff_wrreq),
    .rdreq(ff_rdreq)
);

endmodule
////////////////////////////////////////// FILTER 1 //////////////////////////////////////////
module core_featuremap_conv2d_0_filter1 (
    clock,
    reset,
    // FIFO READ
    ff_rdata,
    ff_rdreq,
    ff_empty,
    // FIFO WRITE
    ff_wdata,
    ff_wrreq,
    ff_full
);
//
parameter  DWIDTH = 32;
//
input   clock;
input   reset;
// FIFO READ
input [DWIDTH*3-1:0] ff_rdata;
output               ff_rdreq;
input                ff_empty;
// FIFO WRITE
output [DWIDTH-1:0]   ff_wdata;
output                ff_wrreq;
input                 ff_full;
//

featuremap_conv2d_0_filter1 inst(
    .clk(clock),
    .rst(reset), 

    .data_in(ff_rdata),
    .data_fifo_empty(ff_empty),

    .data_out(ff_wdata),
    .valid_out(ff_wrreq),
    .rdreq(ff_rdreq)
);

endmodule
////////////////////////////////////////// FILTER 2 //////////////////////////////////////////
module core_featuremap_conv2d_0_filter2 (
    clock,
    reset,
    // FIFO READ
    ff_rdata,
    ff_rdreq,
    ff_empty,
    // FIFO WRITE
    ff_wdata,
    ff_wrreq,
    ff_full
);
//
parameter  DWIDTH = 32;
//
input   clock;
input   reset;
// FIFO READ
input [DWIDTH*3-1:0] ff_rdata;
output               ff_rdreq;
input                ff_empty;
// FIFO WRITE
output [DWIDTH-1:0]   ff_wdata;
output                ff_wrreq;
input                 ff_full;
//

featuremap_conv2d_0_filter2 inst(
    .clk(clock),
    .rst(reset), 

    .data_in(ff_rdata),
    .data_fifo_empty(ff_empty),

    .data_out(ff_wdata),
    .valid_out(ff_wrreq),
    .rdreq(ff_rdreq)
);

endmodule
////////////////////////////////////////// FILTER 3 //////////////////////////////////////////
module core_featuremap_conv2d_0_filter3 (
    clock,
    reset,
    // FIFO READ
    ff_rdata,
    ff_rdreq,
    ff_empty,
    // FIFO WRITE
    ff_wdata,
    ff_wrreq,
    ff_full
);
//
parameter  DWIDTH = 32;
//
input   clock;
input   reset;
// FIFO READ
input [DWIDTH*3-1:0] ff_rdata;
output               ff_rdreq;
input                ff_empty;
// FIFO WRITE
output [DWIDTH-1:0]   ff_wdata;
output                ff_wrreq;
input                 ff_full;
//

featuremap_conv2d_0_filter3 inst(
    .clk(clock),
    .rst(reset), 

    .data_in(ff_rdata),
    .data_fifo_empty(ff_empty),

    .data_out(ff_wdata),
    .valid_out(ff_wrreq),
    .rdreq(ff_rdreq)
);

endmodule
////////////////////////////////////////// FILTER 4 //////////////////////////////////////////
module core_featuremap_conv2d_0_filter4 (
    clock,
    reset,
    // FIFO READ
    ff_rdata,
    ff_rdreq,
    ff_empty,
    // FIFO WRITE
    ff_wdata,
    ff_wrreq,
    ff_full
);
//
parameter  DWIDTH = 32;
//
input   clock;
input   reset;
// FIFO READ
input [DWIDTH*3-1:0] ff_rdata;
output               ff_rdreq;
input                ff_empty;
// FIFO WRITE
output [DWIDTH-1:0]   ff_wdata;
output                ff_wrreq;
input                 ff_full;
//

featuremap_conv2d_0_filter4 inst(
    .clk(clock),
    .rst(reset), 

    .data_in(ff_rdata),
    .data_fifo_empty(ff_empty),

    .data_out(ff_wdata),
    .valid_out(ff_wrreq),
    .rdreq(ff_rdreq)
);

endmodule
////////////////////////////////////////// FILTER 5 //////////////////////////////////////////
module core_featuremap_conv2d_0_filter5 (
    clock,
    reset,
    // FIFO READ
    ff_rdata,
    ff_rdreq,
    ff_empty,
    // FIFO WRITE
    ff_wdata,
    ff_wrreq,
    ff_full
);
//
parameter  DWIDTH = 32;
//
input   clock;
input   reset;
// FIFO READ
input [DWIDTH*3-1:0] ff_rdata;
output               ff_rdreq;
input                ff_empty;
// FIFO WRITE
output [DWIDTH-1:0]   ff_wdata;
output                ff_wrreq;
input                 ff_full;
//

featuremap_conv2d_0_filter5 inst(
    .clk(clock),
    .rst(reset), 

    .data_in(ff_rdata),
    .data_fifo_empty(ff_empty),

    .data_out(ff_wdata),
    .valid_out(ff_wrreq),
    .rdreq(ff_rdreq)
);

endmodule
////////////////////////////////////////// FILTER 6 //////////////////////////////////////////
module core_featuremap_conv2d_0_filter6 (
    clock,
    reset,
    // FIFO READ
    ff_rdata,
    ff_rdreq,
    ff_empty,
    // FIFO WRITE
    ff_wdata,
    ff_wrreq,
    ff_full
);
//
parameter  DWIDTH = 32;
//
input   clock;
input   reset;
// FIFO READ
input [DWIDTH*3-1:0] ff_rdata;
output               ff_rdreq;
input                ff_empty;
// FIFO WRITE
output [DWIDTH-1:0]   ff_wdata;
output                ff_wrreq;
input                 ff_full;
//

featuremap_conv2d_0_filter6 inst(
    .clk(clock),
    .rst(reset), 

    .data_in(ff_rdata),
    .data_fifo_empty(ff_empty),

    .data_out(ff_wdata),
    .valid_out(ff_wrreq),
    .rdreq(ff_rdreq)
);

endmodule
////////////////////////////////////////// FILTER 7 //////////////////////////////////////////
module core_featuremap_conv2d_0_filter7 (
    clock,
    reset,
    // FIFO READ
    ff_rdata,
    ff_rdreq,
    ff_empty,
    // FIFO WRITE
    ff_wdata,
    ff_wrreq,
    ff_full
);
//
parameter  DWIDTH = 32;
//
input   clock;
input   reset;
// FIFO READ
input [DWIDTH*3-1:0] ff_rdata;
output               ff_rdreq;
input                ff_empty;
// FIFO WRITE
output [DWIDTH-1:0]   ff_wdata;
output                ff_wrreq;
input                 ff_full;
//

featuremap_conv2d_0_filter7 inst(
    .clk(clock),
    .rst(reset), 

    .data_in(ff_rdata),
    .data_fifo_empty(ff_empty),

    .data_out(ff_wdata),
    .valid_out(ff_wrreq),
    .rdreq(ff_rdreq)
);

endmodule