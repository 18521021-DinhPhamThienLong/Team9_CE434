`timescale 1ns/1ps
module tb_line_buffer();
    parameter DATA_WIDTH = 32;
    parameter WIDTH = 7;
    reg  [DATA_WIDTH-1:0] data_in;
    reg  valid_in, clk, rst;
    wire valid_out;
    wire [DATA_WIDTH-1:0] data_out0,data_out1,data_out2,data_out3,data_out4,data_out5,data_out6,data_out7,data_out8;

    line_buffer inst(
        data_out0,data_out1,data_out2,data_out3,data_out4,data_out5,data_out6,data_out7,data_out8,
        data_in,
        valid_in, clk, rst,
        valid_out            
    );

    integer i,j;
    initial begin
        clk = 1;
        rst = 1;
        valid_in = 0;
        for (j = 0;j < 49; j = j + 1)
        begin
            #10
            data_in = $random%20;
            valid_in = 1;
            rst = 0;
        end
        valid_in = 1;
        #10
        valid_in = 0;
        #1000 $stop;
    end

    always #5 clk = !clk;

endmodule