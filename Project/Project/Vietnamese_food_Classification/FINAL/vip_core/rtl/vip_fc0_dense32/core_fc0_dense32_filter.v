module core_fc0_dense32_filter0(
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
wire [DWIDTH-1:0]    out_relu;
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

fc0_dense32_filter0 fc0_inst0(
    .clk(clock), .rst(reset), .valid_in(ff_rdreq),
    .data_in(ff_rdata0),
    .weight(ff_rdata1),
    .valid_out(ff_wrreq),
    .data_out(out_relu)
);
ReLU const(.data_in(out_relu), .data_out(ff_wdata));
endmodule

module core_fc0_dense32_filter1(
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
wire [DWIDTH-1:0]    out_relu;
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

fc0_dense32_filter1 fc0_inst0(
    .clk(clock), .rst(reset), .valid_in(ff_rdreq),
    .data_in(ff_rdata0),
    .weight(ff_rdata1),
    .valid_out(ff_wrreq),
    .data_out(out_relu)
);
ReLU const(.data_in(out_relu), .data_out(ff_wdata));
endmodule

module core_fc0_dense32_filter2(
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
wire [DWIDTH-1:0]    out_relu;
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

fc0_dense32_filter2 fc0_inst0(
    .clk(clock), .rst(reset), .valid_in(ff_rdreq),
    .data_in(ff_rdata0),
    .weight(ff_rdata1),
    .valid_out(ff_wrreq),
    .data_out(out_relu)
);
ReLU const(.data_in(out_relu), .data_out(ff_wdata));
endmodule

module core_fc0_dense32_filter3(
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
wire [DWIDTH-1:0]    out_relu;
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

fc0_dense32_filter3 fc0_inst0(
    .clk(clock), .rst(reset), .valid_in(ff_rdreq),
    .data_in(ff_rdata0),
    .weight(ff_rdata1),
    .valid_out(ff_wrreq),
    .data_out(out_relu)
);
ReLU const(.data_in(out_relu), .data_out(ff_wdata));
endmodule

module core_fc0_dense32_filter4(
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
wire [DWIDTH-1:0]    out_relu;
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

fc0_dense32_filter4 fc0_inst0(
    .clk(clock), .rst(reset), .valid_in(ff_rdreq),
    .data_in(ff_rdata0),
    .weight(ff_rdata1),
    .valid_out(ff_wrreq),
    .data_out(out_relu)
);
ReLU const(.data_in(out_relu), .data_out(ff_wdata));
endmodule

module core_fc0_dense32_filter5(
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
wire [DWIDTH-1:0]    out_relu;
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

fc0_dense32_filter5 fc0_inst0(
    .clk(clock), .rst(reset), .valid_in(ff_rdreq),
    .data_in(ff_rdata0),
    .weight(ff_rdata1),
    .valid_out(ff_wrreq),
    .data_out(out_relu)
);
ReLU const(.data_in(out_relu), .data_out(ff_wdata));
endmodule

module core_fc0_dense32_filter6(
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
wire [DWIDTH-1:0]    out_relu;
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

fc0_dense32_filter6 fc0_inst0(
    .clk(clock), .rst(reset), .valid_in(ff_rdreq),
    .data_in(ff_rdata0),
    .weight(ff_rdata1),
    .valid_out(ff_wrreq),
    .data_out(out_relu)
);
ReLU const(.data_in(out_relu), .data_out(ff_wdata));
endmodule

module core_fc0_dense32_filter7(
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
wire [DWIDTH-1:0]    out_relu;
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

fc0_dense32_filter7 fc0_inst0(
    .clk(clock), .rst(reset), .valid_in(ff_rdreq),
    .data_in(ff_rdata0),
    .weight(ff_rdata1),
    .valid_out(ff_wrreq),
    .data_out(out_relu)
);
ReLU const(.data_in(out_relu), .data_out(ff_wdata));
endmodule

module core_fc0_dense32_filter8(
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
wire [DWIDTH-1:0]    out_relu;
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

fc0_dense32_filter8 fc0_inst0(
    .clk(clock), .rst(reset), .valid_in(ff_rdreq),
    .data_in(ff_rdata0),
    .weight(ff_rdata1),
    .valid_out(ff_wrreq),
    .data_out(out_relu)
);
ReLU const(.data_in(out_relu), .data_out(ff_wdata));
endmodule

module core_fc0_dense32_filter9(
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
wire [DWIDTH-1:0]    out_relu;
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

fc0_dense32_filter9 fc0_inst0(
    .clk(clock), .rst(reset), .valid_in(ff_rdreq),
    .data_in(ff_rdata0),
    .weight(ff_rdata1),
    .valid_out(ff_wrreq),
    .data_out(out_relu)
);
ReLU const(.data_in(out_relu), .data_out(ff_wdata));
endmodule

module core_fc0_dense32_filter10(
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
wire [DWIDTH-1:0]    out_relu;
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

fc0_dense32_filter10 fc0_inst0(
    .clk(clock), .rst(reset), .valid_in(ff_rdreq),
    .data_in(ff_rdata0),
    .weight(ff_rdata1),
    .valid_out(ff_wrreq),
    .data_out(out_relu)
);
ReLU const(.data_in(out_relu), .data_out(ff_wdata));
endmodule

module core_fc0_dense32_filter11(
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
wire [DWIDTH-1:0]    out_relu;
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

fc0_dense32_filter11 fc0_inst0(
    .clk(clock), .rst(reset), .valid_in(ff_rdreq),
    .data_in(ff_rdata0),
    .weight(ff_rdata1),
    .valid_out(ff_wrreq),
    .data_out(out_relu)
);
ReLU const(.data_in(out_relu), .data_out(ff_wdata));
endmodule

module core_fc0_dense32_filter12(
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
wire [DWIDTH-1:0]    out_relu;
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

fc0_dense32_filter12 fc0_inst0(
    .clk(clock), .rst(reset), .valid_in(ff_rdreq),
    .data_in(ff_rdata0),
    .weight(ff_rdata1),
    .valid_out(ff_wrreq),
    .data_out(out_relu)
);
ReLU const(.data_in(out_relu), .data_out(ff_wdata));
endmodule

module core_fc0_dense32_filter13(
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
wire [DWIDTH-1:0]    out_relu;
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

fc0_dense32_filter13 fc0_inst0(
    .clk(clock), .rst(reset), .valid_in(ff_rdreq),
    .data_in(ff_rdata0),
    .weight(ff_rdata1),
    .valid_out(ff_wrreq),
    .data_out(out_relu)
);
ReLU const(.data_in(out_relu), .data_out(ff_wdata));
endmodule

module core_fc0_dense32_filter14(
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
wire [DWIDTH-1:0]    out_relu;
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

fc0_dense32_filter14 fc0_inst0(
    .clk(clock), .rst(reset), .valid_in(ff_rdreq),
    .data_in(ff_rdata0),
    .weight(ff_rdata1),
    .valid_out(ff_wrreq),
    .data_out(out_relu)
);
ReLU const(.data_in(out_relu), .data_out(ff_wdata));
endmodule

module core_fc0_dense32_filter15(
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
wire [DWIDTH-1:0]    out_relu;
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

fc0_dense32_filter15 fc0_inst0(
    .clk(clock), .rst(reset), .valid_in(ff_rdreq),
    .data_in(ff_rdata0),
    .weight(ff_rdata1),
    .valid_out(ff_wrreq),
    .data_out(out_relu)
);
ReLU const(.data_in(out_relu), .data_out(ff_wdata));
endmodule

module core_fc0_dense32_filter16(
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
wire [DWIDTH-1:0]    out_relu;
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

fc0_dense32_filter16 fc0_inst0(
    .clk(clock), .rst(reset), .valid_in(ff_rdreq),
    .data_in(ff_rdata0),
    .weight(ff_rdata1),
    .valid_out(ff_wrreq),
    .data_out(out_relu)
);
ReLU const(.data_in(out_relu), .data_out(ff_wdata));
endmodule

module core_fc0_dense32_filter17(
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
wire [DWIDTH-1:0]    out_relu;
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

fc0_dense32_filter17 fc0_inst0(
    .clk(clock), .rst(reset), .valid_in(ff_rdreq),
    .data_in(ff_rdata0),
    .weight(ff_rdata1),
    .valid_out(ff_wrreq),
    .data_out(out_relu)
);
ReLU const(.data_in(out_relu), .data_out(ff_wdata));
endmodule

module core_fc0_dense32_filter18(
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
wire [DWIDTH-1:0]    out_relu;
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

fc0_dense32_filter18 fc0_inst0(
    .clk(clock), .rst(reset), .valid_in(ff_rdreq),
    .data_in(ff_rdata0),
    .weight(ff_rdata1),
    .valid_out(ff_wrreq),
    .data_out(out_relu)
);
ReLU const(.data_in(out_relu), .data_out(ff_wdata));
endmodule

module core_fc0_dense32_filter19(
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
wire [DWIDTH-1:0]    out_relu;
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

fc0_dense32_filter19 fc0_inst0(
    .clk(clock), .rst(reset), .valid_in(ff_rdreq),
    .data_in(ff_rdata0),
    .weight(ff_rdata1),
    .valid_out(ff_wrreq),
    .data_out(out_relu)
);
ReLU const(.data_in(out_relu), .data_out(ff_wdata));
endmodule

module core_fc0_dense32_filter20(
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
wire [DWIDTH-1:0]    out_relu;
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

fc0_dense32_filter20 fc0_inst0(
    .clk(clock), .rst(reset), .valid_in(ff_rdreq),
    .data_in(ff_rdata0),
    .weight(ff_rdata1),
    .valid_out(ff_wrreq),
    .data_out(out_relu)
);
ReLU const(.data_in(out_relu), .data_out(ff_wdata));
endmodule

module core_fc0_dense32_filter21(
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
wire [DWIDTH-1:0]    out_relu;
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

fc0_dense32_filter21 fc0_inst0(
    .clk(clock), .rst(reset), .valid_in(ff_rdreq),
    .data_in(ff_rdata0),
    .weight(ff_rdata1),
    .valid_out(ff_wrreq),
    .data_out(out_relu)
);
ReLU const(.data_in(out_relu), .data_out(ff_wdata));
endmodule

module core_fc0_dense32_filter22(
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
wire [DWIDTH-1:0]    out_relu;
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

fc0_dense32_filter22 fc0_inst0(
    .clk(clock), .rst(reset), .valid_in(ff_rdreq),
    .data_in(ff_rdata0),
    .weight(ff_rdata1),
    .valid_out(ff_wrreq),
    .data_out(out_relu)
);
ReLU const(.data_in(out_relu), .data_out(ff_wdata));
endmodule

module core_fc0_dense32_filter23(
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
wire [DWIDTH-1:0]    out_relu;
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

fc0_dense32_filter23 fc0_inst0(
    .clk(clock), .rst(reset), .valid_in(ff_rdreq),
    .data_in(ff_rdata0),
    .weight(ff_rdata1),
    .valid_out(ff_wrreq),
    .data_out(out_relu)
);
ReLU const(.data_in(out_relu), .data_out(ff_wdata));
endmodule

module core_fc0_dense32_filter24(
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
wire [DWIDTH-1:0]    out_relu;
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

fc0_dense32_filter24 fc0_inst0(
    .clk(clock), .rst(reset), .valid_in(ff_rdreq),
    .data_in(ff_rdata0),
    .weight(ff_rdata1),
    .valid_out(ff_wrreq),
    .data_out(out_relu)
);
ReLU const(.data_in(out_relu), .data_out(ff_wdata));
endmodule

module core_fc0_dense32_filter25(
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
wire [DWIDTH-1:0]    out_relu;
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

fc0_dense32_filter25 fc0_inst0(
    .clk(clock), .rst(reset), .valid_in(ff_rdreq),
    .data_in(ff_rdata0),
    .weight(ff_rdata1),
    .valid_out(ff_wrreq),
    .data_out(out_relu)
);
ReLU const(.data_in(out_relu), .data_out(ff_wdata));
endmodule

module core_fc0_dense32_filter26(
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
wire [DWIDTH-1:0]    out_relu;
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

fc0_dense32_filter26 fc0_inst0(
    .clk(clock), .rst(reset), .valid_in(ff_rdreq),
    .data_in(ff_rdata0),
    .weight(ff_rdata1),
    .valid_out(ff_wrreq),
    .data_out(out_relu)
);
ReLU const(.data_in(out_relu), .data_out(ff_wdata));
endmodule

module core_fc0_dense32_filter27(
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
wire [DWIDTH-1:0]    out_relu;
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

fc0_dense32_filter27 fc0_inst0(
    .clk(clock), .rst(reset), .valid_in(ff_rdreq),
    .data_in(ff_rdata0),
    .weight(ff_rdata1),
    .valid_out(ff_wrreq),
    .data_out(out_relu)
);
ReLU const(.data_in(out_relu), .data_out(ff_wdata));
endmodule

module core_fc0_dense32_filter28(
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
wire [DWIDTH-1:0]    out_relu;
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

fc0_dense32_filter28 fc0_inst0(
    .clk(clock), .rst(reset), .valid_in(ff_rdreq),
    .data_in(ff_rdata0),
    .weight(ff_rdata1),
    .valid_out(ff_wrreq),
    .data_out(out_relu)
);
ReLU const(.data_in(out_relu), .data_out(ff_wdata));
endmodule

module core_fc0_dense32_filter29(
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
wire [DWIDTH-1:0]    out_relu;
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

fc0_dense32_filter29 fc0_inst0(
    .clk(clock), .rst(reset), .valid_in(ff_rdreq),
    .data_in(ff_rdata0),
    .weight(ff_rdata1),
    .valid_out(ff_wrreq),
    .data_out(out_relu)
);
ReLU const(.data_in(out_relu), .data_out(ff_wdata));
endmodule

module core_fc0_dense32_filter30(
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
wire [DWIDTH-1:0]    out_relu;
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

fc0_dense32_filter30 fc0_inst0(
    .clk(clock), .rst(reset), .valid_in(ff_rdreq),
    .data_in(ff_rdata0),
    .weight(ff_rdata1),
    .valid_out(ff_wrreq),
    .data_out(out_relu)
);
ReLU const(.data_in(out_relu), .data_out(ff_wdata));
endmodule

module core_fc0_dense32_filter31(
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
wire [DWIDTH-1:0]    out_relu;
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

fc0_dense32_filter31 fc0_inst0(
    .clk(clock), .rst(reset), .valid_in(ff_rdreq),
    .data_in(ff_rdata0),
    .weight(ff_rdata1),
    .valid_out(ff_wrreq),
    .data_out(out_relu)
);
ReLU const(.data_in(out_relu), .data_out(ff_wdata));
endmodule

