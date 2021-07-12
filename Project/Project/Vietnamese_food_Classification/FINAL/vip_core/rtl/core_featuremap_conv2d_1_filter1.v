module core_featuremap_conv2d_1_filter1 (
    clock,
    reset,
    // FIFO READ
    ff_rdata0,
    ff_rdata1,
    ff_rdata2,
    ff_rdata3,
    ff_rdata4,
    ff_rdata5,
    ff_rdata6,
    ff_rdata7,

    ff_empty0,
    ff_empty1,
    ff_empty2,
    ff_empty3,
    ff_empty4,
    ff_empty5,
    ff_empty6,
    ff_empty7,

    ff_rdreq,
    
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
input [DWIDTH-1:0]   ff_rdata0;
input [DWIDTH-1:0]   ff_rdata1;
input [DWIDTH-1:0]   ff_rdata2;
input [DWIDTH-1:0]   ff_rdata3;
input [DWIDTH-1:0]   ff_rdata4;
input [DWIDTH-1:0]   ff_rdata5;
input [DWIDTH-1:0]   ff_rdata6;
input [DWIDTH-1:0]   ff_rdata7;

input                ff_empty0;
input                ff_empty1;
input                ff_empty2;
input                ff_empty3;
input                ff_empty4;
input                ff_empty5;
input                ff_empty6;
input                ff_empty7;

output               ff_rdreq;
// FIFO WRITE
output [DWIDTH-1:0]   ff_wdata;
output                ff_wrreq;
input                 ff_full;
//

featuremap_conv2d_1_filter1 inst(
    .clk(clock),
    .rst(reset), 

    .data_in_channel0(ff_rdata0),
    .data_in_channel1(ff_rdata1),
    .data_in_channel2(ff_rdata2),
    .data_in_channel3(ff_rdata3),
    .data_in_channel4(ff_rdata4),
    .data_in_channel5(ff_rdata5),
    .data_in_channel6(ff_rdata6),
    .data_in_channel7(ff_rdata7),

    .data_fifo_empty0(ff_empty0),
    .data_fifo_empty1(ff_empty1),
    .data_fifo_empty2(ff_empty2),
    .data_fifo_empty3(ff_empty3),
    .data_fifo_empty4(ff_empty4),
    .data_fifo_empty5(ff_empty5),
    .data_fifo_empty6(ff_empty6),
    .data_fifo_empty7(ff_empty7),

    .data_out(ff_wdata),
    .valid_out(ff_wrreq),
    .rdreq(ff_rdreq)
);

endmodule