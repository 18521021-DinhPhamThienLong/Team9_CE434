`timescale 1ns/1ps

module tb_zero_padding();
    parameter DATA_WIDTH = 32;
    reg [DATA_WIDTH-1:0] data_in;
    reg en_padding;
    wire [DATA_WIDTH-1:0] data_out;

    zero_padding inst(
        .en_padding(en_padding), 
        .data_in(data_in), 
        .data_out(data_out)
    );

    initial begin
        data_in = 32'b01000001100100000000000000000000; 
        en_padding = 1;
        #10
        data_in = 32'b01000001100100000000000000000010; 
        en_padding = 1;
        #10
        data_in = 32'b01000001100100000000000000001000; 
        en_padding = 1;
        #10
        en_padding = 0;
        #100 $stop;
    end

endmodule