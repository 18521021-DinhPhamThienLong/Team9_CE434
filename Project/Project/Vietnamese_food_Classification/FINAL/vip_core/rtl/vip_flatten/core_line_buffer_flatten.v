module core_line_buffer_flatten (
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

output reg             ff_rdreq;
// FIFO WRITE
output [DWIDTH-1:0]   ff_wdata;
output                ff_wrreq;
input                 ff_full;
//

wire start;
assign start = (ff_empty0 == 0 &&
                ff_empty1 == 0 &&
                ff_empty2 == 0 &&
                ff_empty3 == 0 &&
                ff_empty4 == 0 &&
                ff_empty5 == 0 &&
                ff_empty6 == 0 &&
                ff_empty7 == 0 &&
                ff_empty8 == 0 &&
                ff_empty9 == 0 &&
                ff_empty10 == 0 &&
                ff_empty11 == 0 &&
                ff_empty12 == 0 &&
                ff_empty13 == 0 &&
                ff_empty14 == 0 &&
                ff_empty15 == 0 &&
                ff_full == 0);

always @(posedge clock or posedge reset) begin
    if(reset) begin
        ff_rdreq <= 1'b0;
    end
    else begin
        ff_rdreq <= start;
    end
end


line_buffer_flatten #(.DATA_WIDTH(DWIDTH), .WIDTH(28)
)const_line_buffer_flatten(
  .data_out(ff_wdata),
  
  .data_in0(ff_rdata0),
  .data_in1(ff_rdata1), 
  .data_in2(ff_rdata2), 
  .data_in3(ff_rdata3), 
  .data_in4(ff_rdata4), 
  .data_in5(ff_rdata5), 
  .data_in6(ff_rdata6), 
  .data_in7(ff_rdata7), 
  .data_in8(ff_rdata8), 
  .data_in9(ff_rdata9), 
  .data_in10(ff_rdata10),
  .data_in11(ff_rdata11),
  .data_in12(ff_rdata12),
  .data_in13(ff_rdata13),
  .data_in14(ff_rdata14),
  .data_in15(ff_rdata15),

  .valid_in(ff_rdreq),

  .clk(clock), .rst(reset),
  .valid_out(ff_wrreq)
);

endmodule