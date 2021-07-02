module test_conv2D#(
    parameter DATA_WIDTH = 32,
    parameter WIDTH = 5,
    parameter DEPTH = 255,
    parameter k0 = 32'b01000001001000000000000000000000,  //10
    parameter k1 = 32'b01000001001000000000000000000000,  //10
    parameter k2 = 32'b01000001001000000000000000000000,  //10
    parameter k3 = 32'b01000001001000000000000000000000,  //10
    parameter k4 = 32'b01000001001000000000000000000000,  //10
    parameter k5 = 32'b01000001001000000000000000000000,  //10
    parameter k6 = 32'b01000001001000000000000000000000,  //10
    parameter k7 = 32'b01000001001000000000000000000000,  //10
    parameter k8 = 32'b01000001001000000000000000000000   //10
)(
    input [DATA_WIDTH-1:0] data_in,
    input clk, rst, data_fifo_wren,
    output valid_out,
    output [DATA_WIDTH-1:0] data_out
);
    wire [DATA_WIDTH - 1:0] data_fifo_out;
    wire data_fifo_rden;
    wire data_fifo_empty;

    FIFO_new #(
        .DATA_WIDTH(DATA_WIDTH), .DEPTH(DEPTH)
    )fifo_inst(
        .data_out(data_fifo_out),
        .full(), .empty(data_fifo_empty),
        .data_in(data_in),
        .clk(clk), .rst(rst), .wr_req(data_fifo_wren), .rd_req(data_fifo_rden)
    );

    conv2D #(
        .DATA_WIDTH(DATA_WIDTH),
        .WIDTH(WIDTH),
        .k0(k0),
        .k1(k1),
        .k2(k2),
        .k3(k3),
        .k4(k4),
        .k5(k5),
        .k6(k6),
        .k7(k7),
        .k8(k8)
    )con2D_inst(
        .data_in(data_fifo_out),
        .clk(clk), .rst(rst), .valid_in(~data_fifo_empty),
        .valid_out(valid_out), .data_fifo_rden(data_fifo_rden),
        .data_out(data_out)
    );

endmodule