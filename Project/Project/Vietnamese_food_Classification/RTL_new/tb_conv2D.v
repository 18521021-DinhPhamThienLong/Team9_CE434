`timescale 1ns/1ps

module tb_conv2D();
    parameter DATA_WIDTH = 32;
    parameter WIDTH = 5;
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
    wire [DATA_WIDTH-1:0] data_out;
    wire valid_out;

    conv2D #(DATA_WIDTH, WIDTH, DEPTH, k0, k1, k2, k3, k4, k5, k6, k7, k8)dut(
        .data_in(data_in), 
        .clk(clk), .rst(rst), .data_fifo_wren(data_fifo_wren),
        .valid_out(valid_out),
        .data_out(data_out)
    );

    integer j;
    initial begin
        clk = 1;
        rst = 1;
        //valid_in = 1;
        data_fifo_wren = 0;
        #10
        rst = 0;
        for (j = 0;j < 48; j = j + 1)
        begin
            data_in = 32'b01000001001000000000000000000000;
            //valid_in = 1;
            data_fifo_wren = 1;
            #10;
        end
        //valid_in = 0;
        data_fifo_wren = 0;
        //load_data_done = 1;
        #1000 $stop;
    end

    always #5 clk = !clk;
endmodule