`timescale 1ns/1ps

module tb_ReLU();
    reg [31:0] data_in;
    wire [31:0] data_out;

    ReLU inst(data_in, data_out);

    initial begin
        data_in = 32'b10111110000111001001111111101100;
        #20
        data_in = 32'b01000000101000000000000000000000;
        #20 $stop;
    end
endmodule