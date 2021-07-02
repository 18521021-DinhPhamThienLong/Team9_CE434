`timescale 1ns/1ps

module tb_conv();
    parameter DATA_WIDTH = 32;
    parameter k0 = 32'b00111101110110011111100110000101;  //
    parameter k1 = 32'b00111101110000000100100001001111;  //
    parameter k2 = 32'b00111110001100110000111000011100;  //
    parameter k3 = 32'b00111110000011111011101001111010;  //
    parameter k4 = 32'b10111110000111001001111111101100;  //
    parameter k5 = 32'b00111110000011011111010010101101;  //
    parameter k6 = 32'b00111110000010100011100100000010;  //
    parameter k7 = 32'b00111110000001011001000000111000;  //
    parameter k8 = 32'b00111101011010000010011000100100; //  
    reg [DATA_WIDTH-1:0] data_in0, data_in1, data_in2, data_in3, data_in4, data_in5, data_in6, data_in7, data_in8;
    reg valid_in, clk, rst;
    wire [DATA_WIDTH-1:0] data_out;
    wire valid_out;

    conv #(DATA_WIDTH, k0, k1, k2, k3, k4, k5, k6, k7, k8)dut(
        data_in0, data_in1, data_in2, data_in3, data_in4, data_in5, data_in6, data_in7, data_in8,
        valid_in, clk, rst,
        data_out,
        valid_out
    );

    initial begin
        data_in0 = 32'b01000001001000000000000000000000;
        data_in1 = 32'b01000001001000000000000000000000;
        data_in2 = 32'b01000001001000000000000000000000;
        data_in3 = 32'b01000001001000000000000000000000;
        data_in4 = 32'b01000001001000000000000000000000;
        data_in5 = 32'b01000001001000000000000000000000;
        data_in6 = 32'b01000001001000000000000000000000;
        data_in7 = 32'b01000001001000000000000000000000;
        data_in8 = 32'b01000001001000000000000000000000;
        clk = 1;
        rst = 1;
        valid_in = 1;
        #10
        rst = 0;
        #1000 $stop;
    end

    always #5 clk = !clk;
endmodule