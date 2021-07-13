module core_max_pooling_1 (
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
parameter  WIDTH = 56;
//
input   clock;
input   reset;
// FIFO READ
input [DWIDTH-1:0]   ff_rdata;
output reg           ff_rdreq;
input                ff_empty;
// FIFO WRITE
output [DWIDTH-1:0]   ff_wdata;
output                ff_wrreq;
input                 ff_full;
//

wire start;
assign start = (ff_empty == 0 && ff_full==0);

reg data_valid_in;

always @(posedge clock or posedge reset) begin
    if(reset) begin
        ff_rdreq <= 1'b0;
    end
    else begin
        ff_rdreq <= start;
    end
end

// always @(posedge clock or posedge reset) begin
//     if(reset) begin
//         data_valid_in <= 1'b0;     
//     end
//     else begin
//         if (ff_rdreq==1) begin
//             data_valid_in <= 1'b1;
//         end
//         else begin
//             data_valid_in <= 1'b0;
//         end
//     end
// end

max_pooling # (DWIDTH, WIDTH)
max_pool_inst(
    .clk(clock), 
    .reset(reset),

	.data_in(ff_rdata),
	.valid_in(ff_rdreq), 
	
	.data_out(ff_wdata),
	.valid_out(ff_wrreq)
);

endmodule



