module core_fc1_dense2_filter0(
    clock,
    reset,
    // FIFO READ
    ff_rdata0,
    ff_rdata1,

    ff_empty0,
    ff_empty1,

    ff_rdreq,
    
    // FIFO WRITE
    ff_wdata,
    ff_wrreq,
    ff_full
);

parameter  DWIDTH = 32;
//
input   clock;
input   reset;
// FIFO READ
input [DWIDTH-1:0]   ff_rdata0;
input [DWIDTH-1:0]   ff_rdata1;

input                ff_empty0;
input                ff_empty1;

output reg           ff_rdreq;
// FIFO WRITE
output [DWIDTH-1:0]  ff_wdata;
output               ff_wrreq;
input                ff_full;
//
wire start;
assign start = (ff_empty0 == 0 && ff_empty1 == 0 && ff_full==0);

always @(posedge clock or posedge reset) begin
    if(reset) begin
        ff_rdreq <= 1'b0;
    end
    else begin
        ff_rdreq <= start;
    end
end

fc1_dense2_filter0 fc0_inst0(
    .clk(clock), .rst(reset), .valid_in(ff_rdreq),
    .data_in(ff_rdata0),
    .weight(ff_rdata1),
    .valid_out(ff_wrreq),
    .data_out(ff_wdata)
);
endmodule

module core_fc1_dense2_filter1(
    clock,
    reset,
    // FIFO READ
    ff_rdata0,
    ff_rdata1,

    ff_empty0,
    ff_empty1,

    ff_rdreq,
    
    // FIFO WRITE
    ff_wdata,
    ff_wrreq,
    ff_full
);

parameter  DWIDTH = 32;
//
input   clock;
input   reset;
// FIFO READ
input [DWIDTH-1:0]   ff_rdata0;
input [DWIDTH-1:0]   ff_rdata1;

input                ff_empty0;
input                ff_empty1;

output reg           ff_rdreq;
// FIFO WRITE
output [DWIDTH-1:0]  ff_wdata;
output               ff_wrreq;
input                ff_full;
//
wire start;
assign start = (ff_empty0 == 0 && ff_empty1 == 0 && ff_full==0);

always @(posedge clock or posedge reset) begin
    if(reset) begin
        ff_rdreq <= 1'b0;
    end
    else begin
        ff_rdreq <= start;
    end
end

fc1_dense2_filter1 fc0_inst0(
    .clk(clock), .rst(reset), .valid_in(ff_rdreq),
    .data_in(ff_rdata0),
    .weight(ff_rdata1),
    .valid_out(ff_wrreq),
    .data_out(ff_wdata)
);
endmodule
