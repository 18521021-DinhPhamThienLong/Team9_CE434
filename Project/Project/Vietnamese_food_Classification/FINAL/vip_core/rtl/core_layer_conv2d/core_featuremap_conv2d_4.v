////////////////////////////////////////// FILTER 0 //////////////////////////////////////////
module core_featuremap_conv2d_4_filter0 (
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
    ff_rdata8,
    ff_rdata9,
    ff_rdata10,
    ff_rdata11,
    ff_rdata12,
    ff_rdata13,
    ff_rdata14,
    ff_rdata15,

    ff_empty0,
    ff_empty1,
    ff_empty2,
    ff_empty3,
    ff_empty4,
    ff_empty5,
    ff_empty6,
    ff_empty7,
    ff_empty8,
    ff_empty9,
    ff_empty10,
    ff_empty11,
    ff_empty12,
    ff_empty13,
    ff_empty14,
    ff_empty15,

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
input [DWIDTH-1:0]   ff_rdata8;
input [DWIDTH-1:0]   ff_rdata9;
input [DWIDTH-1:0]   ff_rdata10;
input [DWIDTH-1:0]   ff_rdata11;
input [DWIDTH-1:0]   ff_rdata12;
input [DWIDTH-1:0]   ff_rdata13;
input [DWIDTH-1:0]   ff_rdata14;
input [DWIDTH-1:0]   ff_rdata15;

input                ff_empty0;
input                ff_empty1;
input                ff_empty2;
input                ff_empty3;
input                ff_empty4;
input                ff_empty5;
input                ff_empty6;
input                ff_empty7;
input                ff_empty8;
input                ff_empty9;
input                ff_empty10;
input                ff_empty11;
input                ff_empty12;
input                ff_empty13;
input                ff_empty14;
input                ff_empty15;

output               ff_rdreq;
// FIFO WRITE
output [DWIDTH-1:0]   ff_wdata;
output                ff_wrreq;
input                 ff_full;
//

featuremap_conv2d_4_filter0 inst(
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
    .data_in_channel8(ff_rdata8),
    .data_in_channel9(ff_rdata9),
    .data_in_channel10(ff_rdata10),
    .data_in_channel11(ff_rdata11),
    .data_in_channel12(ff_rdata12),
    .data_in_channel13(ff_rdata13),
    .data_in_channel14(ff_rdata14),
    .data_in_channel15(ff_rdata15),

    .data_fifo_empty0(ff_empty0),
    .data_fifo_empty1(ff_empty1),
    .data_fifo_empty2(ff_empty2),
    .data_fifo_empty3(ff_empty3),
    .data_fifo_empty4(ff_empty4),
    .data_fifo_empty5(ff_empty5),
    .data_fifo_empty6(ff_empty6),
    .data_fifo_empty7(ff_empty7),
    .data_fifo_empty8(ff_empty8),
    .data_fifo_empty9(ff_empty9),
    .data_fifo_empty10(ff_empty10),
    .data_fifo_empty11(ff_empty11),
    .data_fifo_empty12(ff_empty12),
    .data_fifo_empty13(ff_empty13),
    .data_fifo_empty14(ff_empty14),
    .data_fifo_empty15(ff_empty15),

    .data_out(ff_wdata),
    .valid_out(ff_wrreq),
    .rdreq(ff_rdreq)
);

endmodule
////////////////////////////////////////// FILTER 1 //////////////////////////////////////////
module core_featuremap_conv2d_4_filter1 (
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
    ff_rdata8,
    ff_rdata9,
    ff_rdata10,
    ff_rdata11,
    ff_rdata12,
    ff_rdata13,
    ff_rdata14,
    ff_rdata15,

    ff_empty0,
    ff_empty1,
    ff_empty2,
    ff_empty3,
    ff_empty4,
    ff_empty5,
    ff_empty6,
    ff_empty7,
    ff_empty8,
    ff_empty9,
    ff_empty10,
    ff_empty11,
    ff_empty12,
    ff_empty13,
    ff_empty14,
    ff_empty15,

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
input [DWIDTH-1:0]   ff_rdata8;
input [DWIDTH-1:0]   ff_rdata9;
input [DWIDTH-1:0]   ff_rdata10;
input [DWIDTH-1:0]   ff_rdata11;
input [DWIDTH-1:0]   ff_rdata12;
input [DWIDTH-1:0]   ff_rdata13;
input [DWIDTH-1:0]   ff_rdata14;
input [DWIDTH-1:0]   ff_rdata15;

input                ff_empty0;
input                ff_empty1;
input                ff_empty2;
input                ff_empty3;
input                ff_empty4;
input                ff_empty5;
input                ff_empty6;
input                ff_empty7;
input                ff_empty8;
input                ff_empty9;
input                ff_empty10;
input                ff_empty11;
input                ff_empty12;
input                ff_empty13;
input                ff_empty14;
input                ff_empty15;

output               ff_rdreq;
// FIFO WRITE
output [DWIDTH-1:0]   ff_wdata;
output                ff_wrreq;
input                 ff_full;
//

featuremap_conv2d_4_filter1 inst(
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
    .data_in_channel8(ff_rdata8),
    .data_in_channel9(ff_rdata9),
    .data_in_channel10(ff_rdata10),
    .data_in_channel11(ff_rdata11),
    .data_in_channel12(ff_rdata12),
    .data_in_channel13(ff_rdata13),
    .data_in_channel14(ff_rdata14),
    .data_in_channel15(ff_rdata15),

    .data_fifo_empty0(ff_empty0),
    .data_fifo_empty1(ff_empty1),
    .data_fifo_empty2(ff_empty2),
    .data_fifo_empty3(ff_empty3),
    .data_fifo_empty4(ff_empty4),
    .data_fifo_empty5(ff_empty5),
    .data_fifo_empty6(ff_empty6),
    .data_fifo_empty7(ff_empty7),
    .data_fifo_empty8(ff_empty8),
    .data_fifo_empty9(ff_empty9),
    .data_fifo_empty10(ff_empty10),
    .data_fifo_empty11(ff_empty11),
    .data_fifo_empty12(ff_empty12),
    .data_fifo_empty13(ff_empty13),
    .data_fifo_empty14(ff_empty14),
    .data_fifo_empty15(ff_empty15),

    .data_out(ff_wdata),
    .valid_out(ff_wrreq),
    .rdreq(ff_rdreq)
);

endmodule
////////////////////////////////////////// FILTER 2 //////////////////////////////////////////
module core_featuremap_conv2d_4_filter2 (
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
    ff_rdata8,
    ff_rdata9,
    ff_rdata10,
    ff_rdata11,
    ff_rdata12,
    ff_rdata13,
    ff_rdata14,
    ff_rdata15,

    ff_empty0,
    ff_empty1,
    ff_empty2,
    ff_empty3,
    ff_empty4,
    ff_empty5,
    ff_empty6,
    ff_empty7,
    ff_empty8,
    ff_empty9,
    ff_empty10,
    ff_empty11,
    ff_empty12,
    ff_empty13,
    ff_empty14,
    ff_empty15,

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
input [DWIDTH-1:0]   ff_rdata8;
input [DWIDTH-1:0]   ff_rdata9;
input [DWIDTH-1:0]   ff_rdata10;
input [DWIDTH-1:0]   ff_rdata11;
input [DWIDTH-1:0]   ff_rdata12;
input [DWIDTH-1:0]   ff_rdata13;
input [DWIDTH-1:0]   ff_rdata14;
input [DWIDTH-1:0]   ff_rdata15;

input                ff_empty0;
input                ff_empty1;
input                ff_empty2;
input                ff_empty3;
input                ff_empty4;
input                ff_empty5;
input                ff_empty6;
input                ff_empty7;
input                ff_empty8;
input                ff_empty9;
input                ff_empty10;
input                ff_empty11;
input                ff_empty12;
input                ff_empty13;
input                ff_empty14;
input                ff_empty15;

output               ff_rdreq;
// FIFO WRITE
output [DWIDTH-1:0]   ff_wdata;
output                ff_wrreq;
input                 ff_full;
//

featuremap_conv2d_4_filter2 inst(
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
    .data_in_channel8(ff_rdata8),
    .data_in_channel9(ff_rdata9),
    .data_in_channel10(ff_rdata10),
    .data_in_channel11(ff_rdata11),
    .data_in_channel12(ff_rdata12),
    .data_in_channel13(ff_rdata13),
    .data_in_channel14(ff_rdata14),
    .data_in_channel15(ff_rdata15),

    .data_fifo_empty0(ff_empty0),
    .data_fifo_empty1(ff_empty1),
    .data_fifo_empty2(ff_empty2),
    .data_fifo_empty3(ff_empty3),
    .data_fifo_empty4(ff_empty4),
    .data_fifo_empty5(ff_empty5),
    .data_fifo_empty6(ff_empty6),
    .data_fifo_empty7(ff_empty7),
    .data_fifo_empty8(ff_empty8),
    .data_fifo_empty9(ff_empty9),
    .data_fifo_empty10(ff_empty10),
    .data_fifo_empty11(ff_empty11),
    .data_fifo_empty12(ff_empty12),
    .data_fifo_empty13(ff_empty13),
    .data_fifo_empty14(ff_empty14),
    .data_fifo_empty15(ff_empty15),

    .data_out(ff_wdata),
    .valid_out(ff_wrreq),
    .rdreq(ff_rdreq)
);

endmodule
////////////////////////////////////////// FILTER 3 //////////////////////////////////////////
module core_featuremap_conv2d_4_filter3 (
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
    ff_rdata8,
    ff_rdata9,
    ff_rdata10,
    ff_rdata11,
    ff_rdata12,
    ff_rdata13,
    ff_rdata14,
    ff_rdata15,

    ff_empty0,
    ff_empty1,
    ff_empty2,
    ff_empty3,
    ff_empty4,
    ff_empty5,
    ff_empty6,
    ff_empty7,
    ff_empty8,
    ff_empty9,
    ff_empty10,
    ff_empty11,
    ff_empty12,
    ff_empty13,
    ff_empty14,
    ff_empty15,

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
input [DWIDTH-1:0]   ff_rdata8;
input [DWIDTH-1:0]   ff_rdata9;
input [DWIDTH-1:0]   ff_rdata10;
input [DWIDTH-1:0]   ff_rdata11;
input [DWIDTH-1:0]   ff_rdata12;
input [DWIDTH-1:0]   ff_rdata13;
input [DWIDTH-1:0]   ff_rdata14;
input [DWIDTH-1:0]   ff_rdata15;

input                ff_empty0;
input                ff_empty1;
input                ff_empty2;
input                ff_empty3;
input                ff_empty4;
input                ff_empty5;
input                ff_empty6;
input                ff_empty7;
input                ff_empty8;
input                ff_empty9;
input                ff_empty10;
input                ff_empty11;
input                ff_empty12;
input                ff_empty13;
input                ff_empty14;
input                ff_empty15;

output               ff_rdreq;
// FIFO WRITE
output [DWIDTH-1:0]   ff_wdata;
output                ff_wrreq;
input                 ff_full;
//

featuremap_conv2d_4_filter3 inst(
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
    .data_in_channel8(ff_rdata8),
    .data_in_channel9(ff_rdata9),
    .data_in_channel10(ff_rdata10),
    .data_in_channel11(ff_rdata11),
    .data_in_channel12(ff_rdata12),
    .data_in_channel13(ff_rdata13),
    .data_in_channel14(ff_rdata14),
    .data_in_channel15(ff_rdata15),

    .data_fifo_empty0(ff_empty0),
    .data_fifo_empty1(ff_empty1),
    .data_fifo_empty2(ff_empty2),
    .data_fifo_empty3(ff_empty3),
    .data_fifo_empty4(ff_empty4),
    .data_fifo_empty5(ff_empty5),
    .data_fifo_empty6(ff_empty6),
    .data_fifo_empty7(ff_empty7),
    .data_fifo_empty8(ff_empty8),
    .data_fifo_empty9(ff_empty9),
    .data_fifo_empty10(ff_empty10),
    .data_fifo_empty11(ff_empty11),
    .data_fifo_empty12(ff_empty12),
    .data_fifo_empty13(ff_empty13),
    .data_fifo_empty14(ff_empty14),
    .data_fifo_empty15(ff_empty15),

    .data_out(ff_wdata),
    .valid_out(ff_wrreq),
    .rdreq(ff_rdreq)
);

endmodule
////////////////////////////////////////// FILTER 4 //////////////////////////////////////////
module core_featuremap_conv2d_4_filter4 (
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
    ff_rdata8,
    ff_rdata9,
    ff_rdata10,
    ff_rdata11,
    ff_rdata12,
    ff_rdata13,
    ff_rdata14,
    ff_rdata15,

    ff_empty0,
    ff_empty1,
    ff_empty2,
    ff_empty3,
    ff_empty4,
    ff_empty5,
    ff_empty6,
    ff_empty7,
    ff_empty8,
    ff_empty9,
    ff_empty10,
    ff_empty11,
    ff_empty12,
    ff_empty13,
    ff_empty14,
    ff_empty15,

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
input [DWIDTH-1:0]   ff_rdata8;
input [DWIDTH-1:0]   ff_rdata9;
input [DWIDTH-1:0]   ff_rdata10;
input [DWIDTH-1:0]   ff_rdata11;
input [DWIDTH-1:0]   ff_rdata12;
input [DWIDTH-1:0]   ff_rdata13;
input [DWIDTH-1:0]   ff_rdata14;
input [DWIDTH-1:0]   ff_rdata15;

input                ff_empty0;
input                ff_empty1;
input                ff_empty2;
input                ff_empty3;
input                ff_empty4;
input                ff_empty5;
input                ff_empty6;
input                ff_empty7;
input                ff_empty8;
input                ff_empty9;
input                ff_empty10;
input                ff_empty11;
input                ff_empty12;
input                ff_empty13;
input                ff_empty14;
input                ff_empty15;

output               ff_rdreq;
// FIFO WRITE
output [DWIDTH-1:0]   ff_wdata;
output                ff_wrreq;
input                 ff_full;
//

featuremap_conv2d_4_filter4 inst(
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
    .data_in_channel8(ff_rdata8),
    .data_in_channel9(ff_rdata9),
    .data_in_channel10(ff_rdata10),
    .data_in_channel11(ff_rdata11),
    .data_in_channel12(ff_rdata12),
    .data_in_channel13(ff_rdata13),
    .data_in_channel14(ff_rdata14),
    .data_in_channel15(ff_rdata15),

    .data_fifo_empty0(ff_empty0),
    .data_fifo_empty1(ff_empty1),
    .data_fifo_empty2(ff_empty2),
    .data_fifo_empty3(ff_empty3),
    .data_fifo_empty4(ff_empty4),
    .data_fifo_empty5(ff_empty5),
    .data_fifo_empty6(ff_empty6),
    .data_fifo_empty7(ff_empty7),
    .data_fifo_empty8(ff_empty8),
    .data_fifo_empty9(ff_empty9),
    .data_fifo_empty10(ff_empty10),
    .data_fifo_empty11(ff_empty11),
    .data_fifo_empty12(ff_empty12),
    .data_fifo_empty13(ff_empty13),
    .data_fifo_empty14(ff_empty14),
    .data_fifo_empty15(ff_empty15),

    .data_out(ff_wdata),
    .valid_out(ff_wrreq),
    .rdreq(ff_rdreq)
);

endmodule
////////////////////////////////////////// FILTER 5 //////////////////////////////////////////
module core_featuremap_conv2d_4_filter5 (
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
    ff_rdata8,
    ff_rdata9,
    ff_rdata10,
    ff_rdata11,
    ff_rdata12,
    ff_rdata13,
    ff_rdata14,
    ff_rdata15,

    ff_empty0,
    ff_empty1,
    ff_empty2,
    ff_empty3,
    ff_empty4,
    ff_empty5,
    ff_empty6,
    ff_empty7,
    ff_empty8,
    ff_empty9,
    ff_empty10,
    ff_empty11,
    ff_empty12,
    ff_empty13,
    ff_empty14,
    ff_empty15,

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
input [DWIDTH-1:0]   ff_rdata8;
input [DWIDTH-1:0]   ff_rdata9;
input [DWIDTH-1:0]   ff_rdata10;
input [DWIDTH-1:0]   ff_rdata11;
input [DWIDTH-1:0]   ff_rdata12;
input [DWIDTH-1:0]   ff_rdata13;
input [DWIDTH-1:0]   ff_rdata14;
input [DWIDTH-1:0]   ff_rdata15;

input                ff_empty0;
input                ff_empty1;
input                ff_empty2;
input                ff_empty3;
input                ff_empty4;
input                ff_empty5;
input                ff_empty6;
input                ff_empty7;
input                ff_empty8;
input                ff_empty9;
input                ff_empty10;
input                ff_empty11;
input                ff_empty12;
input                ff_empty13;
input                ff_empty14;
input                ff_empty15;

output               ff_rdreq;
// FIFO WRITE
output [DWIDTH-1:0]   ff_wdata;
output                ff_wrreq;
input                 ff_full;
//

featuremap_conv2d_4_filter5 inst(
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
    .data_in_channel8(ff_rdata8),
    .data_in_channel9(ff_rdata9),
    .data_in_channel10(ff_rdata10),
    .data_in_channel11(ff_rdata11),
    .data_in_channel12(ff_rdata12),
    .data_in_channel13(ff_rdata13),
    .data_in_channel14(ff_rdata14),
    .data_in_channel15(ff_rdata15),

    .data_fifo_empty0(ff_empty0),
    .data_fifo_empty1(ff_empty1),
    .data_fifo_empty2(ff_empty2),
    .data_fifo_empty3(ff_empty3),
    .data_fifo_empty4(ff_empty4),
    .data_fifo_empty5(ff_empty5),
    .data_fifo_empty6(ff_empty6),
    .data_fifo_empty7(ff_empty7),
    .data_fifo_empty8(ff_empty8),
    .data_fifo_empty9(ff_empty9),
    .data_fifo_empty10(ff_empty10),
    .data_fifo_empty11(ff_empty11),
    .data_fifo_empty12(ff_empty12),
    .data_fifo_empty13(ff_empty13),
    .data_fifo_empty14(ff_empty14),
    .data_fifo_empty15(ff_empty15),

    .data_out(ff_wdata),
    .valid_out(ff_wrreq),
    .rdreq(ff_rdreq)
);

endmodule
////////////////////////////////////////// FILTER 6 //////////////////////////////////////////
module core_featuremap_conv2d_4_filter6 (
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
    ff_rdata8,
    ff_rdata9,
    ff_rdata10,
    ff_rdata11,
    ff_rdata12,
    ff_rdata13,
    ff_rdata14,
    ff_rdata15,

    ff_empty0,
    ff_empty1,
    ff_empty2,
    ff_empty3,
    ff_empty4,
    ff_empty5,
    ff_empty6,
    ff_empty7,
    ff_empty8,
    ff_empty9,
    ff_empty10,
    ff_empty11,
    ff_empty12,
    ff_empty13,
    ff_empty14,
    ff_empty15,

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
input [DWIDTH-1:0]   ff_rdata8;
input [DWIDTH-1:0]   ff_rdata9;
input [DWIDTH-1:0]   ff_rdata10;
input [DWIDTH-1:0]   ff_rdata11;
input [DWIDTH-1:0]   ff_rdata12;
input [DWIDTH-1:0]   ff_rdata13;
input [DWIDTH-1:0]   ff_rdata14;
input [DWIDTH-1:0]   ff_rdata15;

input                ff_empty0;
input                ff_empty1;
input                ff_empty2;
input                ff_empty3;
input                ff_empty4;
input                ff_empty5;
input                ff_empty6;
input                ff_empty7;
input                ff_empty8;
input                ff_empty9;
input                ff_empty10;
input                ff_empty11;
input                ff_empty12;
input                ff_empty13;
input                ff_empty14;
input                ff_empty15;

output               ff_rdreq;
// FIFO WRITE
output [DWIDTH-1:0]   ff_wdata;
output                ff_wrreq;
input                 ff_full;
//

featuremap_conv2d_4_filter6 inst(
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
    .data_in_channel8(ff_rdata8),
    .data_in_channel9(ff_rdata9),
    .data_in_channel10(ff_rdata10),
    .data_in_channel11(ff_rdata11),
    .data_in_channel12(ff_rdata12),
    .data_in_channel13(ff_rdata13),
    .data_in_channel14(ff_rdata14),
    .data_in_channel15(ff_rdata15),

    .data_fifo_empty0(ff_empty0),
    .data_fifo_empty1(ff_empty1),
    .data_fifo_empty2(ff_empty2),
    .data_fifo_empty3(ff_empty3),
    .data_fifo_empty4(ff_empty4),
    .data_fifo_empty5(ff_empty5),
    .data_fifo_empty6(ff_empty6),
    .data_fifo_empty7(ff_empty7),
    .data_fifo_empty8(ff_empty8),
    .data_fifo_empty9(ff_empty9),
    .data_fifo_empty10(ff_empty10),
    .data_fifo_empty11(ff_empty11),
    .data_fifo_empty12(ff_empty12),
    .data_fifo_empty13(ff_empty13),
    .data_fifo_empty14(ff_empty14),
    .data_fifo_empty15(ff_empty15),

    .data_out(ff_wdata),
    .valid_out(ff_wrreq),
    .rdreq(ff_rdreq)
);

endmodule
////////////////////////////////////////// FILTER 7 //////////////////////////////////////////
module core_featuremap_conv2d_4_filter7 (
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
    ff_rdata8,
    ff_rdata9,
    ff_rdata10,
    ff_rdata11,
    ff_rdata12,
    ff_rdata13,
    ff_rdata14,
    ff_rdata15,

    ff_empty0,
    ff_empty1,
    ff_empty2,
    ff_empty3,
    ff_empty4,
    ff_empty5,
    ff_empty6,
    ff_empty7,
    ff_empty8,
    ff_empty9,
    ff_empty10,
    ff_empty11,
    ff_empty12,
    ff_empty13,
    ff_empty14,
    ff_empty15,

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
input [DWIDTH-1:0]   ff_rdata8;
input [DWIDTH-1:0]   ff_rdata9;
input [DWIDTH-1:0]   ff_rdata10;
input [DWIDTH-1:0]   ff_rdata11;
input [DWIDTH-1:0]   ff_rdata12;
input [DWIDTH-1:0]   ff_rdata13;
input [DWIDTH-1:0]   ff_rdata14;
input [DWIDTH-1:0]   ff_rdata15;

input                ff_empty0;
input                ff_empty1;
input                ff_empty2;
input                ff_empty3;
input                ff_empty4;
input                ff_empty5;
input                ff_empty6;
input                ff_empty7;
input                ff_empty8;
input                ff_empty9;
input                ff_empty10;
input                ff_empty11;
input                ff_empty12;
input                ff_empty13;
input                ff_empty14;
input                ff_empty15;

output               ff_rdreq;
// FIFO WRITE
output [DWIDTH-1:0]   ff_wdata;
output                ff_wrreq;
input                 ff_full;
//

featuremap_conv2d_4_filter7 inst(
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
    .data_in_channel8(ff_rdata8),
    .data_in_channel9(ff_rdata9),
    .data_in_channel10(ff_rdata10),
    .data_in_channel11(ff_rdata11),
    .data_in_channel12(ff_rdata12),
    .data_in_channel13(ff_rdata13),
    .data_in_channel14(ff_rdata14),
    .data_in_channel15(ff_rdata15),

    .data_fifo_empty0(ff_empty0),
    .data_fifo_empty1(ff_empty1),
    .data_fifo_empty2(ff_empty2),
    .data_fifo_empty3(ff_empty3),
    .data_fifo_empty4(ff_empty4),
    .data_fifo_empty5(ff_empty5),
    .data_fifo_empty6(ff_empty6),
    .data_fifo_empty7(ff_empty7),
    .data_fifo_empty8(ff_empty8),
    .data_fifo_empty9(ff_empty9),
    .data_fifo_empty10(ff_empty10),
    .data_fifo_empty11(ff_empty11),
    .data_fifo_empty12(ff_empty12),
    .data_fifo_empty13(ff_empty13),
    .data_fifo_empty14(ff_empty14),
    .data_fifo_empty15(ff_empty15),

    .data_out(ff_wdata),
    .valid_out(ff_wrreq),
    .rdreq(ff_rdreq)
);

endmodule
////////////////////////////////////////// FILTER 8 //////////////////////////////////////////
module core_featuremap_conv2d_4_filter8 (
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
    ff_rdata8,
    ff_rdata9,
    ff_rdata10,
    ff_rdata11,
    ff_rdata12,
    ff_rdata13,
    ff_rdata14,
    ff_rdata15,

    ff_empty0,
    ff_empty1,
    ff_empty2,
    ff_empty3,
    ff_empty4,
    ff_empty5,
    ff_empty6,
    ff_empty7,
    ff_empty8,
    ff_empty9,
    ff_empty10,
    ff_empty11,
    ff_empty12,
    ff_empty13,
    ff_empty14,
    ff_empty15,

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
input [DWIDTH-1:0]   ff_rdata8;
input [DWIDTH-1:0]   ff_rdata9;
input [DWIDTH-1:0]   ff_rdata10;
input [DWIDTH-1:0]   ff_rdata11;
input [DWIDTH-1:0]   ff_rdata12;
input [DWIDTH-1:0]   ff_rdata13;
input [DWIDTH-1:0]   ff_rdata14;
input [DWIDTH-1:0]   ff_rdata15;

input                ff_empty0;
input                ff_empty1;
input                ff_empty2;
input                ff_empty3;
input                ff_empty4;
input                ff_empty5;
input                ff_empty6;
input                ff_empty7;
input                ff_empty8;
input                ff_empty9;
input                ff_empty10;
input                ff_empty11;
input                ff_empty12;
input                ff_empty13;
input                ff_empty14;
input                ff_empty15;

output               ff_rdreq;
// FIFO WRITE
output [DWIDTH-1:0]   ff_wdata;
output                ff_wrreq;
input                 ff_full;
//

featuremap_conv2d_4_filter8 inst(
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
    .data_in_channel8(ff_rdata8),
    .data_in_channel9(ff_rdata9),
    .data_in_channel10(ff_rdata10),
    .data_in_channel11(ff_rdata11),
    .data_in_channel12(ff_rdata12),
    .data_in_channel13(ff_rdata13),
    .data_in_channel14(ff_rdata14),
    .data_in_channel15(ff_rdata15),

    .data_fifo_empty0(ff_empty0),
    .data_fifo_empty1(ff_empty1),
    .data_fifo_empty2(ff_empty2),
    .data_fifo_empty3(ff_empty3),
    .data_fifo_empty4(ff_empty4),
    .data_fifo_empty5(ff_empty5),
    .data_fifo_empty6(ff_empty6),
    .data_fifo_empty7(ff_empty7),
    .data_fifo_empty8(ff_empty8),
    .data_fifo_empty9(ff_empty9),
    .data_fifo_empty10(ff_empty10),
    .data_fifo_empty11(ff_empty11),
    .data_fifo_empty12(ff_empty12),
    .data_fifo_empty13(ff_empty13),
    .data_fifo_empty14(ff_empty14),
    .data_fifo_empty15(ff_empty15),

    .data_out(ff_wdata),
    .valid_out(ff_wrreq),
    .rdreq(ff_rdreq)
);

endmodule
////////////////////////////////////////// FILTER 9 //////////////////////////////////////////
module core_featuremap_conv2d_4_filter9 (
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
    ff_rdata8,
    ff_rdata9,
    ff_rdata10,
    ff_rdata11,
    ff_rdata12,
    ff_rdata13,
    ff_rdata14,
    ff_rdata15,

    ff_empty0,
    ff_empty1,
    ff_empty2,
    ff_empty3,
    ff_empty4,
    ff_empty5,
    ff_empty6,
    ff_empty7,
    ff_empty8,
    ff_empty9,
    ff_empty10,
    ff_empty11,
    ff_empty12,
    ff_empty13,
    ff_empty14,
    ff_empty15,

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
input [DWIDTH-1:0]   ff_rdata8;
input [DWIDTH-1:0]   ff_rdata9;
input [DWIDTH-1:0]   ff_rdata10;
input [DWIDTH-1:0]   ff_rdata11;
input [DWIDTH-1:0]   ff_rdata12;
input [DWIDTH-1:0]   ff_rdata13;
input [DWIDTH-1:0]   ff_rdata14;
input [DWIDTH-1:0]   ff_rdata15;

input                ff_empty0;
input                ff_empty1;
input                ff_empty2;
input                ff_empty3;
input                ff_empty4;
input                ff_empty5;
input                ff_empty6;
input                ff_empty7;
input                ff_empty8;
input                ff_empty9;
input                ff_empty10;
input                ff_empty11;
input                ff_empty12;
input                ff_empty13;
input                ff_empty14;
input                ff_empty15;

output               ff_rdreq;
// FIFO WRITE
output [DWIDTH-1:0]   ff_wdata;
output                ff_wrreq;
input                 ff_full;
//

featuremap_conv2d_4_filter9 inst(
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
    .data_in_channel8(ff_rdata8),
    .data_in_channel9(ff_rdata9),
    .data_in_channel10(ff_rdata10),
    .data_in_channel11(ff_rdata11),
    .data_in_channel12(ff_rdata12),
    .data_in_channel13(ff_rdata13),
    .data_in_channel14(ff_rdata14),
    .data_in_channel15(ff_rdata15),

    .data_fifo_empty0(ff_empty0),
    .data_fifo_empty1(ff_empty1),
    .data_fifo_empty2(ff_empty2),
    .data_fifo_empty3(ff_empty3),
    .data_fifo_empty4(ff_empty4),
    .data_fifo_empty5(ff_empty5),
    .data_fifo_empty6(ff_empty6),
    .data_fifo_empty7(ff_empty7),
    .data_fifo_empty8(ff_empty8),
    .data_fifo_empty9(ff_empty9),
    .data_fifo_empty10(ff_empty10),
    .data_fifo_empty11(ff_empty11),
    .data_fifo_empty12(ff_empty12),
    .data_fifo_empty13(ff_empty13),
    .data_fifo_empty14(ff_empty14),
    .data_fifo_empty15(ff_empty15),

    .data_out(ff_wdata),
    .valid_out(ff_wrreq),
    .rdreq(ff_rdreq)
);

endmodule
////////////////////////////////////////// FILTER 10 //////////////////////////////////////////
module core_featuremap_conv2d_4_filter10 (
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
    ff_rdata8,
    ff_rdata9,
    ff_rdata10,
    ff_rdata11,
    ff_rdata12,
    ff_rdata13,
    ff_rdata14,
    ff_rdata15,

    ff_empty0,
    ff_empty1,
    ff_empty2,
    ff_empty3,
    ff_empty4,
    ff_empty5,
    ff_empty6,
    ff_empty7,
    ff_empty8,
    ff_empty9,
    ff_empty10,
    ff_empty11,
    ff_empty12,
    ff_empty13,
    ff_empty14,
    ff_empty15,

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
input [DWIDTH-1:0]   ff_rdata8;
input [DWIDTH-1:0]   ff_rdata9;
input [DWIDTH-1:0]   ff_rdata10;
input [DWIDTH-1:0]   ff_rdata11;
input [DWIDTH-1:0]   ff_rdata12;
input [DWIDTH-1:0]   ff_rdata13;
input [DWIDTH-1:0]   ff_rdata14;
input [DWIDTH-1:0]   ff_rdata15;

input                ff_empty0;
input                ff_empty1;
input                ff_empty2;
input                ff_empty3;
input                ff_empty4;
input                ff_empty5;
input                ff_empty6;
input                ff_empty7;
input                ff_empty8;
input                ff_empty9;
input                ff_empty10;
input                ff_empty11;
input                ff_empty12;
input                ff_empty13;
input                ff_empty14;
input                ff_empty15;

output               ff_rdreq;
// FIFO WRITE
output [DWIDTH-1:0]   ff_wdata;
output                ff_wrreq;
input                 ff_full;
//

featuremap_conv2d_4_filter10 inst(
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
    .data_in_channel8(ff_rdata8),
    .data_in_channel9(ff_rdata9),
    .data_in_channel10(ff_rdata10),
    .data_in_channel11(ff_rdata11),
    .data_in_channel12(ff_rdata12),
    .data_in_channel13(ff_rdata13),
    .data_in_channel14(ff_rdata14),
    .data_in_channel15(ff_rdata15),

    .data_fifo_empty0(ff_empty0),
    .data_fifo_empty1(ff_empty1),
    .data_fifo_empty2(ff_empty2),
    .data_fifo_empty3(ff_empty3),
    .data_fifo_empty4(ff_empty4),
    .data_fifo_empty5(ff_empty5),
    .data_fifo_empty6(ff_empty6),
    .data_fifo_empty7(ff_empty7),
    .data_fifo_empty8(ff_empty8),
    .data_fifo_empty9(ff_empty9),
    .data_fifo_empty10(ff_empty10),
    .data_fifo_empty11(ff_empty11),
    .data_fifo_empty12(ff_empty12),
    .data_fifo_empty13(ff_empty13),
    .data_fifo_empty14(ff_empty14),
    .data_fifo_empty15(ff_empty15),

    .data_out(ff_wdata),
    .valid_out(ff_wrreq),
    .rdreq(ff_rdreq)
);

endmodule
////////////////////////////////////////// FILTER 11 //////////////////////////////////////////
module core_featuremap_conv2d_4_filter11 (
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
    ff_rdata8,
    ff_rdata9,
    ff_rdata10,
    ff_rdata11,
    ff_rdata12,
    ff_rdata13,
    ff_rdata14,
    ff_rdata15,

    ff_empty0,
    ff_empty1,
    ff_empty2,
    ff_empty3,
    ff_empty4,
    ff_empty5,
    ff_empty6,
    ff_empty7,
    ff_empty8,
    ff_empty9,
    ff_empty10,
    ff_empty11,
    ff_empty12,
    ff_empty13,
    ff_empty14,
    ff_empty15,

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
input [DWIDTH-1:0]   ff_rdata8;
input [DWIDTH-1:0]   ff_rdata9;
input [DWIDTH-1:0]   ff_rdata10;
input [DWIDTH-1:0]   ff_rdata11;
input [DWIDTH-1:0]   ff_rdata12;
input [DWIDTH-1:0]   ff_rdata13;
input [DWIDTH-1:0]   ff_rdata14;
input [DWIDTH-1:0]   ff_rdata15;

input                ff_empty0;
input                ff_empty1;
input                ff_empty2;
input                ff_empty3;
input                ff_empty4;
input                ff_empty5;
input                ff_empty6;
input                ff_empty7;
input                ff_empty8;
input                ff_empty9;
input                ff_empty10;
input                ff_empty11;
input                ff_empty12;
input                ff_empty13;
input                ff_empty14;
input                ff_empty15;

output               ff_rdreq;
// FIFO WRITE
output [DWIDTH-1:0]   ff_wdata;
output                ff_wrreq;
input                 ff_full;
//

featuremap_conv2d_4_filter11 inst(
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
    .data_in_channel8(ff_rdata8),
    .data_in_channel9(ff_rdata9),
    .data_in_channel10(ff_rdata10),
    .data_in_channel11(ff_rdata11),
    .data_in_channel12(ff_rdata12),
    .data_in_channel13(ff_rdata13),
    .data_in_channel14(ff_rdata14),
    .data_in_channel15(ff_rdata15),

    .data_fifo_empty0(ff_empty0),
    .data_fifo_empty1(ff_empty1),
    .data_fifo_empty2(ff_empty2),
    .data_fifo_empty3(ff_empty3),
    .data_fifo_empty4(ff_empty4),
    .data_fifo_empty5(ff_empty5),
    .data_fifo_empty6(ff_empty6),
    .data_fifo_empty7(ff_empty7),
    .data_fifo_empty8(ff_empty8),
    .data_fifo_empty9(ff_empty9),
    .data_fifo_empty10(ff_empty10),
    .data_fifo_empty11(ff_empty11),
    .data_fifo_empty12(ff_empty12),
    .data_fifo_empty13(ff_empty13),
    .data_fifo_empty14(ff_empty14),
    .data_fifo_empty15(ff_empty15),

    .data_out(ff_wdata),
    .valid_out(ff_wrreq),
    .rdreq(ff_rdreq)
);

endmodule
////////////////////////////////////////// FILTER 12 //////////////////////////////////////////
module core_featuremap_conv2d_4_filter12 (
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
    ff_rdata8,
    ff_rdata9,
    ff_rdata10,
    ff_rdata11,
    ff_rdata12,
    ff_rdata13,
    ff_rdata14,
    ff_rdata15,

    ff_empty0,
    ff_empty1,
    ff_empty2,
    ff_empty3,
    ff_empty4,
    ff_empty5,
    ff_empty6,
    ff_empty7,
    ff_empty8,
    ff_empty9,
    ff_empty10,
    ff_empty11,
    ff_empty12,
    ff_empty13,
    ff_empty14,
    ff_empty15,

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
input [DWIDTH-1:0]   ff_rdata8;
input [DWIDTH-1:0]   ff_rdata9;
input [DWIDTH-1:0]   ff_rdata10;
input [DWIDTH-1:0]   ff_rdata11;
input [DWIDTH-1:0]   ff_rdata12;
input [DWIDTH-1:0]   ff_rdata13;
input [DWIDTH-1:0]   ff_rdata14;
input [DWIDTH-1:0]   ff_rdata15;

input                ff_empty0;
input                ff_empty1;
input                ff_empty2;
input                ff_empty3;
input                ff_empty4;
input                ff_empty5;
input                ff_empty6;
input                ff_empty7;
input                ff_empty8;
input                ff_empty9;
input                ff_empty10;
input                ff_empty11;
input                ff_empty12;
input                ff_empty13;
input                ff_empty14;
input                ff_empty15;

output               ff_rdreq;
// FIFO WRITE
output [DWIDTH-1:0]   ff_wdata;
output                ff_wrreq;
input                 ff_full;
//

featuremap_conv2d_4_filter12 inst(
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
    .data_in_channel8(ff_rdata8),
    .data_in_channel9(ff_rdata9),
    .data_in_channel10(ff_rdata10),
    .data_in_channel11(ff_rdata11),
    .data_in_channel12(ff_rdata12),
    .data_in_channel13(ff_rdata13),
    .data_in_channel14(ff_rdata14),
    .data_in_channel15(ff_rdata15),

    .data_fifo_empty0(ff_empty0),
    .data_fifo_empty1(ff_empty1),
    .data_fifo_empty2(ff_empty2),
    .data_fifo_empty3(ff_empty3),
    .data_fifo_empty4(ff_empty4),
    .data_fifo_empty5(ff_empty5),
    .data_fifo_empty6(ff_empty6),
    .data_fifo_empty7(ff_empty7),
    .data_fifo_empty8(ff_empty8),
    .data_fifo_empty9(ff_empty9),
    .data_fifo_empty10(ff_empty10),
    .data_fifo_empty11(ff_empty11),
    .data_fifo_empty12(ff_empty12),
    .data_fifo_empty13(ff_empty13),
    .data_fifo_empty14(ff_empty14),
    .data_fifo_empty15(ff_empty15),

    .data_out(ff_wdata),
    .valid_out(ff_wrreq),
    .rdreq(ff_rdreq)
);

endmodule
////////////////////////////////////////// FILTER 13 //////////////////////////////////////////
module core_featuremap_conv2d_4_filter13 (
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
    ff_rdata8,
    ff_rdata9,
    ff_rdata10,
    ff_rdata11,
    ff_rdata12,
    ff_rdata13,
    ff_rdata14,
    ff_rdata15,

    ff_empty0,
    ff_empty1,
    ff_empty2,
    ff_empty3,
    ff_empty4,
    ff_empty5,
    ff_empty6,
    ff_empty7,
    ff_empty8,
    ff_empty9,
    ff_empty10,
    ff_empty11,
    ff_empty12,
    ff_empty13,
    ff_empty14,
    ff_empty15,

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
input [DWIDTH-1:0]   ff_rdata8;
input [DWIDTH-1:0]   ff_rdata9;
input [DWIDTH-1:0]   ff_rdata10;
input [DWIDTH-1:0]   ff_rdata11;
input [DWIDTH-1:0]   ff_rdata12;
input [DWIDTH-1:0]   ff_rdata13;
input [DWIDTH-1:0]   ff_rdata14;
input [DWIDTH-1:0]   ff_rdata15;

input                ff_empty0;
input                ff_empty1;
input                ff_empty2;
input                ff_empty3;
input                ff_empty4;
input                ff_empty5;
input                ff_empty6;
input                ff_empty7;
input                ff_empty8;
input                ff_empty9;
input                ff_empty10;
input                ff_empty11;
input                ff_empty12;
input                ff_empty13;
input                ff_empty14;
input                ff_empty15;

output               ff_rdreq;
// FIFO WRITE
output [DWIDTH-1:0]   ff_wdata;
output                ff_wrreq;
input                 ff_full;
//

featuremap_conv2d_4_filter13 inst(
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
    .data_in_channel8(ff_rdata8),
    .data_in_channel9(ff_rdata9),
    .data_in_channel10(ff_rdata10),
    .data_in_channel11(ff_rdata11),
    .data_in_channel12(ff_rdata12),
    .data_in_channel13(ff_rdata13),
    .data_in_channel14(ff_rdata14),
    .data_in_channel15(ff_rdata15),

    .data_fifo_empty0(ff_empty0),
    .data_fifo_empty1(ff_empty1),
    .data_fifo_empty2(ff_empty2),
    .data_fifo_empty3(ff_empty3),
    .data_fifo_empty4(ff_empty4),
    .data_fifo_empty5(ff_empty5),
    .data_fifo_empty6(ff_empty6),
    .data_fifo_empty7(ff_empty7),
    .data_fifo_empty8(ff_empty8),
    .data_fifo_empty9(ff_empty9),
    .data_fifo_empty10(ff_empty10),
    .data_fifo_empty11(ff_empty11),
    .data_fifo_empty12(ff_empty12),
    .data_fifo_empty13(ff_empty13),
    .data_fifo_empty14(ff_empty14),
    .data_fifo_empty15(ff_empty15),

    .data_out(ff_wdata),
    .valid_out(ff_wrreq),
    .rdreq(ff_rdreq)
);

endmodule
////////////////////////////////////////// FILTER 14 //////////////////////////////////////////
module core_featuremap_conv2d_4_filter14 (
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
    ff_rdata8,
    ff_rdata9,
    ff_rdata10,
    ff_rdata11,
    ff_rdata12,
    ff_rdata13,
    ff_rdata14,
    ff_rdata15,

    ff_empty0,
    ff_empty1,
    ff_empty2,
    ff_empty3,
    ff_empty4,
    ff_empty5,
    ff_empty6,
    ff_empty7,
    ff_empty8,
    ff_empty9,
    ff_empty10,
    ff_empty11,
    ff_empty12,
    ff_empty13,
    ff_empty14,
    ff_empty15,

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
input [DWIDTH-1:0]   ff_rdata8;
input [DWIDTH-1:0]   ff_rdata9;
input [DWIDTH-1:0]   ff_rdata10;
input [DWIDTH-1:0]   ff_rdata11;
input [DWIDTH-1:0]   ff_rdata12;
input [DWIDTH-1:0]   ff_rdata13;
input [DWIDTH-1:0]   ff_rdata14;
input [DWIDTH-1:0]   ff_rdata15;

input                ff_empty0;
input                ff_empty1;
input                ff_empty2;
input                ff_empty3;
input                ff_empty4;
input                ff_empty5;
input                ff_empty6;
input                ff_empty7;
input                ff_empty8;
input                ff_empty9;
input                ff_empty10;
input                ff_empty11;
input                ff_empty12;
input                ff_empty13;
input                ff_empty14;
input                ff_empty15;

output               ff_rdreq;
// FIFO WRITE
output [DWIDTH-1:0]   ff_wdata;
output                ff_wrreq;
input                 ff_full;
//

featuremap_conv2d_4_filter14 inst(
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
    .data_in_channel8(ff_rdata8),
    .data_in_channel9(ff_rdata9),
    .data_in_channel10(ff_rdata10),
    .data_in_channel11(ff_rdata11),
    .data_in_channel12(ff_rdata12),
    .data_in_channel13(ff_rdata13),
    .data_in_channel14(ff_rdata14),
    .data_in_channel15(ff_rdata15),

    .data_fifo_empty0(ff_empty0),
    .data_fifo_empty1(ff_empty1),
    .data_fifo_empty2(ff_empty2),
    .data_fifo_empty3(ff_empty3),
    .data_fifo_empty4(ff_empty4),
    .data_fifo_empty5(ff_empty5),
    .data_fifo_empty6(ff_empty6),
    .data_fifo_empty7(ff_empty7),
    .data_fifo_empty8(ff_empty8),
    .data_fifo_empty9(ff_empty9),
    .data_fifo_empty10(ff_empty10),
    .data_fifo_empty11(ff_empty11),
    .data_fifo_empty12(ff_empty12),
    .data_fifo_empty13(ff_empty13),
    .data_fifo_empty14(ff_empty14),
    .data_fifo_empty15(ff_empty15),

    .data_out(ff_wdata),
    .valid_out(ff_wrreq),
    .rdreq(ff_rdreq)
);

endmodule
////////////////////////////////////////// FILTER 15 //////////////////////////////////////////
module core_featuremap_conv2d_4_filter15 (
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
    ff_rdata8,
    ff_rdata9,
    ff_rdata10,
    ff_rdata11,
    ff_rdata12,
    ff_rdata13,
    ff_rdata14,
    ff_rdata15,

    ff_empty0,
    ff_empty1,
    ff_empty2,
    ff_empty3,
    ff_empty4,
    ff_empty5,
    ff_empty6,
    ff_empty7,
    ff_empty8,
    ff_empty9,
    ff_empty10,
    ff_empty11,
    ff_empty12,
    ff_empty13,
    ff_empty14,
    ff_empty15,

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
input [DWIDTH-1:0]   ff_rdata8;
input [DWIDTH-1:0]   ff_rdata9;
input [DWIDTH-1:0]   ff_rdata10;
input [DWIDTH-1:0]   ff_rdata11;
input [DWIDTH-1:0]   ff_rdata12;
input [DWIDTH-1:0]   ff_rdata13;
input [DWIDTH-1:0]   ff_rdata14;
input [DWIDTH-1:0]   ff_rdata15;

input                ff_empty0;
input                ff_empty1;
input                ff_empty2;
input                ff_empty3;
input                ff_empty4;
input                ff_empty5;
input                ff_empty6;
input                ff_empty7;
input                ff_empty8;
input                ff_empty9;
input                ff_empty10;
input                ff_empty11;
input                ff_empty12;
input                ff_empty13;
input                ff_empty14;
input                ff_empty15;

output               ff_rdreq;
// FIFO WRITE
output [DWIDTH-1:0]   ff_wdata;
output                ff_wrreq;
input                 ff_full;
//

featuremap_conv2d_4_filter15 inst(
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
    .data_in_channel8(ff_rdata8),
    .data_in_channel9(ff_rdata9),
    .data_in_channel10(ff_rdata10),
    .data_in_channel11(ff_rdata11),
    .data_in_channel12(ff_rdata12),
    .data_in_channel13(ff_rdata13),
    .data_in_channel14(ff_rdata14),
    .data_in_channel15(ff_rdata15),

    .data_fifo_empty0(ff_empty0),
    .data_fifo_empty1(ff_empty1),
    .data_fifo_empty2(ff_empty2),
    .data_fifo_empty3(ff_empty3),
    .data_fifo_empty4(ff_empty4),
    .data_fifo_empty5(ff_empty5),
    .data_fifo_empty6(ff_empty6),
    .data_fifo_empty7(ff_empty7),
    .data_fifo_empty8(ff_empty8),
    .data_fifo_empty9(ff_empty9),
    .data_fifo_empty10(ff_empty10),
    .data_fifo_empty11(ff_empty11),
    .data_fifo_empty12(ff_empty12),
    .data_fifo_empty13(ff_empty13),
    .data_fifo_empty14(ff_empty14),
    .data_fifo_empty15(ff_empty15),

    .data_out(ff_wdata),
    .valid_out(ff_wrreq),
    .rdreq(ff_rdreq)
);

endmodule

