`timescale 1ns/1ps

module tb_test_con2D();
    parameter DATA_WIDTH = 32;
    parameter WIDTH = 7;
    parameter DEPTH = 1000;
    parameter k0 = 32'b01000001001000000000000000000000;  //10
    parameter k1 = 32'b01000001001000000000000000000000;  //10
    parameter k2 = 32'b01000001001000000000000000000000;  //10
    parameter k3 = 32'b01000001001000000000000000000000;  //10
    parameter k4 = 32'b01000001001000000000000000000000;  //10
    parameter k5 = 32'b01000001001000000000000000000000;  //10
    parameter k6 = 32'b01000001001000000000000000000000;  //10
    parameter k7 = 32'b01000001001000000000000000000000;  //10
    parameter k8 = 32'b01000001001000000000000000000000;  //10

    reg [DATA_WIDTH-1:0] data_in;
    reg clk, rst, data_fifo_wren;
    wire valid_out;
    wire [DATA_WIDTH-1:0] data_out;

    test_conv2D inst(
        .data_in(data_in),
        .clk(clk), .rst(rst), .data_fifo_wren(data_fifo_wren),
        .valid_out(valid_out),
        .data_out(data_out)
    );

  integer j;
    initial begin
        clk = 1;
        rst = 1;
        data_fifo_wren = 1'b0;
        #10
        rst = 0;
        #5;
        for (j = 0; j < 25; j = j + 1)
        begin
            data_in = 32'b01000001001000000000000000000000;
            data_fifo_wren = 1;
            rst = 0;
            #10;
        end
        data_fifo_wren = 1;
        #10
        data_fifo_wren = 0;
        #1000 $stop;
    end
    
    always #5 clk = !clk;

endmodule